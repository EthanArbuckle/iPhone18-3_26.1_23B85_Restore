@interface NSKeyValueFastMutableArray1
- (id)_proxyInitWithContainer:(id)a3 getter:(id)a4;
- (id)objectAtIndex:(unint64_t)a3;
- (id)objectsAtIndexes:(id)a3;
- (void)_proxyNonGCFinalize;
- (void)getObjects:(id *)a3 range:(_NSRange)a4;
@end

@implementation NSKeyValueFastMutableArray1

- (id)_proxyInitWithContainer:(id)a3 getter:(id)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSKeyValueFastMutableArray1;
  v5 = [(NSKeyValueFastMutableArray *)&v7 _proxyInitWithContainer:a3 getter:?];
  if (v5)
  {
    v5[4] = [a4 nonmutatingMethods];
  }

  return v5;
}

- (void)_proxyNonGCFinalize
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSKeyValueFastMutableArray1;
  [(NSKeyValueFastMutableArray *)&v3 _proxyNonGCFinalize];
  self->_nonmutatingMethods = 0;
}

- (void)getObjects:(id *)a3 range:(_NSRange)a4
{
  v5 = *MEMORY[0x1E69E9840];
  if (self->_nonmutatingMethods->getObjectsRange)
  {

    method_invoke();
  }

  else
  {
    v4.receiver = self;
    v4.super_class = NSKeyValueFastMutableArray1;
    [(NSKeyValueFastMutableArray1 *)&v4 getObjects:a3 range:a4.location, a4.length];
  }
}

- (id)objectAtIndex:(unint64_t)a3
{
  if (self->_nonmutatingMethods->objectAtIndex)
  {

    method_invoke();
  }

  else
  {
    v4 = [[NSIndexSet alloc] initWithIndex:a3];
    method_invoke();
    v6 = v5;

    return [v6 objectAtIndex:0];
  }

  return result;
}

- (id)objectsAtIndexes:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  if (self->_nonmutatingMethods->objectsAtIndexes)
  {

    method_invoke();
  }

  else
  {
    v4.receiver = self;
    v4.super_class = NSKeyValueFastMutableArray1;
    return [(NSKeyValueFastMutableArray1 *)&v4 objectsAtIndexes:a3];
  }

  return result;
}

@end