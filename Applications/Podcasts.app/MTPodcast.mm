@interface MTPodcast
+ (id)allPossibleEpisodeListSortOrderProperties;
+ (id)podcastUuidForFeedUrl:(id)a3 ctx:(id)a4;
+ (id)podcastUuidForFeedUrlString:(id)a3 ctx:(id)a4;
+ (id)predicateForSubscriptionSyncType:(int64_t)a3;
+ (id)predicateForSyncablePodcastsForSyncType:(int64_t)a3;
+ (id)sortDescriptorsForAllPodcasts;
+ (id)sortDescriptorsForDateAddedAscending:(BOOL)a3;
+ (id)sortDescriptorsForFirstTimeAvailableAscending:(BOOL)a3;
+ (id)sortDescriptorsForLastDatePlayed;
+ (id)sortDescriptorsForManualOrder;
+ (id)sortDescriptorsForNewestOnTop;
+ (id)sortDescriptorsForOldestOnTop;
+ (id)sortDescriptorsForRecentlyUpdatedAscending:(BOOL)a3;
+ (id)sortDescriptorsForSortType:(int64_t)a3;
+ (id)sortDescriptorsForTitle:(BOOL)a3;
+ (void)setRemovePlayedDownloadsSetting:(int64_t)a3 forPodcastUuid:(id)a4;
- (BOOL)hasAtLeastOneSeason;
- (BOOL)hasMultipleSeasons;
- (BOOL)updateCursorPosition:(BOOL)a3;
- (id)countOfNewEpisodes;
- (id)countOfUnplayedEpisodes;
- (id)seasonSortDescriptorsForSortOrder;
- (id)sortDescriptorsForPlayOrder;
- (id)sortDescriptorsForPlayOrderByEpisodeNumber;
- (id)sortDescriptorsForPlayOrderByPubDate;
- (id)sortDescriptorsForSortOrder;
- (unint64_t)countOfUnplayedRssEpisodes;
- (void)_updateChannelRelationship:(id)a3 deassociate:(BOOL)a4;
- (void)applyShowTypeSetting:(int64_t)a3;
- (void)markPlaylistsForUpdate;
- (void)prepareForDeletion;
- (void)setAuthor:(id)a3;
- (void)setChannel:(id)a3;
- (void)setDeletePlayedEpisodes:(int64_t)a3;
- (void)setFeedChangedDate:(double)a3;
- (void)setImageURL:(id)a3;
- (void)setItemDescription:(id)a3;
- (void)setLastDatePlayed:(double)a3;
- (void)setLastImplicitlyFollowedDate:(double)a3;
- (void)setModifiedDate:(double)a3;
- (void)setPlaybackNewestToOldest:(BOOL)a3;
- (void)setShowTypeInFeed:(id)a3;
- (void)setShowTypeSetting:(int64_t)a3;
- (void)setSortAscending:(BOOL)a3;
- (void)setSubscribed:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)setUpdateAvg:(double)a3;
- (void)setUpdateStdDev:(double)a3;
- (void)setUpdatedFeedURL:(id)a3;
- (void)setWebpageURL:(id)a3;
- (void)updateEpisodesMetadataIdentifiers;
@end

@implementation MTPodcast

+ (id)sortDescriptorsForLastDatePlayed
{
  v2 = [NSSortDescriptor sortDescriptorWithKey:kPodcastLastDatePlayed ascending:0];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (void)setTitle:(id)a3
{
  v9 = a3;
  v4 = [(MTPodcast *)self title];
  v5 = v9 | v4;

  if (v5)
  {
    v6 = [(MTPodcast *)self title];
    v7 = [v6 isEqualToString:v9];

    if ((v7 & 1) == 0)
    {
      v8 = kPodcastTitle;
      [(MTPodcast *)self willChangeValueForKey:kPodcastTitle];
      [(MTPodcast *)self setPrimitiveValue:v9 forKey:v8];
      [(MTPodcast *)self didChangeValueForKey:v8];
      [(MTPodcast *)self updateEpisodesMetadataIdentifiers];
    }
  }
}

- (void)setUpdatedFeedURL:(id)a3
{
  v4 = kPodcastUpdatedFeedUrl;
  v5 = a3;
  [(MTPodcast *)self willChangeValueForKey:v4];
  [(MTPodcast *)self setPrimitiveValue:v5 forKey:v4];

  [(MTPodcast *)self didChangeValueForKey:v4];
  [(MTPodcast *)self updateEpisodesMetadataIdentifiers];
  v6 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v6 markSubscriptionSyncDirty:1 for:{-[MTPodcast syncType](self, "syncType")}];
}

