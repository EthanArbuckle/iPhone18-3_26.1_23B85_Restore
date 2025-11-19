@interface AMSDCloudDataSubscriptionStorage
+ (BOOL)resetStorage;
- (BOOL)writeSubscriptionDate:(id)a3 identifier:(id)a4;
- (id)subscriptionDateForIdentifier:(id)a3;
@end

@implementation AMSDCloudDataSubscriptionStorage

+ (BOOL)resetStorage
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 removeObjectForKey:@"AMSCloudDataDatabaseSubscriptionDate"];
  [v2 synchronize];

  return 1;
}

- (BOOL)writeSubscriptionDate:(id)a3 identifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 objectForKey:@"AMSCloudDataDatabaseSubscriptionDate"];
  v9 = v8;
  if (!v8)
  {
    v8 = &__NSDictionary0__struct;
  }

  v10 = [v8 mutableCopy];

  [v10 setObject:v6 forKeyedSubscript:v5];
  [v7 setObject:v10 forKey:@"AMSCloudDataDatabaseSubscriptionDate"];
  [v7 synchronize];

  return 1;
}

- (id)subscriptionDateForIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:@"AMSCloudDataDatabaseSubscriptionDate"];
  v6 = [v5 objectForKeyedSubscript:v3];

  return v6;
}

@end