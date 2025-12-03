@interface MTPlaylistSyncDictionaryMerge
+ (void)mergeArray:(id)array fromArray:(id)fromArray lookupKey:(id)key updateBlock:(id)block insertBlock:(id)insertBlock deleteBlock:(id)deleteBlock;
- (MTPlaylistSyncDictionaryMerge)initWithLoggingCategory:(id)category dictionariesToMerge:(id)merge;
- (void)_addSetting:(id)setting syncObj:(id)obj playlist:(id)playlist;
- (void)_applyOrderingInSyncDictionary:(id)dictionary playlist:(id)playlist;
- (void)_mergeSetting:(id)setting syncObj:(id)obj;
- (void)performAndWaitWithContext:(id)context save:(BOOL)save;
@end

@implementation MTPlaylistSyncDictionaryMerge

- (MTPlaylistSyncDictionaryMerge)initWithLoggingCategory:(id)category dictionariesToMerge:(id)merge
{
  categoryCopy = category;
  mergeCopy = merge;
  v12.receiver = self;
  v12.super_class = MTPlaylistSyncDictionaryMerge;
  v9 = [(MTPlaylistSyncDictionaryMerge *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_loggingCategory, category);
    objc_storeStrong(&v10->_dictionariesToMerge, merge);
    v10->_syncMergeIsFromCloud = 1;
  }

  return v10;
}

- (void)performAndWaitWithContext:(id)context save:(BOOL)save
{
  saveCopy = save;
  contextCopy = context;
  selfCopy = self;
  loggingCategory = [(MTPlaylistSyncDictionaryMerge *)self loggingCategory];
  dictionariesToMerge = [(MTPlaylistSyncDictionaryMerge *)selfCopy dictionariesToMerge];
  refreshContentsOfUpdatedOrInsertedPlaylists = [(MTPlaylistSyncDictionaryMerge *)selfCopy refreshContentsOfUpdatedOrInsertedPlaylists];
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_10012A928;
  v60[3] = &unk_1004DD3E8;
  v60[4] = selfCopy;
  v10 = objc_retainBlock(v60);
  v11 = objc_opt_new();
  v12 = objc_alloc_init(NSMutableDictionary);
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = sub_100008B7C;
  v58 = sub_10003B594;
  v59 = objc_opt_new();
  v13 = loggingCategory;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [dictionariesToMerge count];
    *buf = 67109120;
    LODWORD(v62) = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "merging %d playlists", buf, 8u);
  }

  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_10012A9A8;
  v52[3] = &unk_1004DD410;
  v15 = contextCopy;
  v53 = v15;
  v30 = objc_retainBlock(v52);
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10012A9B8;
  v43[3] = &unk_1004DD528;
  v33 = v15;
  v44 = v33;
  v45 = selfCopy;
  v27 = dictionariesToMerge;
  v46 = v27;
  v34 = v13;
  v47 = v34;
  v51 = &v54;
  v29 = v11;
  v48 = v29;
  v35 = v12;
  v49 = v35;
  v28 = v10;
  v50 = v28;
  (v30[2])(v30, saveCopy, v43);
  if (refreshContentsOfUpdatedOrInsertedPlaylists)
  {
    v16 = +[(MTBaseProcessor *)MTPlaylistQueryManager];
    context = objc_autoreleasePoolPush();
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v29;
    v17 = [obj countByEnumeratingWithState:&v39 objects:v65 count:16];
    if (v17)
    {
      v18 = *v40;
      v31 = kPlaylistTitle;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v40 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v39 + 1) + 8 * i);
          v21 = [v35 objectForKeyedSubscript:v20];
          v22 = v34;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [v21 valueForKey:v31];
            *buf = 138543618;
            v62 = v20;
            v63 = 2112;
            v64 = v23;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "sync processor is refreshing playlist (uuid=%{public}@ - title='%@')", buf, 0x16u);
          }

          v37[0] = _NSConcreteStackBlock;
          v37[1] = 3221225472;
          v37[2] = sub_10012B6B4;
          v37[3] = &unk_1004DD550;
          v37[4] = selfCopy;
          v24 = v21;
          v38 = v24;
          [v16 updatePlaylistWithUuid:v20 inContext:v33 applyAdditionalChangesBlock:v37];
        }

        v17 = [obj countByEnumeratingWithState:&v39 objects:v65 count:16];
      }

      while (v17);
    }

    objc_autoreleasePoolPop(context);
  }

  v25 = +[MTCoreSpotlightController sharedInstance];
  [v25 updateStationsWithUUIDs:v55[5]];

  _Block_object_dispose(&v54, 8);
}

