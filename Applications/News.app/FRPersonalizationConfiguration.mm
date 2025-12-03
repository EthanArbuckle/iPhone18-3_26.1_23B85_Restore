@interface FRPersonalizationConfiguration
- (BOOL)hasAutoFavorites;
- (BOOL)hasBundleIDMapping;
- (BOOL)hasUrlMapping;
- (FCPersonalizationBundleIDMapping)bundleIDMapping;
- (FCPersonalizationFavorabilityScores)favorabilityScores;
- (FCPersonalizationTodaySectionMapping)todaySectionMapping;
- (FCPersonalizationURLMapping)urlMapping;
- (FCPersonalizationWhitelist)whitelist;
- (FRPersonalizationAutoFavorites)autoFavorites;
- (FRPersonalizationConfiguration)initWithKeyValueStore:(id)store;
- (NSDate)coreDuetLastQueryDate;
- (NSDate)portraitLastQueryDate;
- (id)jsonEncodableObject;
- (void)setAutoFavorites:(id)favorites;
- (void)setBundleIDMappingData:(id)data;
- (void)setCoreDuetLastQueryDate:(id)date;
- (void)setFavorabilityScoresData:(id)data;
- (void)setPortraitLastQueryDate:(id)date;
- (void)setTodaySectionMapping:(id)mapping;
- (void)setURLMappingData:(id)data;
- (void)setWhitelistData:(id)data;
@end

@implementation FRPersonalizationConfiguration

- (NSDate)coreDuetLastQueryDate
{
  objc_opt_class();
  keyValueStore = [(FRPersonalizationConfiguration *)self keyValueStore];
  v4 = [keyValueStore objectForKey:@"core_duet_last_query_date"];
  v5 = FCDynamicCast();

  return v5;
}

- (NSDate)portraitLastQueryDate
{
  objc_opt_class();
  keyValueStore = [(FRPersonalizationConfiguration *)self keyValueStore];
  v4 = [keyValueStore objectForKey:@"portrait_last_query_date"];
  v5 = FCDynamicCast();

  return v5;
}

