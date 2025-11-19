@interface SAAlarmDelete
- (id)_ad_alarmResponseForResponse:(id)a3;
- (void)_ad_getAlarmRequestRepresentationWithCompletionHandler:(id)a3;
@end

@implementation SAAlarmDelete

- (id)_ad_alarmResponseForResponse:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = objc_alloc_init(SAAlarmDeleteCompleted);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_ad_getAlarmRequestRepresentationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AFDeleteAlarmRequest);
  v6 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(SAAlarmDelete *)self alarmIds];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = sub_10024B22C(*(*(&v14 + 1) + 8 * v11));
        if (v12)
        {
          [v6 addObject:v12];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v9);
  }

  [v5 setAlarmIdentifiers:v6];
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v19 = "[SAAlarmDelete(ADAlarmTransformer) _ad_getAlarmRequestRepresentationWithCompletionHandler:]";
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Asking to delete alarms with identifiers %@", buf, 0x16u);
  }

  v4[2](v4, v5);
}

@end