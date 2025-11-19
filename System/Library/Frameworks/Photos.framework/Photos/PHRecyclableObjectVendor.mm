@interface PHRecyclableObjectVendor
- (PHRecyclableObjectVendor)initWithTargetClass:(Class)a3 requiresThreadSafety:(BOOL)a4 initialPoolSize:(int64_t)a5 prototypeStep:(id)a6;
- (id)dequeueRecyclableObject;
- (void)recycleObject:(id)a3;
@end

@implementation PHRecyclableObjectVendor

- (id)dequeueRecyclableObject
{
  if (self->_threadSafe)
  {
    os_unfair_lock_lock(&self->_lock);
  }

  if ([(NSMutableArray *)self->_recycledObjects count])
  {
    v3 = [(NSMutableArray *)self->_recycledObjects lastObject];
    [(NSMutableArray *)self->_recycledObjects removeLastObject];
  }

  else
  {
    v3 = [[(objc_class *)self->_targetClass alloc] init];
    builder = self->_builder;
    if (builder)
    {
      builder[2](builder, v3);
    }
  }

  if (self->_threadSafe)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  return v3;
}

- (void)recycleObject:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    if (self->_repsondsToPrepareForReuse)
    {
      [v4 prepareForReuse];
    }

    if (self->_threadSafe)
    {
      os_unfair_lock_lock(&self->_lock);
    }

    [(NSMutableArray *)self->_recycledObjects addObject:v5];
    v4 = v5;
    if (self->_threadSafe)
    {
      os_unfair_lock_unlock(&self->_lock);
      v4 = v5;
    }
  }
}

- (PHRecyclableObjectVendor)initWithTargetClass:(Class)a3 requiresThreadSafety:(BOOL)a4 initialPoolSize:(int64_t)a5 prototypeStep:(id)a6
{
  v11 = a6;
  v22.receiver = self;
  v22.super_class = PHRecyclableObjectVendor;
  v12 = [(PHRecyclableObjectVendor *)&v22 init];
  if (v12)
  {
    if (!a3)
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      [v21 handleFailureInMethod:a2 object:v12 file:@"PHRecyclableObjectVendor.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"class"}];
    }

    if (a5 <= 20)
    {
      v13 = 20;
    }

    else
    {
      v13 = a5;
    }

    v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:v13];
    recycledObjects = v12->_recycledObjects;
    v12->_recycledObjects = v14;

    if (a5 >= 1)
    {
      do
      {
        v16 = v12->_recycledObjects;
        v17 = objc_alloc_init(a3);
        [(NSMutableArray *)v16 addObject:v17];

        --a5;
      }

      while (a5);
    }

    v12->_lock._os_unfair_lock_opaque = 0;
    v12->_repsondsToPrepareForReuse = class_respondsToSelector(a3, sel_prepareForReuse);
    v12->_targetClass = a3;
    v12->_threadSafe = a4;
    v18 = _Block_copy(v11);
    builder = v12->_builder;
    v12->_builder = v18;
  }

  return v12;
}

@end