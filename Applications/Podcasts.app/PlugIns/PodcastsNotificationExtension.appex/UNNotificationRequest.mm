@interface UNNotificationRequest
+ (BOOL)mt_isUuidRequestIdentifier:(id)identifier matchForPodcastUuid:(id)uuid;
+ (id)mt_uniqueRequestIdentifierForPodcastUuid:(id)uuid;
+ (void)mt_accessSchedulingOptionsByRequestIdentifier:(id)identifier;
- (unint64_t)mt_schedulingOptions;
- (void)mt_setSchedulingOptions:(unint64_t)options;
@end

@implementation UNNotificationRequest

+ (id)mt_uniqueRequestIdentifierForPodcastUuid:(id)uuid
{
  uuidCopy = uuid;
  if (![(__CFString *)uuidCopy length])
  {
    v4 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Invalid parameter", buf, 2u);
    }
  }

  if (![(__CFString *)uuidCopy length])
  {

    uuidCopy = @"null";
  }

  v5 = +[NSUUID UUID];
  uUIDString = [v5 UUIDString];

  v7 = [NSString stringWithFormat:@"podcastUuid-%@/%@", uuidCopy, uUIDString];

  return v7;
}

+ (BOOL)mt_isUuidRequestIdentifier:(id)identifier matchForPodcastUuid:(id)uuid
{
  identifierCopy = identifier;
  uuidCopy = uuid;
  if (![uuidCopy length])
  {
    v7 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Invalid parameter", buf, 2u);
    }
  }

  if ([uuidCopy length])
  {
    uuidCopy = [NSString stringWithFormat:@"podcastUuid-%@", uuidCopy];
    v9 = [identifierCopy hasPrefix:uuidCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)mt_accessSchedulingOptionsByRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = identifierCopy;
  if (qword_100036810 != -1)
  {
    sub_100015D88();
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (identifierCopy)
  {
LABEL_3:
    v5 = qword_100036818;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000115BC;
    block[3] = &unk_10002CF18;
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
  v9 = sub_1000116D8;
  v10 = sub_1000116E8;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000116F0;
  v5[3] = &unk_10002CF40;
  v5[4] = self;
  v5[5] = &v6;
  [objc_opt_class() mt_accessSchedulingOptionsByRequestIdentifier:v5];
  v2 = v7[5];
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  _Block_object_dispose(&v6, 8);

  return integerValue;
}

- (void)mt_setSchedulingOptions:(unint64_t)options
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000117FC;
  v3[3] = &unk_10002CF68;
  v3[4] = self;
  v3[5] = options;
  [objc_opt_class() mt_accessSchedulingOptionsByRequestIdentifier:v3];
}

@end