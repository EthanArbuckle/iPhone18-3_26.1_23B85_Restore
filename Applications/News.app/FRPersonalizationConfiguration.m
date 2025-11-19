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
- (FRPersonalizationConfiguration)initWithKeyValueStore:(id)a3;
- (NSDate)coreDuetLastQueryDate;
- (NSDate)portraitLastQueryDate;
- (id)jsonEncodableObject;
- (void)setAutoFavorites:(id)a3;
- (void)setBundleIDMappingData:(id)a3;
- (void)setCoreDuetLastQueryDate:(id)a3;
- (void)setFavorabilityScoresData:(id)a3;
- (void)setPortraitLastQueryDate:(id)a3;
- (void)setTodaySectionMapping:(id)a3;
- (void)setURLMappingData:(id)a3;
- (void)setWhitelistData:(id)a3;
@end

@implementation FRPersonalizationConfiguration

- (NSDate)coreDuetLastQueryDate
{
  objc_opt_class();
  v3 = [(FRPersonalizationConfiguration *)self keyValueStore];
  v4 = [v3 objectForKey:@"core_duet_last_query_date"];
  v5 = FCDynamicCast();

  return v5;
}

- (NSDate)portraitLastQueryDate
{
  objc_opt_class();
  v3 = [(FRPersonalizationConfiguration *)self keyValueStore];
  v4 = [v3 objectForKey:@"portrait_last_query_date"];
  v5 = FCDynamicCast();

  return v5;
}

- (FRPersonalizationAutoFavorites)autoFavorites
{
  objc_opt_class();
  v3 = [(FRPersonalizationConfiguration *)self keyValueStore];
  v4 = [v3 objectForKey:@"auto_favorites"];
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

- (FRPersonalizationConfiguration)initWithKeyValueStore:(id)a3
{
  v5 = a3;
  v32.receiver = self;
  v32.super_class = FRPersonalizationConfiguration;
  v6 = [(FRPersonalizationConfiguration *)&v32 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keyValueStore, a3);
    v8 = [NFLazy alloc];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10005A1C0;
    v30[3] = &unk_1000C3B88;
    v9 = v5;
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
  v2 = [(FRPersonalizationConfiguration *)self lazyURLMapping];
  v3 = [v2 value];

  return v3;
}

- (void)setURLMappingData:(id)a3
{
  v4 = a3;
  v5 = [(FRPersonalizationConfiguration *)self keyValueStore];
  [v5 setObject:v4 forKeyedSubscript:@"url_mapping"];

  v6 = [(FRPersonalizationConfiguration *)self lazyURLMapping];
  [v6 reset];
}

- (BOOL)hasUrlMapping
{
  v2 = [(FRPersonalizationConfiguration *)self keyValueStore];
  v3 = [v2 containsObjectForKey:@"url_mapping"];

  return v3;
}

- (BOOL)hasAutoFavorites
{
  v2 = [(FRPersonalizationConfiguration *)self keyValueStore];
  v3 = [v2 containsObjectForKey:@"auto_favorites"];

  return v3;
}

- (FCPersonalizationBundleIDMapping)bundleIDMapping
{
  v2 = [(FRPersonalizationConfiguration *)self lazyBundleIDMapping];
  v3 = [v2 value];

  return v3;
}

- (void)setBundleIDMappingData:(id)a3
{
  v4 = a3;
  v5 = [(FRPersonalizationConfiguration *)self keyValueStore];
  [v5 setObject:v4 forKeyedSubscript:@"bundle_id_mapping"];

  v6 = [(FRPersonalizationConfiguration *)self lazyBundleIDMapping];
  [v6 reset];
}

- (BOOL)hasBundleIDMapping
{
  v2 = [(FRPersonalizationConfiguration *)self keyValueStore];
  v3 = [v2 containsObjectForKey:@"bundle_id_mapping"];

  return v3;
}

- (FCPersonalizationFavorabilityScores)favorabilityScores
{
  v2 = [(FRPersonalizationConfiguration *)self lazyFavorabilityScores];
  v3 = [v2 value];

  return v3;
}

- (void)setFavorabilityScoresData:(id)a3
{
  v4 = a3;
  v5 = [(FRPersonalizationConfiguration *)self keyValueStore];
  [v5 setObject:v4 forKeyedSubscript:@"favorability_scores"];

  v6 = [(FRPersonalizationConfiguration *)self lazyFavorabilityScores];
  [v6 reset];
}

- (FCPersonalizationTodaySectionMapping)todaySectionMapping
{
  todaySectionMapping = self->_todaySectionMapping;
  if (!todaySectionMapping)
  {
    objc_opt_class();
    v4 = [(FRPersonalizationConfiguration *)self keyValueStore];
    v5 = [v4 objectForKey:@"today_section_mapping"];
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

- (void)setTodaySectionMapping:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_todaySectionMapping, a3);
  v6 = [(FRPersonalizationConfiguration *)self keyValueStore];
  v9 = 0;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v9];
  v8 = v9;
  [v6 setObject:v7 forKey:@"today_section_mapping"];

  if (v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000739C4();
  }
}

- (FCPersonalizationWhitelist)whitelist
{
  v2 = [(FRPersonalizationConfiguration *)self lazyWhitelist];
  v3 = [v2 value];

  return v3;
}

- (void)setWhitelistData:(id)a3
{
  v4 = a3;
  v5 = [(FRPersonalizationConfiguration *)self keyValueStore];
  [v5 setObject:v4 forKeyedSubscript:@"whitelist"];

  v6 = [(FRPersonalizationConfiguration *)self lazyWhitelist];
  [v6 reset];
}

- (void)setCoreDuetLastQueryDate:(id)a3
{
  v4 = a3;
  v5 = [(FRPersonalizationConfiguration *)self keyValueStore];
  [v5 setObject:v4 forKey:@"core_duet_last_query_date"];
}

- (void)setPortraitLastQueryDate:(id)a3
{
  v4 = a3;
  v5 = [(FRPersonalizationConfiguration *)self keyValueStore];
  [v5 setObject:v4 forKey:@"portrait_last_query_date"];
}

- (void)setAutoFavorites:(id)a3
{
  v4 = a3;
  v5 = [(FRPersonalizationConfiguration *)self keyValueStore];
  v6 = v5;
  if (v4)
  {
    v9 = 0;
    v7 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v9];
    v8 = v9;
    [v6 setObject:v7 forKey:@"auto_favorites"];

    if (v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100073B4C();
    }
  }

  else
  {
    [v5 removeObjectForKey:@"auto_favorites"];
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