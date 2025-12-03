@interface MTPodcast
+ (id)allPossibleEpisodeListSortOrderProperties;
+ (id)podcastUuidForFeedUrl:(id)url ctx:(id)ctx;
+ (id)podcastUuidForFeedUrlString:(id)string ctx:(id)ctx;
+ (id)sortDescriptorsForAllPodcasts;
+ (id)sortDescriptorsForLastDatePlayed;
+ (id)sortDescriptorsForManualOrder;
+ (id)sortDescriptorsForNewestOnTop;
+ (id)sortDescriptorsForOldestOnTop;
+ (id)sortDescriptorsForSortType:(int64_t)type;
- (BOOL)hasAtLeastOneSeason;
- (BOOL)hasMultipleSeasons;
- (BOOL)updateCursorPosition:(BOOL)position;
- (MPArtworkCatalog)artworkCatalog;
- (id)seasonSortDescriptorsForSortOrder;
- (id)sortDescriptorsForPlayOrder;
- (id)sortDescriptorsForPlayOrderByEpisodeNumber;
- (id)sortDescriptorsForPlayOrderByPubDate;
- (id)sortDescriptorsForSortOrder;
- (void)applyShowTypeSetting:(int64_t)setting;
- (void)markPlaylistsForUpdate;
- (void)setAuthor:(id)author;
- (void)setDeletePlayedEpisodes:(int64_t)episodes;
- (void)setFeedChangedDate:(double)date;
- (void)setImageURL:(id)l;
- (void)setItemDescription:(id)description;
- (void)setLastImplicitlyFollowedDate:(double)date;
- (void)setModifiedDate:(double)date;
- (void)setPlaybackNewestToOldest:(BOOL)oldest;
- (void)setShowTypeInFeed:(id)feed;
- (void)setShowTypeSetting:(int64_t)setting;
- (void)setSortAscending:(BOOL)ascending;
- (void)setUpdateAvg:(double)avg;
- (void)setUpdateStdDev:(double)dev;
- (void)setWebpageURL:(id)l;
@end

@implementation MTPodcast

- (MPArtworkCatalog)artworkCatalog
{
  artworkPrimaryColor = [(MTPodcast *)self artworkPrimaryColor];
  v4 = [NMTPodcastsArtworkToken alloc];
  uuid = [(MTPodcast *)self uuid];
  v6 = [v4 initWithKey:uuid backgroundColorString:artworkPrimaryColor];

  if (os_feature_enabled_image_provider_on_watch())
  {
    +[PUIObjCArtworkProvider uiShared];
  }

  else
  {
    +[NMTPodcastsArtworkDataSource uuidSharedDataSource];
  }
  v7 = ;
  v8 = [[MPArtworkCatalog alloc] initWithToken:v6 dataSource:v7];

  return v8;
}

- (void)markPlaylistsForUpdate
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  playlistSettings = [(MTPodcast *)self playlistSettings];
  v3 = [playlistSettings countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(playlistSettings);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        [v7 setNeedsUpdate:1];
        playlist = [v7 playlist];
        [playlist setNeedsUpdate:1];
      }

      v4 = [playlistSettings countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)setDeletePlayedEpisodes:(int64_t)episodes
{
  v5 = kPodcastDeletePlayedEpisodes;
  [(MTPodcast *)self willChangeValueForKey:kPodcastDeletePlayedEpisodes];
  v6 = [NSNumber numberWithLongLong:episodes];
  [(MTPodcast *)self setPrimitiveValue:v6 forKey:v5];

  [(MTPodcast *)self didChangeValueForKey:v5];

  [(MTPodcast *)self markPlaylistsForUpdate];
}

- (void)setLastImplicitlyFollowedDate:(double)date
{
  [(MTPodcast *)self lastImplicitlyFollowedDate];
  if (v5 < date)
  {
    v6 = kPodcastLastImplicitlyFollowedDate;
    [(MTPodcast *)self willChangeValueForKey:kPodcastLastImplicitlyFollowedDate];
    v7 = [NSDate dateWithTimeIntervalSinceReferenceDate:date];
    [(MTPodcast *)self setPrimitiveValue:v7 forKey:v6];

    [(MTPodcast *)self didChangeValueForKey:v6];
  }
}

