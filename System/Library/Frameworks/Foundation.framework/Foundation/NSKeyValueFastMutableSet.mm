@interface NSKeyValueFastMutableSet
- (id)_proxyInitWithContainer:(id)container getter:(id)getter;
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

@implementation NSKeyValueFastMutableSet

- (id)_proxyInitWithContainer:(id)container getter:(id)getter
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSKeyValueFastMutableSet;
  v5 = [(NSKeyValueMutableSet *)&v7 _proxyInitWithContainer:container getter:?];
  if (v5)
  {
    v5[3] = [getter mutatingMethods];
  }

  return v5;
}

- (void)_proxyNonGCFinalize
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSKeyValueFastMutableSet;
  [(NSKeyValueMutableSet *)&v3 _proxyNonGCFinalize];
  self->_mutatingMethods = 0;
}

- (void)addObject:(id)object
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = object;
  if (self->_mutatingMethods->addObject)
  {

    method_invoke();
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:v4 count:1];
    method_invoke();
  }
}

- (void)addObjectsFromArray:(id)array
{
  v5 = *MEMORY[0x1E69E9840];
  if (self->_mutatingMethods->unionSet)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:array];
    method_invoke();
  }

  else
  {
    v4.receiver = self;
    v4.super_class = NSKeyValueFastMutableSet;
    [(NSKeyValueFastMutableSet *)&v4 addObjectsFromArray:array];
  }
}

- (void)intersectSet:(id)set
{
  v4 = *MEMORY[0x1E69E9840];
  if (self->_mutatingMethods->intersectSet)
  {

    method_invoke();
  }

  else
  {
    v3.receiver = self;
    v3.super_class = NSKeyValueFastMutableSet;
    [(NSKeyValueFastMutableSet *)&v3 intersectSet:set];
  }
}

- (void)minusSet:(id)set
{
  v4 = *MEMORY[0x1E69E9840];
  if (self->_mutatingMethods->minusSet)
  {

    method_invoke();
  }

  else
  {
    v3.receiver = self;
    v3.super_class = NSKeyValueFastMutableSet;
    [(NSKeyValueFastMutableSet *)&v3 minusSet:set];
  }
}

- (void)removeAllObjects
{
  v4 = *MEMORY[0x1E69E9840];
  if (self->_mutatingMethods->setSet)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    method_invoke();
  }

  else
  {
    v3.receiver = self;
    v3.super_class = NSKeyValueFastMutableSet;
    [(NSKeyValueFastMutableSet *)&v3 removeAllObjects];
  }
}

- (void)removeObject:(id)object
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = object;
  if (self->_mutatingMethods->removeObject)
  {

    method_invoke();
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:v4 count:1];
    method_invoke();
  }
}

- (void)setSet:(id)set
{
  v4 = *MEMORY[0x1E69E9840];
  if (self->_mutatingMethods->setSet)
  {

    method_invoke();
  }

  else
  {
    v3.receiver = self;
    v3.super_class = NSKeyValueFastMutableSet;
    [(NSKeyValueFastMutableSet *)&v3 setSet:set];
  }
}

- (void)unionSet:(id)set
{
  v4 = *MEMORY[0x1E69E9840];
  if (self->_mutatingMethods->unionSet)
  {

    method_invoke();
  }

  else
  {
    v3.receiver = self;
    v3.super_class = NSKeyValueFastMutableSet;
    [(NSKeyValueFastMutableSet *)&v3 unionSet:set];
  }
}

@end