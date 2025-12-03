@interface BKAudiobookPersistenceMediaLibrary
- (BKAudiobookPersistenceMediaLibrary)init;
- (id)_mediaItemsFromAudiobook:(id)audiobook;
- (id)_mediaQueryFromAudiobook:(id)audiobook;
- (id)_representativeItemFromAudibook:(id)audibook;
- (id)_storeIDFromAudiobook:(id)audiobook;
- (void)bookmarkTimeForAudiobook:(id)audiobook completion:(id)completion;
- (void)saveBookmarkTime:(double)time audiobook:(id)audiobook completion:(id)completion;
@end

@implementation BKAudiobookPersistenceMediaLibrary

- (BKAudiobookPersistenceMediaLibrary)init
{
  v3.receiver = self;
  v3.super_class = BKAudiobookPersistenceMediaLibrary;
  result = [(BKAudiobookPersistenceMediaLibrary *)&v3 init];
  if (result)
  {
    result->_accessLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)bookmarkTimeForAudiobook:(id)audiobook completion:(id)completion
{
  audiobookCopy = audiobook;
  completionCopy = completion;
  if ([audiobookCopy isAudiobookPreview])
  {
    v8 = objc_retainBlock(completionCopy);
    v9 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8, 0, 0, 0.0);
    }

    goto LABEL_46;
  }

  os_unfair_lock_lock(&self->_accessLock);
  v10 = [(BKAudiobookPersistenceMediaLibrary *)self _mediaItemsFromAudiobook:audiobookCopy];
  firstObject = [v10 firstObject];
  assetID = [audiobookCopy assetID];
  dateAccessed = [firstObject dateAccessed];
  v14 = [firstObject valueForProperty:?];
  v15 = 0;
  v16 = 0.0;
  if ([firstObject hasBeenPlayed])
  {
    if (v14 && dateAccessed != 0)
    {
      [v14 doubleValue];
      v16 = v18;
      v15 = dateAccessed;
      v19 = [firstObject valueForProperty:MPMediaItemPropertyPlaybackDuration];
      [v19 doubleValue];
      v21 = v20;

      if (v16 > v21)
      {
        v16 = 0.0;
      }

      logInstance = [(BKAudiobookPersistenceMediaLibrary *)self logInstance];
      if (os_log_type_enabled(logInstance, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v59 = assetID;
        v60 = 2048;
        v61 = v16;
        v62 = 2112;
        v63 = v15;
        _os_log_impl(&dword_0, logInstance, OS_LOG_TYPE_DEFAULT, "Bookmark time base-case calculation for %@: bookmarkTime=%lf timestamp=%@", buf, 0x20u);
      }
    }
  }

  if ([v10 count] >= 2)
  {
    v44 = v15;
    v45 = v14;
    v46 = dateAccessed;
    selfCopy = self;
    v48 = firstObject;
    v50 = completionCopy;
    v51 = audiobookCopy;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v49 = v10;
    obj = v10;
    v23 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = 0;
      v26 = 0;
      v27 = *v54;
      v16 = 0.0;
      v28 = 0.0;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v54 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v53 + 1) + 8 * i);
          dateAccessed2 = [v30 dateAccessed];
          hasBeenPlayed = [v30 hasBeenPlayed];
          v33 = [v30 valueForProperty:MPMediaItemPropertyPlaybackDuration];
          [v33 doubleValue];
          v35 = v34;

          v36 = [v30 valueForProperty:MPMediaItemPropertyBookmarkTime];
          [v36 doubleValue];
          v38 = v37;

          if (v38 > v35)
          {
            v38 = 0.0;
          }

          if (hasBeenPlayed)
          {
            if (!v25 || [dateAccessed2 compare:v25] == &dword_0 + 1)
            {
              v39 = dateAccessed2;

              v25 = v39;
            }

            v16 = v28 + v38;
          }

          v26 |= hasBeenPlayed;
          v28 = v28 + v35;
        }

        v24 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
      }

      while (v24);
    }

    else
    {
      v25 = 0;
      v26 = 0;
      v16 = 0.0;
    }

    self = selfCopy;
    logInstance2 = [(BKAudiobookPersistenceMediaLibrary *)selfCopy logInstance];
    v41 = os_log_type_enabled(logInstance2, OS_LOG_TYPE_DEFAULT);
    if (v25 || (v26 & 1) != 0)
    {
      completionCopy = v50;
      v15 = v44;
      if (v41)
      {
        *buf = 138412546;
        v59 = assetID;
        v60 = 2048;
        v61 = v16;
        _os_log_impl(&dword_0, logInstance2, OS_LOG_TYPE_DEFAULT, "Bookmark time for %@ calculated to be %lf on read", buf, 0x16u);
      }

      audiobookCopy = v51;
      if (!v25)
      {
        goto LABEL_42;
      }

      logInstance2 = v44;
      v15 = v25;
    }

    else
    {
      v16 = 0.0;
      completionCopy = v50;
      v15 = v44;
      if (v41)
      {
        *buf = 138412290;
        v59 = assetID;
        _os_log_impl(&dword_0, logInstance2, OS_LOG_TYPE_DEFAULT, "Bookmark time for %@ calculated to be 0 on read because ((lastAccessedDate == nil) && !encounteredTrackWithHasBeenPlayedTrue)", buf, 0xCu);
      }

      audiobookCopy = v51;
    }