- (void)setModifiedDate:(double)date
{
  v5 = +[_TtC18PodcastsFoundation17FutureDateChecker lenientSharedInstance];
  [v5 timestampBoundByNow:date];
  v7 = v6;

  v8 = kPodcastModifiedDate;
  [(MTPodcast *)self willChangeValueForKey:kPodcastModifiedDate];
  v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:v7];
  [(MTPodcast *)self setPrimitiveValue:v9 forKey:v8];

  [(MTPodcast *)self didChangeValueForKey:v8];
}

- (void)setAuthor:(id)author
{
  authorCopy = author;
  author = [(MTPodcast *)self author];
  v5 = authorCopy | author;

  if (v5)
  {
    author2 = [(MTPodcast *)self author];
    v7 = [author2 isEqualToString:authorCopy];

    if ((v7 & 1) == 0)
    {
      v8 = kPodcastAuthor;
      [(MTPodcast *)self willChangeValueForKey:kPodcastAuthor];
      [(MTPodcast *)self setPrimitiveValue:authorCopy forKey:v8];
      [(MTPodcast *)self didChangeValueForKey:v8];
    }
  }
}

- (void)setItemDescription:(id)description
{
  descriptionCopy = description;
  itemDescription = [(MTPodcast *)self itemDescription];
  v5 = descriptionCopy | itemDescription;

  if (v5)
  {
    itemDescription2 = [(MTPodcast *)self itemDescription];
    v7 = [itemDescription2 isEqualToString:descriptionCopy];

    if ((v7 & 1) == 0)
    {
      v8 = kPodcastDescription;
      [(MTPodcast *)self willChangeValueForKey:kPodcastDescription];
      [(MTPodcast *)self setPrimitiveValue:descriptionCopy forKey:v8];
      [(MTPodcast *)self didChangeValueForKey:v8];
    }
  }
}

- (void)setFeedChangedDate:(double)date
{
  [(MTPodcast *)self feedChangedDate];
  if (vabdd_f64(v5, date) > 2.22044605e-16)
  {
    v6 = kPodcastFeedChangedDate;
    [(MTPodcast *)self willChangeValueForKey:kPodcastFeedChangedDate];
    v7 = [NSDate dateWithTimeIntervalSinceReferenceDate:date];
    [(MTPodcast *)self setPrimitiveValue:v7 forKey:v6];

    [(MTPodcast *)self didChangeValueForKey:v6];
  }
}

- (void)setUpdateStdDev:(double)dev
{
  [(MTPodcast *)self updateStdDev];
  if (vabdd_f64(v5, dev) > 2.22044605e-16)
  {
    v6 = kPodcastUpdateStdDev;
    [(MTPodcast *)self willChangeValueForKey:kPodcastUpdateStdDev];
    v7 = [NSNumber numberWithDouble:dev];
    [(MTPodcast *)self setPrimitiveValue:v7 forKey:v6];

    [(MTPodcast *)self didChangeValueForKey:v6];
  }
}

- (void)setUpdateAvg:(double)avg
{
  [(MTPodcast *)self updateAvg];
  if (vabdd_f64(v5, avg) > 2.22044605e-16)
  {
    v6 = kPodcastUpdateAvg;
    [(MTPodcast *)self willChangeValueForKey:kPodcastUpdateAvg];
    v7 = [NSNumber numberWithDouble:avg];
    [(MTPodcast *)self setPrimitiveValue:v7 forKey:v6];

    [(MTPodcast *)self didChangeValueForKey:v6];
  }
}

