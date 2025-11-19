@interface NSKeyValueFastMutableSet
- (id)_proxyInitWithContainer:(id)a3 getter:(id)a4;
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

@implementation NSKeyValueFastMutableSet

- (id)_proxyInitWithContainer:(id)a3 getter:(id)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSKeyValueFastMutableSet;
  v5 = [(NSKeyValueMutableSet *)&v7 _proxyInitWithContainer:a3 getter:?];
  if (v5)
  {
    v5[3] = [a4 mutatingMethods];
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

- (void)addObject:(id)a3
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = a3;
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

- (void)addObjectsFromArray:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  if (self->_mutatingMethods->unionSet)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:a3];
    method_invoke();
  }

  else
  {
    v4.receiver = self;
    v4.super_class = NSKeyValueFastMutableSet;
    [(NSKeyValueFastMutableSet *)&v4 addObjectsFromArray:a3];
  }
}

- (void)intersectSet:(id)a3
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
    [(NSKeyValueFastMutableSet *)&v3 intersectSet:a3];
  }
}

- (void)minusSet:(id)a3
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
    [(NSKeyValueFastMutableSet *)&v3 minusSet:a3];
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

- (void)removeObject:(id)a3
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = a3;
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

- (void)setSet:(id)a3
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
    [(NSKeyValueFastMutableSet *)&v3 setSet:a3];
  }
}

- (void)unionSet:(id)a3
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
    [(NSKeyValueFastMutableSet *)&v3 unionSet:a3];
  }
}

@end