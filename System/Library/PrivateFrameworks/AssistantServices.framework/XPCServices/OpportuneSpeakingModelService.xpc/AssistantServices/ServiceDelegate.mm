@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [connectionCopy valueForEntitlement:@"com.apple.siri.opportune_speaking_model_service"];

  if (v5)
  {
    v6 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315394;
      v11 = "[ServiceDelegate listener:shouldAcceptNewConnection:]";
      v12 = 2112;
      v13 = connectionCopy;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s %@ connected", &v10, 0x16u);
    }

    v7 = AFOpportuneSpeakingModelServiceInterface();
    [connectionCopy setExportedInterface:v7];

    v8 = objc_opt_new();
    [connectionCopy setExportedObject:v8];
    [connectionCopy resume];
  }

  return v5 != 0;
}

@end