LABEL_42:
    firstObject = v48;
    v10 = v49;
    v14 = v45;
    dateAccessed = v46;
  }

  os_unfair_lock_unlock(&self->_accessLock);
  v42 = objc_retainBlock(completionCopy);
  v43 = v42;
  if (v42)
  {
    (*(v42 + 2))(v42, v15, 0, v16);
  }

LABEL_46:
}

- (void)saveBookmarkTime:(double)time audiobook:(id)audiobook completion:(id)completion
{
  audiobookCopy = audiobook;
  completionCopy = completion;
  if ([audiobookCopy isAudiobookPreview])
  {
    v10 = objc_retainBlock(completionCopy);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0);
    }

    goto LABEL_38;
  }

  os_unfair_lock_lock(&self->_accessLock);
  v12 = [(BKAudiobookPersistenceMediaLibrary *)self _mediaItemsFromAudiobook:audiobookCopy];
  assetID = [audiobookCopy assetID];
  v13 = +[NSDate date];
  v45 = audiobookCopy;
  [audiobookCopy duration];
  if (v14 <= time)
  {
    timeCopy = v14;
  }

  else
  {
    timeCopy = time;
  }

  logInstance = [(BKAudiobookPersistenceMediaLibrary *)self logInstance];
  if (os_log_type_enabled(logInstance, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v52 = assetID;
    *&v52[8] = 2048;
    *v53 = timeCopy;
    _os_log_impl(&dword_0, logInstance, OS_LOG_TYPE_DEFAULT, "Setting media item bookmark time for %@ to %lf", buf, 0x16u);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v17 = v12;
  v18 = [v17 countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v48;
    v21 = 0.0;
    do
    {
      v22 = 0;
      v23 = v21;
      do
      {
        if (*v48 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v24 = *(*(&v47 + 1) + 8 * v22);
        v25 = [v24 valueForProperty:MPMediaItemPropertyPlaybackDuration];
        [v25 doubleValue];
        v27 = v26;

        v21 = v23 + v27;
        if (timeCopy > v23 + v27)
        {
          [v24 setDateAccessed:v13];
          [v24 setHasBeenPlayed:1];
          [v24 setValue:&off_3E120 forProperty:MPMediaItemPropertyBookmarkTime withCompletionBlock:0];
          logInstance2 = [(BKAudiobookPersistenceMediaLibrary *)self logInstance];
          if (!os_log_type_enabled(logInstance2, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_24;
          }

          v29 = [v17 indexOfObjectIdenticalTo:v24] + 1;
          v30 = [v17 count];
          *buf = 67109634;
          *v52 = v29;
          *&v52[4] = 1024;
          *&v52[6] = v30;
          *v53 = 2112;
          *&v53[2] = assetID;
          v31 = logInstance2;
          v32 = "Bookmark is NOT in item %u of %u of %@ on save. Setting hasBeenPlayed:YES, boomarkTime:0";
LABEL_18:
          v33 = 24;
          goto LABEL_23;
        }

        if (v23 <= timeCopy && timeCopy <= v21)
        {
          [v24 setDateAccessed:v13];
          [v24 setHasBeenPlayed:1];
          v34 = [NSNumber numberWithDouble:timeCopy - v23];
          [v24 setValue:v34 forProperty:MPMediaItemPropertyBookmarkTime withCompletionBlock:0];

          logInstance2 = [(BKAudiobookPersistenceMediaLibrary *)self logInstance];
          if (os_log_type_enabled(logInstance2, OS_LOG_TYPE_DEFAULT))
          {
            v35 = [v17 indexOfObjectIdenticalTo:v24] + 1;
            v36 = [v17 count];
            *buf = 67109890;
            *v52 = v35;
            *&v52[4] = 1024;
            *&v52[6] = v36;
            *v53 = 2112;
            *&v53[2] = assetID;
            v54 = 2048;
            v55 = timeCopy - v23;
            v31 = logInstance2;
            v32 = "Bookmark is in item %u of %u of %@ on save. hasBeenPlayed:YES localTime:%f";
            v33 = 34;
            goto LABEL_23;
          }

          goto LABEL_24;
        }

        if (v23 > timeCopy)
        {
          [v24 setHasBeenPlayed:0];
          [v24 setValue:&off_3E120 forProperty:MPMediaItemPropertyBookmarkTime withCompletionBlock:0];
          logInstance2 = [(BKAudiobookPersistenceMediaLibrary *)self logInstance];
          if (!os_log_type_enabled(logInstance2, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_24;
          }

          v37 = [v17 indexOfObjectIdenticalTo:v24] + 1;
          v38 = [v17 count];
          *buf = 67109634;
          *v52 = v37;
          *&v52[4] = 1024;
          *&v52[6] = v38;
          *v53 = 2112;
          *&v53[2] = assetID;
          v31 = logInstance2;
          v32 = "Setting item %u of %u on %@ to hasBeenPlayed:NO boomarkTime:0";
          goto LABEL_18;
        }

        lastObject = [v17 lastObject];
        logInstance2 = lastObject;
        if (v24 != lastObject)
        {
          goto LABEL_24;
        }

        if (vabdd_f64(timeCopy, v21) < 0.00999999978)
        {
          [v24 setDateAccessed:v13];
          [v24 setHasBeenPlayed:1];
          v40 = [NSNumber numberWithDouble:v27];
          [v24 setValue:v40 forProperty:MPMediaItemPropertyBookmarkTime withCompletionBlock:0];

          logInstance2 = [(BKAudiobookPersistenceMediaLibrary *)self logInstance];
          if (os_log_type_enabled(logInstance2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v52 = assetID;
            v31 = logInstance2;
            v32 = "Audiobook bookmark is at end of audiobook %@ on save";
            v33 = 12;
LABEL_23:
            _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, v32, buf, v33);
          }

LABEL_24:
        }

        v22 = v22 + 1;
        v23 = v23 + v27;
      }

      while (v19 != v22);
      v41 = [v17 countByEnumeratingWithState:&v47 objects:v56 count:16];
      v19 = v41;
    }

    while (v41);
  }

  os_unfair_lock_unlock(&self->_accessLock);
  completionCopy = v44;
  v42 = objc_retainBlock(v44);
  v43 = v42;
  if (v42)
  {
    (*(v42 + 2))(v42, 0);
  }

  audiobookCopy = v45;
LABEL_38:
}

- (id)_mediaItemsFromAudiobook:(id)audiobook
{
  v3 = [(BKAudiobookPersistenceMediaLibrary *)self _mediaQueryFromAudiobook:audiobook];
  items = [v3 items];

  return items;
}

- (id)_representativeItemFromAudibook:(id)audibook
{
  audibookCopy = audibook;
  objc_opt_class();
  v4 = BUDynamicCast();

  objc_opt_class();
  tracks = [v4 tracks];
  firstObject = [tracks firstObject];
  v7 = BUDynamicCast();
  mediaItem = [v7 mediaItem];

  return mediaItem;
}

- (id)_mediaQueryFromAudiobook:(id)audiobook
{
  v3 = [(BKAudiobookPersistenceMediaLibrary *)self _representativeItemFromAudibook:audiobook];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 valueForProperty:MPMediaItemPropertyAlbumTitle];
    if (v5)
    {
      v6 = +[MPMediaQuery bk_audiobooksQuery];
      v7 = [MPMediaPropertyPredicate predicateWithValue:v5 forProperty:MPMediaItemPropertyAlbumTitle];
      [v6 addFilterPredicate:v7];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_storeIDFromAudiobook:(id)audiobook
{
  v3 = [(BKAudiobookPersistenceMediaLibrary *)self _representativeItemFromAudibook:audiobook];
  objc_opt_class();
  v4 = [v3 valueForProperty:MPMediaItemPropertyStorePlaylistID];
  v5 = BUDynamicCast();

  objc_opt_class();
  v6 = [v3 valueForProperty:MPMediaItemPropertyStoreID];
  v7 = BUDynamicCast();

  if ([v5 unsignedLongLongValue])
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  stringValue = [v8 stringValue];

  return stringValue;
}

@end