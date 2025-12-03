@interface HomeNotificationAction
+ (id)actionsFromArrayOfDictionaries:(id)dictionaries;
- (HomeNotificationAction)initWithDictionary:(id)dictionary;
- (unint64_t)hash;
@end

@implementation HomeNotificationAction

+ (id)actionsFromArrayOfDictionaries:(id)dictionaries
{
  dictionariesCopy = dictionaries;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000BCC4;
  v8[3] = &unk_100018D78;
  v9 = objc_opt_new();
  v4 = v9;
  [dictionariesCopy enumerateObjectsUsingBlock:v8];

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

- (HomeNotificationAction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (qword_10001EA18[0] != -1)
  {
    sub_10000CA8C();
  }

  allKeys = [dictionaryCopy allKeys];
  v6 = [NSSet setWithArray:allKeys];

  if ([v6 count] && objc_msgSend(qword_10001EA10, "intersectsSet:", v6))
  {
    v17.receiver = self;
    v17.super_class = HomeNotificationAction;
    v7 = [(HomeNotificationAction *)&v17 init];
    if (v7)
    {
      v8 = [dictionaryCopy objectForKeyedSubscript:@"itemType"];
      [(HomeNotificationAction *)v7 setType:v8];

      v9 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
      [(HomeNotificationAction *)v7 setIdentifier:v9];

      v10 = [dictionaryCopy objectForKeyedSubscript:@"shouldDismiss"];
      -[HomeNotificationAction setShouldDismiss:](v7, "setShouldDismiss:", [v10 BOOLValue]);

      v11 = [dictionaryCopy objectForKeyedSubscript:@"services.uuid"];
      v12 = [v11 na_map:&stru_100018DB8];
      v13 = [NSSet setWithArray:v12];
      [(HomeNotificationAction *)v7 setServiceUUIDs:v13];

      v14 = [dictionaryCopy objectForKeyedSubscript:@"title"];
      [(HomeNotificationAction *)v7 setTitle:v14];
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (unint64_t)hash
{
  type = [(HomeNotificationAction *)self type];
  identifier = [(HomeNotificationAction *)self identifier];
  v5 = [NSNumber numberWithBool:[(HomeNotificationAction *)self shouldDismiss]];
  serviceUUIDs = [(HomeNotificationAction *)self serviceUUIDs];
  title = [(HomeNotificationAction *)self title];
  v8 = [NSString stringWithFormat:@"%@-%@-%@-%@-%@", type, identifier, v5, serviceUUIDs, title];
  v9 = [v8 hash];

  return v9;
}

@end