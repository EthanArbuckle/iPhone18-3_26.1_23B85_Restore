@interface MTPodcast
+ (id)allPossibleEpisodeListSortOrderProperties;
+ (id)podcastUuidForFeedUrl:(id)a3 ctx:(id)a4;
+ (id)podcastUuidForFeedUrlString:(id)a3 ctx:(id)a4;
+ (id)predicateForSubscriptionSyncType:(int64_t)a3;
+ (id)predicateForSyncablePodcastsForSyncType:(int64_t)a3;
+ (id)sortDescriptorsForNewestOnTop;
+ (id)sortDescriptorsForOldestOnTop;
- (BOOL)hasAtLeastOneSeason;
- (BOOL)hasMultipleSeasons;
- (BOOL)updateCursorPosition:(BOOL)a3;
- (id)seasonSortDescriptorsForSortOrder;
- (id)sortDescriptorsForPlayOrder;
- (id)sortDescriptorsForPlayOrderByEpisodeNumber;
- (id)sortDescriptorsForPlayOrderByPubDate;
- (id)sortDescriptorsForSortOrder;
- (void)applyShowTypeSetting:(int64_t)a3;
- (void)markPlaylistsForUpdate;
- (void)setAuthor:(id)a3;
- (void)setDeletePlayedEpisodes:(int64_t)a3;
- (void)setFeedChangedDate:(double)a3;
- (void)setImageURL:(id)a3;
- (void)setItemDescription:(id)a3;
- (void)setLastImplicitlyFollowedDate:(double)a3;
- (void)setModifiedDate:(double)a3;
- (void)setPlaybackNewestToOldest:(BOOL)a3;
- (void)setShowTypeInFeed:(id)a3;
- (void)setShowTypeSetting:(int64_t)a3;
- (void)setSortAscending:(BOOL)a3;
- (void)setUpdateAvg:(double)a3;
- (void)setUpdateStdDev:(double)a3;
- (void)setWebpageURL:(id)a3;
@end

@implementation MTPodcast

- (void)markPlaylistsForUpdate
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(MTPodcast *)self playlistSettings];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        [v7 setNeedsUpdate:1];
        v8 = [v7 playlist];
        [v8 setNeedsUpdate:1];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)setDeletePlayedEpisodes:(int64_t)a3
{
  v5 = kPodcastDeletePlayedEpisodes;
  [(MTPodcast *)self willChangeValueForKey:kPodcastDeletePlayedEpisodes];
  v6 = [NSNumber numberWithLongLong:a3];
  [(MTPodcast *)self setPrimitiveValue:v6 forKey:v5];

  [(MTPodcast *)self didChangeValueForKey:v5];

  [(MTPodcast *)self markPlaylistsForUpdate];
}

- (void)setLastImplicitlyFollowedDate:(double)a3
{
  [(MTPodcast *)self lastImplicitlyFollowedDate];
  if (v5 < a3)
  {
    v6 = kPodcastLastImplicitlyFollowedDate;
    [(MTPodcast *)self willChangeValueForKey:kPodcastLastImplicitlyFollowedDate];
    v7 = [NSDate dateWithTimeIntervalSinceReferenceDate:a3];
    [(MTPodcast *)self setPrimitiveValue:v7 forKey:v6];

    [(MTPodcast *)self didChangeValueForKey:v6];
  }
}

- (void)setModifiedDate:(double)a3
{
  v5 = +[_TtC18PodcastsFoundation17FutureDateChecker lenientSharedInstance];
  [v5 timestampBoundByNow:a3];
  v7 = v6;

  v8 = kPodcastModifiedDate;
  [(MTPodcast *)self willChangeValueForKey:kPodcastModifiedDate];
  v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:v7];
  [(MTPodcast *)self setPrimitiveValue:v9 forKey:v8];

  [(MTPodcast *)self didChangeValueForKey:v8];
}

