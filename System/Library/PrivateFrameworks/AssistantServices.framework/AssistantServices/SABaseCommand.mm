@interface SABaseCommand
- (BOOL)ad_shouldLogToMetrics;
- (id)ad_deferredMetricsContext;
- (void)_adui_handleWithCompletion:(id)completion;
@end

@implementation SABaseCommand

- (id)ad_deferredMetricsContext
{
  v3 = objc_alloc_init(NSMutableDictionary);
  groupIdentifier = [(SABaseCommand *)self groupIdentifier];
  if (groupIdentifier)
  {
    [v3 setObject:groupIdentifier forKey:@"groupIdentifier"];
  }

  encodedClassName = [(SABaseCommand *)self encodedClassName];
  if (encodedClassName)
  {
    [v3 setObject:encodedClassName forKey:@"classIdentifier"];
  }

  return v3;
}

- (BOOL)ad_shouldLogToMetrics
{
  v2 = objc_opt_class();

  return [v2 ad_shouldClassLogToMetrics];
}

- (void)_adui_handleWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "[SABaseCommand(ADUIService) _adui_handleWithCompletion:]";
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s This command is not supposed to be handled by assistantd", &v6, 0xCu);
    if (!completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (completionCopy)
  {
LABEL_3:
    v5 = [AFError errorWithCode:100];
    completionCopy[2](completionCopy, 0, v5);
  }

LABEL_4:
}

@end