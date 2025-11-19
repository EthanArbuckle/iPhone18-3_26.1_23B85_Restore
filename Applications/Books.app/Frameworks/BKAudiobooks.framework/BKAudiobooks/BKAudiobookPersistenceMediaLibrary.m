@interface BKAudiobookPersistenceMediaLibrary
- (BKAudiobookPersistenceMediaLibrary)init;
- (id)_mediaItemsFromAudiobook:(id)a3;
- (id)_mediaQueryFromAudiobook:(id)a3;
- (id)_representativeItemFromAudibook:(id)a3;
- (id)_storeIDFromAudiobook:(id)a3;
- (void)bookmarkTimeForAudiobook:(id)a3 completion:(id)a4;
- (void)saveBookmarkTime:(double)a3 audiobook:(id)a4 completion:(id)a5;
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

- (void)bookmarkTimeForAudiobook:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isAudiobookPreview])
  {
    v8 = objc_retainBlock(v7);
    v9 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8, 0, 0, 0.0);
    }

    goto LABEL_46;
  }

  os_unfair_lock_lock(&self->_accessLock);
  v10 = [(BKAudiobookPersistenceMediaLibrary *)self _mediaItemsFromAudiobook:v6];
  v11 = [v10 firstObject];
  v12 = [v6 assetID];
  v13 = [v11 dateAccessed];
  v14 = [v11 valueForProperty:?];
  v15 = 0;
  v16 = 0.0;
  if ([v11 hasBeenPlayed])
  {
    if (v14 && v13 != 0)
    {
      [v14 doubleValue];
      v16 = v18;
      v15 = v13;
      v19 = [v11 valueForProperty:MPMediaItemPropertyPlaybackDuration];
      [v19 doubleValue];
      v21 = v20;

      if (v16 > v21)
      {
        v16 = 0.0;
      }

      v22 = [(BKAudiobookPersistenceMediaLibrary *)self logInstance];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v59 = v12;
        v60 = 2048;
        v61 = v16;
        v62 = 2112;
        v63 = v15;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Bookmark time base-case calculation for %@: bookmarkTime=%lf timestamp=%@", buf, 0x20u);
      }
    }
  }

  if ([v10 count] >= 2)
  {
    v44 = v15;
    v45 = v14;
    v46 = v13;
    v47 = self;
    v48 = v11;
    v50 = v7;
    v51 = v6;
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
          v31 = [v30 dateAccessed];
          v32 = [v30 hasBeenPlayed];
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

          if (v32)
          {
            if (!v25 || [v31 compare:v25] == &dword_0 + 1)
            {
              v39 = v31;

              v25 = v39;
            }

            v16 = v28 + v38;
          }

          v26 |= v32;
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

    self = v47;
    v40 = [(BKAudiobookPersistenceMediaLibrary *)v47 logInstance];
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
    if (v25 || (v26 & 1) != 0)
    {
      v7 = v50;
      v15 = v44;
      if (v41)
      {
        *buf = 138412546;
        v59 = v12;
        v60 = 2048;
        v61 = v16;
        _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "Bookmark time for %@ calculated to be %lf on read", buf, 0x16u);
      }

      v6 = v51;
      if (!v25)
      {
        goto LABEL_42;
      }

      v40 = v44;
      v15 = v25;
    }

    else
    {
      v16 = 0.0;
      v7 = v50;
      v15 = v44;
      if (v41)
      {
        *buf = 138412290;
        v59 = v12;
        _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "Bookmark time for %@ calculated to be 0 on read because ((lastAccessedDate == nil) && !encounteredTrackWithHasBeenPlayedTrue)", buf, 0xCu);
      }

      v6 = v51;
    }

LABEL_42:
    v11 = v48;
    v10 = v49;
    v14 = v45;
    v13 = v46;
  }

  os_unfair_lock_unlock(&self->_accessLock);
  v42 = objc_retainBlock(v7);
  v43 = v42;
  if (v42)
  {
    (*(v42 + 2))(v42, v15, 0, v16);
  }

LABEL_46:
}