- (void)setAuthor:(id)a3
{
  v9 = a3;
  v4 = [(MTPodcast *)self author];
  v5 = v9 | v4;

  if (v5)
  {
    v6 = [(MTPodcast *)self author];
    v7 = [v6 isEqualToString:v9];

    if ((v7 & 1) == 0)
    {
      v8 = kPodcastAuthor;
      [(MTPodcast *)self willChangeValueForKey:kPodcastAuthor];
      [(MTPodcast *)self setPrimitiveValue:v9 forKey:v8];
      [(MTPodcast *)self didChangeValueForKey:v8];
    }
  }
}

- (void)setItemDescription:(id)a3
{
  v9 = a3;
  v4 = [(MTPodcast *)self itemDescription];
  v5 = v9 | v4;

  if (v5)
  {
    v6 = [(MTPodcast *)self itemDescription];
    v7 = [v6 isEqualToString:v9];

    if ((v7 & 1) == 0)
    {
      v8 = kPodcastDescription;
      [(MTPodcast *)self willChangeValueForKey:kPodcastDescription];
      [(MTPodcast *)self setPrimitiveValue:v9 forKey:v8];
      [(MTPodcast *)self didChangeValueForKey:v8];
    }
  }
}

- (void)setFeedChangedDate:(double)a3
{
  [(MTPodcast *)self feedChangedDate];
  if (vabdd_f64(v5, a3) > 2.22044605e-16)
  {
    v6 = kPodcastFeedChangedDate;
    [(MTPodcast *)self willChangeValueForKey:kPodcastFeedChangedDate];
    v7 = [NSDate dateWithTimeIntervalSinceReferenceDate:a3];
    [(MTPodcast *)self setPrimitiveValue:v7 forKey:v6];

    [(MTPodcast *)self didChangeValueForKey:v6];
  }
}

- (void)setUpdateStdDev:(double)a3
{
  [(MTPodcast *)self updateStdDev];
  if (vabdd_f64(v5, a3) > 2.22044605e-16)
  {
    v6 = kPodcastUpdateStdDev;
    [(MTPodcast *)self willChangeValueForKey:kPodcastUpdateStdDev];
    v7 = [NSNumber numberWithDouble:a3];
    [(MTPodcast *)self setPrimitiveValue:v7 forKey:v6];

    [(MTPodcast *)self didChangeValueForKey:v6];
  }
}

- (void)setUpdateAvg:(double)a3
{
  [(MTPodcast *)self updateAvg];
  if (vabdd_f64(v5, a3) > 2.22044605e-16)
  {
    v6 = kPodcastUpdateAvg;
    [(MTPodcast *)self willChangeValueForKey:kPodcastUpdateAvg];
    v7 = [NSNumber numberWithDouble:a3];
    [(MTPodcast *)self setPrimitiveValue:v7 forKey:v6];

    [(MTPodcast *)self didChangeValueForKey:v6];
  }
}

- (void)setImageURL:(id)a3
{
  v9 = a3;
  v4 = [(MTPodcast *)self imageURL];
  v5 = v9 | v4;

  if (v5)
  {
    v6 = [(MTPodcast *)self imageURL];
    v7 = [v6 isEqualToString:v9];

    if ((v7 & 1) == 0)
    {
      v8 = kPodcastImageUrl;
      [(MTPodcast *)self willChangeValueForKey:kPodcastImageUrl];
      [(MTPodcast *)self setPrimitiveValue:v9 forKey:v8];
      [(MTPodcast *)self didChangeValueForKey:v8];
    }
  }
}

- (void)setShowTypeInFeed:(id)a3
{
  v9 = a3;
  v4 = [(MTPodcast *)self showTypeInFeed];
  v5 = v9 | v4;

  if (v5)
  {
    v6 = [(MTPodcast *)self showTypeInFeed];
    v7 = [v6 isEqualToString:v9];

    if ((v7 & 1) == 0)
    {
      v8 = kPodcastShowTypeInFeed;
      [(MTPodcast *)self willChangeValueForKey:kPodcastShowTypeInFeed];
      [(MTPodcast *)self setPrimitiveValue:v9 forKey:v8];
      [(MTPodcast *)self didChangeValueForKey:v8];
    }
  }
}

