@interface MTPlayerManifest
- (MTPlayerManifest)init;
- (id)activity;
- (id)activitySpotlightIdentifier;
- (id)metricsAdditionalData;
- (id)metricsContentIdentifier;
- (id)objectAtIndex:(unint64_t)index;
- (void)enumerateObjectsUsingBlock:(id)block;
- (void)setNetworkUPPEnabled:(BOOL)enabled;
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
    uUIDString = [v3 UUIDString];
    [(MTPlayerManifest *)v2 setManifestIdentifier:uUIDString];
  }

  return v2;
}

- (id)activity
{
  v9.receiver = self;
  v9.super_class = MTPlayerManifest;
  activity = [(MTPlayerManifest *)&v9 activity];
  [activity setEligibleForHandoff:1];
  currentItem = [(MTPlayerManifest *)self currentItem];
  episodeShareUrl = [currentItem episodeShareUrl];
  [activity setWebpageURL:episodeShareUrl];

  activitySpotlightIdentifier = [(MTPlayerManifest *)self activitySpotlightIdentifier];
  if (activitySpotlightIdentifier)
  {
    v7 = [[CSSearchableItemAttributeSet alloc] initWithContentType:UTTypeAudiovisualContent];
    [v7 setRelatedUniqueIdentifier:activitySpotlightIdentifier];
    [activity setContentAttributeSet:v7];
  }

  return activity;
}

- (id)activitySpotlightIdentifier
{
  currentItem = [(MTPlayerManifest *)self currentItem];

  if (currentItem)
  {
    currentItem2 = [(MTPlayerManifest *)self currentItem];
    v5 = [MTCoreSpotlightUtil uniqueIdentifierForPodcastInPlayerItem:currentItem2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setNetworkUPPEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"Disabled";
    if (enabledCopy)
    {
      v6 = @"Enabled";
    }

    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Network UPP %@ for manifest %@", &v7, 0x16u);
  }

  self->_networkUPPEnabled = enabledCopy;
}

- (id)objectAtIndex:(unint64_t)index
{
  v5.receiver = self;
  v5.super_class = MTPlayerManifest;
  v3 = [(MTPlayerManifest *)&v5 objectAtIndex:index];

  return v3;
}

- (void)enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy && [(MTPlayerManifest *)self count])
  {
    v5 = 0;
    do
    {
      v6 = [(MTPlayerManifest *)self objectAtIndex:v5];
      v8 = 0;
      blockCopy[2](blockCopy, v6, &v8);
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

  title = [(MTPlayerManifest *)self title];

  if (title)
  {
    title2 = [(MTPlayerManifest *)self title];
    [v3 setObject:title2 forKeyedSubscript:@"title"];
  }

  manifestIdentifier = [(MTPlayerManifest *)self manifestIdentifier];
  [v3 setObject:manifestIdentifier forKeyedSubscript:@"manifest_id"];

  v8 = [MTStoreReportingController reportingStringForPlayReason:[(MTPlayerManifest *)self playReason]];
  [v3 setObject:v8 forKeyedSubscript:@"manifest_source"];

  return v3;
}

@end