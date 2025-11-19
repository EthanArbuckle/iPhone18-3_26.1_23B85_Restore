@interface NSKeyValueFastMutableCollection2Getter
- (NSKeyValueFastMutableCollection2Getter)initWithContainerClassID:(id)a3 key:(id)a4 baseGetter:(id)a5 mutatingMethods:(id)a6 proxyClass:(Class)a7;
- (void)dealloc;
@end

@implementation NSKeyValueFastMutableCollection2Getter

- (NSKeyValueFastMutableCollection2Getter)initWithContainerClassID:(id)a3 key:(id)a4 baseGetter:(id)a5 mutatingMethods:(id)a6 proxyClass:(Class)a7
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = NSKeyValueFastMutableCollection2Getter;
  v9 = [(NSKeyValueProxyGetter *)&v11 initWithContainerClassID:a3 key:a4 proxyClass:a7];
  if (v9)
  {
    v9->_baseGetter = a5;
    v9->_mutatingMethods = a6;
  }

  return v9;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSKeyValueFastMutableCollection2Getter;
  [(NSKeyValueAccessor *)&v3 dealloc];
}

@end