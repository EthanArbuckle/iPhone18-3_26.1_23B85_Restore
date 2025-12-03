@interface SAAlarmUpdate
- (id)_ad_alarmResponseForResponse:(id)response;
- (void)_ad_getAlarmRequestRepresentationWithCompletionHandler:(id)handler;
@end

@implementation SAAlarmUpdate

- (id)_ad_alarmResponseForResponse:(id)response
{
  responseCopy = response;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    alarmIdentifiers = [responseCopy alarmIdentifiers];
    v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(alarmIdentifiers, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = alarmIdentifiers;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = sub_10024AE44(*(*(&v14 + 1) + 8 * i));
          [v5 addObject:{v11, v14}];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    v12 = objc_alloc_init(SAAlarmUpdateCompleted);
    [v12 setAlarmIds:v5];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_ad_getAlarmRequestRepresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  modifications = [(SAAlarmUpdate *)self modifications];
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = objc_alloc_init(NSMutableArray);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = modifications;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        alarmId = [v12 alarmId];
        v14 = sub_10024B22C(alarmId);

        [v6 addObject:v14];
        v15 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v26 = "[SAAlarmUpdate(ADAlarmTransformer) _ad_getAlarmRequestRepresentationWithCompletionHandler:]";
          v27 = 2112;
          v28 = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Searching for alarm %@ in order to do an update", buf, 0x16u);
        }

        v16 = [v5 objectForKey:v14];
        if (!v16)
        {
          v16 = objc_alloc_init(NSMutableArray);
          [v5 setObject:v16 forKey:v14];
        }

        [v16 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v9);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10024B2BC;
  v19[3] = &unk_100517998;
  v19[5] = v5;
  v20 = handlerCopy;
  v19[4] = v6;
  v17 = handlerCopy;
  sub_10019F930(v19);
}

@end