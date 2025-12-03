@interface HKPluginProxyProvider
- (HKPluginProxyProvider)initWithHealthStore:(id)store pluginIdentifier:(id)identifier exportedObject:(id)object;
@end

@implementation HKPluginProxyProvider

- (HKPluginProxyProvider)initWithHealthStore:(id)store pluginIdentifier:(id)identifier exportedObject:(id)object
{
  objectCopy = object;
  identifierCopy = identifier;
  storeCopy = store;
  exportedInterface = [objectCopy exportedInterface];
  remoteInterface = [objectCopy remoteInterface];
  v15.receiver = self;
  v15.super_class = HKPluginProxyProvider;
  v13 = [(HKProxyProvider *)&v15 initWithSource:storeCopy serviceIdentifier:identifierCopy exportedObject:objectCopy exportedInterface:exportedInterface remoteInterface:remoteInterface];

  return v13;
}

@end