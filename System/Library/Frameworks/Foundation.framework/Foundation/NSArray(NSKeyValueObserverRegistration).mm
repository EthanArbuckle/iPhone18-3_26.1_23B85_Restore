@interface NSArray(NSKeyValueObserverRegistration)
- (uint64_t)addObserver:()NSKeyValueObserverRegistration toObjectsAtIndexes:forKeyPath:options:context:;
- (uint64_t)removeObserver:()NSKeyValueObserverRegistration fromObjectsAtIndexes:forKeyPath:;
- (uint64_t)removeObserver:()NSKeyValueObserverRegistration fromObjectsAtIndexes:forKeyPath:context:;
@end

@implementation NSArray(NSKeyValueObserverRegistration)

- (uint64_t)addObserver:()NSKeyValueObserverRegistration toObjectsAtIndexes:forKeyPath:options:context:
{
  os_unfair_recursive_lock_lock_with_options();
  firstIndex = [a4 firstIndex];
  v14 = 0;
  v15 = 0;
  while (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    Class = object_getClass([self objectAtIndex:firstIndex]);
    v17 = Class;
    if (Class != v15)
    {
      v14 = NSKeyValuePropertyForIsaAndKeyPath(Class, a5);
      v15 = v17;
    }

    [objc_msgSend(self objectAtIndex:{firstIndex), "_addObserver:forProperty:options:context:", a3, v14, a6, a7}];
    firstIndex = [a4 indexGreaterThanIndex:firstIndex];
  }

  return os_unfair_recursive_lock_unlock();
}

- (uint64_t)removeObserver:()NSKeyValueObserverRegistration fromObjectsAtIndexes:forKeyPath:context:
{
  v11 = _CFGetTSD();
  if (!v11)
  {
    v12 = malloc_default_zone();
    v11 = malloc_type_zone_calloc(v12, 1uLL, 0x58uLL, 0x2C221C3EuLL);
    _CFSetTSD();
  }

  v21 = *(v11 + 32);
  v22 = *(v11 + 40);
  v23 = *(v11 + 48);
  v24 = *(v11 + 56);
  v25 = *(v11 + 64);
  v26 = *(v11 + 72);
  os_unfair_recursive_lock_lock_with_options();
  *(v11 + 40) = a3;
  *(v11 + 48) = a5;
  v13 = a5;
  *(v11 + 56) = 0;
  *(v11 + 64) = a6;
  *(v11 + 72) = 1;
  firstIndex = [a4 firstIndex];
  v15 = 0;
  v16 = 0;
  while (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = [self objectAtIndex:firstIndex];
    Class = object_getClass(v17);
    v19 = Class;
    if (Class != v15)
    {
      v16 = NSKeyValuePropertyForIsaAndKeyPath(Class, v13);
      v15 = v19;
    }

    *(v11 + 32) = v17;
    [v17 _removeObserver:a3 forProperty:{v16, v21, v22, v23, v24, v25}];
    firstIndex = [a4 indexGreaterThanIndex:firstIndex];
  }

  result = os_unfair_recursive_lock_unlock();
  *(v11 + 32) = v21;
  *(v11 + 40) = v22;
  *(v11 + 48) = v23;
  *(v11 + 56) = v24;
  *(v11 + 64) = v25;
  *(v11 + 72) = v26;
  return result;
}

- (uint64_t)removeObserver:()NSKeyValueObserverRegistration fromObjectsAtIndexes:forKeyPath:
{
  os_unfair_recursive_lock_lock_with_options();
  firstIndex = [a4 firstIndex];
  v10 = 0;
  v11 = 0;
  while (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [self objectAtIndex:firstIndex];
    Class = object_getClass(v12);
    v14 = Class;
    if (Class != v11)
    {
      v10 = NSKeyValuePropertyForIsaAndKeyPath(Class, a5);
      v11 = v14;
    }

    [v12 _removeObserver:a3 forProperty:v10];
    firstIndex = [a4 indexGreaterThanIndex:firstIndex];
  }

  return os_unfair_recursive_lock_unlock();
}

@end