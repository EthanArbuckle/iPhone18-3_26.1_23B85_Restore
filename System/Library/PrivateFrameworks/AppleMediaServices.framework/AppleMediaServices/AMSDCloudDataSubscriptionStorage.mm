@interface AMSDCloudDataSubscriptionStorage
+ (BOOL)resetStorage;
- (BOOL)writeSubscriptionDate:(id)date identifier:(id)identifier;
- (id)subscriptionDateForIdentifier:(id)identifier;
@end

@implementation AMSDCloudDataSubscriptionStorage

+ (BOOL)resetStorage
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 removeObjectForKey:@"AMSCloudDataDatabaseSubscriptionDate"];
  [v2 synchronize];

  return 1;
}

- (BOOL)writeSubscriptionDate:(id)date identifier:(id)identifier
{
  identifierCopy = identifier;
  dateCopy = date;
  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 objectForKey:@"AMSCloudDataDatabaseSubscriptionDate"];
  v9 = v8;
  if (!v8)
  {
    v8 = &__NSDictionary0__struct;
  }

  v10 = [v8 mutableCopy];

  [v10 setObject:dateCopy forKeyedSubscript:identifierCopy];
  [v7 setObject:v10 forKey:@"AMSCloudDataDatabaseSubscriptionDate"];
  [v7 synchronize];

  return 1;
}

- (id)subscriptionDateForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:@"AMSCloudDataDatabaseSubscriptionDate"];
  v6 = [v5 objectForKeyedSubscript:identifierCopy];

  return v6;
}

@end