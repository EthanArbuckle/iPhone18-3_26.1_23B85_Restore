@interface GCObjectPool
- (BOOL)addObjectWith:(id)with;
- (GCObjectPool)init;
- (id)takeObjectOrCreateWith:(id)with;
@end

@implementation GCObjectPool

- (GCObjectPool)init
{
  v6.receiver = self;
  v6.super_class = GCObjectPool;
  v2 = [(GCObjectPool *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    objects = v2->objects;
    v2->objects = array;

    v2->lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (id)takeObjectOrCreateWith:(id)with
{
  withCopy = with;
  os_unfair_lock_lock(&self->lock);
  lastObject = [(NSMutableArray *)self->objects lastObject];
  if (lastObject)
  {
    v6 = lastObject;
    [(NSMutableArray *)self->objects removeLastObject];
    os_unfair_lock_unlock(&self->lock);
  }

  else
  {
    os_unfair_lock_unlock(&self->lock);
    v6 = withCopy[2](withCopy);
  }

  return v6;
}

- (BOOL)addObjectWith:(id)with
{
  withCopy = with;
  os_unfair_lock_lock(&self->lock);
  v5 = [(NSMutableArray *)self->objects count];
  if (v5 <= 9)
  {
    objects = self->objects;
    v7 = withCopy[2](withCopy);
    [(NSMutableArray *)objects addObject:v7];
  }

  os_unfair_lock_unlock(&self->lock);

  return v5 < 0xA;
}

@end