@interface STMediaCache
+ (id)mediaTypesForIdentifier:(id)a3;
+ (id)sharedCache;
- (NSMutableDictionary)mediaCache;
- (id)cacheItemForQuery:(id)a3 withGroupingType:(int64_t)a4 splitByPropertyName:(id)a5 defaultPropertyValue:(id)a6;
- (id)mediaCollectionForKey:(id)a3;
- (id)mediaSpecifiersForApp:(id)a3;
- (id)mediaSpecifiersForIdentifier:(id)a3;
- (id)mediaTypesForStorageApp:(id)a3;
- (id)size:(id)a3;
- (unint64_t)totalSizeForApp:(id)a3;
- (void)reload;
@end

@implementation STMediaCache

+ (id)sharedCache
{
  if (qword_3A000 != -1)
  {
    sub_1CAB4();
  }

  v3 = qword_39FF8;

  return v3;
}

+ (id)mediaTypesForIdentifier:(id)a3
{
  v3 = qword_3A010;
  v4 = a3;
  if (v3 != -1)
  {
    sub_1CAC8();
  }

  v5 = [qword_3A008 objectForKey:v4];

  return v5;
}

- (id)mediaTypesForStorageApp:(id)a3
{
  v3 = [a3 appIdentifier];
  v4 = [STMediaCache mediaTypesForIdentifier:v3];

  return v4;
}

- (id)cacheItemForQuery:(id)a3 withGroupingType:(int64_t)a4 splitByPropertyName:(id)a5 defaultPropertyValue:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = objc_alloc_init(STUsageMediaCollection);
  v13 = [MPMediaPropertyPredicate predicateWithValue:&__kCFBooleanTrue forProperty:MPMediaItemPropertyIsLocal];
  [v9 addFilterPredicate:v13];

  [v9 setGroupingType:a4];
  v14 = [v9 collections];
  if ([v14 count])
  {
    v15 = [v10 length];
    v54 = v12;
    v56 = v9;
    v64 = v11;
    v65 = v10;
    if (v11 && v15)
    {
      v16 = +[NSMutableArray array];
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      obj = v14;
      v60 = [obj countByEnumeratingWithState:&v82 objects:v90 count:16];
      if (v60)
      {
        v58 = *v83;
        do
        {
          v17 = 0;
          do
          {
            if (*v83 != v58)
            {
              objc_enumerationMutation(obj);
            }

            v62 = v17;
            v18 = *(*(&v82 + 1) + 8 * v17);
            v19 = +[NSMutableDictionary dictionary];
            v20 = [v18 items];
            v78 = 0u;
            v79 = 0u;
            v80 = 0u;
            v81 = 0u;
            v21 = [v20 countByEnumeratingWithState:&v78 objects:v89 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v79;
              do
              {
                for (i = 0; i != v22; i = i + 1)
                {
                  if (*v79 != v23)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v25 = *(*(&v78 + 1) + 8 * i);
                  v26 = [v25 valueForProperty:v65];
                  v27 = v26;
                  v28 = v64;
                  if (v26)
                  {
                    v28 = v26;
                  }

                  v29 = v28;

                  v30 = [v19 objectForKey:v29];
                  v31 = v30;
                  if (v30)
                  {
                    [v30 addObject:v25];
                  }

                  else
                  {
                    v32 = [NSMutableArray arrayWithObject:v25];
                    [v19 setObject:v32 forKey:v29];
                  }
                }

                v22 = [v20 countByEnumeratingWithState:&v78 objects:v89 count:16];
              }

              while (v22);
            }

            v33 = [v19 allKeys];
            v74 = 0u;
            v75 = 0u;
            v76 = 0u;
            v77 = 0u;
            v34 = [v33 countByEnumeratingWithState:&v74 objects:v88 count:16];
            if (v34)
            {
              v35 = v34;
              v36 = *v75;
              do
              {
                for (j = 0; j != v35; j = j + 1)
                {
                  if (*v75 != v36)
                  {
                    objc_enumerationMutation(v33);
                  }

                  v38 = [v19 objectForKey:*(*(&v74 + 1) + 8 * j)];
                  v39 = [MPMediaItemCollection collectionWithItems:v38];
                  [v16 addObject:v39];
                }

                v35 = [v33 countByEnumeratingWithState:&v74 objects:v88 count:16];
              }

              while (v35);
            }

            v17 = v62 + 1;
          }

          while ((v62 + 1) != v60);
          v60 = [obj countByEnumeratingWithState:&v82 objects:v90 count:16];
        }

        while (v60);
      }
    }

    else
    {
      v16 = v14;
    }

    v63 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v16 count]);
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v14 = v16;
    v40 = [v14 countByEnumeratingWithState:&v70 objects:v87 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = 0;
      v61 = *v71;
      v43 = MPMediaItemPropertyFileSize;
      v59 = v14;
      do
      {
        for (k = 0; k != v41; k = k + 1)
        {
          if (*v71 != v61)
          {
            objc_enumerationMutation(v59);
          }

          v45 = [*(*(&v70 + 1) + 8 * k) items];
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          v46 = [v45 countByEnumeratingWithState:&v66 objects:v86 count:16];
          if (v46)
          {
            v47 = v46;
            v48 = 0;
            v49 = *v67;
            do
            {
              for (m = 0; m != v47; m = m + 1)
              {
                if (*v67 != v49)
                {
                  objc_enumerationMutation(v45);
                }

                v51 = [*(*(&v66 + 1) + 8 * m) valueForProperty:v43];
                v48 += [v51 longLongValue];
              }

              v47 = [v45 countByEnumeratingWithState:&v66 objects:v86 count:16];
            }

            while (v47);
          }

          else
          {
            v48 = 0;
          }

          v42 += v48;
          v52 = [NSNumber numberWithLongLong:v48];
          [v63 addObject:v52];
        }

        v14 = v59;
        v41 = [v59 countByEnumeratingWithState:&v70 objects:v87 count:16];
      }

      while (v41);
    }

    else
    {
      v42 = 0;
    }

    v12 = v55;
    [(STUsageMediaCollection *)v55 setGrouped:1];
    [(STUsageMediaCollection *)v55 setItems:v14];
    [(STUsageMediaCollection *)v55 setTotalSize:v42];
    [(STUsageMediaCollection *)v55 setItemSizes:v63];

    v9 = v56;
    v11 = v64;
    v10 = v65;
  }

  return v12;
}

