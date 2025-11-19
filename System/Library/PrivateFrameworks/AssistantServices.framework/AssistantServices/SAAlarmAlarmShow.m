@interface SAAlarmAlarmShow
- (id)_ad_alarmResponseForResponse:(id)a3;
- (id)_ad_internalAlarmIdentifiers;
- (void)_ad_getAlarmRequestRepresentationWithCompletionHandler:(id)a3;
@end

@implementation SAAlarmAlarmShow

- (id)_ad_alarmResponseForResponse:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = objc_alloc_init(SACommandSucceeded);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_ad_getAlarmRequestRepresentationWithCompletionHandler:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10024C660;
  v4[3] = &unk_100519DE0;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  sub_10019F930(v4);
}

- (id)_ad_internalAlarmIdentifiers
{
  v2 = [(SAAlarmAlarmShow *)self alarmIds];
  v3 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v2, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = sub_10024B22C(*(*(&v11 + 1) + 8 * i));
        [v3 addObject:{v9, v11}];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

@end