- (void)_applyOrderingInSyncDictionary:(id)dictionary playlist:(id)playlist
{
  dictionaryCopy = dictionary;
  playlistCopy = playlist;
  loggingCategory = [(MTPlaylistSyncDictionaryMerge *)self loggingCategory];
  if ([playlistCopy isUngroupedList] && objc_msgSend(playlistCopy, "containerOrder") == 2)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"episodeSortOrderArray"];
    if ([v8 count])
    {
      v37 = dictionaryCopy;
      v9 = +[NSMutableDictionary dictionary];
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v36 = v8;
      v10 = v8;
      v38 = v9;
      v42 = [v10 countByEnumeratingWithState:&v49 objects:v59 count:16];
      if (v42)
      {
        v41 = *v50;
        v39 = v10;
        while (2)
        {
          for (i = 0; i != v42; i = i + 1)
          {
            if (*v50 != v41)
            {
              objc_enumerationMutation(v10);
            }

            v12 = *(*(&v49 + 1) + 8 * i);
            v13 = [v12 objectForKeyedSubscript:{@"mediaItemPersistentID", v36}];
            longLongValue = [v13 longLongValue];
            v15 = [v12 objectForKeyedSubscript:@"sortOrder"];
            longLongValue2 = [v15 longLongValue];
            if (!longLongValue)
            {
              v33 = loggingCategory;
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                uuid = [playlistCopy uuid];
                title = [playlistCopy title];
                *buf = 138543874;
                v54 = uuid;
                v55 = 2112;
                v56 = title;
                v57 = 2114;
                v58 = @"mediaItemPersistentID";
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "ERROR: syncInfo ordering can't be be applied to playlist (uuid=%{public}@ - title='%@').  No %{public}@ found in info dictionary", buf, 0x20u);

                v10 = v39;
              }

              dictionaryCopy = v37;
              goto LABEL_22;
            }

            v17 = longLongValue2;
            if (!v15)
            {
              v18 = loggingCategory;
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                uuid2 = [playlistCopy uuid];
                [playlistCopy title];
                v21 = v20 = playlistCopy;
                *buf = 138543874;
                v54 = uuid2;
                v55 = 2112;
                v56 = v21;
                v57 = 2114;
                v58 = @"sortOrder";
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "ERROR: syncInfo ordering can't be be applied to playlist (uuid=%{public}@ - title='%@').  No %{public}@ found in info dictionary", buf, 0x20u);

                playlistCopy = v20;
                v10 = v39;

                v9 = v38;
              }
            }

            v22 = [NSNumber numberWithLongLong:v17];
            v23 = [NSNumber numberWithLongLong:longLongValue];
            [v9 setObject:v22 forKeyedSubscript:v23];
          }

          v42 = [v10 countByEnumeratingWithState:&v49 objects:v59 count:16];
          if (v42)
          {
            continue;
          }

          break;
        }
      }

      v24 = +[NSMutableDictionary dictionary];
      episodes = [playlistCopy episodes];
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_10012BC50;
      v47[3] = &unk_1004DAA48;
      v26 = v24;
      v48 = v26;
      [episodes enumerateObjectsUsingBlock:v47];
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_10012BD04;
      v44[3] = &unk_1004DD578;
      v45 = v9;
      v46 = v26;
      v13 = v26;
      v40 = episodes;
      v27 = [episodes sortedArrayUsingComparator:v44];
      v28 = loggingCategory;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        uuid3 = [playlistCopy uuid];
        title2 = [playlistCopy title];
        v31 = [v27 valueForKey:@"persistentID"];
        *buf = 138543874;
        v54 = uuid3;
        v55 = 2112;
        v56 = title2;
        v57 = 2114;
        v58 = v31;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "syncInfo ordering will be applied to playlist (uuid=%{public}@ - title='%@'), episodePIDs = %{public}@", buf, 0x20u);

        v9 = v38;
      }

      v32 = [NSOrderedSet orderedSetWithArray:v27];
      [playlistCopy setEpisodes:v32];

      v15 = v48;
      dictionaryCopy = v37;
      v10 = v40;
LABEL_22:

      v8 = v36;
    }
  }
}