- (NSMutableDictionary)mediaCache
{
  mediaCache = self->_mediaCache;
  if (!mediaCache)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = self->_mediaCache;
    self->_mediaCache = v4;

    [MPMediaQuery setFilteringDisabled:1];
    v6 = +[MPMediaLibrary deviceMediaLibrary];
    v7 = [v6 libraryDataProvider];
    [MPMediaLibrary reloadDynamicPropertiesForLibraryDataProvider:v7];

    v8 = +[MPMediaQuery ITunesUAudioQuery];
    v9 = [(STMediaCache *)self cacheItemForQuery:v8 withGroupingType:8];

    [(NSMutableDictionary *)self->_mediaCache setObject:v9 forKey:UsageMediaAudioCourses];
    v10 = +[MPMediaQuery videoITunesUQuery];
    v11 = [(STMediaCache *)self cacheItemForQuery:v10 withGroupingType:8];

    [(NSMutableDictionary *)self->_mediaCache setObject:v11 forKey:UsageMediaVideoCourses];
    v12 = +[MPMediaQuery audioPodcastsQuery];
    v13 = [(STMediaCache *)self cacheItemForQuery:v12 withGroupingType:8];

    [(NSMutableDictionary *)self->_mediaCache setObject:v13 forKey:UsageMediaAudioPodcasts];
    v14 = +[MPMediaQuery videoPodcastsQuery];
    v15 = [(STMediaCache *)self cacheItemForQuery:v14 withGroupingType:8];

    [(NSMutableDictionary *)self->_mediaCache setObject:v15 forKey:UsageMediaVideoPodcasts];
    v16 = +[MPMediaQuery audiobooksQuery];
    v17 = [(STMediaCache *)self cacheItemForQuery:v16 withGroupingType:10 splitByPropertyName:MPMediaItemPropertyStorePlaylistID defaultPropertyValue:&off_2FF28];

    [(NSMutableDictionary *)self->_mediaCache setObject:v17 forKey:UsageMediaAudioBooks];
    v18 = +[MPMediaQuery tvShowsQuery];
    v19 = [(STMediaCache *)self cacheItemForQuery:v18 withGroupingType:8];

    [(NSMutableDictionary *)self->_mediaCache setObject:v19 forKey:UsageMediaTVShows];
    mediaCache = self->_mediaCache;
  }

  return mediaCache;
}

