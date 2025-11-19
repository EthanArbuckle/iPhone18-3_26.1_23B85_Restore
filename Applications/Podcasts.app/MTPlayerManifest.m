@interface MTPlayerManifest
- (MTPlayerManifest)init;
- (id)activity;
- (id)activitySpotlightIdentifier;
- (id)metricsAdditionalData;
- (id)metricsContentIdentifier;
- (id)objectAtIndex:(unint64_t)a3;
- (void)enumerateObjectsUsingBlock:(id)a3;
- (void)setNetworkUPPEnabled:(BOOL)a3;
@end

@implementation MTPlayerManifest

- (MTPlayerManifest)init
{
  v6.receiver = self;
  v6.super_class = MTPlayerManifest;
  v2 = [(MTPlayerManifest *)&v6 init];
  if (v2)
  {
    v3 = +[NSUUID UUID];
    v4 = [v3 UUIDString];
    [(MTPlayerManifest *)v2 setManifestIdentifier:v4];
  }

  return v2;
}

- (id)activity
{
  v9.receiver = self;
  v9.super_class = MTPlayerManifest;
  v3 = [(MTPlayerManifest *)&v9 activity];
  [v3 setEligibleForHandoff:1];
  v4 = [(MTPlayerManifest *)self currentItem];
  v5 = [v4 episodeShareUrl];
  [v3 setWebpageURL:v5];

  v6 = [(MTPlayerManifest *)self activitySpotlightIdentifier];
  if (v6)
  {
    v7 = [[CSSearchableItemAttributeSet alloc] initWithContentType:UTTypeAudiovisualContent];
    [v7 setRelatedUniqueIdentifier:v6];
    [v3 setContentAttributeSet:v7];
  }

  return v3;
}

- (id)activitySpotlightIdentifier
{
  v3 = [(MTPlayerManifest *)self currentItem];

  if (v3)
  {
    v4 = [(MTPlayerManifest *)self currentItem];
    v5 = [MTCoreSpotlightUtil uniqueIdentifierForPodcastInPlayerItem:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setNetworkUPPEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"Disabled";
    if (v3)
    {
      v6 = @"Enabled";
    }

    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Network UPP %@ for manifest %@", &v7, 0x16u);
  }

  self->_networkUPPEnabled = v3;
}

- (id)objectAtIndex:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = MTPlayerManifest;
  v3 = [(MTPlayerManifest *)&v5 objectAtIndex:a3];

  return v3;
}

- (void)enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  if (v4 && [(MTPlayerManifest *)self count])
  {
    v5 = 0;
    do
    {
      v6 = [(MTPlayerManifest *)self objectAtIndex:v5];
      v8 = 0;
      v4[2](v4, v6, &v8);
      v7 = v8;

      if (v7 == 1)
      {
        break;
      }

      ++v5;
    }

    while ([(MTPlayerManifest *)self count]> v5);
  }
}

- (id)metricsContentIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)metricsAdditionalData
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [NSNumber numberWithUnsignedInteger:[(MTPlayerManifest *)self count]];
  [v3 setObject:v4 forKeyedSubscript:@"count"];

  v5 = [(MTPlayerManifest *)self title];

  if (v5)
  {
    v6 = [(MTPlayerManifest *)self title];
    [v3 setObject:v6 forKeyedSubscript:@"title"];
  }

  v7 = [(MTPlayerManifest *)self manifestIdentifier];
  [v3 setObject:v7 forKeyedSubscript:@"manifest_id"];

  v8 = [MTStoreReportingController reportingStringForPlayReason:[(MTPlayerManifest *)self playReason]];
  [v3 setObject:v8 forKeyedSubscript:@"manifest_source"];

  return v3;
}

@end