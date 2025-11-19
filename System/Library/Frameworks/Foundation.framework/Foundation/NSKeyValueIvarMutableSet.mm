@interface NSKeyValueIvarMutableSet
- (id)_proxyInitWithContainer:(id)a3 getter:(id)a4;
- (id)member:(id)a3;
- (id)objectEnumerator;
- (unint64_t)count;
- (void)_proxyNonGCFinalize;
- (void)addObject:(id)a3;
- (void)addObjectsFromArray:(id)a3;
- (void)intersectSet:(id)a3;
- (void)minusSet:(id)a3;
- (void)removeAllObjects;
- (void)removeObject:(id)a3;
- (void)setSet:(id)a3;
- (void)unionSet:(id)a3;
@end

@implementation NSKeyValueIvarMutableSet

- (id)_proxyInitWithContainer:(id)a3 getter:(id)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSKeyValueIvarMutableSet;
  v5 = [(NSKeyValueMutableSet *)&v7 _proxyInitWithContainer:a3 getter:?];
  if (v5)
  {
    v5[3] = [a4 ivar];
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

- (id)member:(id)a3
{
  container = self->super._container;
  v5 = *(&container->isa + ivar_getOffset(self->_ivar));

  return [v5 member:a3];
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

- (void)addObject:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = a3;
  container = self->super._container;
  Offset = ivar_getOffset(self->_ivar);
  v6 = *(&container->isa + Offset);
  if (v6)
  {

    [v6 addObject:a3];
  }

  else
  {
    *(&container->isa + Offset) = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:v7 count:1];
  }
}

- (void)addObjectsFromArray:(id)a3
{
  container = self->super._container;
  Offset = ivar_getOffset(self->_ivar);
  v6 = *(&container->isa + Offset);
  if (v6)
  {

    [v6 addObjectsFromArray:a3];
  }

  else
  {
    *(&container->isa + Offset) = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:a3];
  }
}

- (void)intersectSet:(id)a3
{
  container = self->super._container;
  v5 = *(&container->isa + ivar_getOffset(self->_ivar));

  [v5 intersectSet:a3];
}

- (void)minusSet:(id)a3
{
  container = self->super._container;
  v5 = *(&container->isa + ivar_getOffset(self->_ivar));

  [v5 minusSet:a3];
}

- (void)removeAllObjects
{
  container = self->super._container;
  v3 = *(&container->isa + ivar_getOffset(self->_ivar));

  [v3 removeAllObjects];
}

- (void)removeObject:(id)a3
{
  container = self->super._container;
  v5 = *(&container->isa + ivar_getOffset(self->_ivar));

  [v5 removeObject:a3];
}

- (void)setSet:(id)a3
{
  container = self->super._container;
  Offset = ivar_getOffset(self->_ivar);
  v6 = *(&container->isa + Offset);
  if (v6)
  {

    [v6 setSet:a3];
  }

  else
  {
    *(&container->isa + Offset) = [a3 mutableCopy];
  }
}

- (void)unionSet:(id)a3
{
  container = self->super._container;
  Offset = ivar_getOffset(self->_ivar);
  v6 = *(&container->isa + Offset);
  if (v6)
  {

    [v6 unionSet:a3];
  }

  else
  {
    *(&container->isa + Offset) = [a3 mutableCopy];
  }
}

@end