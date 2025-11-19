@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [v4 valueForEntitlement:@"com.apple.siri.opportune_speaking_model_service"];

  if (v5)
  {
    v6 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315394;
      v11 = "[ServiceDelegate listener:shouldAcceptNewConnection:]";
      v12 = 2112;
      v13 = v4;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s %@ connected", &v10, 0x16u);
    }

    v7 = AFOpportuneSpeakingModelServiceInterface();
    [v4 setExportedInterface:v7];

    v8 = objc_opt_new();
    [v4 setExportedObject:v8];
    [v4 resume];
  }

  return v5 != 0;
}

@end