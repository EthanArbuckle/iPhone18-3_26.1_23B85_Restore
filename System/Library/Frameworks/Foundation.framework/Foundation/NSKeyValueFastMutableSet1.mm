@interface NSKeyValueFastMutableSet1
- (id)_proxyInitWithContainer:(id)a3 getter:(id)a4;
- (void)_proxyNonGCFinalize;
@end

@implementation NSKeyValueFastMutableSet1

- (id)_proxyInitWithContainer:(id)a3 getter:(id)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSKeyValueFastMutableSet1;
  v5 = [(NSKeyValueFastMutableSet *)&v7 _proxyInitWithContainer:a3 getter:?];
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
  v3.super_class = NSKeyValueFastMutableSet1;
  [(NSKeyValueFastMutableSet *)&v3 _proxyNonGCFinalize];
  self->_nonmutatingMethods = 0;
}

@end