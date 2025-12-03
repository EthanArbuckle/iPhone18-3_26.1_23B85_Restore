@interface PHRecyclableObjectVendor
- (PHRecyclableObjectVendor)initWithTargetClass:(Class)class requiresThreadSafety:(BOOL)safety initialPoolSize:(int64_t)size prototypeStep:(id)step;
- (id)dequeueRecyclableObject;
- (void)recycleObject:(id)object;
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
    lastObject = [(NSMutableArray *)self->_recycledObjects lastObject];
    [(NSMutableArray *)self->_recycledObjects removeLastObject];
  }

  else
  {
    lastObject = [[(objc_class *)self->_targetClass alloc] init];
    builder = self->_builder;
    if (builder)
    {
      builder[2](builder, lastObject);
    }
  }

  if (self->_threadSafe)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  return lastObject;
}

- (void)recycleObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    v5 = objectCopy;
    if (self->_repsondsToPrepareForReuse)
    {
      [objectCopy prepareForReuse];
    }

    if (self->_threadSafe)
    {
      os_unfair_lock_lock(&self->_lock);
    }

    [(NSMutableArray *)self->_recycledObjects addObject:v5];
    objectCopy = v5;
    if (self->_threadSafe)
    {
      os_unfair_lock_unlock(&self->_lock);
      objectCopy = v5;
    }
  }
}

- (PHRecyclableObjectVendor)initWithTargetClass:(Class)class requiresThreadSafety:(BOOL)safety initialPoolSize:(int64_t)size prototypeStep:(id)step
{
  stepCopy = step;
  v22.receiver = self;
  v22.super_class = PHRecyclableObjectVendor;
  v12 = [(PHRecyclableObjectVendor *)&v22 init];
  if (v12)
  {
    if (!class)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v12 file:@"PHRecyclableObjectVendor.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"class"}];
    }

    if (size <= 20)
    {
      sizeCopy = 20;
    }

    else
    {
      sizeCopy = size;
    }

    v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:sizeCopy];
    recycledObjects = v12->_recycledObjects;
    v12->_recycledObjects = v14;

    if (size >= 1)
    {
      do
      {
        v16 = v12->_recycledObjects;
        v17 = objc_alloc_init(class);
        [(NSMutableArray *)v16 addObject:v17];

        --size;
      }

      while (size);
    }

    v12->_lock._os_unfair_lock_opaque = 0;
    v12->_repsondsToPrepareForReuse = class_respondsToSelector(class, sel_prepareForReuse);
    v12->_targetClass = class;
    v12->_threadSafe = safety;
    v18 = _Block_copy(stepCopy);
    builder = v12->_builder;
    v12->_builder = v18;
  }

  return v12;
}

@end