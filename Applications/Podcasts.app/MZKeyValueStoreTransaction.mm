@interface MZKeyValueStoreTransaction
- (MZKeyValueStoreTransaction)initWithType:(int)a3 domain:(id)a4 URL:(id)a5 keys:(id)a6;
- (NSString)action;
- (id)assertionName;
- (id)description;
- (id)userInfoValueForKey:(id)a3;
- (void)setUserInfoValue:(id)a3 forKey:(id)a4;
@end

@implementation MZKeyValueStoreTransaction

- (MZKeyValueStoreTransaction)initWithType:(int)a3 domain:(id)a4 URL:(id)a5 keys:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v19.receiver = self;
  v19.super_class = MZKeyValueStoreTransaction;
  v13 = [(MZKeyValueStoreTransaction *)&v19 init];
  v14 = v13;
  if (v13)
  {
    v13->_type = a3;
    v15 = [v10 copy];
    domain = v14->_domain;
    v14->_domain = v15;

    sinceDomainVersion = v14->_sinceDomainVersion;
    v14->_sinceDomainVersion = 0;

    objc_storeStrong(&v14->_URL, a5);
    objc_storeStrong(&v14->_keys, a6);
  }

  return v14;
}

- (void)setUserInfoValue:(id)a3 forKey:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(MZKeyValueStoreTransaction *)v7 userInfo];

  if (!v8)
  {
    v9 = +[NSMutableDictionary dictionary];
    [(MZKeyValueStoreTransaction *)v7 setUserInfo:v9];
  }

  v10 = [(MZKeyValueStoreTransaction *)v7 userInfo];
  [v10 setValue:v11 forKey:v6];

  objc_sync_exit(v7);
}

- (id)userInfoValueForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MZKeyValueStoreTransaction *)v5 userInfo];
  v7 = [v6 objectForKey:v4];

  objc_sync_exit(v5);

  return v7;
}

- (id)description
{
  v3 = [(MZKeyValueStoreTransaction *)self type];
  switch(v3)
  {
    case 3u:
      v6 = &stru_1004F3018;
      v7 = @"REMOVE";
      break;
    case 2u:
      v6 = &stru_1004F3018;
      v7 = @"SET";
      break;
    case 1u:
      v4 = [(MZKeyValueStoreTransaction *)self keys];
      v5 = [v4 count];

      if (v5)
      {
        v6 = &stru_1004F3018;
        v7 = @"GET";
      }

      else
      {
        v8 = [(MZKeyValueStoreTransaction *)self sinceDomainVersion];
        v6 = [NSString stringWithFormat:@" since-domain-version=%@", v8];

        v7 = @"GET-ALL";
      }

      break;
    default:
      v6 = &stru_1004F3018;
      v7 = @"Unknown";
      break;
  }

  v9 = [(MZKeyValueStoreTransaction *)self URL];
  v10 = [v9 absoluteString];
  if ([v10 length])
  {
    v11 = [(MZKeyValueStoreTransaction *)self URL];
    v12 = [v11 absoluteString];
    v13 = [v12 isEqualToString:@"(null)"];

    if (v13)
    {
      v14 = &stru_1004F3018;
      goto LABEL_16;
    }

    v9 = [(MZKeyValueStoreTransaction *)self URL];
    v14 = [NSString stringWithFormat:@" url=%@", v9];
  }

  else
  {

    v14 = &stru_1004F3018;
  }

LABEL_16:
  v15 = [(MZKeyValueStoreTransaction *)self keys];
  v16 = [v15 componentsJoinedByString:{@", "}];
  v17 = [NSString stringWithFormat:@" keys=%@", v16];

  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  v20 = [NSString stringWithFormat:@"<%@:%p type:%@%@%@%@>", v19, self, v7, v14, v17, v6];

  return v20;
}

- (id)assertionName
{
  v3 = [(MZKeyValueStoreTransaction *)self type];
  if (v3 == 3)
  {
    v6 = @"REMOVE";
    goto LABEL_9;
  }

  if (v3 == 2)
  {
    v6 = @"SET";
    goto LABEL_9;
  }

  if (v3 != 1)
  {
    v6 = @"Unknown";
    goto LABEL_9;
  }

  v4 = [(MZKeyValueStoreTransaction *)self keys];
  v5 = [v4 count];

  if (v5)
  {
    v6 = @"GET";
LABEL_9:
    v7 = &stru_1004F3018;
    goto LABEL_10;
  }

  v12 = [(MZKeyValueStoreTransaction *)self sinceDomainVersion];
  v7 = [NSString stringWithFormat:@" since-domain-version=%@", v12];

  v6 = @"GET-ALL";
LABEL_10:
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [NSString stringWithFormat:@"<%@ type:%@>", v9, v6];

  return v10;
}

- (NSString)action
{
  v3 = [(MZKeyValueStoreTransaction *)self processor];
  v4 = [v3 dataForSetTransaction:self key:kPodcastsPushNotificationActionKey version:0];

  v12 = 0;
  v5 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v12];
  v6 = v12;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    v9 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v7 localizedDescription];
      *buf = 138412290;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Processor returned data for action that isn't a valid archive. Error: %@", buf, 0xCu);
    }
  }

  return v5;
}

@end