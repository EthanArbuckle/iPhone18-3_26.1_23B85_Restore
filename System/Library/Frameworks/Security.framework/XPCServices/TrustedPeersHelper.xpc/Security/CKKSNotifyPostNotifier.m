@interface CKKSNotifyPostNotifier
+ (void)post:(id)a3;
@end

@implementation CKKSNotifyPostNotifier

+ (void)post:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = sub_10020F5C8(@"ckks", 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "posting notification %@", &v5, 0xCu);
    }

    notify_post([v3 UTF8String]);
  }
}

@end