- (void)saveBookmarkTime:(double)a3 audiobook:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ([v8 isAudiobookPreview])
  {
    v10 = objc_retainBlock(v9);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0);
    }

    goto LABEL_38;
  }

  os_unfair_lock_lock(&self->_accessLock);
  v12 = [(BKAudiobookPersistenceMediaLibrary *)self _mediaItemsFromAudiobook:v8];
  v46 = [v8 assetID];
  v13 = +[NSDate date];
  v45 = v8;
  [v8 duration];
  if (v14 <= a3)
  {
    v15 = v14;
  }

  else
  {
    v15 = a3;
  }

  v16 = [(BKAudiobookPersistenceMediaLibrary *)self logInstance];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v52 = v46;
    *&v52[8] = 2048;
    *v53 = v15;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Setting media item bookmark time for %@ to %lf", buf, 0x16u);
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
        if (v15 > v23 + v27)
        {
          [v24 setDateAccessed:v13];
          [v24 setHasBeenPlayed:1];
          [v24 setValue:&off_3E120 forProperty:MPMediaItemPropertyBookmarkTime withCompletionBlock:0];
          v28 = [(BKAudiobookPersistenceMediaLibrary *)self logInstance];
          if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
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
          *&v53[2] = v46;
          v31 = v28;
          v32 = "Bookmark is NOT in item %u of %u of %@ on save. Setting hasBeenPlayed:YES, boomarkTime:0";
LABEL_18:
          v33 = 24;
          goto LABEL_23;
        }

        if (v23 <= v15 && v15 <= v21)
        {
          [v24 setDateAccessed:v13];
          [v24 setHasBeenPlayed:1];
          v34 = [NSNumber numberWithDouble:v15 - v23];
          [v24 setValue:v34 forProperty:MPMediaItemPropertyBookmarkTime withCompletionBlock:0];

          v28 = [(BKAudiobookPersistenceMediaLibrary *)self logInstance];
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v35 = [v17 indexOfObjectIdenticalTo:v24] + 1;
            v36 = [v17 count];
            *buf = 67109890;
            *v52 = v35;
            *&v52[4] = 1024;
            *&v52[6] = v36;
            *v53 = 2112;
            *&v53[2] = v46;
            v54 = 2048;
            v55 = v15 - v23;
            v31 = v28;
            v32 = "Bookmark is in item %u of %u of %@ on save. hasBeenPlayed:YES localTime:%f";
            v33 = 34;
            goto LABEL_23;
          }

          goto LABEL_24;
        }

        if (v23 > v15)
        {
          [v24 setHasBeenPlayed:0];
          [v24 setValue:&off_3E120 forProperty:MPMediaItemPropertyBookmarkTime withCompletionBlock:0];
          v28 = [(BKAudiobookPersistenceMediaLibrary *)self logInstance];
          if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
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
          *&v53[2] = v46;
          v31 = v28;
          v32 = "Setting item %u of %u on %@ to hasBeenPlayed:NO boomarkTime:0";
          goto LABEL_18;
        }

        v39 = [v17 lastObject];
        v28 = v39;
        if (v24 != v39)
        {
          goto LABEL_24;
        }

        if (vabdd_f64(v15, v21) < 0.00999999978)
        {
          [v24 setDateAccessed:v13];
          [v24 setHasBeenPlayed:1];
          v40 = [NSNumber numberWithDouble:v27];
          [v24 setValue:v40 forProperty:MPMediaItemPropertyBookmarkTime withCompletionBlock:0];

          v28 = [(BKAudiobookPersistenceMediaLibrary *)self logInstance];
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v52 = v46;
            v31 = v28;
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
  v9 = v44;
  v42 = objc_retainBlock(v44);
  v43 = v42;
  if (v42)
  {
    (*(v42 + 2))(v42, 0);
  }

  v8 = v45;
LABEL_38:
}

- (id)_mediaItemsFromAudiobook:(id)a3
{
  v3 = [(BKAudiobookPersistenceMediaLibrary *)self _mediaQueryFromAudiobook:a3];
  v4 = [v3 items];

  return v4;
}

- (id)_representativeItemFromAudibook:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = BUDynamicCast();

  objc_opt_class();
  v5 = [v4 tracks];
  v6 = [v5 firstObject];
  v7 = BUDynamicCast();
  v8 = [v7 mediaItem];

  return v8;
}

- (id)_mediaQueryFromAudiobook:(id)a3
{
  v3 = [(BKAudiobookPersistenceMediaLibrary *)self _representativeItemFromAudibook:a3];
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

- (id)_storeIDFromAudiobook:(id)a3
{
  v3 = [(BKAudiobookPersistenceMediaLibrary *)self _representativeItemFromAudibook:a3];
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

  v9 = [v8 stringValue];

  return v9;
}

@end