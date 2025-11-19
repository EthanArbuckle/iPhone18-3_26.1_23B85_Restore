@interface RAPWebBundleConfigurationManager
+ (void)saveConfiguration:(id)a3;
- (id)configuration;
@end

@implementation RAPWebBundleConfigurationManager

- (id)configuration
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"RAPWebBundleConfigurationManagerKey"];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v11 = 0;
  v5 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v4 fromData:v3 error:&v11];
  v6 = v11;

  if (v6)
  {
    v7 = sub_100038318();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Web Bundle Configuration Retrieve Error: %@", buf, 0xCu);
    }
  }

  if (v5)
  {
    v8 = [v5 copy];
  }

  else
  {
LABEL_8:
    v9 = sub_100038318();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Creating new RAPWebBundleConfiguration...", buf, 2u);
    }

    v8 = objc_alloc_init(RAPWebBundleConfiguration);
  }

  return v8;
}

+ (void)saveConfiguration:(id)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  v8 = 0;
  v5 = [NSKeyedArchiver archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v8];

  v6 = v8;
  if (v6)
  {
    v7 = sub_100038318();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Web Bundle Configuration Save Error: %@", buf, 0xCu);
    }
  }

  else
  {
    [v4 setObject:v5 forKey:@"RAPWebBundleConfigurationManagerKey"];
    [v4 synchronize];
  }
}

@end