- (void)setSubscribed:(BOOL)a3
{
  v3 = a3;
  if ([(MTPodcast *)self subscribed]!= a3)
  {
    v5 = kPodcastSubscribed;
    [(MTPodcast *)self willChangeValueForKey:kPodcastSubscribed];
    v6 = [NSNumber numberWithBool:v3];
    [(MTPodcast *)self setPrimitiveValue:v6 forKey:v5];

    [(MTPodcast *)self didChangeValueForKey:v5];
    v7 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
    [v7 markSubscriptionSyncDirty:1 for:{-[MTPodcast syncType](self, "syncType")}];
  }
}

- (void)setChannel:(id)a3
{
  v8 = a3;
  v4 = [(MTPodcast *)self channel];
  v5 = [v8 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [(MTPodcast *)self channel];
    v7 = kPodcastChannel;
    [(MTPodcast *)self willChangeValueForKey:kPodcastChannel];
    [(MTPodcast *)self setPrimitiveValue:v8 forKey:v7];
    [(MTPodcast *)self didChangeValueForKey:v7];
    -[MTPodcast setChannelStoreId:](self, "setChannelStoreId:", [v8 storeId]);
    [(MTPodcast *)self _updateChannelRelationship:v6 deassociate:1];
    [(MTPodcast *)self _updateChannelRelationship:v8 deassociate:0];
  }
}

- (void)_updateChannelRelationship:(id)a3 deassociate:(BOOL)a4
{
  if (a3)
  {
    v4 = a4;
    v6 = a3;
    v7 = [v6 podcastUuids];
    v10 = [v7 mutableCopy];

    v8 = v10;
    if (!v10)
    {
      v8 = objc_opt_new();
    }

    v11 = v8;
    v9 = [(MTPodcast *)self uuid];
    if (v4)
    {
      [v11 removeObject:v9];
    }

    else
    {
      [v11 addObject:v9];
    }

    [v6 setPodcastUuids:v11];
  }
}

- (void)updateEpisodesMetadataIdentifiers
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(MTPodcast *)self episodes];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) updateUPPIdentifierIfNeeded];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)prepareForDeletion
{
  v3 = [(MTPodcast *)self channel];
  [(MTPodcast *)self _updateChannelRelationship:v3 deassociate:1];

  v4.receiver = self;
  v4.super_class = MTPodcast;
  [(MTPodcast *)&v4 prepareForDeletion];
}

+ (void)setRemovePlayedDownloadsSetting:(int64_t)a3 forPodcastUuid:(id)a4
{
  v5 = a4;
  v6 = +[MTDB sharedInstance];
  v7 = [v6 mainOrPrivateContext];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006E850;
  v10[3] = &unk_1004D86D8;
  v11 = v7;
  v12 = v5;
  v13 = a3;
  v8 = v5;
  v9 = v7;
  [v9 performBlockAndWaitWithSave:v10];
}

- (id)countOfNewEpisodes
{
  v3 = +[MTPodcastDerivedPropertyObserver sharedInstance];
  v4 = [(MTPodcast *)self uuid];
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 countOfNewEpisodesForPodcast:v4]);

  return v5;
}

