@interface PHAssociatedObjectsEntry
- (PHAssociatedObjectsEntry)init;
- (id)associatedObjectForKey:(uint64_t)key;
- (id)setAssociatedObjectIfNotSet:(void *)set forKey:;
- (void)setAssociatedObject:(void *)object forKey:;
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

- (id)associatedObjectForKey:(uint64_t)key
{
  if (key)
  {
    v3 = a2;
    os_unfair_lock_lock((key + 8));
    v4 = [*(key + 16) objectForKeyedSubscript:v3];

    os_unfair_lock_unlock((key + 8));
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAssociatedObject:(void *)object forKey:
{
  if (self)
  {
    objectCopy = object;
    v6 = a2;
    os_unfair_lock_lock((self + 8));
    [*(self + 16) setObject:v6 forKeyedSubscript:objectCopy];

    os_unfair_lock_unlock((self + 8));
  }
}

- (id)setAssociatedObjectIfNotSet:(void *)set forKey:
{
  v5 = a2;
  setCopy = set;
  if (self)
  {
    os_unfair_lock_lock((self + 8));
    v7 = [*(self + 16) objectForKeyedSubscript:setCopy];
    if (!v7)
    {
      [*(self + 16) setObject:v5 forKeyedSubscript:setCopy];
      v7 = v5;
    }

    os_unfair_lock_unlock((self + 8));
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end