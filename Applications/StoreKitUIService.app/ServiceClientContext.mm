@interface ServiceClientContext
- (ServiceClientContext)initWithConfigurationDictionary:(id)dictionary;
- (void)getDefaultMetricsControllerWithCompletionBlock:(id)block;
@end

@implementation ServiceClientContext

- (ServiceClientContext)initWithConfigurationDictionary:(id)dictionary
{
  v8.receiver = self;
  v8.super_class = ServiceClientContext;
  v3 = [(ServiceClientContext *)&v8 initWithConfigurationDictionary:dictionary];
  v4 = v3;
  if (v3)
  {
    clientInterface = [(ServiceClientContext *)v3 clientInterface];
    [clientInterface setClientIdentifier:@"StoreKitUIService"];
    v6 = +[SUWebViewManager defaultLocalStoragePath];
    [clientInterface setLocalStoragePath:v6];
  }

  return v4;
}

- (void)getDefaultMetricsControllerWithCompletionBlock:(id)block
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000BF68;
  v5[3] = &unk_100051618;
  selfCopy = self;
  blockCopy = block;
  v4.receiver = selfCopy;
  v4.super_class = ServiceClientContext;
  v3 = blockCopy;
  [(ServiceClientContext *)&v4 getDefaultMetricsControllerWithCompletionBlock:v5];
}

@end