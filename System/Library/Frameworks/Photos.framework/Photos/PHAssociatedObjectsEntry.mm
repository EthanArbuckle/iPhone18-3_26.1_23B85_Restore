@interface PHAssociatedObjectsEntry
- (PHAssociatedObjectsEntry)init;
- (id)associatedObjectForKey:(uint64_t)a1;
- (id)setAssociatedObjectIfNotSet:(void *)a3 forKey:;
- (void)setAssociatedObject:(void *)a3 forKey:;
@end

@implementation PHAssociatedObjectsEntry

- (PHAssociatedObjectsEntry)init
{
  v8.receiver = self;
  v8.super_class = PHAssociatedObjectsEntry;
  v2 = [(PHAssociatedObjectsEntry *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    associatedObjects = v3->_associatedObjects;
    v3->_associatedObjects = v4;

    v6 = v3;
  }

  return v3;
}

- (id)associatedObjectForKey:(uint64_t)a1
{
  if (a1)
  {
    v3 = a2;
    os_unfair_lock_lock((a1 + 8));
    v4 = [*(a1 + 16) objectForKeyedSubscript:v3];

    os_unfair_lock_unlock((a1 + 8));
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAssociatedObject:(void *)a3 forKey:
{
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    os_unfair_lock_lock((a1 + 8));
    [*(a1 + 16) setObject:v6 forKeyedSubscript:v5];

    os_unfair_lock_unlock((a1 + 8));
  }
}

- (id)setAssociatedObjectIfNotSet:(void *)a3 forKey:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    v7 = [*(a1 + 16) objectForKeyedSubscript:v6];
    if (!v7)
    {
      [*(a1 + 16) setObject:v5 forKeyedSubscript:v6];
      v7 = v5;
    }

    os_unfair_lock_unlock((a1 + 8));
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end