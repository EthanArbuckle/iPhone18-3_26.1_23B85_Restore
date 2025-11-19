@interface GCObjectPool
- (BOOL)addObjectWith:(id)a3;
- (GCObjectPool)init;
- (id)takeObjectOrCreateWith:(id)a3;
@end

@implementation GCObjectPool

- (GCObjectPool)init
{
  v6.receiver = self;
  v6.super_class = GCObjectPool;
  v2 = [(GCObjectPool *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    objects = v2->objects;
    v2->objects = v3;

    v2->lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (id)takeObjectOrCreateWith:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->lock);
  v5 = [(NSMutableArray *)self->objects lastObject];
  if (v5)
  {
    v6 = v5;
    [(NSMutableArray *)self->objects removeLastObject];
    os_unfair_lock_unlock(&self->lock);
  }

  else
  {
    os_unfair_lock_unlock(&self->lock);
    v6 = v4[2](v4);
  }

  return v6;
}

- (BOOL)addObjectWith:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->lock);
  v5 = [(NSMutableArray *)self->objects count];
  if (v5 <= 9)
  {
    objects = self->objects;
    v7 = v4[2](v4);
    [(NSMutableArray *)objects addObject:v7];
  }

  os_unfair_lock_unlock(&self->lock);

  return v5 < 0xA;
}

@end