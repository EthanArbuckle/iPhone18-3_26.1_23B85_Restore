@interface MZKeyValueStoreTransaction
- (MZKeyValueStoreTransaction)initWithType:(int)type domain:(id)domain URL:(id)l keys:(id)keys;
- (NSString)action;
- (id)assertionName;
- (id)description;
- (id)userInfoValueForKey:(id)key;
- (void)setUserInfoValue:(id)value forKey:(id)key;
@end

@implementation MZKeyValueStoreTransaction

- (MZKeyValueStoreTransaction)initWithType:(int)type domain:(id)domain URL:(id)l keys:(id)keys
{
  domainCopy = domain;
  lCopy = l;
  keysCopy = keys;
  v19.receiver = self;
  v19.super_class = MZKeyValueStoreTransaction;
  v13 = [(MZKeyValueStoreTransaction *)&v19 init];
  v14 = v13;
  if (v13)
  {
    v13->_type = type;
    v15 = [domainCopy copy];
    domain = v14->_domain;
    v14->_domain = v15;

    sinceDomainVersion = v14->_sinceDomainVersion;
    v14->_sinceDomainVersion = 0;

    objc_storeStrong(&v14->_URL, l);
    objc_storeStrong(&v14->_keys, keys);
  }

  return v14;
}

- (void)setUserInfoValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  userInfo = [(MZKeyValueStoreTransaction *)selfCopy userInfo];

  if (!userInfo)
  {
    v9 = +[NSMutableDictionary dictionary];
    [(MZKeyValueStoreTransaction *)selfCopy setUserInfo:v9];
  }

  userInfo2 = [(MZKeyValueStoreTransaction *)selfCopy userInfo];
  [userInfo2 setValue:valueCopy forKey:keyCopy];

  objc_sync_exit(selfCopy);
}

- (id)userInfoValueForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  userInfo = [(MZKeyValueStoreTransaction *)selfCopy userInfo];
  v7 = [userInfo objectForKey:keyCopy];

  objc_sync_exit(selfCopy);

  return v7;
}

- (id)description
{
  type = [(MZKeyValueStoreTransaction *)self type];
  switch(type)
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
      keys = [(MZKeyValueStoreTransaction *)self keys];
      v5 = [keys count];

      if (v5)
      {
        v6 = &stru_1004F3018;
        v7 = @"GET";
      }

      else
      {
        sinceDomainVersion = [(MZKeyValueStoreTransaction *)self sinceDomainVersion];
        v6 = [NSString stringWithFormat:@" since-domain-version=%@", sinceDomainVersion];

        v7 = @"GET-ALL";
      }

      break;
    default:
      v6 = &stru_1004F3018;
      v7 = @"Unknown";
      break;
  }

  v9 = [(MZKeyValueStoreTransaction *)self URL];
  absoluteString = [v9 absoluteString];
  if ([absoluteString length])
  {
    v11 = [(MZKeyValueStoreTransaction *)self URL];
    absoluteString2 = [v11 absoluteString];
    v13 = [absoluteString2 isEqualToString:@"(null)"];

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
  keys2 = [(MZKeyValueStoreTransaction *)self keys];
  v16 = [keys2 componentsJoinedByString:{@", "}];
  v17 = [NSString stringWithFormat:@" keys=%@", v16];

  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  v20 = [NSString stringWithFormat:@"<%@:%p type:%@%@%@%@>", v19, self, v7, v14, v17, v6];

  return v20;
}

- (id)assertionName
{
  type = [(MZKeyValueStoreTransaction *)self type];
  if (type == 3)
  {
    v6 = @"REMOVE";
    goto LABEL_9;
  }

  if (type == 2)
  {
    v6 = @"SET";
    goto LABEL_9;
  }

  if (type != 1)
  {
    v6 = @"Unknown";
    goto LABEL_9;
  }

  keys = [(MZKeyValueStoreTransaction *)self keys];
  v5 = [keys count];

  if (v5)
  {
    v6 = @"GET";
LABEL_9:
    v7 = &stru_1004F3018;
    goto LABEL_10;
  }

  sinceDomainVersion = [(MZKeyValueStoreTransaction *)self sinceDomainVersion];
  v7 = [NSString stringWithFormat:@" since-domain-version=%@", sinceDomainVersion];

  v6 = @"GET-ALL";
LABEL_10:
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [NSString stringWithFormat:@"<%@ type:%@>", v9, v6];

  return v10;
}

- (NSString)action
{
  processor = [(MZKeyValueStoreTransaction *)self processor];
  v4 = [processor dataForSetTransaction:self key:kPodcastsPushNotificationActionKey version:0];

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
      localizedDescription = [v7 localizedDescription];
      *buf = 138412290;
      v14 = localizedDescription;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Processor returned data for action that isn't a valid archive. Error: %@", buf, 0xCu);
    }
  }

  return v5;
}

@end