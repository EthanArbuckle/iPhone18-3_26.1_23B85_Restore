@interface NSKeyValueProxyGetter
- (NSKeyValueProxyGetter)initWithContainerClassID:(id)d key:(id)key proxyClass:(Class)class;
@end

@implementation NSKeyValueProxyGetter

- (NSKeyValueProxyGetter)initWithContainerClassID:(id)d key:(id)key proxyClass:(Class)class
{
  v8[3] = *MEMORY[0x1E69E9840];
  v8[1] = 0;
  v8[2] = 0;
  v7.receiver = self;
  v7.super_class = NSKeyValueProxyGetter;
  v8[0] = self;
  result = [(NSKeyValueAccessor *)&v7 initWithContainerClassID:d key:key implementation:_NSGetProxyValueWithGetter selector:0 extraArguments:v8 count:1];
  if (result)
  {
    result->_proxyClass = class;
  }

  return result;
}

@end