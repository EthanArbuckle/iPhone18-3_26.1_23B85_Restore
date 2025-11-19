@interface UNNotificationResponse
- (int64_t)mt_actionType;
@end

@implementation UNNotificationResponse

- (int64_t)mt_actionType
{
  [(UNNotificationResponse *)self actionIdentifier];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007A0A4;
  v8 = v7[3] = &unk_1004D96F8;
  v2 = v8;
  v3 = sub_100079D44(v7);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end