- (void)_addSetting:(id)setting syncObj:(id)obj playlist:(id)playlist
{
  settingCopy = setting;
  objCopy = obj;
  playlistCopy = playlist;
  v9 = objCopy;
  v10 = [v9 objectForKey:@"podcastFeedUrl"];

  if (v10)
  {
    v11 = [v9 objectForKey:@"podcastFeedUrl"];
    v12 = [settingCopy podcastForFeedUrl:v11];

    if (v12)
    {
      v13 = [MTPodcastPlaylistSettings insertNewSettingsInManagedObjectContext:settingCopy];
      v14 = [v9 objectForKey:kPlaylistSettingUuid];
      [v13 setUuid:v14];

      v15 = [v9 objectForKey:@"episodesToShowTruth"];
      [v13 setEpisodesToShow:{objc_msgSend(v15, "integerValue")}];

      v16 = [v9 objectForKey:kPlaylistSettingMediaType];
      [v13 setMediaType:{objc_msgSend(v16, "integerValue")}];

      v17 = [v9 objectForKey:kPlaylistSettingShowPlayedEpisodes];
      [v13 setShowPlayedEpisodes:{objc_msgSend(v17, "BOOLValue")}];

      [v13 setNeedsUpdate:1];
      [v13 setPlaylist:playlistCopy];
      v18 = [v9 objectForKey:kPlaylistSettingTracksDefault];
      [v13 setTracksDefault:{objc_msgSend(v18, "BOOLValue")}];

      [v13 setPodcast:v12];
    }

    else
    {
      v13 = +[IMLogger sharedLogger];
      [v13 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Library/Sync/MTPlaylistSyncDictionaryMerge.m" lineNumber:268 format:@"Trying to add a setting for a non-existent podcast"];
    }
  }
}

- (void)_mergeSetting:(id)setting syncObj:(id)obj
{
  settingCopy = setting;
  objCopy = obj;
  v6 = [objCopy objectForKey:@"episodesToShowTruth"];
  if (v6 && (v7 = v6, v8 = [settingCopy episodesToShow], objc_msgSend(objCopy, "objectForKey:", @"episodesToShowTruth"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "integerValue"), v9, v7, v8 != v10))
  {
    v12 = [objCopy objectForKey:@"episodesToShowTruth"];
    [settingCopy setEpisodesToShow:{objc_msgSend(v12, "integerValue")}];

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  v13 = kPlaylistSettingTracksDefault;
  v14 = [objCopy objectForKey:kPlaylistSettingTracksDefault];
  if (v14)
  {
    v15 = v14;
    tracksDefault = [settingCopy tracksDefault];
    v17 = [objCopy objectForKey:v13];
    bOOLValue = [v17 BOOLValue];

    if (tracksDefault != bOOLValue)
    {
      v19 = [objCopy objectForKey:v13];
      [settingCopy setTracksDefault:{objc_msgSend(v19, "BOOLValue")}];

      v11 = 1;
    }
  }

  v20 = kPlaylistSettingMediaType;
  v21 = [objCopy objectForKey:kPlaylistSettingMediaType];
  if (v21)
  {
    v22 = v21;
    mediaType = [settingCopy mediaType];
    v24 = [objCopy objectForKey:v20];
    integerValue = [v24 integerValue];

    if (mediaType != integerValue)
    {
      v26 = [objCopy objectForKey:v20];
      [settingCopy setMediaType:{objc_msgSend(v26, "integerValue")}];

      v11 = 1;
    }
  }

  v27 = kPlaylistSettingShowPlayedEpisodes;
  v28 = [objCopy objectForKey:kPlaylistSettingShowPlayedEpisodes];
  if (v28)
  {
    v29 = v28;
    showPlayedEpisodes = [settingCopy showPlayedEpisodes];
    v31 = [objCopy objectForKey:v27];
    bOOLValue2 = [v31 BOOLValue];

    if (showPlayedEpisodes != bOOLValue2)
    {
      v33 = [objCopy objectForKey:v27];
      [settingCopy setShowPlayedEpisodes:{objc_msgSend(v33, "BOOLValue")}];

      v11 = 1;
    }
  }

  v34 = kPlaylistSettingSortOrder;
  v35 = [objCopy objectForKey:kPlaylistSettingSortOrder];
  if (v35)
  {
    v36 = v35;
    sortOrder = [settingCopy sortOrder];
    v38 = [objCopy objectForKey:v34];
    integerValue2 = [v38 integerValue];

    if (sortOrder != integerValue2)
    {
      v40 = [objCopy objectForKey:v34];
      [settingCopy setSortOrder:{objc_msgSend(v40, "longLongValue")}];

      v11 = 1;
    }
  }

  [settingCopy setNeedsUpdate:v11];
}

+ (void)mergeArray:(id)array fromArray:(id)fromArray lookupKey:(id)key updateBlock:(id)block insertBlock:(id)insertBlock deleteBlock:(id)deleteBlock
{
  arrayCopy = array;
  fromArrayCopy = fromArray;
  keyCopy = key;
  blockCopy = block;
  insertBlockCopy = insertBlock;
  deleteBlockCopy = deleteBlock;
  v28 = arrayCopy;
  if (arrayCopy)
  {
    v17 = [arrayCopy valueForKey:keyCopy];
    v18 = [NSMutableDictionary dictionaryWithObjects:arrayCopy forKeys:v17];
  }

  else
  {
    v18 = 0;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v19 = fromArrayCopy;
  v20 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v33;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v32 + 1) + 8 * i);
        v25 = [v24 valueForKey:{keyCopy, deleteBlockCopy, v28}];
        if (v25)
        {
          v26 = [v18 objectForKey:v25];
          if (v26)
          {
            if (blockCopy)
            {
              blockCopy[2](blockCopy, v26, v24);
            }
          }

          else if (insertBlockCopy)
          {
            insertBlockCopy[2](insertBlockCopy, v24);
          }

          [v18 removeObjectForKey:v25];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v21);
  }

  if (deleteBlockCopy && [v18 count])
  {
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10012C694;
    v30[3] = &unk_1004DD5A0;
    v31 = deleteBlockCopy;
    [v18 enumerateKeysAndObjectsUsingBlock:v30];
  }
}

@end