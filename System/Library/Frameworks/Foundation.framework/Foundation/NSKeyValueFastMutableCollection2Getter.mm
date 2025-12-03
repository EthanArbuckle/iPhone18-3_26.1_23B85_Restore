@interface NSKeyValueFastMutableCollection2Getter
- (NSKeyValueFastMutableCollection2Getter)initWithContainerClassID:(id)d key:(id)key baseGetter:(id)getter mutatingMethods:(id)methods proxyClass:(Class)class;
- (void)dealloc;
@end

@implementation NSKeyValueFastMutableCollection2Getter

- (NSKeyValueFastMutableCollection2Getter)initWithContainerClassID:(id)d key:(id)key baseGetter:(id)getter mutatingMethods:(id)methods proxyClass:(Class)class
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = NSKeyValueFastMutableCollection2Getter;
  v9 = [(NSKeyValueProxyGetter *)&v11 initWithContainerClassID:d key:key proxyClass:class];
  if (v9)
  {
    v9->_baseGetter = getter;
    v9->_mutatingMethods = methods;
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