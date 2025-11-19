@interface HomeNotificationAction
+ (id)actionsFromArrayOfDictionaries:(id)a3;
- (HomeNotificationAction)initWithDictionary:(id)a3;
- (unint64_t)hash;
@end

@implementation HomeNotificationAction

+ (id)actionsFromArrayOfDictionaries:(id)a3
{
  v3 = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000BCC4;
  v8[3] = &unk_100018D78;
  v9 = objc_opt_new();
  v4 = v9;
  [v3 enumerateObjectsUsingBlock:v8];

  if ([v4 count])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (HomeNotificationAction)initWithDictionary:(id)a3
{
  v4 = a3;
  if (qword_10001EA18[0] != -1)
  {
    sub_10000CA8C();
  }

  v5 = [v4 allKeys];
  v6 = [NSSet setWithArray:v5];

  if ([v6 count] && objc_msgSend(qword_10001EA10, "intersectsSet:", v6))
  {
    v17.receiver = self;
    v17.super_class = HomeNotificationAction;
    v7 = [(HomeNotificationAction *)&v17 init];
    if (v7)
    {
      v8 = [v4 objectForKeyedSubscript:@"itemType"];
      [(HomeNotificationAction *)v7 setType:v8];

      v9 = [v4 objectForKeyedSubscript:@"identifier"];
      [(HomeNotificationAction *)v7 setIdentifier:v9];

      v10 = [v4 objectForKeyedSubscript:@"shouldDismiss"];
      -[HomeNotificationAction setShouldDismiss:](v7, "setShouldDismiss:", [v10 BOOLValue]);

      v11 = [v4 objectForKeyedSubscript:@"services.uuid"];
      v12 = [v11 na_map:&stru_100018DB8];
      v13 = [NSSet setWithArray:v12];
      [(HomeNotificationAction *)v7 setServiceUUIDs:v13];

      v14 = [v4 objectForKeyedSubscript:@"title"];
      [(HomeNotificationAction *)v7 setTitle:v14];
    }

    self = v7;
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [(HomeNotificationAction *)self type];
  v4 = [(HomeNotificationAction *)self identifier];
  v5 = [NSNumber numberWithBool:[(HomeNotificationAction *)self shouldDismiss]];
  v6 = [(HomeNotificationAction *)self serviceUUIDs];
  v7 = [(HomeNotificationAction *)self title];
  v8 = [NSString stringWithFormat:@"%@-%@-%@-%@-%@", v3, v4, v5, v6, v7];
  v9 = [v8 hash];

  return v9;
}

@end