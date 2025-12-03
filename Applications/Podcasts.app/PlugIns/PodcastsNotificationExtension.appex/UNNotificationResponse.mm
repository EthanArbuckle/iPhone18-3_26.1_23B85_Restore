@interface UNNotificationResponse
- (int64_t)mt_actionType;
@end

@implementation UNNotificationResponse

- (int64_t)mt_actionType
{
  [(UNNotificationResponse *)self actionIdentifier];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100010260;
  v8 = v7[3] = &unk_10002CE18;
  v2 = v8;
  v3 = sub_10000FF00(v7);
  v4 = v3;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

@end