- (void)setImageURL:(id)l
{
  lCopy = l;
  imageURL = [(MTPodcast *)self imageURL];
  v5 = lCopy | imageURL;

  if (v5)
  {
    imageURL2 = [(MTPodcast *)self imageURL];
    v7 = [imageURL2 isEqualToString:lCopy];

    if ((v7 & 1) == 0)
    {
      v8 = kPodcastImageUrl;
      [(MTPodcast *)self willChangeValueForKey:kPodcastImageUrl];
      [(MTPodcast *)self setPrimitiveValue:lCopy forKey:v8];
      [(MTPodcast *)self didChangeValueForKey:v8];
    }
  }
}

- (void)setShowTypeInFeed:(id)feed
{
  feedCopy = feed;
  showTypeInFeed = [(MTPodcast *)self showTypeInFeed];
  v5 = feedCopy | showTypeInFeed;

  if (v5)
  {
    showTypeInFeed2 = [(MTPodcast *)self showTypeInFeed];
    v7 = [showTypeInFeed2 isEqualToString:feedCopy];

    if ((v7 & 1) == 0)
    {
      v8 = kPodcastShowTypeInFeed;
      [(MTPodcast *)self willChangeValueForKey:kPodcastShowTypeInFeed];
      [(MTPodcast *)self setPrimitiveValue:feedCopy forKey:v8];
      [(MTPodcast *)self didChangeValueForKey:v8];
    }
  }
}

- (void)setWebpageURL:(id)l
{
  lCopy = l;
  webpageURL = [(MTPodcast *)self webpageURL];
  v5 = lCopy | webpageURL;

  if (v5)
  {
    webpageURL2 = [(MTPodcast *)self webpageURL];
    v7 = [webpageURL2 isEqualToString:lCopy];

    if ((v7 & 1) == 0)
    {
      v8 = kPodcastWebpageURL;
      [(MTPodcast *)self willChangeValueForKey:kPodcastWebpageURL];
      [(MTPodcast *)self setPrimitiveValue:lCopy forKey:v8];
      [(MTPodcast *)self didChangeValueForKey:v8];
    }
  }
}

- (void)setShowTypeSetting:(int64_t)setting
{
  if ([(MTPodcast *)self showTypeSetting]!= setting)
  {
    v5 = [(MTPodcast *)self isValidShowTypeSetting:setting];
    v6 = _MTLogCategoryDatabase();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        title = [(MTPodcast *)self title];
        feedURL = [(MTPodcast *)self feedURL];
        storeCollectionId = [(MTPodcast *)self storeCollectionId];
        uuid = [(MTPodcast *)self uuid];
        v14 = 134350083;
        settingCopy = setting;
        v16 = 2113;
        v17 = title;
        v18 = 2113;
        v19 = feedURL;
        v20 = 2049;
        v21 = storeCollectionId;
        v22 = 2114;
        v23 = uuid;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Switching show type setting to %{public}lld, show %{private}@, %{private}@, %{private}lld, %{public}@", &v14, 0x34u);
      }

      v12 = kPodcastShowTypeSetting;
      [(MTPodcast *)self willChangeValueForKey:kPodcastShowTypeSetting];
      v13 = [NSNumber numberWithLongLong:setting];
      [(MTPodcast *)self setPrimitiveValue:v13 forKey:v12];

      [(MTPodcast *)self didChangeValueForKey:v12];
      [(MTPodcast *)self applyShowTypeSetting:setting];
    }

    else
    {
      if (v7)
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "WARNING: Ignoring attempt to set an invalid show type", &v14, 2u);
      }
    }
  }
}

- (void)applyShowTypeSetting:(int64_t)setting
{
  v4 = [MTPodcast sortOrderAscForShowType:setting];
  v5 = v4;
  [(MTPodcast *)self setSortAscending:v4];

  [(MTPodcast *)self setPlaybackNewestToOldest:v5 ^ 1u];
}