- (id)mediaCollectionForKey:(id)a3
{
  v4 = a3;
  v5 = [(STMediaCache *)self mediaCache];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)size:(id)a3
{
  v3 = a3;
  v4 = [v3 propertyForKey:@"stMediaCollection"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 items];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v19;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = [*(*(&v18 + 1) + 8 * i) assetURL];
          v17 = 0;
          [v12 getResourceValue:&v17 forKey:NSURLFileSizeKey error:0];
          v9 = &v9[[v17 unsignedLongLongValue]];
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v6 = [v3 propertyForKey:@"stMediaItem"];
    v13 = [v6 assetURL];
    v16 = 0;
    [v13 getResourceValue:&v16 forKey:NSURLFileSizeKey error:0];
    v9 = [v16 unsignedLongLongValue];
  }

  if (v9)
  {
    v14 = STFormattedSize();
  }

  else
  {
    v14 = &stru_2D2D0;
  }

  return v14;
}

- (id)mediaSpecifiersForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [NSMutableArray arrayWithCapacity:7];
  v6 = [STMediaCache mediaTypesForIdentifier:v4];
  if ([v6 count])
  {
    v44 = v4;
    if (!self->_mediaGroupsByKind)
    {
      v7 = [NSMutableDictionary dictionaryWithCapacity:7];
      mediaGroupsByKind = self->_mediaGroupsByKind;
      self->_mediaGroupsByKind = v7;
    }

    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = sub_DA58;
    v70[3] = &unk_2CDD8;
    v70[4] = self;
    v43 = v6;
    v9 = [v6 sortedArrayUsingComparator:v70];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v56 = [v9 countByEnumeratingWithState:&v66 objects:v73 count:16];
    if (v56)
    {
      v10 = *v67;
      v55 = UsageGroupSpecifiers;
      v50 = UsageGroupShowAll;
      v45 = UsageGroupShowAllSpecifier;
      v47 = MPMediaItemPropertyFileSize;
      v46 = UsageGroupMediaType;
      v11 = UsageMediaKindKey;
      v53 = *v67;
      v54 = v9;
      v48 = self;
      v49 = v5;
      do
      {
        for (i = 0; i != v56; i = i + 1)
        {
          if (*v67 != v10)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v66 + 1) + 8 * i);
          v57 = [(STMediaCache *)self mediaCollectionForKey:v13];
          v14 = [v57 items];
          v15 = [v14 count];

          if (v15)
          {
            v16 = [(NSMutableDictionary *)self->_mediaGroupsByKind objectForKey:v13];
            if (v16)
            {
              v17 = v16;
              v18 = [v16 objectForKey:v55];
              v19 = [v18 count];
              if (v19)
              {
                v20 = v19;
                v21 = v5;
                v22 = v18;
                v23 = [v17 objectForKey:v50];
                if ([v23 BOOLValue])
                {

                  v24 = 0;
                  goto LABEL_14;
                }

                v24 = [v17 objectForKey:v45];

                if (v20 < 6)
                {
LABEL_14:
                  v18 = v22;
                }

                else
                {
                  v18 = v22;
                  if (v24)
                  {
                    v35 = [v22 subarrayWithRange:{0, 6}];
                    v5 = v21;
                    [v21 addObjectsFromArray:v35];

                    [v21 addObject:v24];
                    goto LABEL_36;
                  }
                }

                v5 = v21;
                [v21 addObjectsFromArray:v18];
                goto LABEL_36;
              }
            }

            else
            {
              [v57 sortItemsByMediaKey:v47];
              v25 = [v57 items];
              v26 = [NSMutableDictionary dictionaryWithCapacity:4];
              v24 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v25 count] + 1);
              [v26 setObject:v24 forKey:v55];
              v27 = [v57 isGrouped];
              v28 = [NSNumber numberWithUnsignedInt:v27 ^ 1];
              v52 = v26;
              [v26 setObject:v28 forKey:v46];

              v51 = v25;
              if (v27)
              {
                v60 = 0uLL;
                v61 = 0uLL;
                v58 = 0uLL;
                v59 = 0uLL;
                v29 = v25;
                v30 = [v29 countByEnumeratingWithState:&v58 objects:v71 count:16];
                if (v30)
                {
                  v31 = v30;
                  v32 = *v59;
                  do
                  {
                    for (j = 0; j != v31; j = j + 1)
                    {
                      if (*v59 != v32)
                      {
                        objc_enumerationMutation(v29);
                      }

                      v34 = [STStorageMediaItemCell specifierForMediaItemCollection:*(*(&v58 + 1) + 8 * j)];
                      [v34 setProperty:v13 forKey:v11];
                      [v24 addObject:v34];
                    }

                    v31 = [v29 countByEnumeratingWithState:&v58 objects:v71 count:16];
                  }

                  while (v31);
                }
              }

              else
              {
                v64 = 0uLL;
                v65 = 0uLL;
                v62 = 0uLL;
                v63 = 0uLL;
                v36 = v25;
                v37 = [v36 countByEnumeratingWithState:&v62 objects:v72 count:16];
                if (v37)
                {
                  v38 = v37;
                  v39 = *v63;
                  do
                  {
                    for (k = 0; k != v38; k = k + 1)
                    {
                      if (*v63 != v39)
                      {
                        objc_enumerationMutation(v36);
                      }

                      v41 = [STStorageMediaItemCell specifierForMediaItem:*(*(&v62 + 1) + 8 * k)];
                      [v41 setProperty:v13 forKey:v11];
                      [v24 addObject:v41];
                    }

                    v38 = [v36 countByEnumeratingWithState:&v62 objects:v72 count:16];
                  }

                  while (v38);
                }
              }

              v18 = v51;

              v5 = v49;
              [v49 addObjectsFromArray:v24];
              self = v48;
              v17 = v52;
              [(NSMutableDictionary *)v48->_mediaGroupsByKind setObject:v52 forKey:v13];
LABEL_36:
              v9 = v54;

              v10 = v53;
            }
          }
        }

        v56 = [v9 countByEnumeratingWithState:&v66 objects:v73 count:16];
      }

      while (v56);
    }

    v6 = v43;
    v4 = v44;
  }

  return v5;
}

- (unint64_t)totalSizeForApp:(id)a3
{
  v4 = [(STMediaCache *)self mediaTypesForStorageApp:a3];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [(STMediaCache *)self mediaCollectionForKey:*(*(&v12 + 1) + 8 * i)];
        v7 += [v10 totalSize];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)mediaSpecifiersForApp:(id)a3
{
  v4 = [a3 appIdentifier];
  v5 = [(STMediaCache *)self mediaSpecifiersForIdentifier:v4];

  return v5;
}

- (void)reload
{
  mediaCache = self->_mediaCache;
  self->_mediaCache = 0;

  mediaGroupsByKind = self->_mediaGroupsByKind;
  self->_mediaGroupsByKind = 0;

  v5 = [(STMediaCache *)self mediaCache];
  v6 = +[STStorageDataNotifier sharedNotifier];
  [v6 postMediaSizesChanged];
}

@end