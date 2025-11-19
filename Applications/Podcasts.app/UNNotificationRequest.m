@interface UNNotificationRequest
+ (BOOL)mt_isUuidRequestIdentifier:(id)a3 matchForPodcastUuid:(id)a4;
+ (id)mt_uniqueRequestIdentifierForPodcastUuid:(id)a3;
+ (void)mt_accessSchedulingOptionsByRequestIdentifier:(id)a3;
- (unint64_t)mt_schedulingOptions;
- (void)mt_setSchedulingOptions:(unint64_t)a3;
@end

@implementation UNNotificationRequest

+ (id)mt_uniqueRequestIdentifierForPodcastUuid:(id)a3
{
  v3 = a3;
  if (![(__CFString *)v3 length])
  {
    v4 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Invalid parameter", buf, 2u);
    }
  }

  if (![(__CFString *)v3 length])
  {

    v3 = @"null";
  }

  v5 = +[NSUUID UUID];
  v6 = [v5 UUIDString];

  v7 = [NSString stringWithFormat:@"podcastUuid-%@/%@", v3, v6];

  return v7;
}

+ (BOOL)mt_isUuidRequestIdentifier:(id)a3 matchForPodcastUuid:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (![v6 length])
  {
    v7 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Invalid parameter", buf, 2u);
    }
  }

  if ([v6 length])
  {
    v8 = [NSString stringWithFormat:@"podcastUuid-%@", v6];
    v9 = [v5 hasPrefix:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)mt_accessSchedulingOptionsByRequestIdentifier:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (qword_100583D28 != -1)
  {
    sub_1003B2CEC();
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v3)
  {
LABEL_3:
    v5 = qword_100583D30;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001278C0;
    block[3] = &unk_1004D84D0;
    v7 = v4;
    dispatch_sync(v5, block);
  }

LABEL_4:
}

- (unint64_t)mt_schedulingOptions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100008B5C;
  v10 = sub_10003B584;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001279DC;
  v5[3] = &unk_1004D9818;
  v5[4] = self;
  v5[5] = &v6;
  [objc_opt_class() mt_accessSchedulingOptionsByRequestIdentifier:v5];
  v2 = v7[5];
  if (v2)
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)mt_setSchedulingOptions:(unint64_t)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100127AE8;
  v3[3] = &unk_1004DD380;
  v3[4] = self;
  v3[5] = a3;
  [objc_opt_class() mt_accessSchedulingOptionsByRequestIdentifier:v3];
}

@end