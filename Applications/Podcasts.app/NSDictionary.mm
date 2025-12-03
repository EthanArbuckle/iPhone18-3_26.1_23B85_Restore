@interface NSDictionary
- (NSNumber)domainVersion;
- (NSNumber)dsid;
- (NSNumber)storeId;
- (NSString)domain;
- (NSString)triggeredBy;
- (NSString)type;
- (id)mt_valueOrNilForKey:(id)key type:(Class)type;
- (id)queryString;
@end

@implementation NSDictionary

- (id)queryString
{
  v3 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  selfCopy = self;
  v5 = [(NSDictionary *)selfCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 description];
        v11 = [(NSDictionary *)selfCopy objectForKey:v9];
        v12 = [v11 description];

        pf_stringWithPercentEscape = [v10 pf_stringWithPercentEscape];
        pf_stringWithPercentEscape2 = [v12 pf_stringWithPercentEscape];
        v15 = [NSString stringWithFormat:@"%@=%@", pf_stringWithPercentEscape, pf_stringWithPercentEscape2, v18];
        [v3 addObject:v15];
      }

      v6 = [(NSDictionary *)selfCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v16 = [v3 componentsJoinedByString:@"&"];

  return v16;
}

- (id)mt_valueOrNilForKey:(id)key type:(Class)type
{
  keyCopy = key;
  v7 = [(NSDictionary *)self objectForKey:keyCopy];
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      goto LABEL_11;
    }

    v10 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromClass(type);
      v15 = 138543874;
      v16 = v7;
      v17 = 2114;
      typeCopy = v12;
      v19 = 2114;
      selfCopy = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Notifications: Trying to cast %{public}@ from %{public}@ to %{public}@ fails", &v15, 0x20u);
    }
  }

  else
  {
    v9 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543874;
      v16 = keyCopy;
      v17 = 2114;
      typeCopy = type;
      v19 = 2114;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Notifications: Failed to parse %{public}@ as type %{public}@ from notification %{public}@", &v15, 0x20u);
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (NSNumber)dsid
{
  v3 = objc_opt_class();

  return [(NSDictionary *)self mt_valueOrNilForKey:@"dsid" type:v3];
}

- (NSString)domain
{
  v3 = objc_opt_class();

  return [(NSDictionary *)self mt_valueOrNilForKey:@"domain" type:v3];
}

- (NSNumber)domainVersion
{
  v3 = objc_opt_class();

  return [(NSDictionary *)self mt_valueOrNilForKey:@"domainVersion" type:v3];
}

- (NSNumber)storeId
{
  v3 = objc_opt_class();

  return [(NSDictionary *)self mt_valueOrNilForKey:@"storeAdamId" type:v3];
}

- (NSString)type
{
  v3 = objc_opt_class();

  return [(NSDictionary *)self mt_valueOrNilForKey:@"type" type:v3];
}

- (NSString)triggeredBy
{
  v3 = objc_opt_class();

  return [(NSDictionary *)self mt_valueOrNilForKey:@"triggered-by" type:v3];
}

@end