- (id)countOfUnplayedEpisodes
{
  v3 = +[MTPodcastDerivedPropertyObserver sharedInstance];
  v4 = [(MTPodcast *)self uuid];
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 countOfUnplayedEpisodesForPodcast:v4]);

  return v5;
}

- (unint64_t)countOfUnplayedRssEpisodes
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  [(MTPodcast *)self managedObjectContext];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006EAD4;
  v6[3] = &unk_1004D92B0;
  v6[4] = self;
  v3 = v8 = &v9;
  v7 = v3;
  [v3 performBlockAndWait:v6];
  v4 = v10[3];

  _Block_object_dispose(&v9, 8);
  return v4;
}

- (void)setLastDatePlayed:(double)a3
{
  [(MTPodcast *)self lastDatePlayed];
  if (v5 < a3)
  {
    v6 = kPodcastLastDatePlayed;
    [(MTPodcast *)self willChangeValueForKey:kPodcastLastDatePlayed];
    v7 = [NSDate dateWithTimeIntervalSinceReferenceDate:a3];
    [(MTPodcast *)self setPrimitiveValue:v7 forKey:v6];

    [(MTPodcast *)self didChangeValueForKey:v6];
    v8 = +[_TtC8Podcasts24PodcastsStateCoordinator shared];
    [v8 unsafeDidBumpLastDatePlayedFor:self];
  }
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

  v15 = [v20 mt_compactMap:&stru_1004DCD98];
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
  v8[2] = sub_10011689C;
  v8[3] = &unk_1004DCDC0;
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
    v16 = sub_100008B2C;
    v17 = sub_10003B56C;
    v18 = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100116CAC;
    v9[3] = &unk_1004D87E8;
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
  v6[2] = sub_100116E74;
  v6[3] = &unk_1004D92B0;
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

+ (id)sortDescriptorsForSortType:(int64_t)a3
{
  if (a3 <= 3)
  {
    switch(a3)
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

  switch(a3)
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
  v3 = [v2 sortDescriptors];

  return v3;
}

+ (id)sortDescriptorsForRecentlyUpdatedAscending:(BOOL)a3
{
  v3 = [NSSortDescriptor sortDescriptorWithKey:kPodcastFeedChangedDate ascending:a3];
  v7[0] = v3;
  v4 = [NSSortDescriptor sortDescriptorWithKey:kPodcastTitle ascending:0 selector:"localizedStandardCompare:"];
  v7[1] = v4;
  v5 = [NSArray arrayWithObjects:v7 count:2];

  return v5;
}

+ (id)sortDescriptorsForFirstTimeAvailableAscending:(BOOL)a3
{
  v3 = [NSSortDescriptor sortDescriptorWithKey:kPodcastLatestEpisodeAvailabilityTime ascending:a3];
  v7[0] = v3;
  v4 = [NSSortDescriptor sortDescriptorWithKey:kPodcastTitle ascending:0 selector:"localizedStandardCompare:"];
  v7[1] = v4;
  v5 = [NSArray arrayWithObjects:v7 count:2];

  return v5;
}

+ (id)sortDescriptorsForDateAddedAscending:(BOOL)a3
{
  v3 = [NSSortDescriptor sortDescriptorWithKey:kPodcastAddedDate ascending:a3];
  v7[0] = v3;
  v4 = [NSSortDescriptor sortDescriptorWithKey:kPodcastTitle ascending:0 selector:"localizedStandardCompare:"];
  v7[1] = v4;
  v5 = [NSArray arrayWithObjects:v7 count:2];

  return v5;
}

+ (id)sortDescriptorsForTitle:(BOOL)a3
{
  v3 = [NSSortDescriptor sortDescriptorWithKey:kPodcastTitle ascending:a3 selector:"localizedStandardCompare:"];
  v7[0] = v3;
  v4 = [NSSortDescriptor sortDescriptorWithKey:kPodcastUpdatedDate ascending:0];
  v7[1] = v4;
  v5 = [NSArray arrayWithObjects:v7 count:2];

  return v5;
}

@end