- (void)setSortAscending:(BOOL)ascending
{
  ascendingCopy = ascending;
  v5 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (ascendingCopy)
    {
      v6 = @"true";
    }

    else
    {
      v6 = @"false";
    }

    title = [(MTPodcast *)self title];
    feedURL = [(MTPodcast *)self feedURL];
    storeCollectionId = [(MTPodcast *)self storeCollectionId];
    uuid = [(MTPodcast *)self uuid];
    v14 = 138544387;
    v15 = v6;
    v16 = 2113;
    v17 = title;
    v18 = 2113;
    v19 = feedURL;
    v20 = 2049;
    v21 = storeCollectionId;
    v22 = 2114;
    v23 = uuid;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Switching SortAscendingFlag to %{public}@, show %{private}@, %{private}@, %{private}lld, %{public}@", &v14, 0x34u);
  }

  flags = [(MTPodcast *)self flags];
  if (((((flags & 2) == 0) ^ ascendingCopy) & 1) == 0)
  {
    v12 = 2;
    if (!ascendingCopy)
    {
      v12 = 0;
    }

    [(MTPodcast *)self setFlags:flags & 0xFFFFFFFFFFFFFFFDLL | v12];
    [(MTPodcast *)self markPlaylistsForUpdate];
    v13 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
    [v13 markSubscriptionSyncDirty:1 for:{-[MTPodcast syncType](self, "syncType")}];
  }
}

+ (id)allPossibleEpisodeListSortOrderProperties
{
  v19 = [NSMutableArray alloc];
  v21 = kEpisodePubDate;
  v2 = [NSSortDescriptor sortDescriptorWithKey:"sortDescriptorWithKey:ascending:" ascending:?];
  v23[0] = v2;
  v3 = kEpisodeEpisodeNumber;
  v4 = [NSSortDescriptor sortDescriptorWithKey:kEpisodeEpisodeNumber ascending:1];
  v23[1] = v4;
  v5 = kEpisodeLevel;
  v6 = [NSSortDescriptor sortDescriptorWithKey:kEpisodeLevel ascending:0];
  v23[2] = v6;
  v7 = kEpisodeTitle;
  v8 = [NSSortDescriptor sortDescriptorWithKey:kEpisodeTitle ascending:1 selector:"localizedStandardCompare:"];
  v23[3] = v8;
  v9 = [NSArray arrayWithObjects:v23 count:4];
  v20 = [v19 initWithArray:v9];

  v10 = [NSSortDescriptor sortDescriptorWithKey:v21 ascending:0];
  v22[0] = v10;
  v11 = [NSSortDescriptor sortDescriptorWithKey:v3 ascending:0];
  v22[1] = v11;
  v12 = [NSSortDescriptor sortDescriptorWithKey:v5 ascending:1];
  v22[2] = v12;
  v13 = [NSSortDescriptor sortDescriptorWithKey:v7 ascending:1 selector:"localizedStandardCompare:"];
  v22[3] = v13;
  v14 = [NSArray arrayWithObjects:v22 count:4];
  [v20 addObjectsFromArray:v14];

  v15 = [v20 mt_compactMap:&stru_1C8F0];
  v16 = [NSSet setWithArray:v15];
  allObjects = [v16 allObjects];

  return allObjects;
}