- (FRPersonalizationAutoFavorites)autoFavorites
{
  objc_opt_class();
  keyValueStore = [(FRPersonalizationConfiguration *)self keyValueStore];
  v4 = [keyValueStore objectForKey:@"auto_favorites"];
  v5 = FCDynamicCast();

  if (v5)
  {
    v9 = 0;
    v6 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v9];
    v7 = v9;
    if (v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100073A88();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (FRPersonalizationConfiguration)initWithKeyValueStore:(id)store
{
  storeCopy = store;
  v32.receiver = self;
  v32.super_class = FRPersonalizationConfiguration;
  v6 = [(FRPersonalizationConfiguration *)&v32 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keyValueStore, store);
    v8 = [NFLazy alloc];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10005A1C0;
    v30[3] = &unk_1000C3B88;
    v9 = storeCopy;
    v31 = v9;
    v10 = [v8 initWithConstructor:v30];
    lazyURLMapping = v7->_lazyURLMapping;
    v7->_lazyURLMapping = v10;

    v12 = [NFLazy alloc];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10005A24C;
    v28[3] = &unk_1000C3B88;
    v13 = v9;
    v29 = v13;
    v14 = [v12 initWithConstructor:v28];
    lazyBundleIDMapping = v7->_lazyBundleIDMapping;
    v7->_lazyBundleIDMapping = v14;

    v16 = [NFLazy alloc];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10005A2D8;
    v26[3] = &unk_1000C3B88;
    v17 = v13;
    v27 = v17;
    v18 = [v16 initWithConstructor:v26];
    lazyFavorabilityScores = v7->_lazyFavorabilityScores;
    v7->_lazyFavorabilityScores = v18;

    v20 = [NFLazy alloc];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10005A364;
    v24[3] = &unk_1000C3B88;
    v25 = v17;
    v21 = [v20 initWithConstructor:v24];
    lazyWhitelist = v7->_lazyWhitelist;
    v7->_lazyWhitelist = v21;
  }

  return v7;
}

- (FCPersonalizationURLMapping)urlMapping
{
  lazyURLMapping = [(FRPersonalizationConfiguration *)self lazyURLMapping];
  value = [lazyURLMapping value];

  return value;
}

- (void)setURLMappingData:(id)data
{
  dataCopy = data;
  keyValueStore = [(FRPersonalizationConfiguration *)self keyValueStore];
  [keyValueStore setObject:dataCopy forKeyedSubscript:@"url_mapping"];

  lazyURLMapping = [(FRPersonalizationConfiguration *)self lazyURLMapping];
  [lazyURLMapping reset];
}

- (BOOL)hasUrlMapping
{
  keyValueStore = [(FRPersonalizationConfiguration *)self keyValueStore];
  v3 = [keyValueStore containsObjectForKey:@"url_mapping"];

  return v3;
}

- (BOOL)hasAutoFavorites
{
  keyValueStore = [(FRPersonalizationConfiguration *)self keyValueStore];
  v3 = [keyValueStore containsObjectForKey:@"auto_favorites"];

  return v3;
}

- (FCPersonalizationBundleIDMapping)bundleIDMapping
{
  lazyBundleIDMapping = [(FRPersonalizationConfiguration *)self lazyBundleIDMapping];
  value = [lazyBundleIDMapping value];

  return value;
}

- (void)setBundleIDMappingData:(id)data
{
  dataCopy = data;
  keyValueStore = [(FRPersonalizationConfiguration *)self keyValueStore];
  [keyValueStore setObject:dataCopy forKeyedSubscript:@"bundle_id_mapping"];

  lazyBundleIDMapping = [(FRPersonalizationConfiguration *)self lazyBundleIDMapping];
  [lazyBundleIDMapping reset];
}

- (BOOL)hasBundleIDMapping
{
  keyValueStore = [(FRPersonalizationConfiguration *)self keyValueStore];
  v3 = [keyValueStore containsObjectForKey:@"bundle_id_mapping"];

  return v3;
}

- (FCPersonalizationFavorabilityScores)favorabilityScores
{
  lazyFavorabilityScores = [(FRPersonalizationConfiguration *)self lazyFavorabilityScores];
  value = [lazyFavorabilityScores value];

  return value;
}

- (void)setFavorabilityScoresData:(id)data
{
  dataCopy = data;
  keyValueStore = [(FRPersonalizationConfiguration *)self keyValueStore];
  [keyValueStore setObject:dataCopy forKeyedSubscript:@"favorability_scores"];

  lazyFavorabilityScores = [(FRPersonalizationConfiguration *)self lazyFavorabilityScores];
  [lazyFavorabilityScores reset];
}

- (FCPersonalizationTodaySectionMapping)todaySectionMapping
{
  todaySectionMapping = self->_todaySectionMapping;
  if (!todaySectionMapping)
  {
    objc_opt_class();
    keyValueStore = [(FRPersonalizationConfiguration *)self keyValueStore];
    v5 = [keyValueStore objectForKey:@"today_section_mapping"];
    v6 = FCDynamicCast();

    if (v6)
    {
      v11 = 0;
      v7 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v11];
      v8 = v11;
      if (v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100073900();
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = self->_todaySectionMapping;
    self->_todaySectionMapping = v7;

    todaySectionMapping = self->_todaySectionMapping;
  }

  return todaySectionMapping;
}

- (void)setTodaySectionMapping:(id)mapping
{
  mappingCopy = mapping;
  objc_storeStrong(&self->_todaySectionMapping, mapping);
  keyValueStore = [(FRPersonalizationConfiguration *)self keyValueStore];
  v9 = 0;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:mappingCopy requiringSecureCoding:1 error:&v9];
  v8 = v9;
  [keyValueStore setObject:v7 forKey:@"today_section_mapping"];

  if (v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000739C4();
  }
}

- (FCPersonalizationWhitelist)whitelist
{
  lazyWhitelist = [(FRPersonalizationConfiguration *)self lazyWhitelist];
  value = [lazyWhitelist value];

  return value;
}

- (void)setWhitelistData:(id)data
{
  dataCopy = data;
  keyValueStore = [(FRPersonalizationConfiguration *)self keyValueStore];
  [keyValueStore setObject:dataCopy forKeyedSubscript:@"whitelist"];

  lazyWhitelist = [(FRPersonalizationConfiguration *)self lazyWhitelist];
  [lazyWhitelist reset];
}

- (void)setCoreDuetLastQueryDate:(id)date
{
  dateCopy = date;
  keyValueStore = [(FRPersonalizationConfiguration *)self keyValueStore];
  [keyValueStore setObject:dateCopy forKey:@"core_duet_last_query_date"];
}

- (void)setPortraitLastQueryDate:(id)date
{
  dateCopy = date;
  keyValueStore = [(FRPersonalizationConfiguration *)self keyValueStore];
  [keyValueStore setObject:dateCopy forKey:@"portrait_last_query_date"];
}

- (void)setAutoFavorites:(id)favorites
{
  favoritesCopy = favorites;
  keyValueStore = [(FRPersonalizationConfiguration *)self keyValueStore];
  v6 = keyValueStore;
  if (favoritesCopy)
  {
    v9 = 0;
    v7 = [NSKeyedArchiver archivedDataWithRootObject:favoritesCopy requiringSecureCoding:1 error:&v9];
    v8 = v9;
    [v6 setObject:v7 forKey:@"auto_favorites"];

    if (v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100073B4C();
    }
  }

  else
  {
    [keyValueStore removeObjectForKey:@"auto_favorites"];
  }
}

- (id)jsonEncodableObject
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005AC1C;
  v4[3] = &unk_1000C3230;
  v4[4] = self;
  v2 = [NSDictionary fc_dictionary:v4];

  return v2;
}

@end