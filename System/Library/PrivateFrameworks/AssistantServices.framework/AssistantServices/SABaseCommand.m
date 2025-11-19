@interface SABaseCommand
- (BOOL)ad_shouldLogToMetrics;
- (id)ad_deferredMetricsContext;
- (void)_adui_handleWithCompletion:(id)a3;
@end

@implementation SABaseCommand

- (id)ad_deferredMetricsContext
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(SABaseCommand *)self groupIdentifier];
  if (v4)
  {
    [v3 setObject:v4 forKey:@"groupIdentifier"];
  }

  v5 = [(SABaseCommand *)self encodedClassName];
  if (v5)
  {
    [v3 setObject:v5 forKey:@"classIdentifier"];
  }

  return v3;
}

- (BOOL)ad_shouldLogToMetrics
{
  v2 = objc_opt_class();

  return [v2 ad_shouldClassLogToMetrics];
}

- (void)_adui_handleWithCompletion:(id)a3
{
  v3 = a3;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "[SABaseCommand(ADUIService) _adui_handleWithCompletion:]";
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s This command is not supposed to be handled by assistantd", &v6, 0xCu);
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v3)
  {
LABEL_3:
    v5 = [AFError errorWithCode:100];
    v3[2](v3, 0, v5);
  }

LABEL_4:
}

@end