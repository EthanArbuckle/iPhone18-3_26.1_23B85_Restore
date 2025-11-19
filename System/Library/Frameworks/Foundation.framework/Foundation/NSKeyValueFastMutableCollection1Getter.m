@interface NSKeyValueFastMutableCollection1Getter
- (NSKeyValueFastMutableCollection1Getter)initWithContainerClassID:(id)a3 key:(id)a4 nonmutatingMethods:(id)a5 mutatingMethods:(id)a6 proxyClass:(Class)a7;
- (void)dealloc;
@end

@implementation NSKeyValueFastMutableCollection1Getter

- (NSKeyValueFastMutableCollection1Getter)initWithContainerClassID:(id)a3 key:(id)a4 nonmutatingMethods:(id)a5 mutatingMethods:(id)a6 proxyClass:(Class)a7
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = NSKeyValueFastMutableCollection1Getter;
  v9 = [(NSKeyValueProxyGetter *)&v11 initWithContainerClassID:a3 key:a4 proxyClass:a7];
  if (v9)
  {
    v9->_nonmutatingMethods = a5;
    v9->_mutatingMethods = a6;
  }

  return v9;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSKeyValueFastMutableCollection1Getter;
  [(NSKeyValueAccessor *)&v3 dealloc];
}

@end