- (id)sortDescriptorsForSortOrder
{
  if ([(MTPodcast *)self isSerialShowTypeInFeed])
  {
    seasonSortDescriptorsForSortOrder = [(MTPodcast *)self seasonSortDescriptorsForSortOrder];
  }

  else
  {
    sortAscending = [(MTPodcast *)self sortAscending];
    v5 = [NSMutableArray alloc];
    if (sortAscending)
    {
      v6 = [NSSortDescriptor sortDescriptorWithKey:kEpisodePubDate ascending:1];
      v14[0] = v6;
      v7 = [NSSortDescriptor sortDescriptorWithKey:kEpisodeEpisodeNumber ascending:1];
      v14[1] = v7;
      v8 = [NSSortDescriptor sortDescriptorWithKey:kEpisodeLevel ascending:0];
      v14[2] = v8;
      v9 = [NSSortDescriptor sortDescriptorWithKey:kEpisodeTitle ascending:1 selector:"localizedStandardCompare:"];
      v14[3] = v9;
      v10 = v14;
    }

    else
    {
      v6 = [NSSortDescriptor sortDescriptorWithKey:kEpisodePubDate ascending:0];
      v13[0] = v6;
      v7 = [NSSortDescriptor sortDescriptorWithKey:kEpisodeEpisodeNumber ascending:0];
      v13[1] = v7;
      v8 = [NSSortDescriptor sortDescriptorWithKey:kEpisodeLevel ascending:1];
      v13[2] = v8;
      v9 = [NSSortDescriptor sortDescriptorWithKey:kEpisodeTitle ascending:1 selector:"localizedStandardCompare:"];
      v13[3] = v9;
      v10 = v13;
    }

    v11 = [NSArray arrayWithObjects:v10 count:4];
    seasonSortDescriptorsForSortOrder = [v5 initWithArray:v11];
  }

  return seasonSortDescriptorsForSortOrder;
}

- (id)seasonSortDescriptorsForSortOrder
{
  showTypeSetting = [(MTPodcast *)self showTypeSetting];

  return [MTEpisode seasonSortDescriptors:showTypeSetting];
}

+ (id)sortDescriptorsForOldestOnTop
{
  v2 = [NSSortDescriptor sortDescriptorWithKey:kEpisodePubDate ascending:1];
  v8[0] = v2;
  v3 = [NSSortDescriptor sortDescriptorWithKey:kEpisodeEpisodeNumber ascending:1];
  v8[1] = v3;
  v4 = [NSSortDescriptor sortDescriptorWithKey:kEpisodeLevel ascending:0];
  v8[2] = v4;
  v5 = [NSSortDescriptor sortDescriptorWithKey:kEpisodeTitle ascending:1 selector:"localizedStandardCompare:"];
  v8[3] = v5;
  v6 = [NSArray arrayWithObjects:v8 count:4];

  return v6;
}

+ (id)sortDescriptorsForNewestOnTop
{
  v2 = [NSSortDescriptor sortDescriptorWithKey:kEpisodePubDate ascending:0];
  v8[0] = v2;
  v3 = [NSSortDescriptor sortDescriptorWithKey:kEpisodeEpisodeNumber ascending:0];
  v8[1] = v3;
  v4 = [NSSortDescriptor sortDescriptorWithKey:kEpisodeLevel ascending:1];
  v8[2] = v4;
  v5 = [NSSortDescriptor sortDescriptorWithKey:kEpisodeTitle ascending:1 selector:"localizedStandardCompare:"];
  v8[3] = v5;
  v6 = [NSArray arrayWithObjects:v8 count:4];

  return v6;
}

- (id)sortDescriptorsForPlayOrder
{
  if (([(MTPodcast *)self isSerialShowTypeInFeed]& 1) != 0)
  {
    [(MTPodcast *)self sortDescriptorsForPlayOrderByEpisodeNumber];
  }

  else
  {
    [(MTPodcast *)self sortDescriptorsForPlayOrderByPubDate];
  }
  v3 = ;

  return v3;
}

- (id)sortDescriptorsForPlayOrderByPubDate
{
  playbackNewestToOldest = [(MTPodcast *)self playbackNewestToOldest];
  v3 = objc_opt_class();

  return [v3 sortDescriptorsForNewestToOldest:playbackNewestToOldest];
}

- (id)sortDescriptorsForPlayOrderByEpisodeNumber
{
  showTypeSetting = [(MTPodcast *)self showTypeSetting];

  return [MTEpisode seasonSortDescriptors:showTypeSetting];
}

