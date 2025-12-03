@interface FPXServiceEndpointFactory
- (FPXServiceEndpointFactory)initWithServiceSources:(id)sources domainContext:(id)context;
- (void)getListenerEndpointForServiceName:(id)name completionHandler:(id)handler;
@end

@implementation FPXServiceEndpointFactory

- (FPXServiceEndpointFactory)initWithServiceSources:(id)sources domainContext:(id)context
{
  sourcesCopy = sources;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = FPXServiceEndpointFactory;
  v8 = [(FPXServiceEndpointFactory *)&v12 init];
  if (v8)
  {
    v9 = [sourcesCopy copy];
    serviceSources = v8->_serviceSources;
    v8->_serviceSources = v9;

    objc_storeStrong(&v8->_domainContext, context);
  }

  return v8;
}

- (void)getListenerEndpointForServiceName:(id)name completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [(NSDictionary *)self->_serviceSources objectForKeyedSubscript:name];
  v11 = 0;
  v8 = [v7 makeListenerEndpointAndReturnError:&v11];
  v9 = v11;

  if (v9)
  {
    v10 = [(FPXDomainContext *)self->_domainContext internalErrorFromVendorError:v9 callerDescription:@"getListenerEndpointForServiceName"];
  }

  else
  {
    v10 = 0;
  }

  handlerCopy[2](handlerCopy, v8, v10);
}

@end