- (void)setWebpageURL:(id)a3
{
  v9 = a3;
  v4 = [(MTPodcast *)self webpageURL];
  v5 = v9 | v4;

  if (v5)
  {
    v6 = [(MTPodcast *)self webpageURL];
    v7 = [v6 isEqualToString:v9];

    if ((v7 & 1) == 0)
    {
      v8 = kPodcastWebpageURL;
      [(MTPodcast *)self willChangeValueForKey:kPodcastWebpageURL];
      [(MTPodcast *)self setPrimitiveValue:v9 forKey:v8];
      [(MTPodcast *)self didChangeValueForKey:v8];
    }
  }
}

- (void)setShowTypeSetting:(int64_t)a3
{
  if ([(MTPodcast *)self showTypeSetting]!= a3)
  {
    v5 = [(MTPodcast *)self isValidShowTypeSetting:a3];
    v6 = _MTLogCategoryDatabase();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v8 = [(MTPodcast *)self title];
        v9 = [(MTPodcast *)self feedURL];
        v10 = [(MTPodcast *)self storeCollectionId];
        v11 = [(MTPodcast *)self uuid];
        v14 = 134350083;
        v15 = a3;
        v16 = 2113;
        v17 = v8;
        v18 = 2113;
        v19 = v9;
        v20 = 2049;
        v21 = v10;
        v22 = 2114;
        v23 = v11;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Switching show type setting to %{public}lld, show %{private}@, %{private}@, %{private}lld, %{public}@", &v14, 0x34u);
      }

      v12 = kPodcastShowTypeSetting;
      [(MTPodcast *)self willChangeValueForKey:kPodcastShowTypeSetting];
      v13 = [NSNumber numberWithLongLong:a3];
      [(MTPodcast *)self setPrimitiveValue:v13 forKey:v12];

      [(MTPodcast *)self didChangeValueForKey:v12];
      [(MTPodcast *)self applyShowTypeSetting:a3];
    }

    else
    {
      if (v7)
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "WARNING: Ignoring attempt to set an invalid show type", &v14, 2u);
      }
    }
  }
}

- (void)applyShowTypeSetting:(int64_t)a3
{
  v4 = [MTPodcast sortOrderAscForShowType:a3];
  v5 = v4;
  [(MTPodcast *)self setSortAscending:v4];

  [(MTPodcast *)self setPlaybackNewestToOldest:v5 ^ 1u];
}

- (void)setSortAscending:(BOOL)a3
{
  v3 = a3;
  v5 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      v6 = @"true";
    }

    else
    {
      v6 = @"false";
    }

    v7 = [(MTPodcast *)self title];
    v8 = [(MTPodcast *)self feedURL];
    v9 = [(MTPodcast *)self storeCollectionId];
    v10 = [(MTPodcast *)self uuid];
    v14 = 138544387;
    v15 = v6;
    v16 = 2113;
    v17 = v7;
    v18 = 2113;
    v19 = v8;
    v20 = 2049;
    v21 = v9;
    v22 = 2114;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Switching SortAscendingFlag to %{public}@, show %{private}@, %{private}@, %{private}lld, %{public}@", &v14, 0x34u);
  }

  v11 = [(MTPodcast *)self flags];
  if (((((v11 & 2) == 0) ^ v3) & 1) == 0)
  {
    v12 = 2;
    if (!v3)
    {
      v12 = 0;
    }

    [(MTPodcast *)self setFlags:v11 & 0xFFFFFFFFFFFFFFFDLL | v12];
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

  v15 = [v20 mt_compactMap:&stru_100010720];
  v16 = [NSSet setWithArray:v15];
  v17 = [v16 allObjects];

  return v17;
}