- (void)setPlaybackNewestToOldest:(BOOL)oldest
{
  oldestCopy = oldest;
  playbackNewestToOldest = [(MTPodcast *)self playbackNewestToOldest];
  flags = [(MTPodcast *)self flags];
  if (((((flags & 8) == 0) ^ oldestCopy) & 1) == 0)
  {
    v7 = 8;
    if (!oldestCopy)
    {
      v7 = 0;
    }

    [(MTPodcast *)self setFlags:flags & 0xFFFFFFFFFFFFFFF7 | v7];
    [(MTPodcast *)self markPlaylistsForUpdate];
    v8 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
    [v8 markSubscriptionSyncDirty:1 for:{-[MTPodcast syncType](self, "syncType")}];

    if (playbackNewestToOldest != oldestCopy)
    {

      [(MTPodcast *)self updateCursorPosition:0];
    }
  }
}

- (BOOL)updateCursorPosition:(BOOL)position
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  [(MTPodcast *)self managedObjectContext];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_8F3C;
  v8[3] = &unk_1C918;
  v5 = v8[4] = self;
  v9 = v5;
  v10 = &v12;
  positionCopy = position;
  [v5 performBlockAndWait:v8];
  v6 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v6;
}

+ (id)podcastUuidForFeedUrlString:(id)string ctx:(id)ctx
{
  stringCopy = string;
  ctxCopy = ctx;
  if ([stringCopy length])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_934C;
    v17 = sub_935C;
    v18 = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_9364;
    v9[3] = &unk_1C940;
    v10 = ctxCopy;
    v11 = stringCopy;
    v12 = &v13;
    [v10 performBlockAndWait:v9];
    v7 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)podcastUuidForFeedUrl:(id)url ctx:(id)ctx
{
  ctxCopy = ctx;
  absoluteString = [url absoluteString];
  v8 = [self podcastUuidForFeedUrlString:absoluteString ctx:ctxCopy];

  return v8;
}

- (BOOL)hasAtLeastOneSeason
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  [(MTPodcast *)self managedObjectContext];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_952C;
  v6[3] = &unk_1C968;
  v6[4] = self;
  v3 = v8 = &v9;
  v7 = v3;
  [v3 performBlockAndWait:v6];
  v4 = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v4;
}

- (BOOL)hasMultipleSeasons
{
  seasonNumbers = [(MTPodcast *)self seasonNumbers];
  v3 = [seasonNumbers count] > 1;

  return v3;
}

+ (id)sortDescriptorsForSortType:(int64_t)type
{
  if (type <= 3)
  {
    switch(type)
    {
      case 0:
        v5 = +[MTPodcast sortDescriptorsForManualOrder];
        goto LABEL_18;
      case 1:
        v3 = 0;
        goto LABEL_15;
      case 2:
        v3 = 1;
LABEL_15:
        v5 = [MTPodcast sortDescriptorsForDateAddedAscending:v3];
        goto LABEL_18;
    }

    goto LABEL_12;
  }

  switch(type)
  {
    case 4:
      v6 = 0;
LABEL_13:
      v5 = [MTPodcast sortDescriptorsForTitle:v6];
      goto LABEL_18;
    case 5:
      v4 = 0;
      break;
    case 6:
      v4 = 1;
      break;
    default:
LABEL_12:
      v6 = 1;
      goto LABEL_13;
  }

  v5 = [MTPodcast sortDescriptorsForFirstTimeAvailableAscending:v4];
LABEL_18:

  return v5;
}

+ (id)sortDescriptorsForManualOrder
{
  v2 = [NSSortDescriptor sortDescriptorWithKey:kPodcastSortOrder ascending:0];
  v6[0] = v2;
  v3 = [NSSortDescriptor sortDescriptorWithKey:kPodcastSubscribed ascending:0];
  v6[1] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:2];

  return v4;
}

+ (id)sortDescriptorsForAllPodcasts
{
  v2 = +[MTShowsPreferencesDataStore sharedInstance];
  sortDescriptors = [v2 sortDescriptors];

  return sortDescriptors;
}

+ (id)sortDescriptorsForLastDatePlayed
{
  v2 = [NSSortDescriptor sortDescriptorWithKey:kPodcastLastDatePlayed ascending:0];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

@end