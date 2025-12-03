@interface NSKeyValueFastMutableCollection1Getter
- (NSKeyValueFastMutableCollection1Getter)initWithContainerClassID:(id)d key:(id)key nonmutatingMethods:(id)methods mutatingMethods:(id)mutatingMethods proxyClass:(Class)class;
- (void)dealloc;
@end

@implementation NSKeyValueFastMutableCollection1Getter

- (NSKeyValueFastMutableCollection1Getter)initWithContainerClassID:(id)d key:(id)key nonmutatingMethods:(id)methods mutatingMethods:(id)mutatingMethods proxyClass:(Class)class
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = NSKeyValueFastMutableCollection1Getter;
  v9 = [(NSKeyValueProxyGetter *)&v11 initWithContainerClassID:d key:key proxyClass:class];
  if (v9)
  {
    v9->_nonmutatingMethods = methods;
    v9->_mutatingMethods = mutatingMethods;
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