- (id)sortDescriptorsForSortOrder
{
  if ([(MTPodcast *)self isSerialShowTypeInFeed])
  {
    v3 = [(MTPodcast *)self seasonSortDescriptorsForSortOrder];
  }

  else
  {
    v4 = [(MTPodcast *)self sortAscending];
    v5 = [NSMutableArray alloc];
    if (v4)
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
    v3 = [v5 initWithArray:v11];
  }

  return v3;
}

- (id)seasonSortDescriptorsForSortOrder
{
  v2 = [(MTPodcast *)self showTypeSetting];

  return [MTEpisode seasonSortDescriptors:v2];
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
  v2 = [(MTPodcast *)self playbackNewestToOldest];
  v3 = objc_opt_class();

  return [v3 sortDescriptorsForNewestToOldest:v2];
}

- (id)sortDescriptorsForPlayOrderByEpisodeNumber
{
  v2 = [(MTPodcast *)self showTypeSetting];

  return [MTEpisode seasonSortDescriptors:v2];
}

- (void)setPlaybackNewestToOldest:(BOOL)a3
{
  v3 = a3;
  v5 = [(MTPodcast *)self playbackNewestToOldest];
  v6 = [(MTPodcast *)self flags];
  if (((((v6 & 8) == 0) ^ v3) & 1) == 0)
  {
    v7 = 8;
    if (!v3)
    {
      v7 = 0;
    }

    [(MTPodcast *)self setFlags:v6 & 0xFFFFFFFFFFFFFFF7 | v7];
    [(MTPodcast *)self markPlaylistsForUpdate];
    v8 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
    [v8 markSubscriptionSyncDirty:1 for:{-[MTPodcast syncType](self, "syncType")}];

    if (v5 != v3)
    {

      [(MTPodcast *)self updateCursorPosition:0];
    }
  }
}

- (BOOL)updateCursorPosition:(BOOL)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  [(MTPodcast *)self managedObjectContext];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100003268;
  v8[3] = &unk_100010748;
  v5 = v8[4] = self;
  v9 = v5;
  v10 = &v12;
  v11 = a3;
  [v5 performBlockAndWait:v8];
  v6 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v6;
}

+ (id)podcastUuidForFeedUrlString:(id)a3 ctx:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_100003678;
    v17 = sub_100003688;
    v18 = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100003690;
    v9[3] = &unk_100010770;
    v10 = v6;
    v11 = v5;
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

+ (id)podcastUuidForFeedUrl:(id)a3 ctx:(id)a4
{
  v6 = a4;
  v7 = [a3 absoluteString];
  v8 = [a1 podcastUuidForFeedUrlString:v7 ctx:v6];

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
  v6[2] = sub_100003858;
  v6[3] = &unk_100010798;
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
  v2 = [(MTPodcast *)self seasonNumbers];
  v3 = [v2 count] > 1;

  return v3;
}

+ (id)predicateForSyncablePodcastsForSyncType:(int64_t)a3
{
  v4 = [a1 predicateForNotHiddenNotImplicitlyFollowedPodcasts];
  v5 = [MTPodcast predicateForSubscriptionSyncType:a3];
  v6 = [v4 AND:v5];

  return v6;
}

+ (id)predicateForSubscriptionSyncType:(int64_t)a3
{
  v4 = kPodcastDisplayType;
  v5 = NSPersistentStringForMTDisplayType();
  v6 = NSPersistentStringForMTDisplayType();
  v7 = [NSPredicate predicateWithFormat:@"(%K == %@) || (%K == %@) || (%K == NULL)", v4, v5, v4, v6, v4];

  if (a3 == 1)
  {
    v8 = NSPersistentStringForMTDisplayType();
    v9 = [NSPredicate predicateWithFormat:@"%K == %@", v4, v8];
  }

  else
  {
    v9 = v7;
  }

  return v9;
}

@end