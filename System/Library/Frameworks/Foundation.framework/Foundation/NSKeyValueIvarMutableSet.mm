@interface NSKeyValueIvarMutableSet
- (id)_proxyInitWithContainer:(id)container getter:(id)getter;
- (id)member:(id)member;
- (id)objectEnumerator;
- (unint64_t)count;
- (void)_proxyNonGCFinalize;
- (void)addObject:(id)object;
- (void)addObjectsFromArray:(id)array;
- (void)intersectSet:(id)set;
- (void)minusSet:(id)set;
- (void)removeAllObjects;
- (void)removeObject:(id)object;
- (void)setSet:(id)set;
- (void)unionSet:(id)set;
@end

@implementation NSKeyValueIvarMutableSet

- (id)_proxyInitWithContainer:(id)container getter:(id)getter
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSKeyValueIvarMutableSet;
  v5 = [(NSKeyValueMutableSet *)&v7 _proxyInitWithContainer:container getter:?];
  if (v5)
  {
    v5[3] = [getter ivar];
  }

  return v5;
}

- (void)_proxyNonGCFinalize
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSKeyValueIvarMutableSet;
  [(NSKeyValueMutableSet *)&v3 _proxyNonGCFinalize];
  self->_ivar = 0;
}

- (unint64_t)count
{
  container = self->super._container;
  v3 = *(&container->isa + ivar_getOffset(self->_ivar));

  return [v3 count];
}

- (id)member:(id)member
{
  container = self->super._container;
  v5 = *(&container->isa + ivar_getOffset(self->_ivar));

  return [v5 member:member];
}

- (id)objectEnumerator
{
  container = self->super._container;
  v3 = *(&container->isa + ivar_getOffset(self->_ivar));
  if (v3)
  {

    return [v3 objectEnumerator];
  }

  else
  {
    v5 = objc_alloc_init(NSKeyValueNilSetEnumerator);

    return v5;
  }
}

- (void)addObject:(id)object
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = object;
  container = self->super._container;
  Offset = ivar_getOffset(self->_ivar);
  v6 = *(&container->isa + Offset);
  if (v6)
  {

    [v6 addObject:object];
  }

  else
  {
    *(&container->isa + Offset) = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:v7 count:1];
  }
}

- (void)addObjectsFromArray:(id)array
{
  container = self->super._container;
  Offset = ivar_getOffset(self->_ivar);
  v6 = *(&container->isa + Offset);
  if (v6)
  {

    [v6 addObjectsFromArray:array];
  }

  else
  {
    *(&container->isa + Offset) = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:array];
  }
}

- (void)intersectSet:(id)set
{
  container = self->super._container;
  v5 = *(&container->isa + ivar_getOffset(self->_ivar));

  [v5 intersectSet:set];
}

- (void)minusSet:(id)set
{
  container = self->super._container;
  v5 = *(&container->isa + ivar_getOffset(self->_ivar));

  [v5 minusSet:set];
}

- (void)removeAllObjects
{
  container = self->super._container;
  v3 = *(&container->isa + ivar_getOffset(self->_ivar));

  [v3 removeAllObjects];
}

- (void)removeObject:(id)object
{
  container = self->super._container;
  v5 = *(&container->isa + ivar_getOffset(self->_ivar));

  [v5 removeObject:object];
}

- (void)setSet:(id)set
{
  container = self->super._container;
  Offset = ivar_getOffset(self->_ivar);
  v6 = *(&container->isa + Offset);
  if (v6)
  {

    [v6 setSet:set];
  }

  else
  {
    *(&container->isa + Offset) = [set mutableCopy];
  }
}

- (void)unionSet:(id)set
{
  container = self->super._container;
  Offset = ivar_getOffset(self->_ivar);
  v6 = *(&container->isa + Offset);
  if (v6)
  {

    [v6 unionSet:set];
  }

  else
  {
    *(&container->isa + Offset) = [set mutableCopy];
  }
}

@end