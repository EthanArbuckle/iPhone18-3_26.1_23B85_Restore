void sub_10006C06C(uint64_t a1)
{
  v2 = [*(a1 + 32) podcast];
  v3 = [v2 title];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v9 = [*(a1 + 32) valueForKey:kEpisodePubDate];
  v6 = [v9 verboseDisplayString];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_10006C8C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MTEpisodeManifest alloc] initWithEpisodeUuid:v3];

  (*(*(a1 + 32) + 16))();
}

void sub_10006D1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v6);
  _Unwind_Resume(a1);
}

Class sub_10006D220(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100583A70)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10006D364;
    v4[4] = &unk_1004D86F8;
    v4[5] = v4;
    v5 = off_1004D9240;
    v6 = 0;
    qword_100583A70 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100583A70)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AFAnalytics");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1003B2AF8();
  }

  qword_100583A68 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10006D364()
{
  result = _sl_dlopen();
  qword_100583A70 = result;
  return result;
}

void sub_10006E850(uint64_t a1)
{
  v3 = [*(a1 + 32) podcastForUuid:*(a1 + 40)];
  v2 = [v3 deletePlayedEpisodesResolvedValue];
  [v3 setDeletePlayedEpisodes:*(a1 + 48)];
  if ([v3 deletePlayedEpisodesResolvedValue] && (v2 & 1) == 0)
  {
    [v3 setShowPlacardForRemovePlayedEpisodes:0];
  }
}

void sub_10006EAD4(uint64_t a1)
{
  v2 = +[NSThread currentThread];
  v3 = [v2 threadDictionary];

  v4 = [v3 objectForKeyedSubscript:@"kMTUnplayedRssEpisodesRecursionCount"];
  v5 = [v4 integerValue];

  if (v5 <= 0)
  {
    v7 = [NSNumber numberWithInteger:v5 + 1];
    [v3 setObject:v7 forKeyedSubscript:@"kMTUnplayedRssEpisodesRecursionCount"];

    v8 = +[MTEpisode predicateForRSSEpisodes];
    v9 = [*(a1 + 32) uuid];
    v10 = [MTEpisode predicateForEpisodesOnPodcastUuid:v9 deletePlayedEpisodes:1];
    v11 = [v8 AND:v10];

    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) countOfObjectsInEntity:kMTEpisodeEntityName predicate:v11];
  }

  else
  {
    v6 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "Hit recursion guard for [MTPodcast countOfUnplayedRssEpisodes]. Short circuiting.", v12, 2u);
    }
  }

  [v3 setObject:&off_100500AD8 forKeyedSubscript:@"kMTUnplayedRssEpisodesRecursionCount"];
}

void sub_10006EDD8(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___MTColorThemeable])
  {
    v3 = [*(a1 + 32) colorTheme];
    [v4 setColorTheme:v3];
  }
}

id sub_10006F320(uint64_t a1)
{
  v2 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Starting processors needed for Feed Updates...", v4, 2u);
  }

  return [*(a1 + 32) startProcessors:209];
}

id sub_10006F420(uint64_t a1)
{
  v2 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Starting processors needed for Playback...", v4, 2u);
  }

  return [*(a1 + 32) startProcessors:60];
}

id sub_10006F520(uint64_t a1)
{
  v2 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Starting processors needed for CarPlay...", v4, 2u);
  }

  return [*(a1 + 32) startProcessorsForFeedUpdates];
}

void sub_10006F648(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100583A98;
  qword_100583A98 = v1;
}

NSNumber *__cdecl sub_1000700F0(id a1, MPMediaItem *a2)
{
  v2 = [(MPMediaItem *)a2 persistentID];

  return [NSNumber numberWithUnsignedLongLong:v2];
}

int64_t sub_100070158(id a1, MPMediaItem *a2, MPMediaItem *a3)
{
  v4 = a2;
  v5 = [(MPMediaItem *)a3 podcastTitle];
  v6 = [v5 stringByRemovingInsignificantPrefix];
  v7 = [(MPMediaItem *)v4 podcastTitle];

  v8 = [v7 stringByRemovingInsignificantPrefix];
  v9 = [v6 compare:v8];

  return v9;
}

void sub_1000701F4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = kMTPlaylistEntityName;
  v5 = kPlaylistMediaLibraryId;
  v6 = [NSPredicate predicateWithFormat:@"%K != 0", kPlaylistMediaLibraryId];
  v7 = [NSArray arrayWithObjects:v5, 0];
  v8 = [v3 objectDictionariesInEntity:v4 predicate:v6 sortDescriptors:0 propertiesToFetch:v7 includeObjectId:1];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  objc_autoreleasePoolPop(v2);
}

void sub_1000702DC(uint64_t a1)
{
  v1 = a1;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = *(a1 + 32);
  v73 = v1;
  v75 = [obj countByEnumeratingWithState:&v82 objects:v95 count:16];
  if (v75)
  {
    v74 = *v83;
    do
    {
      for (i = 0; i != v75; i = i + 1)
      {
        if (*v83 != v74)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v82 + 1) + 8 * i);
        v4 = objc_autoreleasePoolPush();
        v5 = [*(v1 + 40) containsObject:v3];
        v6 = [v3 valueForProperty:MPMediaEntityPropertyPersistentID];
        v7 = [MTMLMediaItem itemWithMPMediaItem:v3 isRestoreDownloadCandidate:v5];
        v8 = _MTLogCategoryMediaLibrary();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v87 = v7;
          v88 = 1024;
          LODWORD(v89) = v5;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "update-from-MusicLibrary processing item '%@', isRestoreDownloadCandidate = %d", buf, 0x12u);
        }

        v9 = [v7 assetUrl];
        if (!v9)
        {
          if (!v5)
          {
            goto LABEL_33;
          }

LABEL_12:
          if ([v3 isITunesU])
          {
            v12 = [v7 feedUrl];
            if (([v12 containsStringInsensitive:@"LZDirectory.woa"] & 1) == 0)
            {
              v13 = [v7 feedUrl];
              v14 = [v13 containsStringInsensitive:@"LZStudent.woa"];

              if (v14)
              {
                goto LABEL_33;
              }

              goto LABEL_15;
            }
          }

          else
          {
LABEL_15:
            v15 = [*(v1 + 48) objectForKey:v6];

            if (v15)
            {
              goto LABEL_33;
            }

            [*(v1 + 48) setObject:v7 forKey:v6];
            v16 = [*(v1 + 56) _findOrAddPodcastForMediaItem:v7 updaterCache:*(v1 + 64)];
            v12 = v16;
            if (v16)
            {
              v17 = [v16 uuid];

              if (v17)
              {
                v71 = [v3 valueForProperty:MPMediaItemPropertyArtwork];
                [v71 bounds];
                v19 = v18;
                v21 = v20;
                v23 = v22;
                v25 = v24;
                v26 = [v12 uuid];
                v27 = v26;
                if (v26)
                {
                  v28 = v26;
                }

                else
                {
                  v28 = @"undefined";
                }

                v29 = [MTPodcast importedShowArtworkURLFor:v28];

                v30 = +[PUIObjCArtworkProvider shared];
                v31 = [v12 uuid];
                v69 = v30;
                v70 = v29;
                LODWORD(v30) = [v30 hasArtworkForShow:v31 withDimensions:v29 fromSource:{v19, v21, v23, v25}];

                if (v30)
                {
                  v32 = [v71 imageWithSize:{v23, v25}];
                  if (v32)
                  {
                    v33 = [v12 uuid];
                    [v69 cacheArtwork:v32 withDimension:v33 forShow:v29 fromSource:{v19, v21, v23, v25}];
                  }
                }

                v34 = *(v1 + 56);
                v35 = *(v1 + 72);
                v36 = *(v1 + 80);
                v37 = [v12 uuid];
                v38 = *(v73 + 112);
                v81 = 0;
                [v34 _addEpisodeInCtx:v35 mediaItem:v7 episodeCache:v36 podcastUuid:v37 isRestoreDownloadCandidate:v5 canSendNotifications:v38 outEpisodeUUID:&v81];
                v39 = v81;

                v1 = v73;
                v40 = [*(v73 + 88) objectForKey:v39];
                if (v40)
                {
                  v41 = _MTLogCategoryMediaLibrary();
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                  {
                    v42 = [v7 title];
                    *buf = 138543618;
                    v87 = v40;
                    v88 = 2112;
                    v89 = v42;
                    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Found duplicate medialibrary episode %{public}@ - %@", buf, 0x16u);

                    v1 = v73;
                  }

                  [*(v1 + 96) addObject:v40];
                }

                if (v39)
                {
                  v43 = *(v1 + 88);
                  v44 = [v7 persistentId];
                  [v43 setObject:v44 forKey:v39];

                  v1 = v73;
                }
              }
            }
          }

          goto LABEL_33;
        }

        v10 = v9;
        v11 = [v7 isMissingAsset];

        if (v5 & 1 | ((v11 & 1) == 0))
        {
          goto LABEL_12;
        }

LABEL_33:

        objc_autoreleasePoolPop(v4);
      }

      v75 = [obj countByEnumeratingWithState:&v82 objects:v95 count:16];
    }

    while (v75);
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v76 = [*(v1 + 80) unvisitedEpisodes];
  v45 = [v76 countByEnumeratingWithState:&v77 objects:v94 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v78;
    do
    {
      for (j = 0; j != v46; j = j + 1)
      {
        if (*v78 != v47)
        {
          objc_enumerationMutation(v76);
        }

        v49 = *(*(&v77 + 1) + 8 * j);
        v50 = objc_autoreleasePoolPush();
        v51 = [v49 persistentID];
        if (v51)
        {
          v52 = *(v73 + 104);
          v53 = [NSNumber numberWithLongLong:v51];
          v54 = [v52 containsObject:v53];
        }

        else
        {
          v54 = 0;
        }

        v55 = _MTLogCategoryMediaLibrary();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          v56 = [NSNumber numberWithLongLong:v51];
          v57 = [v49 uuid];
          *buf = 138412802;
          v87 = v56;
          v88 = 2112;
          v89 = v57;
          v90 = 1024;
          v91 = v54;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "update-from-MusicLibrary found unvisited episode with pid %@ with UUID %@ - isRestoreDownloadCandidate %x", buf, 0x1Cu);
        }

        v58 = +[NSDate now];
        [v58 timeIntervalSinceReferenceDate];
        v60 = v59;
        [v49 downloadDate];
        v62 = v60 - v61;

        v63 = _MTLogCategoryMediaLibrary();
        v64 = os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT);
        if (v62 <= 500.0)
        {
          if (v64)
          {
            v67 = [NSNumber numberWithLongLong:v51];
            v68 = [v49 uuid];
            *buf = 138413058;
            v87 = v67;
            v88 = 2112;
            v89 = v68;
            v90 = 1024;
            v91 = v54;
            v92 = 2048;
            v93 = v62;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "update-from-MusicLibrary skip resetting assetURL of unvisited episode with pid %@ with UUID %@ - isRestoreDownloadCandidate %x. Downloaded %f milliseconds ago.", buf, 0x26u);
          }
        }

        else
        {
          if (v64)
          {
            v65 = [NSNumber numberWithLongLong:v51];
            v66 = [v49 uuid];
            *buf = 138413058;
            v87 = v65;
            v88 = 2112;
            v89 = v66;
            v90 = 1024;
            v91 = v54;
            v92 = 2048;
            v93 = v62;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "update-from-MusicLibrary reset assetURL of unvisited episode with pid %@ with UUID %@ - isRestoreDownloadCandidate %x. Downloaded seconds ago %f", buf, 0x26u);
          }

          [v49 setAssetURL:0];
          if (v54)
          {
            [v49 setPersistentID:v51];
          }
        }

        objc_autoreleasePoolPop(v50);
      }

      v46 = [v76 countByEnumeratingWithState:&v77 objects:v94 count:16];
    }

    while (v46);
  }
}

void sub_100070CA8(uint64_t a1)
{
  v2 = [*(a1 + 32) noteObserver];

  if (!v2)
  {
    v3 = [*(a1 + 32) observerLock];
    objc_sync_enter(v3);
    v4 = [*(a1 + 32) noteObserver];

    if (!v4)
    {
      objc_initWeak(&location, *(a1 + 32));
      v5 = +[NSNotificationCenter defaultCenter];
      v6 = +[NSOperationQueue mainQueue];
      v8 = _NSConcreteStackBlock;
      v9 = 3221225472;
      v10 = sub_100070E3C;
      v11 = &unk_1004D93E8;
      objc_copyWeak(&v12, &location);
      v7 = [v5 addObserverForName:MPMediaLibraryDidChangeNotification object:0 queue:v6 usingBlock:&v8];
      [*(a1 + 32) setNoteObserver:{v7, v8, v9, v10, v11}];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }

    objc_sync_exit(v3);
  }
}

void sub_100070E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

void sub_100070E3C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateMediaLibraryFromNotification:v3];
}

void sub_100070F28(uint64_t a1)
{
  obj = [*(a1 + 32) observerLock];
  objc_sync_enter(obj);
  v2 = [*(a1 + 32) noteObserver];

  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    v4 = [*(a1 + 32) noteObserver];
    [v3 removeObserver:v4];

    [*(a1 + 32) setNoteObserver:0];
  }

  objc_sync_exit(obj);
}

void sub_10007153C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a61, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100071574(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 assetURL];
  v7 = [v5 assetURL];

  v8 = [*(a1 + 32) indexOfObject:v6];
  v9 = [*(a1 + 32) indexOfObject:v7];
  if (v8 < v9)
  {
    v10 = -1;
  }

  else
  {
    v10 = v8 > v9;
  }

  return v10;
}

void sub_100071600(uint64_t a1)
{
  v2 = [MTPlaylist aggregateOperation:@"max:" attribute:kPlaylistSortOrder predicate:0 managedObjectContext:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = [v2 longLongValue];
}

void sub_10007167C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MTPlaylist insertNewPlaylistInManagedObjectContext:*(a1 + 32)];
  v4 = [*(a1 + 40) name];
  [v3 setTitle:v4];

  v5 = *(a1 + 32);
  v6 = kMTEpisodeEntityName;
  v7 = [NSPredicate predicateWithFormat:@"%K in %@", kEpisodeAssetURL, *(a1 + 48)];
  v8 = [v5 objectsInEntity:v6 predicate:v7 sortDescriptors:0];

  v9 = [v8 sortedArrayUsingComparator:*(a1 + 56)];
  v10 = [*(a1 + 40) mediaLibraryId];
  [v3 setMediaLibraryId:{objc_msgSend(v10, "unsignedLongLongValue")}];

  [v3 setIsItunesPlaylist:1];
  v11 = [*(a1 + 40) parentMediaLibraryId];
  [v3 setParentMediaLibraryId:{objc_msgSend(v11, "longLongValue")}];

  [v3 setIsItunesSmartPlaylist:{objc_msgSend(*(a1 + 40), "isSmart")}];
  if ([*(a1 + 40) isFolder])
  {
    [v3 setIsFolder:1];
    [v3 setUnplayedCount:0];
  }

  else
  {
    v12 = [*(a1 + 48) count];
    if (v12 != [v9 count])
    {
      v13 = _MTLogCategoryMediaLibrary();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "******** items not found in database ***********", buf, 2u);
      }
    }

    v14 = [NSOrderedSet orderedSetWithArray:v9];
    [v3 setEpisodes:v14];

    [v3 updateUnplayedCount];
    *(*(*(a1 + 64) + 8) + 24) += [v9 count];
  }

  ++*(*(*(a1 + 72) + 8) + 24);
  [v3 setSortOrder:?];

  objc_autoreleasePoolPop(v2);
}

void sub_1000718D4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = kMTPlaylistEntityName;
  v4 = *(a1 + 32);
  v5 = [NSPredicate predicateWithFormat:@"%K = %@", kPlaylistMediaLibraryId, *(a1 + 40)];
  v6 = [v4 objectsInEntity:v3 predicate:v5 sortDescriptors:0];
  v7 = [v6 lastObject];

  v8 = *(a1 + 32);
  v9 = kMTEpisodeEntityName;
  v10 = kEpisodeAssetURL;
  v11 = [*(a1 + 48) array];
  v12 = [NSPredicate predicateWithFormat:@"%K in %@", v10, v11];
  v13 = [v8 objectsInEntity:v9 predicate:v12 sortDescriptors:0];

  v14 = [v13 sortedArrayUsingComparator:*(a1 + 64)];
  v15 = [NSOrderedSet orderedSetWithArray:v14];

  v16 = _MTLogCategoryMediaLibrary();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = [v7 title];
    [v7 uuid];
    v18 = v29 = v2;
    v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v15 count]);
    v20 = [v7 episodes];
    v21 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v20 count]);
    *buf = 138413058;
    v31 = v17;
    v32 = 2112;
    v33 = v18;
    v34 = 2112;
    v35 = v19;
    v36 = 2112;
    v37 = v21;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%@ %@ [%@ sorted] [%@ existing]", buf, 0x2Au);

    v2 = v29;
  }

  v22 = [v7 title];
  v23 = [*(a1 + 56) name];
  v24 = [v22 isEqualToString:v23];

  if ((v24 & 1) == 0)
  {
    v25 = [*(a1 + 56) name];
    [v7 setTitle:v25];
  }

  if ([*(a1 + 56) isFolder])
  {
    [v7 setIsFolder:1];
    [v7 setUnplayedCount:0];
  }

  else
  {
    v26 = [v7 episodes];
    v27 = [v15 isEqualToOrderedSet:v26];

    if ((v27 & 1) == 0)
    {
      [v7 setEpisodes:v15];
    }

    [v7 updateUnplayedCount];
    *(*(*(a1 + 72) + 8) + 24) += [v15 count];
  }

  v28 = [*(a1 + 56) parentMediaLibraryId];
  [v7 setParentMediaLibraryId:{objc_msgSend(v28, "longLongValue")}];

  objc_autoreleasePoolPop(v2);
}

void sub_100072070(uint64_t a1)
{
  v2 = [*(a1 + 32) playlistForUuid:kPlaylistITunesPlaylistUuid];
  [v2 setUnplayedCount:0];
  [v2 setHidden:*(*(*(a1 + 48) + 8) + 24) == 0];
  v3 = kMTPlaylistEntityName;
  v4 = *(a1 + 32);
  v5 = [NSPredicate predicateWithFormat:@"%K in %@", kPlaylistMediaLibraryId, *(a1 + 40)];
  v6 = [v4 objectsInEntity:v3 predicate:v5 sortDescriptors:0];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000721B0;
  v7[3] = &unk_1004D9460;
  v8 = *(a1 + 32);
  [v6 enumerateObjectsUsingBlock:v7];
}

void sub_1000725EC(id a1, NSString *a2, id a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  v7 = _MTLogCategoryMediaLibrary();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [v6 description];
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%@ - %@", &v9, 0x16u);
  }
}

void sub_100073A5C(id *a1)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [a1[4] insertedAndUpdatedObjectIDs];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v18;
    *&v4 = 138412290;
    v16 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [a1[5] existingObjectWithID:*(*(&v17 + 1) + 8 * v7) error:{0, v16}];
        if (v8)
        {
          v9 = [a1[6] haveMediaLibraryPropertiesChangedForEpisode:v8];
          v10 = _MTLogCategoryMediaLibrary();
          v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
          if (v9)
          {
            if (v11)
            {
              v12 = [v8 title];
              *buf = v16;
              v22 = v12;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "updating media library item for episode %@", buf, 0xCu);
            }

            v13 = [v8 persistentID];
            [v8 playhead];
            +[MTMediaLibraryUtil updateMediaLibraryItem:playhead:playState:playCount:](MTMediaLibraryUtil, "updateMediaLibraryItem:playhead:playState:playCount:", v13, [v8 playState], objc_msgSend(v8, "playCount"), v14);
          }

          else
          {
            if (v11)
            {
              v15 = [v8 title];
              *buf = v16;
              v22 = v15;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "no changes to ML play state for episode %@", buf, 0xCu);
            }
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v5);
  }
}

void sub_100075744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007575C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 indexOfObject:*(a1 + 32)];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [NSIndexPath indexPathForRow:v7 inSection:a3];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

void sub_1000759CC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 indexOfObject:*(a1 + 32)];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = *(a1 + 40);
    v7 = [NSIndexPath indexPathForRow:v5 inSection:a3];
    [v6 addObject:v7];
  }
}

void sub_100076C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100076C20(uint64_t a1)
{
  v5 = [*(a1 + 32) podcastForUuid:*(a1 + 40)];
  v2 = [v5 dictionaryRepresentation];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100076E08(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 userId];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = &stru_1004F3018;
    }

    v10 = v9;

    v11 = [v5 clientId];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = &stru_1004F3018;
    }

    v14 = v13;

    v15 = *(a1 + 32);
    v20[0] = @"userId";
    v20[1] = @"clientId";
    v21[0] = v10;
    v21[1] = v14;
    v16 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
    [v15 im_addPropertiesWithDictionary:v16];
  }

  else
  {
    v10 = _MTLogCategoryMetrics();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v17 = [v6 description];
      v18 = 138412290;
      v19 = v17;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to fetch AnalyticsUserIdentifier from AMS for store reporting with error %@", &v18, 0xCu);
    }
  }

  [IMMetrics recordEvent:*(a1 + 32) topic:@"xp_dzc_main"];
}

void sub_100077214(id a1)
{
  v1 = [[MTFeedUpdateIdleCoordinator alloc] _initShared];
  v2 = qword_100583AB8;
  qword_100583AB8 = v1;
}

void sub_100077970(uint64_t a1)
{
  v2 = +[MTPodcast predicateForNotHiddenPodcasts];
  v3 = [*(a1 + 32) objectsInEntity:kMTPodcastEntityName predicate:v2 sortDescriptors:0];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 40) _markAsHiddenPodcast:*(*(&v8 + 1) + 8 * v7) inContext:*(a1 + 32)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void sub_100077D8C(uint64_t a1)
{
  v2 = [*(a1 + 32) objectsInEntity:kMTPodcastEntityName predicate:*(a1 + 40) sortDescriptors:0];
  v3 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v15 = [v2 count];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Found %lu podcasts to delete.", buf, 0xCu);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 48) _unsafeDeletePodcast:*(*(&v9 + 1) + 8 * v8) ctx:{*(a1 + 32), v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

void sub_1000784B8(uint64_t a1, uint64_t a2)
{
  v3 = [MTCoreSpotlightUtil uniqueIdentifierForObject:a2];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

void sub_1000786DC(uint64_t a1)
{
  v2 = +[NSMutableSet set];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(a1 + 40) podcastForUuid:*(*(&v22 + 1) + 8 * v7)];
        v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 syncType]);
        [v2 addObject:v9];

        [*(a1 + 48) _markAsHiddenPodcast:v8 inContext:*(a1 + 40)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  [*(a1 + 40) saveInCurrentBlock];
  if (*(a1 + 56) == 1 && [v2 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v2;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v18 + 1) + 8 * v14) integerValue];
          v16 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
          [v16 markSubscriptionSyncDirty:1 for:v15];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v12);
    }

    v17 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
    [v17 setIsPlaylistSyncDirty:1];
  }
}

id sub_1000799E0(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100079DCC;
  v3[3] = &unk_1004D9688;
  v3[4] = a1;
  v1 = sub_100079D44(v3);

  return v1;
}

id sub_100079D44(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (qword_100583AC0 == -1)
  {
    if (v1)
    {
LABEL_3:
      v3 = v2[2](v2, qword_100583AC8, qword_100583AD0);
      goto LABEL_6;
    }
  }

  else
  {
    sub_1003B2B34();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
LABEL_6:

  return v3;
}

id sub_100079DCC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSNumber numberWithInteger:*(a1 + 32)];
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [v3 objectForKeyedSubscript:&off_100500BB0];
  }

  v8 = v7;

  return v8;
}

void sub_100079E6C(id a1)
{
  v15[0] = &off_100500BB0;
  v1 = [NSString stringWithFormat:@"%@%d", @"podcastAction-", 0];
  v16[0] = v1;
  v15[1] = &off_100500BC8;
  v2 = [NSString stringWithFormat:@"%@%d", @"podcastAction-", 1];
  v16[1] = v2;
  v15[2] = &off_100500BE0;
  v3 = [NSString stringWithFormat:@"%@%d", @"podcastAction-", 2];
  v16[2] = v3;
  v15[3] = &off_100500BF8;
  v4 = [NSString stringWithFormat:@"%@%d", @"podcastAction-", 3];
  v16[3] = v4;
  v15[4] = &off_100500C10;
  v5 = [NSString stringWithFormat:@"%@%d", @"podcastAction-", 4];
  v16[4] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:5];
  v7 = qword_100583AC8;
  qword_100583AC8 = v6;

  v8 = +[NSMutableDictionary dictionary];
  v9 = qword_100583AC8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10007A094;
  v13[3] = &unk_1004D96D0;
  v14 = v8;
  v10 = v8;
  [v9 enumerateKeysAndObjectsUsingBlock:v13];
  v11 = [v10 copy];
  v12 = qword_100583AD0;
  qword_100583AD0 = v11;
}

void sub_10007A954(uint64_t a1)
{
  if (*(a1 + 40) == 2)
  {
    v3 = +[UIColor cellEmpahsisSwitchBorderColor];
  }

  else
  {
    v3 = 0;
  }

  v2 = [*(a1 + 32) toggle];
  [v2 setTintColor:v3];
}

void sub_10007B028(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10007B050(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      [WeakRetained _asyncFetchArtworkDidLoadImage:v6 forArtworkKey:*(a1 + 32)];
    }

    else
    {
      v5 = +[UIImage defaultPodcastArtwork];
      [v4 _asyncFetchArtworkDidLoadImage:v5 forArtworkKey:*(a1 + 32)];
    }
  }
}

void sub_10007B0F4(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      [WeakRetained _asyncFetchArtworkDidLoadImage:v6 forArtworkKey:*(a1 + 32)];
    }

    else
    {
      v5 = +[UIImage defaultPodcastArtwork];
      [v4 _asyncFetchArtworkDidLoadImage:v5 forArtworkKey:*(a1 + 32)];
    }
  }
}

void sub_10007B264(uint64_t a1)
{
  v2 = [*(a1 + 32) artworkKey];
  v3 = [v2 isEqual:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) imageView];
    [v4 setImage:*(a1 + 48)];

    v5 = *(a1 + 32);

    [v5 setNeedsLayout];
  }
}

void sub_10007B83C(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 removeAllObjects];
  [v3 setValuesForKeysWithDictionary:*(a1 + 32)];
}

void sub_10007B890(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100008940;
  v9 = sub_10003B484;
  v10 = 0;
  v2 = [*(a1 + 32) queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10007B9BC;
  v4[3] = &unk_1004D9068;
  v4[4] = *(a1 + 32);
  v4[5] = &v5;
  dispatch_sync(v2, v4);

  v3 = +[MZPreferences storeBookkeeperPreferences];
  [v3 setObject:v6[5] forKey:@"MZKeyValueStoreClamps"];

  _Block_object_dispose(&v5, 8);
}

void sub_10007B9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10007B9BC(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingUserDefaultArchivedData];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);

  return [v5 setPendingUserDefaultArchivedData:0];
}

void sub_10007BCBC(uint64_t a1)
{
  v4 = [*(a1 + 32) transactionClamps];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v4)
    {
      v2 = [v4 mutableCopy];

      v3 = v2;
    }

    else
    {
      v3 = objc_alloc_init(NSMutableDictionary);
    }

    v4 = v3;
    [*(a1 + 32) setTransactionClamps:?];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10007BE08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSDate date];
  [v3 setValue:v4 forKey:*(a1 + 32)];
}

void sub_10007C534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007C558(uint64_t a1, void *a2)
{
  v3 = [a2 valueForKey:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10007CDEC(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchShortcutItems];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10007CE90;
  v5[3] = &unk_1004D8798;
  v3 = *(a1 + 32);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  dispatch_async(&_dispatch_main_q, v5);
}

id sub_10007CE90(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  [v2 setShortcutItems:*(a1 + 32)];

  v3 = *(a1 + 40);

  return [v3 _endBackgroundTask];
}

uint64_t sub_10007D34C(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 scrollToTopMyPodcastsTabAnimated:1];
  }

  return result;
}

uint64_t sub_10007D3A4(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 scrollToTopUnplayedTabAnimated:1];
  }

  return result;
}

uint64_t sub_10007D550(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 1);
  }

  return result;
}

void sub_10007D8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007D8C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = kMTPlaylistEntityName;
  v4 = +[MTPlaylist topLevelPlaylistsExcludingFoldersPredicate];
  v5 = +[MTPlaylist sortDescriptors];
  v9 = [v2 objectsInEntity:v3 predicate:v4 sortDescriptors:v5 returnsObjectsAsFaults:0 limit:0];

  v6 = [v9 mt_compactMap:&stru_1004D98B0];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_10007E414(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

id sub_10007E458(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [NSFetchRequest alloc];
    v3 = [v2 initWithEntityName:kMTPodcastEntityName];
    [v3 setPredicate:*(a1 + 32)];
    [v3 setResultType:0];
    [v3 setSortDescriptors:*(a1 + 40)];
    [v3 setFetchLimit:{objc_msgSend(*(a1 + 48), "fetchLimit")}];
    v41 = kPodcastChannel;
    v4 = [NSArray arrayWithObjects:&v41 count:1];
    [v3 setRelationshipKeyPathsForPrefetching:v4];

    [v3 setReturnsObjectsAsFaults:0];
    v5 = *(a1 + 56);
    v39 = 0;
    v6 = [v5 executeFetchRequest:v3 error:&v39];
    v7 = v39;
    v8 = *(*(a1 + 112) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v6;

    v10 = *(*(*(a1 + 112) + 8) + 40);
    if (!v10)
    {
      [v7 logAndThrow:1];
      v10 = *(*(*(a1 + 112) + 8) + 40);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v36;
      do
      {
        v15 = 0;
        do
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v35 + 1) + 8 * v15) channel];
          v17 = v16;
          if (v16 && [v16 showCount] >= 2 && (objc_msgSend(*(*(*(a1 + 120) + 8) + 40), "containsObject:", v17) & 1) == 0)
          {
            [*(*(*(a1 + 120) + 8) + 40) addObject:v17];
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v13);
    }
  }

  v18 = *(a1 + 64);
  if (v18)
  {
    v19 = [*(a1 + 56) objectsInEntity:kMTEpisodeEntityName predicate:v18 sortDescriptors:*(a1 + 72) returnsObjectsAsFaults:0 limit:{objc_msgSend(*(a1 + 48), "fetchLimit")}];
    v20 = *(*(a1 + 128) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }

  v22 = *(a1 + 80);
  if (v22)
  {
    v23 = *(*(*(a1 + 120) + 8) + 40);
    v24 = [*(a1 + 56) objectsInEntity:kMTChannelEntityName predicate:v22 sortDescriptors:*(a1 + 88) returnsObjectsAsFaults:0 limit:{objc_msgSend(*(a1 + 48), "fetchLimit")}];
    [v23 addObjectsFromArray:v24];
  }

  if (*(a1 + 96) && os_feature_enabled_categories_in_search())
  {
    v25 = *(a1 + 56);
    v26 = +[MTCategory entity];
    v27 = [v26 name];
    v28 = [v25 objectsInEntity:v27 predicate:*(a1 + 96) sortDescriptors:*(a1 + 104) returnsObjectsAsFaults:0 limit:{objc_msgSend(*(a1 + 48), "fetchLimit")}];
    v29 = *(*(a1 + 136) + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = v28;
  }

  else
  {
    v31 = *(*(a1 + 136) + 8);
    v26 = *(v31 + 40);
    *(v31 + 40) = &__NSArray0__struct;
  }

  [*(a1 + 48) setPodcastResults:*(*(*(a1 + 112) + 8) + 40)];
  [*(a1 + 48) setEpisodeResults:*(*(*(a1 + 128) + 8) + 40)];
  v32 = *(a1 + 48);
  v33 = [*(*(*(a1 + 120) + 8) + 40) copy];
  [v32 setChannelResults:v33];

  return [*(a1 + 48) setCategoryResults:*(*(*(a1 + 136) + 8) + 40)];
}

void sub_10007F358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007F370(uint64_t a1)
{
  v5 = [*(a1 + 32) podcastForUuid:*(a1 + 40)];
  v2 = [v5 title];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_10007F57C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSURLQueryItem alloc];
  v5 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v6 = [v4 initWithName:v3 value:v5];

  return v6;
}

id sub_10007F7D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSURLQueryItem alloc];
  v5 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v6 = [v4 initWithName:v3 value:v5];

  return v6;
}

void sub_10007F8E4(id a1)
{
  v3[0] = @"playPodcast";
  v3[1] = @"playPodcasts";
  v3[2] = @"playStation";
  v1 = [NSArray arrayWithObjects:v3 count:3];
  v2 = qword_100583AF8;
  qword_100583AF8 = v1;
}

void sub_10008006C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100080084(uint64_t a1)
{
  v6 = [*(a1 + 32) episodeForUuid:*(a1 + 40)];
  v2 = [v6 podcast];
  v3 = [v2 uuid];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100080A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100080A3C(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = [v5 firstObject];
  v7 = [v6 uuid];
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_100081AA0(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v6 = [v9 instanceIdentifier];
  v7 = [v6 UUIDString];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

void sub_100081B48(uint64_t a1, void *a2)
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = a2;
  v19 = a1;
  v22 = [obj countByEnumeratingWithState:&v23 objects:v33 count:16];
  v3 = 0;
  if (v22)
  {
    v21 = *v24;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v23 + 1) + 8 * i);
        v6 = [v5 isExplicit];
        v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lld", [v5 episodeStoreId]);
        v8 = [*(a1 + 32) objectForKey:v7];
        if (v8)
        {
          v9 = [NSURL URLWithString:v8];
          v10 = [v9 pf_queryAsDictionary];
          v11 = [v10 objectForKeyedSubscript:@"contentItemId"];
          if ([v11 length])
          {
            v12 = [[NSUUID alloc] initWithUUIDString:v11];
            [v5 setInstanceIdentifier:v12];

            a1 = v19;
          }

          [*(a1 + 40) setObject:v5 forKey:v8];
        }

        v3 |= v6;
      }

      v22 = [obj countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v22);
  }

  if (*(a1 + 64))
  {
    v13 = [*(a1 + 40) objectsForKeys:*(a1 + 48) notFoundMarker:*(a1 + 56)];
    v14 = [v13 mutableCopy];

    [v14 removeObject:*(a1 + 56)];
    v15 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v14 count];
      v17 = [*(v19 + 48) count];
      v18 = [*(v19 + 40) description];
      *buf = 134218498;
      v28 = v16;
      v29 = 2048;
      v30 = v17;
      v31 = 2112;
      v32 = v18;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Fetched %lu player items for %lu identifiers. %@", buf, 0x20u);
    }

    if (v3)
    {
      +[PFRestrictionsController isExplicitContentAllowed];
    }

    (*(*(v19 + 64) + 16))();
  }
}

void sub_1000822A0(id a1)
{
  v3[0] = @"playPodcasts";
  v3[1] = @"playPodcast";
  v4[0] = &off_100500C40;
  v4[1] = &off_100500C58;
  v3[2] = @"playStation";
  v4[2] = &off_100500C70;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = qword_100583B10;
  qword_100583B10 = v1;
}

void sub_100083050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v8 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 - 56));
  _Unwind_Resume(a1);
}

void sub_100083084(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained podcastUuid];
  v4 = [v2 podcastForUuid:v3];
  *(*(*(a1 + 40) + 8) + 24) = v4 != 0;
}

void sub_10008326C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v8 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 - 56));
  _Unwind_Resume(a1);
}

void sub_1000832A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained episodeUuid];
  v4 = [v2 episodeForUuid:v3];
  *(*(*(a1 + 40) + 8) + 24) = v4 != 0;
}

void sub_100083A2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_100083A6C(id a1, MPRemoteCommandCenter *a2)
{
  v2 = a2;
  v3 = [(MPRemoteCommandCenter *)v2 playCommand];
  [v3 setEnabled:1];

  v4 = [(MPRemoteCommandCenter *)v2 setPlaybackQueueCommand];
  [v4 setEnabled:1];

  v5 = [(MPRemoteCommandCenter *)v2 setPlaybackQueueCommand];
  [v5 registerSupportedQueueType:5];

  v6 = [(MPRemoteCommandCenter *)v2 setPlaybackSessionCommand];
  [v6 setEnabled:1];

  v12 = @"com.apple.podcasts.MTPlaybackQueueController.GenericQueue";
  v7 = [NSArray arrayWithObjects:&v12 count:1];
  v8 = [(MPRemoteCommandCenter *)v2 setPlaybackSessionCommand];
  [v8 setExportableSessionTypes:v7];

  v11 = @"com.apple.podcasts.MTPlaybackQueueController.GenericQueue";
  v9 = [NSArray arrayWithObjects:&v11 count:1];
  v10 = [(MPRemoteCommandCenter *)v2 setPlaybackSessionCommand];

  [v10 setSupportedSessionTypes:v9];
}

void sub_100083BD0(uint64_t a1, void *a2)
{
  v3 = [a2 isEqualToString:kMTRemoteSkipInsteadOfNextTrackDefaultKey];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = *(a1 + 32);
  v6 = WeakRetained;
  if (v3)
  {
    [WeakRetained updateRemoteSkipPreferenceFromDefaults:v5];
  }

  else
  {
    [WeakRetained updatePreferredSkipDurationsFromUserDefaults:v5 forCommandCenter:*(a1 + 40)];
  }
}

void sub_100083D6C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _MTLogCategoryMediaRemote();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Got homeUserId: %@", buf, 0xCu);
    }

    v9 = [[NSUUID alloc] initWithUUIDString:v5];
    v10 = +[ACAccountStore ic_sharedAccountStore];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100083F50;
    v12[3] = &unk_1004D9AB0;
    v13 = v9;
    v14 = *(a1 + 32);
    v11 = v9;
    [v10 ic_storeAccountForHomeUserIdentifier:v11 completion:v12];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to get homeUserId with error %@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_100083F50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to decode requesterUserId with error %@", &v14, 0xCu);
    }
  }

  if (!v5)
  {
    v8 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to locate store account for homeUserId", &v14, 2u);
    }
  }

  v9 = _MTLogCategoryMediaRemote();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Found account %@ from requesterUserId", &v14, 0xCu);
  }

  v10 = [v5 ic_privateListeningEnabledForHomeUsers];
  v11 = [v10 objectForKey:*(a1 + 32)];
  v12 = [v11 BOOLValue];

  v13 = _MTLogCategoryMediaRemote();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 67109120;
    LODWORD(v15) = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Private listening enabled for account: %d", &v14, 8u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100084644(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    if ([*(a1 + 32) insertionPosition])
    {
      if ([*(a1 + 32) insertionPosition] != 1)
      {
        goto LABEL_8;
      }

      v3 = [*(a1 + 40) playerController];
      v4 = [v3 upNextController];
      [v4 addPlayerItemsToUpNext:v5];
    }

    else
    {
      v3 = [*(a1 + 40) playerController];
      v4 = [v3 upNextController];
      [v4 addPlayerItemsToPlayNext:v5];
    }
  }

LABEL_8:
  (*(*(a1 + 48) + 16))();
}

void sub_1000858D8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_100085924(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) playerController];
  v4 = [*(a1 + 48) siriAssetInfo];
  v5 = *(*(*(a1 + 72) + 8) + 40);
  v6 = *(*(*(a1 + 80) + 8) + 24);
  v7 = *(a1 + 88);
  v8 = *(a1 + 89);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100085A54;
  v10[3] = &unk_1004D9B28;
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  BYTE1(v9) = v8;
  LOBYTE(v9) = 1;
  [MTSetPlaybackQueueUtil setPlaybackQueueForRequest:v2 playerController:v3 siriAssetInfo:v4 enqueuer:v5 savePlayHistory:v6 startPlayback:v7 forceLocal:v9 isMagicMoment:v10 completion:?];
}

void sub_100085A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _MTLogCategoryMediaRemote();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9 = 138412802;
    v10 = v7;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SetPlaybackQueue %@ has status %li and queueType %li", &v9, 0x20u);
  }

  if (*(a1 + 40))
  {
    v8 = [MTSetPlaybackQueueUtil queueCommandCustomStatusForRequestStatus:a2 queueType:a3];
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100085B5C(uint64_t a1, void *a2, char a3)
{
  v6 = a2;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  if ([*(a1 + 32) length] && objc_msgSend(*(a1 + 40), "length"))
  {
    v7 = [*(a1 + 32) isEqualToString:*(a1 + 40)];
    v8 = 0;
    if (v6 && v7 && (a3 & 1) == 0)
    {
      v8 = *(a1 + 72) ^ 1;
    }
  }

  else
  {
    v8 = 0;
  }

  *(*(*(a1 + 64) + 8) + 24) = v8 & 1;
  v9 = _MTLogCategoryMediaRemote();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(*(*(a1 + 64) + 8) + 24);
    v11[0] = 67109120;
    v11[1] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Saving play history for request: %d", v11, 8u);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100085C9C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) siriAssetInfo];
  v4 = *(*(*(a1 + 56) + 8) + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100085D6C;
  v5[3] = &unk_1004D9BA0;
  v6 = *(a1 + 48);
  [MTSetPlaybackQueueUtil subscribeWithCommandURL:v2 siriAssetInfo:v3 requester:v4 completion:v5];
}

void sub_100085D6C(uint64_t a1, int a2, uint64_t a3)
{
  v6 = _MTLogCategoryMediaRemote();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"FAILED";
    if (a2)
    {
      v7 = @"SUCCEEDED";
    }

    v12 = 138412546;
    v13 = v7;
    v14 = 2048;
    v15 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Siri Subscribed: command %@ with MTSubscribeErrorCode %li", &v12, 0x16u);
  }

  if (a2)
  {
    v8 = +[_TtC8Podcasts21SyncControllerFactory resolvedSyncController];
    [v8 syncSubscriptions];
  }

  if (*(a1 + 32))
  {
    v9 = [MTSetPlaybackQueueUtil subscribeCommandStatusForErrorCode:a3];
    v10 = *(a1 + 32);
    v11 = [MPRemoteCommandStatus statusWithCode:v9];
    (*(v10 + 16))(v10, v11);
  }
}

void sub_100085EB0(void *a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    (*(a1[5] + 16))();
  }

  else
  {
    v5 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to lookup requesterUserId. This is fatal", v8, 2u);
    }

    v6 = a1[4];
    v7 = [MPRemoteCommandStatus statusWithCode:1401];
    (*(v6 + 16))(v6, v7);
  }
}

void sub_100085F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _MTLogCategoryMediaRemote();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) trackIdentifiers];
    v9 = 138412802;
    v10 = v7;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "RemoteSetPlaybackQueue %@ has status %li and queueType %li", &v9, 0x20u);
  }

  if (*(a1 + 40))
  {
    v8 = [MTSetPlaybackQueueUtil queueCommandCustomStatusForRequestStatus:a2 queueType:a3];
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000860B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MPRemoteCommandStatus statusWithCode:0];
  (*(v1 + 16))(v1, v2);
}

void sub_100086484(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "SetPlaybackSession: Failed to lookup account DSID %@ with error %@", buf, 0x16u);
    }
  }

  v9 = [*(a1 + 40) playerController];
  v10 = *(a1 + 48);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10008662C;
  v13[3] = &unk_1004D9C18;
  v11 = v10;
  v12 = *(a1 + 40);
  v14 = v11;
  v15 = v12;
  v16 = *(a1 + 56);
  [MTRemoteSetPlaybackQueueUtil decodeAndSetPlaybackQueueForController:v9 fromIdentifiers:v11 enqueuer:v5 accountLookupFailed:v6 != 0 startPlayback:0 upNextQueueIntent:2 completion:v13];
}

void sub_10008662C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _MTLogCategoryMediaRemote();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) count];
    v10 = 134218496;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2048;
    v15 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SetPlaybackSession set %lu identifiers and has status %li and queueType %li", &v10, 0x20u);
  }

  if (a2 == 1)
  {
    v8 = [*(a1 + 40) playerController];
    v9 = [v8 player];
    [v9 setPlaybackSpeed:0];
  }

  if (*(a1 + 48))
  {
    [MTSetPlaybackQueueUtil queueCommandStatusForRequestStatus:a2 queueType:a3];
    (*(*(a1 + 48) + 16))();
  }
}

void sub_1000869A0(uint64_t a1)
{
  v2 = [*(a1 + 32) player];
  v3 = [v2 manifest];
  v4 = [v3 currentItem];

  if (v4)
  {
    [*(a1 + 40) _donateCurrentPlayerItem];
    [*(a1 + 32) playWithReason:7 interruptEvent:*(a1 + 56)];
    v5 = *(a1 + 48);
    if (v5)
    {
      v6 = *(v5 + 16);

      v6();
    }
  }

  else
  {
    v7 = [*(a1 + 40) playerController];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100086AFC;
    v9[3] = &unk_1004D9C68;
    v8 = *(a1 + 48);
    v9[4] = *(a1 + 40);
    v10 = v8;
    [MTSetPlaybackQueueUtil setAutoResumePlaybackQueueAndStartPlayback:1 playerController:v7 forceLocal:0 reason:7 interactive:0 completion:v9];
  }
}

id sub_100086AFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    if (a2 == 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = 200;
    }

    (*(v3 + 16))(v3, v4);
  }

  v5 = *(a1 + 32);

  return [v5 _donateCurrentPlayerItem];
}

uint64_t sub_100086C44(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = [*(a1 + 32) player];
    v4 = [v3 isPlaybackRequested];

    if (v4)
    {
      [*(a1 + 32) _donateCurrentPlayerItem];
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

id *sub_100087F78(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] setValue:a2 forKey:@"MTShareImage" shareModes:7];
  }

  return result;
}

void sub_100088268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100088284(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000883CC;
    v8[3] = &unk_1004D9DB8;
    objc_copyWeak(&v10, (a1 + 32));
    v9 = v5;
    dispatch_async(&_dispatch_main_q, v8);

    objc_destroyWeak(&v10);
  }

  else
  {
    v7 = _MTLogCategoryArtworkDownload();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to load artwork for sharing: %@", buf, 0xCu);
    }
  }
}

void sub_1000883CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setValue:*(a1 + 32) forKey:@"MTShareImage" shareModes:1];
    WeakRetained = v3;
  }
}

void sub_1000888C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = _MTLogCategoryArtworkDownload();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to fetch artwork for sharing: '%@'", buf, 0xCu);
    }
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100088A08;
  v10[3] = &unk_1004D9158;
  v8 = *(a1 + 32);
  v11 = v5;
  v12 = v8;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, v10);
}

id sub_10008A004(uint64_t a1, uint64_t a2)
{
  if ((a2 & 1) == 0 && *(a1 + 56) == 1)
  {
    v3 = [*(a1 + 32) delegate];
    [v3 openURL:*(a1 + 40)];

    a2 = 1;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 48);

  return [v4 completeOpenURLWithSuccess:a2 completionHandler:v5];
}

void sub_10008AEB8(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];

  if (v2)
  {
    v3 = [*(a1 + 32) presentingViewController];
    [v3 dismissViewControllerAnimated:0 completion:0];
  }
}

void sub_10008B2A0(uint64_t a1)
{
  v7 = [*(a1 + 32) controller];
  v2 = [*(a1 + 32) actionBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) actionBlock];
    (v3)[2](v3, v7, *(a1 + 40));
  }

  v4 = [v7 delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [v7 delegate];
    [v6 didPerformActionInSheet:*(a1 + 32)];
  }
}

void sub_10008B4B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008B4D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained actions];
    v3 = [v4 presentingButton];
    [v4 showActionSheetWithActions:v2 fromButton:v3];

    WeakRetained = v4;
  }
}

id sub_10008DF08(uint64_t a1)
{
  v2 = _MTLogCategoryAsyncTask();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MZAsynchronousTask] WARNING: task timed out: %@", &v5, 0xCu);
  }

  [*(a1 + 32) _invalidateTaskTimer];
  return [*(a1 + 32) setCancelType:2];
}

id sub_10008DFC4(uint64_t a1)
{
  v2 = _MTLogCategoryAsyncTask();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MZAsynchronousTask] WARNING: background-task assertion HOLD timed out: %@", &v5, 0xCu);
  }

  [*(a1 + 32) _invalidateTaskAssertionForced:1];
  return [*(a1 + 32) _invalidateAssertionTimer];
}

void sub_10008E1C4(uint64_t a1)
{
  v2 = [*(a1 + 32) taskTimeoutTimer];

  if (v2)
  {
    v3 = [*(a1 + 32) taskTimeoutTimer];
    dispatch_source_cancel(v3);

    v4 = *(a1 + 32);

    [v4 setTaskTimeoutTimer:0];
  }
}

void sub_10008E2AC(uint64_t a1)
{
  v2 = [*(a1 + 32) assertionTimeoutTimer];

  if (v2)
  {
    v3 = [*(a1 + 32) assertionTimeoutTimer];
    dispatch_source_cancel(v3);

    v4 = *(a1 + 32);

    [v4 setAssertionTimeoutTimer:0];
  }
}

void sub_10008E45C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 != *(*(a1 + 32) + 16))
  {
    v3 = [v2 copy];
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v6 = _MTLogCategoryAsyncTask();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = objc_retainBlock(*(a1 + 40));
      v8 = *(a1 + 32);
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "set expirationHandler %@ for task: %@", &v9, 0x16u);
    }
  }
}

void sub_10008E640(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10008E724(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 != *(*(a1 + 32) + 24))
  {
    v3 = [v2 copy];
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v6 = _MTLogCategoryAsyncTask();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = objc_retainBlock(*(a1 + 40));
      v8 = *(a1 + 32);
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "set finishedHandler %@ for task: %@", &v9, 0x16u);
    }
  }
}

void sub_10008E908(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t sub_10008EA14(uint64_t a1)
{
  v2 = _MTLogCategoryAsyncTask();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v6 = 138412546;
    v7 = v3;
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Invoking expiration handler for %@, with cancelType = %d", &v6, 0x12u);
  }

  return (*(*(a1 + 40) + 16))();
}

_DWORD *sub_10008EB54(_DWORD *result)
{
  v1 = result[10];
  v2 = *(result + 4);
  if (v1 != *(v2 + 12))
  {
    *(v2 + 12) = v1;
    result = *(result + 4);
    if (result[3])
    {
      return [result _onQueueFireExpirationHandlerIfNecesary];
    }
  }

  return result;
}

uint64_t sub_10008EDD4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10008F128(uint64_t a1)
{
  [*(a1 + 32) _invalidateAssertionTimer];
  [*(a1 + 32) _invalidateTaskTimer];
  v2 = *(a1 + 32);

  return [v2 setCancelType:1];
}

void sub_10008F170(uint64_t a1)
{
  v2 = [*(a1 + 32) taskTimeoutTimer];

  if (v2)
  {
    v3 = [*(a1 + 32) taskTimeoutTimer];
    dispatch_suspend(v3);

    v4 = [*(a1 + 32) taskTimeoutTimer];
    [*(a1 + 32) taskTimeout];
    v6 = dispatch_time(0, (v5 * 1000000000.0));
    dispatch_source_set_timer(v4, v6, 0xFFFFFFFFFFFFFFFFLL, 0);

    v7 = [*(a1 + 32) taskTimeoutTimer];
    dispatch_resume(v7);
  }

  v8 = [*(a1 + 32) assertionTimeoutTimer];

  if (v8)
  {
    v9 = [*(a1 + 32) assertionTimeoutTimer];
    dispatch_suspend(v9);

    v10 = [*(a1 + 32) assertionTimeoutTimer];
    [*(a1 + 32) assertionTimeout];
    v12 = dispatch_time(0, (v11 * 1000000000.0));
    dispatch_source_set_timer(v10, v12, 0xFFFFFFFFFFFFFFFFLL, 0);

    v13 = [*(a1 + 32) assertionTimeoutTimer];
    dispatch_resume(v13);
  }
}

void sub_10008F3CC(uint64_t a1)
{
  v2 = [*(a1 + 32) finishedHandler];
  if (v2)
  {
    v3 = _MTLogCategoryAsyncTask();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v7 = 138412802;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invoking completion handler for %@, result = %@, error = %@", &v7, 0x20u);
    }

    v2[2](v2);
  }

  [*(a1 + 32) invalidate];
}

void sub_10008F674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10008F698(uint64_t a1)
{
  result = [*(a1 + 32) taskInvalidationDisabled];
  if (!result || *(a1 + 48) == 1)
  {
    [*(a1 + 32) setTaskInvalidationDisabled:0];
    v3 = [*(a1 + 32) taskAssertion];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = *(a1 + 32);

    return [v6 setTaskAssertion:0];
  }

  return result;
}

id sub_10008FA4C(uint64_t a1)
{
  result = [*(a1 + 32) taskInvalidationDisabled];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) setTaskInvalidationDisabled:1];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void sub_10008FA94(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008FBBC;
  block[3] = &unk_1004D9EF8;
  v5 = *(a1 + 56);
  v12 = v3;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  *&v8 = *(a1 + 32);
  *(&v8 + 1) = v5;
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v13 = v9;
  v14 = v8;
  v10 = v3;
  dispatch_async(v4, block);
}

void sub_10008FBBC(uint64_t a1)
{
  (*(*(a1 + 64) + 16))();
  v2 = *(a1 + 56);

  dispatch_group_leave(v2);
}

id *sub_10008FC08(id *result)
{
  if (*(*(result[5] + 1) + 24) == 1)
  {
    return [result[4] _invalidateTaskAssertionForced:1];
  }

  return result;
}

id sub_10008FF7C(double a1)
{
  if (qword_100583B28 != -1)
  {
    sub_1003B2B70();
  }

  v2 = qword_100583B20;
  v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:a1];
  v4 = [v2 stringFromDate:v3];

  return v4;
}

id sub_100090524(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v3 count]);
  v6 = [NSSet setWithArray:v3];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100091590;
  v9[3] = &unk_1004D9F90;
  v7 = v5;
  v10 = v7;
  [v4 enumerateValuesForProperties:v6 usingBlock:v9];

  return v7;
}

id sub_100090628(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100090524(*(a1 + 32), v3);
  v5 = +[NSMutableString string];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = v7;
  v9 = *v17;
  while (2)
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = [v4 objectForKey:*(*(&v16 + 1) + 8 * i)];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v11 absoluteString];
LABEL_8:
        v13 = v12;

        v11 = v13;
        goto LABEL_12;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_respondsToSelector())
      {
        v12 = [v11 stringValue];
        goto LABEL_8;
      }

LABEL_12:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![v11 length])
      {

        goto LABEL_19;
      }

      [v5 appendString:v11];
    }

    v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_16:

  if ([v5 length])
  {
    v14 = [NSData MZStringByMD5HashingString:v5];
  }

  else
  {
LABEL_19:
    v14 = 0;
  }

  return v14;
}

id *sub_100090CCC(id *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [result[4] setObject:a3 forKey:a2];
  }

  return result;
}

void sub_100091534(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_100583B20;
  qword_100583B20 = v1;

  [qword_100583B20 setTimeStyle:3];
  v3 = qword_100583B20;

  [v3 setDateStyle:1];
}

id *sub_100091590(id *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [result[4] setObject:a3 forKey:a2];
  }

  return result;
}

id sub_1000919C4(uint64_t a1)
{
  [*(a1 + 32) setTitle:*(a1 + 40) forState:0];
  [*(a1 + 32) sizeToFit];
  v2 = *(a1 + 32);

  return [v2 layoutBelowIfNeeded];
}

_UNKNOWN **sub_100091DB8()
{
  v1 = qword_100583B30;
  if (qword_100583B30)
  {
  }

  else
  {
    qword_100583B30 = &off_100502488;

    v1 = &off_100502488;
  }

  return v1;
}

void sub_100092064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100092088(uint64_t a1)
{
  result = [*(a1 + 32) isActive];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _onQueueScheduleTimer];
  }

  return result;
}

void sub_1000920D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateAutorefreshRateSettingAndRestartTimer:1];
}

id sub_100092364(uint64_t a1)
{
  result = [*(a1 + 32) isActive];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) setIsActive:1];
    v3 = *(a1 + 32);

    return [v3 _onQueueUpdateTimerForActiveChanges];
  }

  return result;
}

id sub_100092430(uint64_t a1)
{
  result = [*(a1 + 32) isActive];
  if (result)
  {
    [*(a1 + 32) setIsActive:0];
    [*(a1 + 32) _onQueueUpdateTimerForActiveChanges];
    result = [*(a1 + 32) hasLocalChangesToSync];
    if (result)
    {
      result = [*(a1 + 32) _automaticallySynchronizeLocalChangesOnResignActive];
      if (result)
      {
        v3 = _MTLogCategoryCloudSync();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          *v4 = 0;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "starting synchronizing changes for resignActive", v4, 2u);
        }

        return [*(a1 + 32) _onQueueSynchronizeWithAutosynchronizeMask:2 withCompletionBlock:&stru_1004DA050];
      }
    }
  }

  return result;
}

void sub_1000924E8(id a1)
{
  v1 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "finished synchronizing changes for resignActive", v2, 2u);
  }
}

void sub_100092764(uint64_t a1)
{
  kdebug_trace();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10009280C;
  v3[3] = &unk_1004D84D0;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 _onQueueSynchronizeImmediatelyWithCompletionBlock:v3];
}

uint64_t sub_10009280C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v1 = vars8;
  }

  return kdebug_trace();
}

void sub_100092904(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10009298C;
  v2[3] = &unk_1004DA078;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _onQueueLoadBagContextWithCompletionHandler:v2];
}

uint64_t sub_10009298C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v5 = [a2 UPPDisabled] ^ 1;
    if (a3)
    {
      a2 = 0;
    }

    else
    {
      a2 = v5;
    }
  }

  v6 = *(v3 + 16);

  return v6(v3, a2);
}

void sub_100092D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100092DBC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100092DD4(uint64_t a1)
{
  kdebug_trace();
  v2 = _MTLogCategoryUPPSync();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "_onQueueSync - UPP synchronizeTask did expire", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained[4] cancelType];
    v6 = v4[6];
    if (v5 == 2)
    {
      [v6 timeout];
    }

    else
    {
      [v6 cancel];
    }

    [v4[4] finishTaskOperationWithResult:&__kCFBooleanFalse error:0];
  }
}

void sub_100092EA8(uint64_t a1)
{
  kdebug_trace();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [WeakRetained[4] error];
      if (v6)
      {
        v1 = [WeakRetained[4] error];
        v2 = [v1 localizedFailureReason];
        v7 = [NSString stringWithFormat:@" ERROR = '%@'.", v2];
      }

      else
      {
        v7 = &stru_1004F3018;
      }

      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_onQueueSync - UPP synchronize completed. %@", buf, 0xCu);
      if (v6)
      {
      }
    }

    [WeakRetained[4] invokeTaskCompletionBlocksWithBlock:&stru_1004DA0B8];
    v8 = [WeakRetained[4] result];
    v9 = [v8 BOOLValue];

    *(WeakRetained + 8) &= v9 ^ 1;
    v10 = WeakRetained[6];
    WeakRetained[6] = 0;

    v11 = WeakRetained[4];
    WeakRetained[4] = 0;

    [WeakRetained _onQueueStartNewTimer];
  }
}

void sub_100093068(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v9 = v8;
    v10 = [*(WeakRetained + 4) metrics];
    [v10 setBagLookupEndTime:v9];

    v11 = *(WeakRetained + 9);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009318C;
    block[3] = &unk_1004DA130;
    objc_copyWeak(&v15, (a1 + 32));
    v13 = v6;
    v14 = v5;
    dispatch_async(v11, block);

    objc_destroyWeak(&v15);
  }
}

void sub_10009318C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
LABEL_4:
      v5 = *(WeakRetained + 4);
      v6 = [NSNumber numberWithBool:0];
      [v5 finishTaskOperationWithResult:v6 error:v4];

      goto LABEL_5;
    }

    v7 = *(a1 + 40);
    if (!v7)
    {
      v13 = sub_1000933C4(*(a1 + 32));
      v4 = [NSError errorWithDomain:@"MZKeyValueStoreErrorDomain" code:-2008 userInfo:v13];

      if (v4)
      {
        goto LABEL_4;
      }

      v7 = *(a1 + 40);
    }

    if ([v7 UPPDisabled])
    {
      v8 = sub_1000933C4(*(a1 + 32));
      v4 = [NSError errorWithDomain:@"MZKeyValueStoreErrorDomain" code:-2007 userInfo:v8];

      if (v4)
      {
        goto LABEL_4;
      }
    }

    [*(WeakRetained + 4) beginTaskOperation];
    v9 = [[MZUniversalPlaybackPositionSyncHandler alloc] initWithDataSource:*(WeakRetained + 2) bagContext:*(a1 + 40) andTask:*(WeakRetained + 4)];
    v10 = *(WeakRetained + 6);
    *(WeakRetained + 6) = v9;

    [*(WeakRetained + 6) setCanRequestStoreSignIn:WeakRetained[9]];
    v11 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "_onQueueSync - UPP synchronize operation beginning...", buf, 2u);
    }

    v12 = *(WeakRetained + 6);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100093458;
    v14[3] = &unk_1004DA108;
    objc_copyWeak(&v15, (a1 + 48));
    [v12 synchronizeWithCompletionHandler:v14];
    objc_destroyWeak(&v15);
  }

LABEL_5:
}

id sub_1000933C4(void *a1)
{
  v1 = a1;
  if (v1 && ([0 objectForKey:NSUnderlyingErrorKey], v2 = objc_claimAutoreleasedReturnValue(), v2, !v2))
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    [v3 setObject:v1 forKey:NSUnderlyingErrorKey];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_100093458(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained[9];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100093524;
    block[3] = &unk_1004DA0E0;
    v10 = WeakRetained;
    v12 = a2;
    v11 = v5;
    dispatch_async(v8, block);
  }
}

void sub_100093524(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [NSNumber numberWithBool:*(a1 + 48)];
  [v2 finishTaskOperationWithResult:v3 error:*(a1 + 40)];
}

id sub_10009367C(uint64_t a1)
{
  [*(a1 + 40) pollingInterval];
  [*(a1 + 32) setBagSpecifiedPollingInterval:?];
  [*(a1 + 32) _effectiveAutorefreshRate];
  v3 = v2;
  if ([*(a1 + 32) initialAutosyncNeeded])
  {
    v4 = 0;
  }

  else
  {
    [*(a1 + 32) autorefreshRate];
    v4 = v3 != v5;
  }

  v6 = *(a1 + 32);

  return [v6 _updateAutorefreshRateSettingAndRestartTimer:v4];
}

void sub_100093A9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100093AE4(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  [*(a1 + 32) _updateSettingsFromLoadedBagContext:v7];
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }
}

void sub_100093B78(uint64_t a1)
{
  v2 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5[0] = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "_onQueueLoadBag - UPP bagLookupTask did expire", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[5] finishTaskOperationWithResult:0 error:0];
  }
}

void sub_100093C08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [WeakRetained[5] error];
      if (v5)
      {
        v1 = [WeakRetained[5] error];
        v2 = [v1 localizedFailureReason];
        v6 = [NSString stringWithFormat:@" ERROR = '%@'.", v2];
      }

      else
      {
        v6 = &stru_1004F3018;
      }

      *buf = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_onQueueLoadBag - UPP load bag completed.%@", buf, 0xCu);
      if (v5)
      {
      }
    }

    [WeakRetained[5] invokeTaskCompletionBlocksWithBlock:&stru_1004DA1A0];
    v7 = WeakRetained[5];
    WeakRetained[5] = 0;
  }
}

void sub_100093D74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      v9 = _MTLogCategoryCloudSync();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_onQueueLoadBag - load bag operation beginning...", buf, 2u);
      }

      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100093EBC;
      v10[3] = &unk_1004DA158;
      objc_copyWeak(&v11, (a1 + 32));
      [MZUPPBagContext loadBagContextFromIMURLBag:v5 completionBlock:v10];
      objc_destroyWeak(&v11);
    }

    else
    {
      [WeakRetained[5] finishTaskOperationWithResult:0 error:v6];
    }
  }
}

void sub_100093EBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[9];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100093FAC;
    block[3] = &unk_1004DA130;
    objc_copyWeak(&v13, (a1 + 32));
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);

    objc_destroyWeak(&v13);
  }
}

void sub_100093FAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[5] finishTaskOperationWithResult:*(a1 + 32) error:*(a1 + 40)];
    WeakRetained = v3;
  }
}

void sub_10009409C(uint64_t a1)
{
  v2 = +[IMURLBag sharedInstance];
  if (v2)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = NSLocalizedDescriptionKey;
    v3 = [NSString stringWithFormat:@"Could not load bag context due to bag failure to load."];
    v7 = v3;
    v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    v5 = [NSError errorWithDomain:NSCocoaErrorDomain code:100 userInfo:v4];

    (*(*(a1 + 32) + 16))();
  }
}

id sub_10009432C(uint64_t a1)
{
  [*(a1 + 32) _effectiveAutorefreshRate];
  result = [*(a1 + 32) setAutorefreshRate:?];
  if (*(a1 + 40) == 1)
  {
    v3 = *(a1 + 32);

    return [v3 _onQueueStartNewTimer];
  }

  return result;
}

void sub_100094410(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = _MTLogCategoryCloudSync();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 >= 0.0)
  {
    if (v4)
    {
      v5 = [NSDate dateWithTimeIntervalSinceNow:*(a1 + 40)];
      v6 = +[NSDate date];
      [v5 timeIntervalSinceNow];
      v8 = v7;
      [v6 timeIntervalSinceNow];
      v10 = v8 - v9;
      if (v10 <= 60.0)
      {
        [NSString stringWithFormat:@"%.2f seconds", *&v10, v14];
      }

      else
      {
        [NSString stringWithFormat:@"%ld minutes, %ld seconds", v10 / 60, v10 % 60];
      }
      v11 = ;
      v12 = [NSString stringWithFormat:@"%@ (%@ from now)", v5, v11];

      *buf = 138412290;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "scheduling next timer update at %@", buf, 0xCu);
    }

    v13 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"_timerFired:" selector:0 userInfo:0 repeats:*(a1 + 40)];
    [*(a1 + 32) setTimer:v13];
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "scheduled timer date already passed.  Firing immediately", buf, 2u);
    }

    [*(a1 + 32) _timerFired:0];
  }
}

void sub_1000962E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

id sub_100096408(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) syncInProgress];
  v2 = *(a1 + 32);

  return [v2 setSyncInProgress:1];
}

void sub_100096454(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [MZUniversalPlaybackPositionMetadata metadataWithValuesFromDataSourceItem:v3];

  v6 = [v5 itemIdentifier];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [WeakRetained transactionProcessor];
    v9 = [v8 metadataItemsFromDataSource];
    v10 = [v5 itemIdentifier];
    [v9 setObject:v5 forKey:v10];
  }

  else
  {
    v8 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Will skip syncing item with no sync metadataIdentifier: %{public}@", &v11, 0xCu);
    }
  }
}

void sub_10009668C(uint64_t a1)
{
  v1 = [*(a1 + 32) objectsInEntity:kMTEpisodeEntityName predicate:*(a1 + 40) sortDescriptors:0];
  if ([v1 count])
  {
    v2 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v30 = COERCE_DOUBLE([v1 count]);
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Found %{public}ld local episodes with nil metadataIdentifier. Proceeding to populate the metadataIdentifiers", buf, 0xCu);
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v4 = v3;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = v1;
    v5 = v1;
    v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      v9 = v4;
      while (1)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          [v11 updateUPPIdentifierIfNeeded];
          v12 = [v11 metadataIdentifier];
          if (!v12 || (v13 = v12, [v11 metadataIdentifier], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v13, !v15))
          {
            v18 = _MTLogCategoryUPPSync();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v19 = v18;
              v20 = "Skipping timestamp change since metadata identifier remained empty after update.";
              v21 = 2;
              goto LABEL_19;
            }

LABEL_20:

            continue;
          }

          [v11 metadataTimestamp];
          v17 = v16;
          if (v16 <= 0.0)
          {
            v18 = _MTLogCategoryUPPSync();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v30 = v17;
              v19 = v18;
              v20 = "Skipping timestamp change since metadata %f is less than or equal to zero.";
              v21 = 12;
LABEL_19:
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v20, buf, v21);
            }

            goto LABEL_20;
          }

          if (v16 < v9)
          {
            v9 = v16;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (!v7)
        {
          goto LABEL_25;
        }
      }
    }

    v9 = v4;
LABEL_25:

    v1 = v23;
    if (v9 != v4)
    {
      v22 = _MTLogCategoryUPPSync();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v30 = v9;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Changing UppLastSyncTime to the oldest timestamp of updated episodes to force pushing their changes to server: %f", buf, 0xCu);
      }

      [MTUniversalPlaybackPositionDataSource setUppLastSyncTime:v9];
    }
  }
}

void sub_100096A58(uint64_t a1)
{
  if ([*(a1 + 32) canceled])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v2 = [*(a1 + 32) fatalSyncError];
    *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
  }
}

id sub_100096E20(uint64_t a1)
{
  result = [*(a1 + 32) syncInProgress];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100096E54(uint64_t a1)
{
  kdebug_trace();
  v2 = [*(a1 + 32) dataSource];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100096F14;
  v4[3] = &unk_1004D8520;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 performBlockAndWait:v4];
}

void sub_100096F14(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = 0;
  [v2 _synchronize:&v4];
  v3 = v4;
  (*(*(a1 + 40) + 16))();
}

void sub_100097CC8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) playlistUuid];
  v5 = [v2 playlistForUuid:v3];

  v4 = [v5 title];
  [*(a1 + 40) setTitle:v4];
}

void sub_100097E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100097EA0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) playlistUuid];
  v7 = [v2 playlistForUuid:v3];

  v4 = [MTCoreSpotlightUtil uniqueIdentifierForObject:v7];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_100098044(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 length])
  {
    v3 = [[MTPlaylistManifest alloc] initWithPlaylistUuid:*(a1 + 32) initialEpisodeUuid:v4];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100098310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100098328(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) playlistUuid];
  v5 = [v3 playlistForUuid:v4];

  if (v5)
  {
    v6 = [v5 episodes];
    v7 = [v6 valueForKey:kEpisodeUuid];
    v8 = [v7 array];
    v9 = [v8 copy];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000987DC(uint64_t a1)
{
  v2 = kMTEpisodeEntityName;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) persistentId];
  v5 = [MTEpisode predicateForPersistentId:v4];
  v10 = [v3 objectsInEntity:v2 predicate:v5 sortDescriptors:0];

  v6 = [v10 firstObject];
  v7 = [v6 uuid];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_100099D10(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100099D9C;
    block[3] = &unk_1004D8358;
    v3 = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_100099D9C(uint64_t a1)
{
  v2 = +[MTDB sharedInstance];
  v3 = [v2 mainQueueContext];

  v4 = [*(a1 + 32) containerIdentifier];
  v5 = [v3 podcastForFeedUrl:v4];

  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [v6 itemTitle];
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"HANDOFF_MESSAGE_EPIOSDE_UNAVAILABLE" value:&stru_1004F3018 table:0];
    v10 = [v5 title];
    v11 = [NSString localizedStringWithFormat:v9, v7, v10];

    v12 = @"episode_unavailable";
    v13 = @"HANDOFF_MESSAGE_EPIOSDE_UNAVAILABLE_TITLE";
  }

  else
  {
    v7 = [v6 containerTitle];
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"HANDOFF_MESSAGE_NOT_FOLLOWING" value:&stru_1004F3018 table:0];
    v11 = [NSString localizedStringWithFormat:v9, v7];
    v12 = @"not_subscribed";
    v13 = @"HANDOFF_MESSAGE_NOT_FOLLOWING_TITLE";
  }

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:v13 value:&stru_1004F3018 table:0];

  v23 = @"reason";
  v24 = v12;
  v16 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  [IMMetrics recordUserAction:@"handoff_failed" dataSource:0 withData:v16];

  v17 = [UIAlertController alertControllerWithTitle:v15 message:v11 preferredStyle:1];
  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"OK" value:&stru_1004F3018 table:0];
  v20 = [UIAlertAction actionWithTitle:v19 style:0 handler:0];
  [v17 addAction:v20];

  v21 = +[MTApplication appController];
  v22 = [v21 rootViewController];
  [v22 presentViewController:v17 animated:1 completion:0];
}

void sub_10009A70C(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];

  if (v2)
  {
    v3 = [*(a1 + 32) presentingViewController];
    [v3 dismissViewControllerAnimated:0 completion:0];
  }
}

void sub_10009A8FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009A920(id *a1)
{
  [a1[4] presentViewController:a1[5] animated:0 completion:0];
  v3 = [a1[5] popoverPresentationController];
  [v3 setPermittedArrowDirections:3];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [v3 setDelegate:WeakRetained];
}

BOOL sub_10009AA90(id a1, MTEpisodeActionController *a2)
{
  v2 = [(IMActionController *)a2 actionObject];
  v3 = v2;
  v4 = v2 && ([v2 isExternalType] & 1) == 0 && !objc_msgSend(v3, "isRestricted");

  return v4;
}

void sub_10009AAEC(id a1, MTEpisodeActionController *a2, id a3)
{
  v3 = [(IMActionController *)a2 actionObject];
  v4 = [v3 uuid];
  v6 = v4;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [MTRemoteSetPlaybackQueueUtil insertEpisodeUuids:v5 intoPlaybackQueueAtPosition:0];
}

BOOL sub_10009AC7C(id a1, MTEpisodeActionController *a2)
{
  v2 = [(IMActionController *)a2 actionObject];
  v3 = v2;
  v4 = v2 && ([v2 isExternalType] & 1) == 0 && !objc_msgSend(v3, "isRestricted");

  return v4;
}

void sub_10009ACD8(id a1, MTEpisodeActionController *a2, id a3)
{
  v3 = [(IMActionController *)a2 actionObject];
  v4 = [v3 uuid];
  v6 = v4;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [MTRemoteSetPlaybackQueueUtil insertEpisodeUuids:v5 intoPlaybackQueueAtPosition:1];
}

BOOL sub_10009AE68(id a1, MTEpisodeActionController *a2)
{
  v2 = [(IMActionController *)a2 actionObject];
  v3 = v2;
  if (!v2 || ([v2 isExternalType] & 1) != 0 || (objc_msgSend(v3, "isCurrentPlayerItem") & 1) != 0)
  {
    v4 = 0;
  }

  else
  {
    v6 = +[MTPlayerController defaultInstance];
    v7 = [v6 upNextController];
    v8 = [v3 uuid];
    v4 = [v7 containsEpisodeUuid:v8];
  }

  return v4;
}

void sub_10009AF1C(id a1, MTEpisodeActionController *a2, id a3)
{
  v3 = a2;
  v7 = +[MTPlayerController defaultInstance];
  v4 = [v7 upNextController];
  v5 = [(IMActionController *)v3 actionObject];

  v6 = [v5 uuid];
  [v4 removeEpisodesForUuid:v6];
}

NSString *__cdecl sub_10009B030(id a1, MTEpisodeActionController *a2)
{
  v2 = [(IMActionController *)a2 actionObject];
  v3 = [v2 isVideo];
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (v3)
  {
    v6 = @"MARK_UNPLAYED_SINGLE_VIDEO";
  }

  else
  {
    v6 = @"MARK_UNPLAYED_SINGLE_AUDIO";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1004F3018 table:0];

  return v7;
}

BOOL sub_10009B0CC(id a1, MTEpisodeActionController *a2)
{
  v2 = [(IMActionController *)a2 actionObject];
  v3 = [v2 isVisuallyPlayed];

  return v3;
}

void sub_10009B108(id a1, MTEpisodeActionController *a2, id a3)
{
  v5 = [(IMActionController *)a2 actionObject];
  v3 = +[MTLibrary sharedInstance];
  v4 = [v5 uuid];
  [v3 setPlayed:0 manually:1 forUserActionOnEpisodeUuid:v4];
}

NSString *__cdecl sub_10009B1FC(id a1, MTEpisodeActionController *a2)
{
  v2 = [(IMActionController *)a2 actionObject];
  v3 = [v2 isVideo];
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (v3)
  {
    v6 = @"MARK_PLAYED_SINGLE_VIDEO";
  }

  else
  {
    v6 = @"MARK_PLAYED_SINGLE_AUDIO";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1004F3018 table:0];

  return v7;
}

BOOL sub_10009B298(id a1, MTEpisodeActionController *a2)
{
  v2 = [(IMActionController *)a2 actionObject];
  v3 = [v2 isVisuallyPlayed];

  return v3 ^ 1;
}

void sub_10009B2D4(id a1, MTEpisodeActionController *a2, id a3)
{
  v5 = [(IMActionController *)a2 actionObject];
  v3 = +[MTLibrary sharedInstance];
  v4 = [v5 uuid];
  [v3 setPlayed:1 manually:0 forUserActionOnEpisodeUuid:v4];
}

BOOL sub_10009B414(id a1, MTEpisodeActionController *a2)
{
  v2 = [(IMActionController *)a2 actionObject];
  v3 = [v2 isExternalType];

  return v3;
}

void sub_10009B450(id a1, MTEpisodeActionController *a2, id a3)
{
  v5 = [(IMActionController *)a2 actionObject];
  v3 = [v5 bestUrl];
  v4 = +[UIApplication sharedApplication];
  [v4 openURL:v3 options:&__NSDictionary0__struct completionHandler:0];
}

void sub_10009B60C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL sub_10009B628(id a1, MTEpisodeActionController *a2)
{
  v2 = [(IMActionController *)a2 actionObject];
  v3 = [v2 isShareable];

  return v3;
}

UIBarButtonItem *__cdecl sub_10009B664(id a1)
{
  v1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:9 target:0 action:0];

  return v1;
}

void sub_10009B6A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 actionObject];

  v8 = [MTShareUtil shareViewControllerWithEpisode:v7 selectedReferenceTime:0.0 selectedPlayerTime:0.0 currentPlayerTime:0.0];
  [WeakRetained showViewController:v8 inPopoverFromButton:v5];
}

void sub_10009BCA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 168), 8);
  _Unwind_Resume(a1);
}

void sub_10009BCCC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009BDE4;
  block[3] = &unk_1004DA540;
  v18 = v8;
  v19 = v7;
  v11 = *(a1 + 56);
  v20 = v9;
  v22 = v11;
  v16 = *(a1 + 40);
  v12 = v16;
  v21 = v16;
  v13 = v9;
  v14 = v7;
  v15 = v8;
  dispatch_async(v10, block);
}

void sub_10009BDE4(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    [*(*(a1[8] + 8) + 40) setValue:v2 forKey:a1[5]];
  }

  v3 = a1[6];
  if (v3)
  {
    v4 = *(a1[9] + 8);
    v6 = *(v4 + 40);
    v5 = (v4 + 40);
    if (!v6)
    {
      objc_storeStrong(v5, v3);
    }
  }

  v7 = a1[7];

  dispatch_group_leave(v7);
}

void sub_10009BE50(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  dispatch_group_enter(*(a1 + 32));
  v11 = v9[2](v9, *(a1 + 40), v8);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10009BF94;
  v16[3] = &unk_1004DA5B8;
  v17 = v10;
  v12 = *(a1 + 48);
  v20 = *(a1 + 56);
  v21 = v9;
  v18 = v8;
  v19 = *(a1 + 40);
  v13 = v9;
  v14 = v8;
  v15 = v10;
  [v11 asyncValueOnQueue:v12 withCompletion:v16];
}

void sub_10009BF94(uint64_t a1, uint64_t a2)
{
  if (a2 || !*(a1 + 32))
  {
    v4 = *(*(a1 + 56) + 16);

    v4();
  }

  else
  {
    v3 = (*(*(a1 + 64) + 16))();
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10009C0A0;
    v5[3] = &unk_1004DA590;
    v7 = *(a1 + 56);
    v6 = *(a1 + 40);
    [v3 valueWithCompletion:v5];
  }
}

uint64_t sub_10009C0D0(uint64_t a1)
{
  dispatch_group_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v2 = *(*(a1 + 56) + 8);
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

BOOL sub_10009CC78(id a1, MPMediaItem *a2, BOOL *a3)
{
  v3 = [(MPMediaItem *)a2 dateAdded];
  v4 = v3 != 0;

  return v4;
}

void sub_10009CFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

NSNumber *__cdecl sub_10009CFFC(id a1, MPMediaItem *a2)
{
  v2 = [(MPMediaItem *)a2 persistentID];

  return [NSNumber numberWithUnsignedLongLong:v2];
}

void sub_10009D040(uint64_t a1)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10009D100;
  v6[3] = &unk_1004DA710;
  v2 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v3 = [v2 filter:v6 compactMap:&stru_1004DA750];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t sub_10009D100(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) episodeForUuid:a2];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 40);
    v6 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v3 persistentID]);
    v7 = [v5 containsObject:v6] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_10009DD64(uint64_t a1)
{
  if ([*(a1 + 32) isEnabled])
  {
    v2 = *(a1 + 32);

    [v2 _processPendingTransactions];
  }

  else
  {
    v3 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [*(a1 + 32) currentTransaction];
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%@ Domain is disabled. Cancelling all pending transactions", &v7, 0xCu);
    }

    v5 = *(a1 + 32);
    v6 = [MZKeyValueStoreError keyValueStoreDisabledErrorWithTransaction:0 underlyingError:0];
    [v5 _cancelAllPendingTransactions:v6];
  }
}

void sub_10009DF28(uint64_t a1)
{
  v1 = [*(a1 + 32) clampsController];
  [v1 clearNetworkingBlocked];
}

void sub_10009E340(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [MZKeyValueStoreError transactionCancelledErrorWithTransaction:v2 underlyingError:0];
  [v1 _cancelTransaction:v2 error:v3];
}

void sub_10009E414(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MZKeyValueStoreError transactionCancelledErrorWithTransaction:0 underlyingError:0];
  [v2 _cancelAllPendingTransactions:v3];

  v4 = *(a1 + 32);
  v7 = [v4 currentTransaction];
  v5 = [*(a1 + 32) currentTransaction];
  v6 = [MZKeyValueStoreError transactionCancelledErrorWithTransaction:v5 underlyingError:0];
  [v4 _cancelTransaction:v7 error:v6];
}

void sub_10009E54C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MZKeyValueStoreError transactionCancelledErrorWithTransaction:0 code:*(a1 + 40) underlyingError:0];
  [v2 _cancelAllPendingTransactions:v3];

  v4 = *(a1 + 32);
  v7 = [v4 currentTransaction];
  v5 = [*(a1 + 32) currentTransaction];
  v6 = [MZKeyValueStoreError transactionCancelledErrorWithTransaction:v5 code:*(a1 + 40) underlyingError:0];
  [v4 _cancelTransaction:v7 error:v6];
}

void sub_10009EA10(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_10009EBE4(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);
  if (v2)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

id sub_10009F824(uint64_t a1)
{
  result = [*(a1 + 32) _delegateTransactionDidFail:*(a1 + 40) withError:*(a1 + 48)];
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(a1 + 32);

    return [v5 resolveError:v3 transaction:v4 resolution:0];
  }

  return result;
}

void sub_1000A02AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A02C8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A03B4;
  v6[3] = &unk_1004DA130;
  objc_copyWeak(&v9, (a1 + 40));
  v5 = v3;
  v7 = v5;
  v8 = *(a1 + 32);
  [WeakRetained performBlock:v6];

  objc_destroyWeak(&v9);
}

void sub_1000A03B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _processOperationOutput:*(a1 + 32) forRequest:*(a1 + 40)];
}

void sub_1000A0A30(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 keyValueStoreController:*(a1 + 32) transactionDidFinish:*(a1 + 40)];
}

void sub_1000A0C48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  objc_sync_exit(v16);
  _Block_object_dispose(&a16, 8);
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}

void sub_1000A0C80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = WeakRetained;
    objc_sync_enter(v3);
    v4 = [v3 backgroundTaskAssertion];
    v5 = [v4 isEqual:*(*(*(a1 + 32) + 8) + 40)];

    if (v5)
    {
      [v3 _endBackgroundTask];
    }

    objc_sync_exit(v3);

    WeakRetained = v6;
  }
}

id sub_1000A0EF4(uint64_t a1)
{
  v2 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [*(a1 + 32) currentTransaction];
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%@ Did receive kill switch response. Cancelling all pending transactions", &v8, 0xCu);
  }

  v4 = [*(a1 + 32) clampsController];
  [v4 setNetworkingBlocked];

  v5 = *(a1 + 32);
  v6 = [MZKeyValueStoreError killSwitchErrorWithTransaction:0 underlyingError:0];
  [v5 _cancelAllPendingTransactions:v6];

  return [*(a1 + 32) setEnabled:0];
}

void sub_1000A10E0(uint64_t a1)
{
  v2 = [*(a1 + 32) clampsController];
  [v2 setUserCancelledSignIn];

  v3 = [*(a1 + 32) authenticationController];
  v4 = [v3 shouldAuthenticate];

  if (v4)
  {
    v5 = [*(a1 + 32) clampsController];
    [v5 setAuthenticationRequest];
  }

  if (*(a1 + 40))
  {
    v6 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) currentTransaction];
      v8 = *(a1 + 48);
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@ AMSURLSession authentication error - %@", &v9, 0x16u);
    }

    [*(a1 + 32) _transactionDidFail:*(a1 + 40) withError:*(a1 + 48)];
  }
}

id sub_1000A1C2C(uint64_t a1, int a2)
{
  [*(a1 + 32) setIsDirty:{objc_msgSend(*(a1 + 32), "isDirty") | a2}];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 finishedDeserializationForKey:v4];
}

void sub_1000A2C70(uint64_t a1)
{
  v2 = [*(a1 + 32) objectsInEntity:kMTEpisodeEntityName predicate:*(a1 + 40) sortDescriptors:&__NSArray0__struct];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000A2D28;
  v3[3] = &unk_1004DAA48;
  v4 = *(a1 + 48);
  [v2 enumerateObjectsUsingBlock:v3];
}

void sub_1000A2D28(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = +[NSMutableDictionary dictionary];
  if (+[MTStoreIdentifier isNotEmpty:](MTStoreIdentifier, "isNotEmpty:", [v9 storeTrackId]))
  {
    v4 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v9 storeTrackId]);
  }

  else
  {
    v4 = 0;
  }

  [v3 setObject:v4 forKeyedSubscript:@"episodeAdamId"];
  v5 = [v9 podcast];
  v6 = [v5 feedURL];
  [v3 setObject:v6 forKeyedSubscript:@"feedURL"];

  v7 = [v9 guid];
  [v3 setObject:v7 forKeyedSubscript:@"guid"];

  [v9 lastBookmarkedDate];
  v8 = [NSNumber numberWithDouble:?];
  [v3 setObject:v8 forKeyedSubscript:@"createdDate"];

  [*(a1 + 32) addObject:v3];
}

void sub_1000A365C(uint64_t a1)
{
  v35 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 32) count]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v2)
  {
    v3 = v2;
    v36 = *v40;
    do
    {
      v4 = 0;
      v33 = v3;
      do
      {
        if (*v40 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v39 + 1) + 8 * v4);
        v6 = [v5 objectForKeyedSubscript:@"episodeAdamId"];
        v7 = [v6 longLongValue];

        v8 = [v5 objectForKeyedSubscript:@"feedURL"];
        v9 = [v5 objectForKeyedSubscript:@"guid"];
        v10 = [v5 objectForKeyedSubscript:@"createdDate"];
        [v10 doubleValue];
        v12 = v11;

        if (![MTStoreIdentifier isEmpty:v7]|| (v9 ? (v13 = v8 == 0) : (v13 = 1), !v13))
        {
          if ([MTStoreIdentifier isNotEmpty:v7])
          {
            v14 = [*(a1 + 40) findEpisodeByStoreID:v7 inContext:*(a1 + 48)];
            if (v14)
            {
LABEL_18:
              if (v14)
              {
                v15 = [*(a1 + 40) storageProvider];
                [v15 unsafeBookmarkEpisode:v14 onTimestamp:v12];

                v16 = _MTLogCategoryCloudSync();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  v17 = [*(a1 + 40) logPrefix];
                  v18 = [v14 storeTrackId];
                  *buf = 138412546;
                  v44 = v17;
                  v45 = 2048;
                  v46 = v18;
                  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ Step 1: bookmark local episode: %lld", buf, 0x16u);
                }

                v19 = [v14 uuid];
                [v35 addObject:v19];
              }

              else
              {
                v14 = +[MTPodcast insertNewPodcastInManagedObjectContext:subscribed:feedUrl:showType:title:author:provider:imageUrl:description:](MTPodcast, "insertNewPodcastInManagedObjectContext:subscribed:feedUrl:showType:title:author:provider:imageUrl:description:", *(a1 + 48), 0, v8, +[MTPodcast defaultShowType], @"Untitled", 0, 0, 0, 0);
                [v14 setImporting:1];
                v19 = [v14 uuid];
                v20 = [MTEpisode insertNewEpisodeInManagedObjectContext:*(a1 + 48) canSendNotifications:*(a1 + 64)];
                [v20 setIsHidden:1];
                [v20 setPodcast:v14];
                [v20 setGuid:v9];
                [v20 setStoreTrackId:v7];
                v21 = [*(a1 + 40) storageProvider];
                [v21 unsafeBookmarkEpisode:v20 onTimestamp:v12];

                v22 = _MTLogCategoryCloudSync();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  v23 = [*(a1 + 40) logPrefix];
                  *buf = 138412546;
                  v44 = v23;
                  v45 = 2112;
                  v46 = v19;
                  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%@ Step 1: create podcast for bookmarking: %@", buf, 0x16u);
                }

                v24 = _MTLogCategoryCloudSync();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                {
                  v25 = [*(a1 + 40) logPrefix];
                  v26 = [v20 storeTrackId];
                  *buf = 138412546;
                  v44 = v25;
                  v45 = 2048;
                  v46 = v26;
                  _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%@ Step 1: bookmark episode: %lld", buf, 0x16u);
                }

                v27 = [v20 uuid];
                [v35 addObject:v27];

                if (([MTStoreIdentifier isEmpty:v7]& 1) == 0)
                {
                  v28 = +[_TtC18PodcastsFoundation21PodcastRequestManager sharedInstance];
                  v29 = [NSNumber numberWithLongLong:v7];
                  v37[0] = _NSConcreteStackBlock;
                  v37[1] = 3221225472;
                  v37[2] = sub_1000A3C88;
                  v37[3] = &unk_1004DAA98;
                  v37[4] = *(a1 + 40);
                  v38 = v19;
                  [v28 updatePodcastWithEpisodeAdamId:v29 completion:v37];
                }

                v3 = v33;
              }

              goto LABEL_30;
            }
          }

          else
          {
            v14 = 0;
          }

          if (v9 && v8)
          {
            v14 = [*(a1 + 40) findEpisodeByFeedURL:v8 guid:v9 inContext:*(a1 + 48)];
          }

          goto LABEL_18;
        }

LABEL_30:

        v4 = v4 + 1;
      }

      while (v3 != v4);
      v3 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v3);
  }

  v30 = [*(a1 + 40) predicateForBookmarksOnlyInLocalAndBeforeLastSyncWithRemoteBookmarksUUIDs:v35];
  v31 = [*(a1 + 48) objectsInEntity:kMTEpisodeEntityName predicate:v30 sortDescriptors:&__NSArray0__struct];
  [*(a1 + 40) checkPotentialLibraryDeletionIssueForRemoteBookmarksCount:objc_msgSend(*(a1 + 32) episodesToUnbookmarkCount:"count") newVersion:{objc_msgSend(v31, "count"), *(a1 + 56)}];
  v32 = [*(a1 + 40) storageProvider];
  [v32 unsafeRemoveFromBookmarksEpisodes:v31 context:*(a1 + 48)];
}

void sub_1000A3C88(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [*(a1 + 32) storageProvider];
    v9 = [v8 importContext];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000A3DA0;
    v13[3] = &unk_1004DAA70;
    v14 = v9;
    v15 = *(a1 + 40);
    v16 = v7;
    v10 = v5;
    v11 = *(a1 + 32);
    v17 = v10;
    v18 = v11;
    v12 = v9;
    [v12 performBlock:v13];
  }
}

void sub_1000A3DA0(uint64_t a1)
{
  v2 = [*(a1 + 32) podcastForUuid:*(a1 + 40)];
  [v2 setDisplayType:*(a1 + 48)];
  [v2 setStoreCollectionId:{objc_msgSend(*(a1 + 56), "longLongValue")}];
  v3 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 64) logPrefix];
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v8 = 138412802;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ Step 1.5: update bookmark show displayType: %@ , store collection id: %@", &v8, 0x20u);
  }

  [*(a1 + 32) saveInCurrentBlock];
  v7 = +[MTFeedUpdateManager sharedInstance];
  [v7 updatePodcastWithUUID:*(a1 + 40) userInitiated:0 forced:1 forceBootstrap:0 source:11 completion:0];
}

id sub_1000A4CEC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v4 && ([v3 objectForKey:NSUnderlyingErrorKey], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    if (v3)
    {
      v7 = [v3 mutableCopy];
    }

    else
    {
      v7 = objc_alloc_init(NSMutableDictionary);
    }

    v6 = v7;
    [v7 setObject:v4 forKey:NSUnderlyingErrorKey];
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

id sub_1000A4F20(uint64_t a1)
{
  if (a1 <= -2003)
  {
    if (a1 > -2009)
    {
      if (a1 > -2006)
      {
        if (a1 == -2005)
        {
          v1 = [NSString stringWithUTF8String:"MZKeyValueStoreErrorKillSwitch"];
          v2 = v1;
          v3 = 4294965291;
        }

        else if (a1 == -2004)
        {
          v1 = [NSString stringWithUTF8String:"MZKeyValueStoreErrorNetworkingBlocked"];
          v2 = v1;
          v3 = 4294965292;
        }

        else
        {
          v1 = [NSString stringWithUTF8String:"MZKeyValueStoreErrorUserClamp"];
          v2 = v1;
          v3 = 4294965293;
        }
      }

      else if (a1 == -2008)
      {
        v1 = [NSString stringWithUTF8String:"MZKeyValueStoreErrorKeyBagLoadFailure"];
        v2 = v1;
        v3 = 4294965288;
      }

      else if (a1 == -2007)
      {
        v1 = [NSString stringWithUTF8String:"MZKeyValueStoreErrorKeyBagKillSwitch"];
        v2 = v1;
        v3 = 4294965289;
      }

      else
      {
        v1 = [NSString stringWithUTF8String:"MZKeyValueStoreErrorDisabled"];
        v2 = v1;
        v3 = 4294965290;
      }

      goto LABEL_50;
    }

    if (a1 <= -4002)
    {
      if (a1 == -4003)
      {
        v1 = [NSString stringWithUTF8String:"MZKeyValueStoreErrorTimeout"];
        v2 = v1;
        v3 = 4294963293;
        goto LABEL_50;
      }

      if (a1 == -4002)
      {
        v1 = [NSString stringWithUTF8String:"MZKeyValueStoreErrorDelegateCancelled"];
        v2 = v1;
        v3 = 4294963294;
        goto LABEL_50;
      }
    }

    else
    {
      switch(a1)
      {
        case -4001:
          v1 = [NSString stringWithUTF8String:"MZKeyValueStoreErrorCancelled"];
          v2 = v1;
          v3 = 4294963295;
          goto LABEL_50;
        case -3002:
          v1 = [NSString stringWithUTF8String:"MZKeyValueStoreErrorMissingDomain"];
          v2 = v1;
          v3 = 4294964294;
          goto LABEL_50;
        case -3001:
          v1 = [NSString stringWithUTF8String:"MZKeyValueStoreErrorMissingURL"];
          v2 = v1;
          v3 = 4294964295;
          goto LABEL_50;
      }
    }
  }

  else if (a1 > -1006)
  {
    if (a1 <= -1003)
    {
      if (a1 == -1005)
      {
        v1 = [NSString stringWithUTF8String:"MZKeyValueStoreErrorStoreAccountUserCancelledSignedIn"];
        v2 = v1;
        v3 = 4294966291;
      }

      else if (a1 == -1004)
      {
        v1 = [NSString stringWithUTF8String:"MZKeyValueStoreErrorStoreAccountSessionExpired"];
        v2 = v1;
        v3 = 4294966292;
      }

      else
      {
        v1 = [NSString stringWithUTF8String:"MZKeyValueStoreErrorStoreAccountMismatch"];
        v2 = v1;
        v3 = 4294966293;
      }

      goto LABEL_50;
    }

    switch(a1)
    {
      case -1002:
        v1 = [NSString stringWithUTF8String:"MZKeyValueStoreErrorStoreAccountLoggedOut"];
        v2 = v1;
        v3 = 4294966294;
        goto LABEL_50;
      case -1001:
        v1 = [NSString stringWithUTF8String:"MZKeyValueStoreErrorNoStoreAccount"];
        v2 = v1;
        v3 = 4294966295;
        goto LABEL_50;
      case -1:
        v1 = [NSString stringWithUTF8String:"MZKeyValueStoreErrorUnknown"];
        v2 = v1;
        v3 = 0xFFFFFFFFLL;
        goto LABEL_50;
    }
  }

  else
  {
    if (a1 > -1009)
    {
      if (a1 == -1008)
      {
        v1 = [NSString stringWithUTF8String:"MZKeyValueStoreErrorValidation"];
        v2 = v1;
        v3 = 4294966288;
      }

      else if (a1 == -1007)
      {
        v1 = [NSString stringWithUTF8String:"MZKeyValueStoreErrorGeneric"];
        v2 = v1;
        v3 = 4294966289;
      }

      else
      {
        v1 = [NSString stringWithUTF8String:"MZKeyValueStoreErrorStoreAccountUserEnteredWrongCredentials"];
        v2 = v1;
        v3 = 4294966290;
      }

      goto LABEL_50;
    }

    switch(a1)
    {
      case -2002:
        v1 = [NSString stringWithUTF8String:"MZKeyValueStoreErrorServerClamp"];
        v2 = v1;
        v3 = 4294965294;
        goto LABEL_50;
      case -2001:
        v1 = [NSString stringWithUTF8String:"MZKeyValueStoreErrorAuthenticationClamp"];
        v2 = v1;
        v3 = 4294965295;
        goto LABEL_50;
      case -1009:
        v1 = [NSString stringWithUTF8String:"MZKeyValueStoreErrorClientClamp"];
        v2 = v1;
        v3 = 4294966287;
LABEL_50:
        v4 = [NSString stringWithFormat:@"Error Code = %@ (%d)", v1, v3];

        goto LABEL_51;
    }
  }

  v4 = [NSString stringWithFormat:@"Error Code = %ld", a1];
LABEL_51:

  return v4;
}

void sub_1000A67FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MTLogCategoryBackgroundFetching();
  v5 = os_signpost_id_generate(v4);

  v6 = _MTLogCategoryBackgroundFetching();
  v7 = v6;
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v8 = *(a1 + 32);
    *buf = 138412290;
    v23 = v8;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PodcastsBackgroundTask", "%{name=taskIdentifier}@", buf, 0xCu);
  }

  objc_initWeak(&location, v3);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000A6A80;
  v17[3] = &unk_1004DAB08;
  v18 = *(a1 + 32);
  v19 = *(a1 + 48);
  objc_copyWeak(v20, &location);
  v20[1] = v5;
  [v3 setExpirationHandler:v17];
  v9 = _MTLogCategoryBackgroundFetching();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    *buf = 138412290;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Executing task named %@", buf, 0xCu);
  }

  v11 = *(*(*(a1 + 48) + 8) + 40);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000A6BBC;
  v13[3] = &unk_1004DAB30;
  v14 = *(a1 + 32);
  v12 = v3;
  v15 = v12;
  v16 = v5;
  [v11 performWithCompletion:v13];

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
}

void sub_1000A6A54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

void sub_1000A6A80(uint64_t a1)
{
  v2 = _MTLogCategoryBackgroundFetching();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Task named %@ expired and was cancelled", &v8, 0xCu);
  }

  [*(a1 + 40) rescheduleTasksWithIdentifier:*(a1 + 32) completion:0];
  [*(*(*(a1 + 48) + 8) + 40) cancel];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained setTaskCompletedWithSuccess:0];

  v5 = _MTLogCategoryBackgroundFetching();
  v6 = v5;
  v7 = *(a1 + 64);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_END, v7, "PodcastsBackgroundTask", "CANCELLED", &v8, 2u);
  }
}

void sub_1000A6BBC(uint64_t a1, uint64_t a2)
{
  v4 = _MTLogCategoryBackgroundFetching();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 138412546;
    v10 = v5;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Task named %@ completed with success: %d", &v9, 0x12u);
  }

  [*(a1 + 40) rescheduleTasksWithIdentifier:*(a1 + 32) completion:0];
  [*(a1 + 48) setTaskCompletedWithSuccess:a2];
  v6 = _MTLogCategoryBackgroundFetching();
  v7 = v6;
  v8 = *(a1 + 56);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = 67109120;
    LODWORD(v10) = a2;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v8, "PodcastsBackgroundTask", "COMPLETE (%d)", &v9, 8u);
  }
}

void sub_1000A6D7C(id a1)
{
  v1 = +[BGTaskScheduler sharedScheduler];
  [v1 cancelAllTaskRequests];
}

void sub_1000A71EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location)
{
  objc_destroyWeak(&a34);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A7238(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v2 endBackgroundTask:{objc_msgSend(WeakRetained, "backgroundTaskId")}];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setBackgroundTaskId:UIBackgroundTaskInvalid];

  v5 = _MTLogCategoryBackgroundFetching();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Error: timed out scheduling background tasks.", v6, 2u);
  }
}

id sub_1000A7310(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  [v2 endBackgroundTask:{objc_msgSend(*(a1 + 32), "backgroundTaskId")}];

  v3 = *(a1 + 32);

  return [v3 setBackgroundTaskId:UIBackgroundTaskInvalid];
}

void sub_1000A7440(uint64_t a1)
{
  v2 = +[BGTaskScheduler sharedScheduler];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A74F8;
  v6[3] = &unk_1004DABA0;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  [v2 getPendingTaskRequestsWithCompletionHandler:v6];
}

void sub_1000A74F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v13;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = [*(*(&v12 + 1) + 8 * i) identifier];
      v10 = [v9 isEqualToString:*(a1 + 32)];

      v6 |= v10;
    }

    v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  }

  while (v5);
  if (v6)
  {
    v11 = *(a1 + 48);
    if (v11)
    {
      (*(v11 + 16))();
    }
  }

  else
  {
LABEL_11:
    [*(a1 + 40) rescheduleTasksWithIdentifier:*(a1 + 32) completion:*(a1 + 48)];
  }
}

uint64_t sub_1000A7714(uint64_t a1)
{
  v2 = +[BGTaskScheduler sharedScheduler];
  [v2 cancelTaskRequestWithIdentifier:*(a1 + 32)];

  if ([*(a1 + 48) isEnabled])
  {
    v3 = [[BGAppRefreshTaskRequest alloc] initWithIdentifier:*(a1 + 32)];
    [*(a1 + 48) earliestBeginTime];
    v4 = [NSDate dateWithTimeIntervalSinceNow:?];
    [v3 setEarliestBeginDate:v4];

    v5 = _MTLogCategoryBackgroundFetching();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      [*(a1 + 48) earliestBeginTime];
      *buf = 138412546;
      v15 = v6;
      v16 = 2048;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Scheduling task named %@ with earliest begin time %f", buf, 0x16u);
    }

    v8 = +[BGTaskScheduler sharedScheduler];
    v13 = 0;
    [v8 submitTaskRequest:v3 error:&v13];
    v9 = v13;

    if (v9)
    {
      v10 = _MTLogCategoryBackgroundFetching();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to schedule background task with error %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v3 = _MTLogCategoryBackgroundFetching();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 138412290;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Scheduling disabled for %@", buf, 0xCu);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000AC390(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _MTLogCategoryArtworkDownload();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v14 = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = v5;
      v10 = "Fetched artwork for podcast (%{public}@): %{public}@";
      v11 = v8;
      v12 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v11, v12, v10, &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 32);
    v14 = 138543618;
    v15 = v13;
    v16 = 2114;
    v17 = v6;
    v10 = "Unable to fetch artwork for podcast (%{public}@): %{public}@";
    v11 = v8;
    v12 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }
}

void sub_1000AD000(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = _MTLogCategoryFeedUpdateIngester();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to re-download episodes after subscription changed %@", &v7, 0xCu);
    }
  }

  v5 = _MTLogCategoryFeedUpdateIngester();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Re-downloaded episodes on priceType change for episode uuid: %@", &v7, 0xCu);
  }
}

void sub_1000AD7F4(uint64_t a1)
{
  v2 = [*(a1 + 32) descriptionCache];
  [v2 removeObjectForKey:*(a1 + 40)];
}

void sub_1000AD848(uint64_t a1)
{
  v2 = [*(a1 + 32) episodeCache];
  [v2 removeObjectForKey:*(a1 + 40)];
}

void sub_1000AD9B0(id a1)
{
  v3[0] = kEpisodeUuid;
  v3[1] = kEpisodeDescription;
  v3[2] = kEpisodePubDate;
  v3[3] = kEpisodeDuration;
  v3[4] = kEpisodePlayhead;
  v3[5] = kEpisodePlayState;
  v3[6] = kEpisodeVideo;
  v3[7] = kEpisodeAudio;
  v3[8] = kEpisodeExternalType;
  v3[9] = kEpisodeUti;
  v3[10] = kEpisodeByteSize;
  v1 = [NSArray arrayWithObjects:v3 count:11];
  v2 = qword_100583B40;
  qword_100583B40 = v1;
}

char *sub_1000AE428(uint64_t a1, uint64_t a2, char *a3)
{
  [*(a1 + 32) appendAttributedString:a2];
  result = [*(a1 + 40) count];
  if (result - 1 == a3)
  {
    if (*(a1 + 72) != 1)
    {
      return result;
    }

    v6 = (a1 + 64);
  }

  else
  {
    v6 = (a1 + 48);
    [*(a1 + 32) appendAttributedString:*(a1 + 48)];
    [*(a1 + 32) appendAttributedString:*(a1 + 56)];
  }

  v7 = *(a1 + 32);
  v8 = *v6;

  return [v7 appendAttributedString:v8];
}

void sub_1000AEDC0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a3 && ((*(a1 + 56) & 1) != 0 || [*(a1 + 32) length]))
  {
    v7 = *(a1 + 40);
    v10 = NSParagraphStyleAttributeName;
    v11 = v7;
    v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 56) & 1) != 0 || a3 || (*(a1 + 57))
  {
    v8 = [@"\n" stringByAppendingString:v5];

    v5 = v8;
  }

  v9 = [[NSAttributedString alloc] initWithString:v5 attributes:v6];
  [*(a1 + 48) appendAttributedString:v9];
}

char *sub_1000AF618(uint64_t a1, uint64_t a2, char *a3)
{
  [*(a1 + 32) appendAttributedString:a2];
  result = [*(a1 + 40) count];
  if (result - 1 == a3)
  {
    if (*(a1 + 72) != 1)
    {
      return result;
    }

    v6 = (a1 + 64);
  }

  else
  {
    v6 = (a1 + 48);
    [*(a1 + 32) appendAttributedString:*(a1 + 48)];
    [*(a1 + 32) appendAttributedString:*(a1 + 56)];
  }

  v7 = *(a1 + 32);
  v8 = *v6;

  return [v7 appendAttributedString:v8];
}

id sub_1000AF844(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) allObjects];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000AF914;
  v8[3] = &unk_1004DACD8;
  v9 = v3;
  v5 = v3;
  v6 = [v4 mt_compactMap:v8];

  return v6;
}

void sub_1000AFA34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1000AFA5C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AFAEC;
  block[3] = &unk_1004D9E80;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_1000AFAEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performDeferredIndexAll];
}

void sub_1000AFC94(uint64_t a1)
{
  if ([*(a1 + 32) hasBeenIndexed])
  {
    v2 = _MTLogCategorySpotlight();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[IndexAll] bailing.  already indexed...", &v15, 2u);
    }

    (*(*(a1 + 40) + 16))();
    return;
  }

  v3 = [*(a1 + 32) indexAllBatchGenerator];
  if (!v3 || (v4 = v3, [*(a1 + 32) indexAllBatchGenerator], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "finished"), v5, v4, (v6 & 1) != 0))
  {
    v7 = [*(a1 + 32) savedPartialUploadStateIndexPath];
    v8 = [[MTCoreSpotlightGlobalReindexer alloc] initWithStartingIndexPath:v7];
    [*(a1 + 32) setIndexAllBatchGenerator:v8];
    v9 = [*(a1 + 32) indexAllBatchGenerator];
    v10 = [v9 indexAllCompletions];
    v11 = objc_retainBlock(*(a1 + 40));
    [v10 addObject:v11];

    v12 = _MTLogCategorySpotlight();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[Indexing] *** scheduling indexAll in batches [%@] ***", &v15, 0xCu);
    }

    [*(a1 + 32) _onIndexingQueueHandleNextBatchOrUpdateRequest];
    goto LABEL_14;
  }

  v13 = _MTLogCategorySpotlight();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[IndexAll] bailing.  already running...", &v15, 2u);
  }

  if (*(a1 + 40))
  {
    v7 = [*(a1 + 32) indexAllBatchGenerator];
    v8 = [v7 indexAllCompletions];
    v14 = objc_retainBlock(*(a1 + 40));
    [(MTCoreSpotlightGlobalReindexer *)v8 addObject:v14];

LABEL_14:
  }
}

void sub_1000B0018(uint64_t a1)
{
  if ([*(a1 + 32) hasDeferredIndexAll])
  {
    v2 = _MTLogCategorySpotlight();
    if (os_log_type_enabled(&v2->super, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, &v2->super, OS_LOG_TYPE_DEFAULT, "[Update] Dropping index request (reason '%@') since we haven't yet received the initial indexAllData", &v6, 0xCu);
    }
  }

  else
  {
    v2 = [[MTCSUpdateIndexRequest alloc] initWithReason:*(a1 + 40) entityLoadingBlock:*(a1 + 56) searchableIndex:*(a1 + 48) completion:*(a1 + 64)];
    v4 = [*(a1 + 32) updateIndexRequests];
    [v4 addObject:v2];

    v5 = _MTLogCategorySpotlight();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Indexing] *** scheduling update [%@] ***", &v6, 0xCu);
    }

    [*(a1 + 32) _onIndexingQueueHandleNextBatchOrUpdateRequest];
  }
}

void sub_1000B039C(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000B0424;
  v2[3] = &unk_1004DAD70;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 enumerateObjectsUsingBlock:v2];
}

void sub_1000B0644(uint64_t a1)
{
  v2 = [*(a1 + 32) entityLoadingBlock];
  v3 = v2[2](v2, *(a1 + 40));

  v4 = _MTLogCategorySpotlight();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Indexing] *** handling update [BEGIN] [%@] ***", buf, 0xCu);
  }

  v6 = [*(a1 + 48) indexAllBatchGenerator];

  if (v6)
  {
    v7 = [v3 mt_compactMap:&stru_1004DADB0];
    v8 = [*(a1 + 48) indexAllBatchGenerator];
    [v8 markUpdateUnnecessaryForObjectIDs:v7];
  }

  v9 = [*(a1 + 48) annotator];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000B081C;
  v11[3] = &unk_1004DADD8;
  v10 = *(a1 + 56);
  v11[4] = *(a1 + 48);
  v12 = v10;
  v13 = *(a1 + 32);
  [MTCoreSpotlightUtil prepareSearchableItemsForObjectInArray:v3 annotator:v9 completion:v11];
}

void sub_1000B081C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000B09A8;
  v10[3] = &unk_1004D8C08;
  v11 = *(a1 + 48);
  [v4 searchableIndex:v5 indexSearchableItems:a2 completionHandler:v10];
  v6 = _MTLogCategorySpotlight();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 48);
    *buf = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Indexing] *** handling update [DONE] [%@] ***", buf, 0xCu);
  }

  v8 = [*(a1 + 32) indexingQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000B0A28;
  v9[3] = &unk_1004D8358;
  v9[4] = *(a1 + 32);
  dispatch_async(v8, v9);
}

void sub_1000B09A8(uint64_t a1)
{
  v2 = [*(a1 + 32) completion];

  if (v2)
  {
    v3 = [*(a1 + 32) completion];
    v3[2]();
  }
}

id sub_1000B0A28(uint64_t a1)
{
  [*(a1 + 32) setHasIndexingOperationInProgress:0];
  v2 = *(a1 + 32);

  return [v2 _onIndexingQueueHandleNextBatchOrUpdateRequest];
}

void sub_1000B0C0C(id *a1, void *a2, void *a3)
{
  v5 = a3;
  v17 = a2;
  v6 = a2;
  v7 = [NSArray arrayWithObjects:&v17 count:1];
  v8 = [a1[4] annotator];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000B0D64;
  v12[3] = &unk_1004DAE28;
  v9 = a1[5];
  v10 = a1[4];
  v13 = v9;
  v14 = v10;
  v15 = a1[6];
  v16 = v5;
  v11 = v5;
  [MTCoreSpotlightUtil prepareSearchableItemsForObjectInArray:v7 annotator:v8 completion:v12];
}

void sub_1000B0D64(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count] && !objc_msgSend(*(a1 + 32), "finished"))
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000B0E64;
    v7[3] = &unk_1004DAE00;
    v7[4] = v5;
    v8 = *(a1 + 32);
    v9 = *(a1 + 56);
    [v5 searchableIndex:v6 indexSearchableItems:v3 completionHandler:v7];
  }

  else
  {
    if ([*(a1 + 32) cancelled])
    {
      v4 = 2;
    }

    else
    {
      v4 = 4;
    }

    [*(a1 + 40) _didCompleteBatchProcessingBatchGenerator:*(a1 + 32) state:v4 error:0];
  }
}

void sub_1000B0E64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = *(a1 + 40);

    [v3 _didCompleteBatchProcessingBatchGenerator:v4 state:3 error:a2];
  }

  else
  {
    v5 = [v3 indexingQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000B0F38;
    v8[3] = &unk_1004D8798;
    v6 = *(a1 + 48);
    v7 = *(a1 + 32);
    v9 = v6;
    v10 = v7;
    dispatch_async(v5, v8);
  }
}

id sub_1000B0F38(uint64_t a1)
{
  if ([MTCoreSpotlightUtil indexInBatchForIndexPath:*(a1 + 32)]% 0x19)
  {
    [*(a1 + 40) savePartialUploadStateIndexPath:*(a1 + 32)];
  }

  [*(a1 + 40) setHasIndexingOperationInProgress:0];
  v2 = *(a1 + 40);

  return [v2 _onIndexingQueueHandleNextBatchOrUpdateRequest];
}

id sub_1000B10A8(uint64_t a1)
{
  v2 = _MTLogCategorySpotlight();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56) - 1;
    if (v3 > 3)
    {
      v4 = @"inactive";
    }

    else
    {
      v4 = *(&off_1004DAFF8 + v3);
    }

    v5 = *(a1 + 32);
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Indexing] *** completed indexAll (%@) in batches [%@] ***", &v9, 0x16u);
  }

  v6 = [*(a1 + 40) indexAllBatchGenerator];
  v7 = *(a1 + 32);

  if (v6 == v7)
  {
    [*(a1 + 40) setIndexAllBatchGenerator:0];
  }

  [*(a1 + 40) _onQueuePerformCompletionsForGenerator:*(a1 + 32) error:*(a1 + 48)];
  [*(a1 + 40) setHasIndexingOperationInProgress:0];
  return [*(a1 + 40) _onIndexingQueueHandleNextBatchOrUpdateRequest];
}

void sub_1000B14B8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  v5 = +[MTImageStore defaultStore];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B1580;
  v6[3] = &unk_1004DAEA0;
  v7 = *(a1 + 32);
  [v5 performWhenURLAvailableForImageForKey:v4 block:v6];
}

void sub_1000B1588(uint64_t a1)
{
  v2 = [*(a1 + 32) allObjects];
  v3 = [v2 componentsJoinedByString:{@", "}];
  v4 = [NSString stringWithFormat:@"Artwork Change (%@)", v3];

  v5 = *(a1 + 40);
  v6 = [v5 searchableIndex];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B1694;
  v7[3] = &unk_1004DAD00;
  v8 = *(a1 + 32);
  [v5 updateSearchableIndexWithReason:v4 searchableIndex:v6 entityLoadingBlock:v7 completion:0];
}

id sub_1000B1694(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableSet set];
  v5 = *(a1 + 32);
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000B183C;
  v16 = &unk_1004DAEF0;
  v17 = v3;
  v6 = v4;
  v18 = v6;
  v7 = v3;
  [v5 enumerateObjectsUsingBlock:&v13];
  v8 = _MTLogCategorySpotlight();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 count];
    v10 = [v6 valueForKey:@"uuid"];
    *buf = 67109378;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "update searchable index.  will update %d items (uuids = %@)", buf, 0x12u);
  }

  v11 = [v6 allObjects];

  return v11;
}

void sub_1000B183C(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) podcastForUuid:a2];
  if (v3)
  {
    v6 = v3;
    [*(a1 + 40) addObject:v3];
    v4 = *(a1 + 40);
    v5 = [v6 episodes];
    [v4 unionSet:v5];

    v3 = v6;
  }
}

void sub_1000B19E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000B1A94;
    v6[3] = &unk_1004DAF38;
    v7 = *(a1 + 48);
    [v3 indexSearchableItems:v4 completionHandler:v6];
  }

  else
  {
    v5 = *(*(a1 + 48) + 16);

    v5();
  }
}

void sub_1000B1B78(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [*(a1 + 32) searchableIndex];
    v3 = [*(a1 + 40) allObjects];
    [v4 deleteSearchableItemsWithIdentifiers:v3 completionHandler:0];
  }
}

void sub_1000B1DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B1E10(uint64_t a1)
{
  v2 = [*(a1 + 32) changesForEntityName:kMTPodcastEntityName];
  v3 = [v2 updatedObjectIDs];
  v4 = [NSMutableSet setWithSet:v3];

  v5 = [*(a1 + 32) changesForEntityName:kMTEpisodeEntityName];
  v6 = [v5 updatedObjectIDs];
  [v4 unionSet:v6];

  v7 = [*(a1 + 32) changesForEntityName:kMTPlaylistEntityName];
  v8 = [v7 updatedObjectIDs];
  [v4 unionSet:v8];

  v9 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v4 count]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(*(a1 + 48) + 8) + 40) existingObjectWithID:*(*(&v19 + 1) + 8 * v14) error:0];
        if (v15)
        {
          [v9 addObject:v15];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v16 = [v9 allObjects];
  v17 = [*(a1 + 40) annotator];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000B20AC;
  v18[3] = &unk_1004DAFB0;
  v18[4] = *(a1 + 40);
  [MTCoreSpotlightUtil prepareSearchableItemsForObjectInArray:v16 annotator:v17 completion:v18];
}

void sub_1000B20AC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 searchableIndex];
  [v2 searchableIndex:v4 indexSearchableItems:v3 completionHandler:0];
}

void sub_1000B21F0(uint64_t a1)
{
  v2 = _MTLogCategorySpotlight();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Indexing] *** received indexAll request ***", buf, 2u);
  }

  [*(a1 + 32) _onQueueCancelCurrentReindexAll];
  [*(a1 + 32) clearHasBeenIndexed];
  [*(a1 + 32) clearPartialUploadState];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B22E8;
  v5[3] = &unk_1004DAF38;
  v6 = *(a1 + 48);
  [v3 indexAllDataWithSearchableIndex:v4 completionHandler:v5];
}

void sub_1000B23FC(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableSet);
  v3 = objc_alloc_init(NSMutableSet);
  v20 = a1;
  v21 = objc_alloc_init(NSMutableSet);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        if ([v9 length] >= 2)
        {
          v10 = [v9 substringFromIndex:1];
          v11 = [v9 hasPrefix:@"p"];
          v12 = v2;
          if (v11 & 1) != 0 || (v13 = [v9 hasPrefix:@"e"], v12 = v3, (v13) || (v14 = objc_msgSend(v9, "hasPrefix:", @"s"), v12 = v21, v14))
          {
            [v12 addObject:v10];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v6);
  }

  v16 = *(v20 + 40);
  v15 = *(v20 + 48);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000B26A8;
  v24[3] = &unk_1004DAFD8;
  v25 = v2;
  v26 = v3;
  v27 = v21;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000B2940;
  v22[3] = &unk_1004D84D0;
  v23 = *(v20 + 56);
  v17 = v21;
  v18 = v3;
  v19 = v2;
  [v16 updateSearchableIndexWithReason:@"System Re-index request" searchableIndex:v15 entityLoadingBlock:v24 completion:v22];
}

id sub_1000B26A8(void *a1, void *a2)
{
  v3 = a2;
  v4 = [NSPredicate predicateWithFormat:@"%K IN %@", kPodcastFeedUrl, a1[4]];
  v5 = [MTCoreSpotlightUtil fetchRequestForIndexType:0 additionalPredicate:v4];
  v28[0] = v5;
  v6 = [NSPredicate predicateWithFormat:@"%K IN %@", kEpisodeGuid, a1[5]];
  v7 = [MTCoreSpotlightUtil fetchRequestForIndexType:1 additionalPredicate:v6];
  v28[1] = v7;
  v8 = [NSPredicate predicateWithFormat:@"%K IN %@", kPlaylistUuid, a1[6]];
  v9 = [MTCoreSpotlightUtil fetchRequestForIndexType:2 additionalPredicate:v8];
  v28[2] = v9;
  v10 = [NSArray arrayWithObjects:v28 count:3];

  v11 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        v22 = 0;
        v18 = [v3 executeFetchRequest:v17 error:&v22];
        v19 = v22;
        v20 = v19;
        if (v19)
        {
          [v19 logAndThrow:1];
        }

        if (v18)
        {
          [v11 addObjectsFromArray:v18];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  return v11;
}

uint64_t sub_1000B2940(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000B3340(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B33F4;
  v6[3] = &unk_1004DB090;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6[4] = *(a1 + 32);
  v7 = v5;
  v8 = *(a1 + 64);
  [v2 prepareIntentForEpisodeUuid:v3 stationUuid:v4 includeImage:1 includeStorePlatformData:1 completion:v6];
}

void sub_1000B33F4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [[INPlayMediaIntentResponse alloc] initWithCode:4 userActivity:0];
    v5 = [objc_alloc(objc_msgSend(*(a1 + 32) "interactionClass"))];
    v6 = [v3 mediaContainer];
    v7 = [v6 identifier];
    [v5 setGroupIdentifier:v7];

    [v5 _setDonatedBySiri:*(a1 + 48)];
    v8 = _MTLogCategorySiri();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Start to donate INInteraction: %@", buf, 0xCu);
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000B35C4;
    v11[3] = &unk_1004DB068;
    v12 = v5;
    v13 = *(a1 + 40);
    v9 = v5;
    [v9 donateInteractionWithCompletion:v11];
  }

  else
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, 0);
    }
  }
}

void sub_1000B35C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MTLogCategorySiri();
  v5 = v4;
  if (v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v11 = 138412290;
    v12 = v3;
    v6 = "Failed to donate Siri Action with error %@";
    v7 = v5;
    v8 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v9 = *(a1 + 32);
    v11 = 138412290;
    v12 = v9;
    v6 = "Success donating INInteraction: %@";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v7, v8, v6, &v11, 0xCu);
LABEL_7:

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v3 == 0);
  }
}

void sub_1000B3E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1000B3E7C(uint64_t a1)
{
  v2 = [*(a1 + 32) playlistForUuid:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000B3ECC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) podcastUuid];
  v4 = [v2 podcastForUuid:v3];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);
  v11 = [*(a1 + 48) episodeUuid];
  v8 = [v7 episodeForUuid:v11];
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_1000B45F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose(&a68, 8);
  _Block_object_dispose(&STACK[0x208], 8);
  _Block_object_dispose(&STACK[0x238], 8);
  _Block_object_dispose(&STACK[0x268], 8);
  _Block_object_dispose(&STACK[0x298], 8);
  _Block_object_dispose(&STACK[0x2C8], 8);
  _Block_object_dispose(&STACK[0x2E8], 8);
  _Block_object_dispose(&STACK[0x318], 8);
  _Block_object_dispose((v68 - 232), 8);
  _Block_object_dispose((v68 - 200), 8);
  _Block_object_dispose((v68 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1000B4690(uint64_t a1)
{
  v2 = [*(a1 + 32) episodeForUuid:*(a1 + 40)];
  if (v2)
  {
    v36 = v2;
    v3 = [v2 uuid];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = [v36 guid];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *(*(*(a1 + 64) + 8) + 24) = [v36 storeTrackId];
    v9 = [v36 title];
    v10 = *(*(a1 + 72) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = [v36 podcast];
    v13 = [v12 uuid];
    v14 = *(*(a1 + 80) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v16 = [v36 podcast];
    v17 = [v16 feedURL];
    v18 = *(*(a1 + 88) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    v20 = [v36 podcast];
    *(*(*(a1 + 96) + 8) + 24) = [v20 storeCollectionId];

    v21 = [v36 podcast];
    v22 = [v21 title];
    v23 = *(*(a1 + 104) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;

    v25 = [v36 podcast];
    v26 = [v25 author];
    v27 = *(*(a1 + 112) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;

    *(*(*(a1 + 120) + 8) + 24) = [v36 isPlayheadResumable];
    v29 = [*(a1 + 32) playlistForUuid:*(*(*(a1 + 128) + 8) + 40)];
    v30 = [v29 uuid];
    v31 = *(*(a1 + 128) + 8);
    v32 = *(v31 + 40);
    *(v31 + 40) = v30;

    v33 = [v29 title];
    v34 = *(*(a1 + 136) + 8);
    v35 = *(v34 + 40);
    *(v34 + 40) = v33;

    v2 = v36;
  }
}

void sub_1000B48A8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(*(*(a1 + 48) + 8) + 40) length];
  v11 = [*(a1 + 32) identifierComposer];
  v12 = v11;
  v13 = &_s8ShelfKit12MetricsLabelO17removeFromStationyA2CmFWC_ptr;
  if (v10)
  {
    v14 = [v11 universalPlaybackQueueIdentifierForStationUuid:*(*(*(a1 + 48) + 8) + 40) episodeUuid:*(*(*(a1 + 56) + 8) + 40) episodeGuid:*(*(*(a1 + 64) + 8) + 40) episodeStoreId:*(*(*(a1 + 72) + 8) + 24) podcastFeedUrl:*(*(*(a1 + 80) + 8) + 40)];

    v15 = [[INMediaItem alloc] initWithIdentifier:*(*(*(a1 + 48) + 8) + 40) title:*(*(*(a1 + 88) + 8) + 40) type:8 artwork:v7 artist:0 topics:0 namedEntities:0 privateMediaItemValueData:0];
    if (v15)
    {
LABEL_3:
      v37 = v8;
      v16 = [*(a1 + 32) peopleScoresFromMediaData:v9 keyedOnQid:0];
      v36 = v9;
      v17 = [*(a1 + 32) peopleScoresFromMediaData:v9 keyedOnQid:1];
      v18 = v7;
      v19 = [objc_alloc(v13[285]) initWithIdentifier:v14 title:*(*(*(a1 + 128) + 8) + 40) type:7 artwork:v7 artist:*(*(*(a1 + 112) + 8) + 40) topics:v17 namedEntities:v16 privateMediaItemValueData:0];
      v20 = v19;
      v21 = v14;
      if (v19)
      {
        v39 = v19;
        v22 = [NSArray arrayWithObjects:&v39 count:1];
      }

      else
      {
        v22 = &__NSArray0__struct;
      }

      v33 = [INPlayMediaIntent alloc];
      v34 = [NSNumber numberWithBool:*(*(*(a1 + 136) + 8) + 24)];
      v32 = [v33 initWithMediaItems:v22 mediaContainer:v15 playShuffled:&__kCFBooleanFalse playbackRepeatMode:1 resumePlayback:v34 playbackQueueLocation:3 playbackSpeed:&off_100502550 mediaSearch:0];

      v9 = v36;
      v8 = v37;
      v7 = v18;
      v14 = v21;
      goto LABEL_9;
    }
  }

  else
  {
    v38 = [v11 universalPlaybackQueueIdentifierForPodcastUuid:*(*(*(a1 + 96) + 8) + 40) podcastFeedUrl:*(*(*(a1 + 80) + 8) + 40) podcastStoreId:*(*(*(a1 + 104) + 8) + 24) episodeUuid:*(*(*(a1 + 56) + 8) + 40) episodeGuid:*(*(*(a1 + 64) + 8) + 40) episodeStoreId:*(*(*(a1 + 72) + 8) + 24) sampPlaybackOrder:0];

    v23 = [*(a1 + 32) identifierComposer];
    v24 = [v23 universalPlaybackQueueIdentifierForPodcastUuid:*(*(*(a1 + 96) + 8) + 40) podcastFeedUrl:*(*(*(a1 + 80) + 8) + 40) podcastStoreId:*(*(*(a1 + 104) + 8) + 24)];

    [*(a1 + 32) peopleScoresFromMediaData:v8 keyedOnQid:0];
    v26 = v25 = v9;
    [*(a1 + 32) peopleScoresFromMediaData:v8 keyedOnQid:1];
    v28 = v27 = v7;
    v29 = [*(a1 + 32) topicScoresFromMediaData:v8];
    v30 = v8;
    v31 = [v29 mutableCopy];

    [v31 addEntriesFromDictionary:v28];
    v15 = [[INMediaItem alloc] initWithIdentifier:v24 title:*(*(*(a1 + 112) + 8) + 40) type:6 artwork:v27 artist:*(*(*(a1 + 120) + 8) + 40) topics:v31 namedEntities:v26 privateMediaItemValueData:0];

    v8 = v30;
    v7 = v27;
    v14 = v38;

    v9 = v25;
    v13 = &_s8ShelfKit12MetricsLabelO17removeFromStationyA2CmFWC_ptr;

    if (v15)
    {
      goto LABEL_3;
    }
  }

  v32 = 0;
LABEL_9:
  v35 = *(a1 + 40);
  if (v35)
  {
    (*(v35 + 16))(v35, v32);
  }
}

void sub_1000B4CB8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 64) == 1)
  {
    v4 = *(*(*(a1 + 48) + 8) + 24);
    v5 = *(*(*(a1 + 56) + 8) + 24);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000B4DB8;
    v7[3] = &unk_1004DB158;
    v6 = *(a1 + 32);
    v9 = *(a1 + 40);
    v8 = v3;
    [v6 fetchMediaDataForEpisodeStoreId:v4 podcastStoreId:v5 completion:v7];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000B4DD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) donationQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B4E9C;
  v6[3] = &unk_1004D8520;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_1000B4E9C(uint64_t a1)
{
  v2 = [INImage imageWithImageData:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void sub_1000B4FF8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [NSData dataWithContentsOfURL:a2];
    v4 = *(*(a1 + 40) + 16);
  }

  else
  {
    v5 = *(a1 + 40);
    v3 = [*(a1 + 32) defaultPodcastArtworkData];
    v4 = *(v5 + 16);
  }

  v6 = v3;
  v4();
}

void sub_1000B5224(void *a1, void *a2)
{
  v9 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v9 objectForKeyedSubscript:a1[4]], v3 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v3, (isKindOfClass))
  {
    v5 = [v9 objectForKeyedSubscript:a1[4]];
  }

  else
  {
    v5 = &__NSDictionary0__struct;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v9 objectForKeyedSubscript:a1[5]], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v7 = objc_opt_isKindOfClass(), v6, (v7))
  {
    v8 = [v9 objectForKeyedSubscript:a1[5]];
  }

  else
  {
    v8 = &__NSDictionary0__struct;
  }

  (*(a1[6] + 16))();
}

void sub_1000B58C8(id a1)
{
  v1 = dispatch_queue_create(0, 0);
  v2 = qword_100583B58;
  qword_100583B58 = v1;
}

void sub_1000B5904(uint64_t a1)
{
  if (!qword_100583B68)
  {
    v2 = +[UIImage defaultPodcastArtwork];
    v3 = UIImageJPEGRepresentation(v2, 0.0);
    v4 = qword_100583B68;
    qword_100583B68 = v3;
  }

  if ((byte_100583B60 & 1) == 0)
  {
    byte_100583B60 = 1;
    v5 = dispatch_time(0, 1000000000);
    dispatch_after(v5, &_dispatch_main_q, &stru_1004DB238);
  }

  v6 = qword_100583B68;
  v7 = (*(*(a1 + 32) + 8) + 40);

  objc_storeStrong(v7, v6);
}

void sub_1000B59D4(id a1)
{
  byte_100583B60 = 0;
  v1 = qword_100583B68;
  qword_100583B68 = 0;
}

id sub_1000B5C2C(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = [[MTNotificationEpisode alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

id sub_1000B5EA0(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_1000B6114(id a1)
{
  v1 = objc_alloc_init(NSMutableDictionary);
  v2 = qword_100583B70;
  qword_100583B70 = v1;
}

uint64_t sub_1000B7FA4(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v4 = [*(a1 + 32) metadataItemsToCommitToKVSStorage];
    v5 = 48;
    goto LABEL_5;
  }

  if (a2 == 2)
  {
    v4 = [*(a1 + 32) metadataItemsToCommitToDataSource];
    v5 = 40;
LABEL_5:
    v6 = *(a1 + v5);
    v7 = [v6 itemIdentifier];
    [v4 setObject:v6 forKey:v7];
  }

  v8 = [*(a1 + 32) storageProvider];
  v9 = [*(a1 + 32) metadataItemsToCommitToDataSource];
  [v8 setNumMetadataItemsToCommitToDataSource:{objc_msgSend(v9, "count")}];

  v10 = [*(a1 + 32) storageProvider];
  v11 = [*(a1 + 32) metadataItemsToCommitToKVSStorage];
  [v10 setNumMetadataItemsToCommitToKVSStorage:{objc_msgSend(v11, "count")}];

  return a2;
}

id sub_1000B9134(uint64_t a1)
{
  [*(a1 + 32) artworkHeightForStyle:*(a1 + 40) sizeType:1];
  qword_100571768 = v2;
  result = [*(a1 + 32) artworkHeightForStyle:*(a1 + 40) sizeType:2];
  qword_100583B90 = v4;
  return result;
}

id sub_1000B9180(uint64_t a1)
{
  [*(a1 + 32) artworkHeightForStyle:*(a1 + 40) sizeType:1];
  qword_100571770 = v2;
  result = [*(a1 + 32) artworkHeightForStyle:*(a1 + 40) sizeType:2];
  qword_100583BA0 = v4;
  return result;
}

void sub_1000BA21C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000BA23C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained episode];
  [v6 setActionObject:v8];

  v11 = objc_loadWeakRetained((a1 + 32));
  v9 = [v11 moreAction];
  v10 = [v6 availableActions];

  [v9 showActionSheetWithActions:v10 fromButton:v5];
}

void sub_1000BAE04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (([WeakRetained updateDisabledReason] & 1) == 0 && objc_msgSend(WeakRetained, "disabledReason") == 2)
  {
    v1 = [WeakRetained episode];

    if (v1)
    {
      [WeakRetained updateIcons];
    }
  }
}

void sub_1000BB420(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 updateActionSheet];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v2 updatePopover];
  }
}

void sub_1000BB4F8(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 dismissActionSheet];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v2 dismissPopover];
  }
}

void sub_1000BBD60(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) moreButton];
  [v5 setFrame:{v1, v2, v3, v4}];
}

void sub_1000BBDCC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) descriptionButton];
  [v5 setFrame:{v1, v2, v3, v4}];
}

void sub_1000BF220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000BF244(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (v12)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = [WeakRetained episode];
    v8 = [v7 podcastUuid];
    v9 = [v5 isEqualToString:v8];

    if (v9)
    {
      v10 = objc_loadWeakRetained((a1 + 32));
      v11 = [v10 artworkView];
      [v11 setArtwork:v12];
    }
  }
}

void sub_1000C089C(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 scale];
  v3 = v2;

  qword_100571778 = v3;
}

id sub_1000C11A4(uint64_t a1)
{
  v2 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Migration assertion expired while operation is in progress!", v4, 2u);
  }

  return [*(a1 + 32) endBackgroundTask:{objc_msgSend(*(a1 + 40), "processAssertion")}];
}

void sub_1000C1224(uint64_t a1)
{
  v2 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Start CoreData migration.", buf, 2u);
  }

  v3 = +[MTLibraryMigrator runCoreDataMigration];
  v4 = _MTLogCategoryDatabase();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CoreData migration completed successfully.", buf, 2u);
    }

    v6 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Start data migration.", buf, 2u);
    }

    v7 = +[MTLibraryMigrator runDataMigration];
    v8 = _MTLogCategoryDatabase();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        *buf = 0;
        v10 = "Data migration has been completed.";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
      }
    }

    else if (v9)
    {
      *buf = 0;
      v10 = "No need to run data migration.";
      goto LABEL_16;
    }

    +[MTLibraryMigrator runImageStoreMigration];
    v11 = block;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    v12 = sub_1000C16FC;
    goto LABEL_18;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "CoreData migration failed.", buf, 2u);
  }

  v11 = v31;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v12 = sub_1000C1704;
LABEL_18:
  v11[2] = v12;
  v11[3] = &unk_1004D8358;
  v11[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v11);
  v13 = (clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) - *(a1 + 56)) / 0x3B9ACA00;
  v14 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  v15 = [v14 integerForKey:@"migrationAttemptCount"];

  v16 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  [v16 removeObjectForKey:@"migrationAttemptCount"];

  v30 = [PFAnalyticsEvent alloc];
  v17 = PFAnalyticsEventNameMigration;
  v34[0] = @"oldLibraryDataVersion";
  v18 = [NSNumber numberWithInteger:*(a1 + 64)];
  v35[0] = v18;
  v34[1] = @"newLibraryDataVersion";
  v19 = [NSNumber numberWithInteger:*(a1 + 72)];
  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  v35[1] = v19;
  v35[2] = v20;
  v34[2] = @"oldCoreDataVersion";
  v34[3] = @"newCoreDataVersion";
  v35[3] = v21;
  v34[4] = @"durationSeconds";
  v22 = [NSNumber numberWithUnsignedLongLong:v13];
  v35[4] = v22;
  v34[5] = @"success";
  v23 = [NSNumber numberWithBool:v3];
  v35[5] = v23;
  v34[6] = @"didBecomeActiveWhileMigrating";
  v24 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) didBecomeActiveWhileMigrating]);
  v35[6] = v24;
  v34[7] = @"migrationAttempts";
  v25 = [NSNumber numberWithInteger:v15];
  v35[7] = v25;
  v34[8] = @"hadCorruptDB";
  v26 = [NSNumber numberWithBool:*(a1 + 80)];
  v35[8] = v26;
  v27 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:9];
  v28 = [v30 initWithName:v17 payload:v27];

  v29 = objc_alloc_init(PFCoreAnalyticsChannel);
  [v29 sendEvent:v28];

  [IMMetrics endTimer:@"migration"];
}

void sub_1000C2454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1000C2478(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v8 = [*(a1 + 32) podcasts];
  v5 = [v8 valueForKey:kPodcastUuid];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_1000C5B2C(id a1, NSArray *a2)
{
  v2 = a2;
  v3 = [NSSet setWithArray:v2];
  v4 = +[MTDB sharedInstance];
  v5 = [v4 mainOrPrivateContext];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C5C2C;
  v9[3] = &unk_1004D94C8;
  v10 = v5;
  v11 = v3;
  v12 = v2;
  v6 = v2;
  v7 = v3;
  v8 = v5;
  [v8 performBlockAndWaitWithSave:v9];
}

void sub_1000C5C2C(uint64_t a1)
{
  v12 = [MTPlaylist predicateForFlag:4 isTrue:1];
  v2 = [*(a1 + 32) objectsInEntity:kMTPlaylistEntityName predicate:? sortDescriptors:?];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = [v7 podcasts];
        v10 = [v9 set];
        LOBYTE(v8) = [v8 isEqual:v10];

        if ((v8 & 1) == 0)
        {
          v11 = [NSOrderedSet orderedSetWithArray:*(a1 + 48)];
          [v7 setPodcasts:v11];

          [v7 setNeedsUpdate:1];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

id sub_1000C5DD4(uint64_t a1, void *a2)
{
  CFPreferencesSynchronize(@"com.apple.storebookkeeper", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);

  return [a2 _preferencesDidChange];
}

void sub_1000C6318(id a1, RBSAssertion *a2, NSError *a3)
{
  v3 = a3;
  v4 = _MTLogCategoryAsyncTask();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v9 = 138412290;
      v10 = v3;
      v6 = "Background assertion failed to acquire with error %@. App may sleep if it's in the background.";
      v7 = v4;
      v8 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, &v9, v8);
    }
  }

  else if (v5)
  {
    LOWORD(v9) = 0;
    v6 = "Background assertion was automatically invalidated. App may sleep if it's in the background.";
    v7 = v4;
    v8 = 2;
    goto LABEL_6;
  }
}

uint64_t sub_1000C6F30(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    return 1;
  }

  else
  {
    return [a2 isExplicit] ^ 1;
  }
}

uint64_t sub_1000C71D4(uint64_t a1, void *a2)
{
  v3 = [a2 itemWithPersistentID:*(a1 + 32)];
  v4 = +[MTMediaLibraryTransactionManager sharedInstance];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C72AC;
  v7[3] = &unk_1004DB560;
  v8 = v3;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v5 = v3;
  [v4 requestMediaLibraryWriteTransaction:v7];

  return 1;
}

uint64_t sub_1000C72AC(uint64_t a1)
{
  v2 = [*(a1 + 32) valueForProperty:MPMediaItemPropertyBookmarkTime];
  [v2 doubleValue];
  v4 = v3;

  if (*(a1 + 40) != v4)
  {
    v5 = *(a1 + 32);
    v6 = [NSNumber numberWithDouble:?];
    [v5 setValue:v6 forProperty:MPMediaItemPropertyBookmarkTime];
  }

  v7 = MPMediaItemPropertyHasBeenPlayed;
  v8 = [*(a1 + 32) valueForProperty:MPMediaItemPropertyHasBeenPlayed];
  v9 = [v8 BOOLValue];

  v10 = [MTLibraryLegacyUtil hasBeenPlayedForPlayState:*(a1 + 48)];
  if (v9 != v10)
  {
    v11 = *(a1 + 32);
    v12 = [NSNumber numberWithBool:v10];
    [v11 setValue:v12 forProperty:v7];
  }

  v13 = [MTLibraryLegacyUtil legacyPlayCountForPlayState:*(a1 + 48) playCount:*(a1 + 56)];
  v14 = [*(a1 + 32) valueForProperty:MPMediaItemPropertyPlayCount];
  v15 = [v14 longLongValue];

  v16 = [*(a1 + 32) valueForProperty:MPMediaItemPropertyLastPlayedDate];
  [v16 timeIntervalSinceNow];
  if (v13 != v15 && (!v16 || fabs(v17) > 5.0))
  {
    v18 = *(a1 + 32);
    v19 = +[NSDate date];
    [v18 setValue:v19 forProperty:MPMediaItemPropertyLastPlayedDate];

    v20 = *(a1 + 32);
    v21 = [NSNumber numberWithLongLong:v13];
    [v20 setValue:v21 forProperty:MPMediaItemPropertyPlayCount];

    if (!v13)
    {
      v31 = *(a1 + 32);
      v27 = [NSNumber numberWithLongLong:0];
      v30 = MPMediaItemPropertyPlayCountSinceSync;
      v28 = v31;
      v29 = v27;
      goto LABEL_12;
    }

    v22 = v13 - v15;
    if (v13 > v15)
    {
      v23 = MPMediaItemPropertyPlayCountSinceSync;
      v24 = [*(a1 + 32) valueForProperty:MPMediaItemPropertyPlayCountSinceSync];
      v25 = [v24 unsignedIntegerValue];

      v26 = *(a1 + 32);
      v27 = [NSNumber numberWithLongLong:&v25[v22]];
      v28 = v26;
      v29 = v27;
      v30 = v23;
LABEL_12:
      [v28 setValue:v29 forProperty:v30];
    }
  }

  return 1;
}

void sub_1000C757C(id a1)
{
  v1 = +[NSMutableSet set];
  v2 = qword_100583BD8;
  qword_100583BD8 = v1;
}

uint64_t sub_1000C7B5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v3 itemWithPersistentID:{objc_msgSend(*(*(&v16 + 1) + 8 * v9), "unsignedLongLongValue")}];
        if (v10)
        {
          [v4 addObject:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v11 = +[MTMediaLibraryTransactionManager sharedInstance];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000C7D4C;
    v14[3] = &unk_1004DB5C8;
    v15 = v4;
    [v11 requestMediaLibraryWriteTransaction:v14 completion:*(a1 + 40)];
  }

  else
  {
    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))(v12, 0);
    }
  }

  return 1;
}

uint64_t sub_1000C7D4C(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = +[MPMediaLibrary defaultMediaLibrary];
    [v2 removeItems:*(a1 + 32)];

    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          +[MTMediaLibraryUtil didDeletePersistentId:](MTMediaLibraryUtil, "didDeletePersistentId:", [*(*(&v9 + 1) + 8 * v7) persistentID]);
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }

  return 1;
}

void sub_1000C80E8(uint64_t a1)
{
  v1 = [*(a1 + 32) objectsInEntity:kMTEpisodeEntityName predicate:*(a1 + 40) sortDescriptors:0];
  if (![v1 count])
  {
    goto LABEL_32;
  }

  v2 = _MTLogCategoryUPPSync();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    v39 = [v1 count];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Syncing %{public}ld local episodes", buf, 0xCu);
  }

  v3 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v1 count]);
  v31 = objc_alloc_init(NSMutableSet);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v27 = v1;
  obj = v1;
  v4 = [obj countByEnumeratingWithState:&v34 objects:v46 count:16];
  v28 = v3;
  if (!v4)
  {
    v33 = 0;
    goto LABEL_23;
  }

  v5 = v4;
  v33 = 0;
  v32 = *v35;
  while (2)
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v35 != v32)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v34 + 1) + 8 * i);
      [v7 updateUPPIdentifierIfNeeded];
      v8 = objc_alloc_init(MTUniversalPlaybackPositionMediaItem);
      [(MTUniversalPlaybackPositionMediaItem *)v8 setEpisode:v7];
      v9 = [v7 metadataIdentifier];
      if (v9)
      {
        [v3 setObject:v8 forKey:v9];
        buf[0] = 0;
        (*(*(a1 + 56) + 16))();
        if (buf[0])
        {

          goto LABEL_23;
        }
      }

      v10 = [v7 podcast];
      v11 = [v10 feedURL];
      v12 = [v11 length];

      if (v12)
      {
        v13 = [v7 podcast];
        v14 = [v13 feedURL];
        [v31 addObject:v14];
      }

      else
      {
        v13 = _MTLogCategoryUPPSync();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        v14 = [v7 title];
        v15 = [v7 uuid];
        v16 = [v7 storeTrackId];
        v17 = [v7 metadataIdentifier];
        *buf = 138478595;
        v39 = v14;
        v40 = 2114;
        v41 = v15;
        v42 = 2049;
        v43 = v16;
        v44 = 2114;
        v45 = v17;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Skipping playState:<feedURL> sync for episode without a feedURL: %{private}@, %{public}@, %{private}lld, %{public}@", buf, 0x2Au);

        v3 = v28;
      }

LABEL_16:
      v18 = [v7 podcast];
      if (v18)
      {
        v19 = [v7 podcast];
        v20 = [v19 subscribed] ^ 1;

        v33 |= v20;
      }
    }

    v5 = [obj countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_23:

  v21 = _MTLogCategoryUPPSync();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v3 count];
    *buf = 134349314;
    v39 = v22;
    v40 = 2114;
    v41 = v3;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}lu Media Items to Sync: %{public}@", buf, 0x16u);
  }

  [*(a1 + 48) setMediaItems:v3];
  v23 = _MTLogCategoryUPPSync();
  v1 = v27;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v39 = v31;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Schedule an Episode Bookkeeper sync so we get our additional state for feedURLs: %{private}@", buf, 0xCu);
  }

  v24 = +[_TtC8Podcasts21SyncControllerFactory resolvedSyncController];
  [v24 scheduleEpisodeStatePutWithFeedUrls:v31];

  if (v33)
  {
    v25 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Schedule an NonFollowedShows Bookkeeper sync so we Set our updated lastDatePlayed values.", buf, 2u);
    }

    v26 = +[_TtC8Podcasts21SyncControllerFactory resolvedSyncController];
    [v26 syncNonFollowedShowsIfSyncDirty];
  }

LABEL_32:
}

void sub_1000C8648(id a1)
{
  v1 = objc_alloc_init(NSDateComponentsFormatter);
  v2 = qword_100583BE8;
  qword_100583BE8 = v1;

  [qword_100583BE8 setAllowedUnits:240];
  v3 = qword_100583BE8;

  [v3 setUnitsStyle:1];
}

void sub_1000C8A30(uint64_t a1)
{
  v1 = kMTEpisodeEntityName;
  v2 = *(a1 + 32);
  v3 = [NSPredicate predicateWithFormat:@"%K IN %@", kEpisodeMetadataIdentifier, *(a1 + 40)];
  v4 = [v2 objectsInEntity:v1 predicate:v3 sortDescriptors:0];

  v5 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v125 objects:v147 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v126;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v126 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v125 + 1) + 8 * i);
        v12 = [v11 metadataIdentifier];

        if (v12)
        {
          v13 = [v11 metadataIdentifier];
          [v5 setValue:v11 forKey:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v125 objects:v147 count:16];
    }

    while (v8);
  }

  v99 = v5;
  v94 = v6;

  v98 = +[NSMutableSet set];
  v96 = objc_alloc_init(NSMutableSet);
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v14 = a1;
  obj = *(a1 + 48);
  v104 = [obj countByEnumeratingWithState:&v121 objects:v146 count:16];
  if (v104)
  {
    v15 = 0;
    v103 = *v122;
    v97 = PFAnalyticsEventNameUPPMetadataInsert;
    do
    {
      v16 = 0;
      v95 = v15;
      v17 = v15;
      do
      {
        if (*v122 != v103)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v121 + 1) + 8 * v16);
        context = objc_autoreleasePoolPush();
        v108 = [MTUPPMetadata createOrUpdateUPPMetadataFromUPPRecord:v18 inCtx:*(v14 + 32)];
        v19 = [*(v14 + 56) mediaItems];
        v20 = [v18 itemIdentifier];
        v21 = [v19 objectForKey:v20];

        v106 = v21;
        if (v21)
        {
          v22 = [v21 episode];
          v23 = _MTLogCategoryUPPSync();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = [v22 title];
            v25 = [v22 uuid];
            v26 = [v22 storeTrackId];
            *buf = 138478851;
            v134 = v24;
            v135 = 2114;
            v136 = v25;
            v137 = 2049;
            v138 = *&v26;
            v139 = 2114;
            v140 = v18;
            v141 = 2114;
            v142 = *&v21;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Episode: %{private}@, UUID: %{public}@, adamID: %{private}lld, Metadata: %{public}@, extracted from media item: %{public}@", buf, 0x34u);
          }
        }

        else
        {
          v27 = [v18 itemIdentifier];
          v22 = [v99 objectForKey:v27];

          v23 = _MTLogCategoryUPPSync();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v28 = [v22 title];
            v29 = [v22 uuid];
            v30 = [v22 storeTrackId];
            *buf = 138478595;
            v134 = v28;
            v135 = 2114;
            v136 = v29;
            v137 = 2049;
            v138 = *&v30;
            v139 = 2114;
            v140 = v18;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Episode: %{private}@, UUID: %{public}@, adamID: %{private}lld, Metadata: %{public}@, extracted from local episode dictionary", buf, 0x2Au);
          }
        }

        ++v17;

        if (!v22)
        {
          v40 = _MTLogCategoryUPPSync();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v134 = v18;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Episode Not Found, Skip: %{public}@", buf, 0xCu);
          }

          goto LABEL_40;
        }

        [v22 metadataTimestamp];
        v32 = v31;
        [v18 timestamp];
        if (v32 < v33)
        {
          [objc_opt_class() updateEpisode:v22 withUPPMetadata:v108];
          v34 = [v22 playlists];
          [v98 unionSet:v34];

          v35 = [v22 podcast];
          v36 = [v35 feedURL];
          v37 = [v36 length];

          if (v37)
          {
            v38 = [v22 podcast];
            v39 = [v38 feedURL];
            [v96 addObject:v39];
            goto LABEL_31;
          }

          v38 = _MTLogCategoryUPPSync();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = [v22 title];
            *buf = 138477827;
            v134 = v39;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Skipping bookkeeper sync for episode without a feedURL: %{private}@", buf, 0xCu);
LABEL_31:
          }

          v119 = 0u;
          v120 = 0u;
          v117 = 0u;
          v118 = 0u;
          v40 = [*(v14 + 64) episodeObservers];
          v47 = [v40 countByEnumeratingWithState:&v117 objects:v145 count:16];
          if (v47)
          {
            v48 = v47;
            v101 = v17;
            v49 = *v118;
            do
            {
              for (j = 0; j != v48; j = j + 1)
              {
                if (*v118 != v49)
                {
                  objc_enumerationMutation(v40);
                }

                v51 = [*(*(&v117 + 1) + 8 * j) block];
                v52 = [v22 uuid];
                [v22 playhead];
                (v51)[2](v51, v52, v53);
              }

              v48 = [v40 countByEnumeratingWithState:&v117 objects:v145 count:16];
            }

            while (v48);
            v14 = a1;
            v17 = v101;
          }

LABEL_40:

          if (*(v14 + 80) == 1)
          {
            [v108 timestamp];
            v55 = v54;
            v56 = *(v14 + 72);
            [v108 bookmarkTime];
            if (v57 != 0.0 || [v108 playCount] || (objc_msgSend(v108, "hasBeenPlayed") & 1) != 0)
            {
              v102 = v17;
              v58 = v56 - v55;
              v59 = _MTLogCategoryMetrics();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
              {
                v60 = [v108 metadataIdentifier];
                v61 = *(a1 + 72);
                v62 = [NSDate dateWithTimeIntervalSinceReferenceDate:v55];
                v63 = [*(a1 + 64) _metricsDateFormatter];
                v64 = [v63 stringFromTimeInterval:v58];
                *buf = 138413570;
                v134 = v60;
                v135 = 2048;
                v136 = v61;
                v14 = a1;
                v137 = 2048;
                v138 = v55;
                v139 = 2112;
                v140 = v62;
                v141 = 2048;
                v142 = v58;
                v143 = 2112;
                v144 = v64;
                _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Metrics event for %@ - current time %f - creation date %f - %@ - insert delta %f - %@", buf, 0x3Eu);
              }

              v65 = objc_alloc_init(PFCoreAnalyticsChannel);
              v66 = [PFAnalyticsEvent alloc];
              v131 = @"metadataInsertDelta";
              v67 = [NSNumber numberWithDouble:v58];
              v132 = v67;
              v68 = [NSDictionary dictionaryWithObjects:&v132 forKeys:&v131 count:1];
              v69 = [v66 initWithName:v97 payload:v68];
              [v65 sendEvent:v69];

              v17 = v102;
            }

            else
            {
              v65 = _MTLogCategoryMetrics();
              if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
              {
                v71 = [v108 metadataIdentifier];
                *buf = 138412290;
                v134 = v71;
                _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Metrics event for %@ skipped. Empty update.", buf, 0xCu);
              }
            }
          }

          HIDWORD(v70) = -1030792151 * v17 + 85899344;
          LODWORD(v70) = HIDWORD(v70);
          if ((v70 >> 3) >= 0x147AE15)
          {
            [*(v14 + 32) saveInCurrentBlock];
          }

          goto LABEL_50;
        }

        v41 = _MTLogCategoryUPPSync();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = [v22 title];
          v43 = [v22 uuid];
          v44 = v17;
          v45 = [v22 storeTrackId];
          [v22 metadataTimestamp];
          *buf = 138478851;
          v134 = v42;
          v135 = 2114;
          v136 = v43;
          v137 = 2049;
          v138 = *&v45;
          v17 = v44;
          v139 = 2050;
          v140 = v46;
          v141 = 2114;
          v142 = *&v18;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Not updating episode because local T is newer: Episode: %{private}@, UUID: %{public}@, adamID: %{private}lld, episode.metadataTimestamp: %{public}f, remoteMetadata: %{public}@", buf, 0x34u);
        }

LABEL_50:
        objc_autoreleasePoolPop(context);
        v16 = v16 + 1;
      }

      while (v16 != v104);
      v15 = v95 + v104;
      v72 = [obj countByEnumeratingWithState:&v121 objects:v146 count:16];
      v104 = v72;
    }

    while (v72);
  }

  v73 = _MTLogCategoryUPPSync();
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v134 = v96;
    _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "Schedule an Episode Bookkeeper sync so we get our additional state for feedURLs: %{private}@", buf, 0xCu);
  }

  v74 = +[_TtC8Podcasts21SyncControllerFactory resolvedSyncController];
  [v74 scheduleEpisodeStateGetWithFeedUrls:v96];

  v75 = _MTLogCategoryUPPSync();
  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v134 = v98;
    _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Updating unplayed count for playlists: %{public}@", buf, 0xCu);
  }

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v76 = v98;
  v77 = [v76 countByEnumeratingWithState:&v113 objects:v130 count:16];
  if (v77)
  {
    v78 = v77;
    v79 = *v114;
    do
    {
      for (k = 0; k != v78; k = k + 1)
      {
        if (*v114 != v79)
        {
          objc_enumerationMutation(v76);
        }

        [*(*(&v113 + 1) + 8 * k) updateUnplayedCount];
      }

      v78 = [v76 countByEnumeratingWithState:&v113 objects:v130 count:16];
    }

    while (v78);
  }

  v81 = _MTLogCategoryUPPSync();
  if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
  {
    v82 = [*(a1 + 56) mediaItems];
    v83 = [v82 allValues];
    *buf = 138543362;
    v134 = v83;
    _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "Consolidating all remote media items to UPP database, so we never lose UPP data for episodes still not fetched from feed: %{public}@", buf, 0xCu);
  }

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v84 = [*(a1 + 56) mediaItems];
  v85 = [v84 allValues];

  v86 = [v85 countByEnumeratingWithState:&v109 objects:v129 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = 0;
    v89 = *v110;
    do
    {
      v90 = 0;
      v91 = v88 + 1;
      do
      {
        if (*v110 != v89)
        {
          objc_enumerationMutation(v85);
        }

        v92 = [MTUPPMetadata createOrUpdateUPPMetadataFromUPPMediaItem:*(*(&v109 + 1) + 8 * v90) inCtx:*(a1 + 32)];
        HIDWORD(v93) = 85899344 - 1030792151 * v91;
        LODWORD(v93) = HIDWORD(v93);
        if ((v93 >> 3) <= 0x147AE14)
        {
          [*(a1 + 32) saveInCurrentBlock];
        }

        v90 = v90 + 1;
        ++v91;
      }

      while (v87 != v90);
      v88 += v87;
      v87 = [v85 countByEnumeratingWithState:&v109 objects:v129 count:16];
    }

    while (v87);
  }
}

void sub_1000C9794(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = kMTEpisodeEntityName;
  v4 = [MTEpisode predicateForMetadataFirstSyncEligible:1];
  v5 = [v2 objectsInEntity:v3 predicate:v4 sortDescriptors:0];

  if ([v5 count])
  {
    v6 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = [v5 count];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Marking %lu episodes as metadataFirstSyncEligible = NO", buf, 0xCu);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v13 + 1) + 8 * v11);
          +[NSDate timeIntervalSinceReferenceDate];
          [v12 setMetadataTimestamp:?];
          [v12 setMetadataFirstSyncEligible:0];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    [*(a1 + 32) saveInCurrentBlock];
  }
}

void sub_1000CA0CC(uint64_t a1)
{
  v26 = [*(a1 + 32) episode];
  v1 = [v26 podcast];
  v2 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v1 storeCollectionId]);
  v19 = v1;
  v25 = [v1 currentFeedURL];
  v24 = [v26 guid];
  v23 = [v26 title];
  v3 = [v26 author];
  v4 = v26;
  if (!v3)
  {
    v4 = v1;
  }

  v21 = [v4 author];

  v22 = [v1 title];
  v5 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", +[MTLibraryLegacyUtil legacyPlayCountForPlayState:playCount:](MTLibraryLegacyUtil, "legacyPlayCountForPlayState:playCount:", [v26 playState], objc_msgSend(v26, "playCount")));
  v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", +[MTLibraryLegacyUtil hasBeenPlayedForPlayState:](MTLibraryLegacyUtil, "hasBeenPlayedForPlayState:", [v26 playState]));
  [v26 playhead];
  v7 = [NSNumber numberWithDouble:v6];
  [v26 metadataTimestamp];
  v8 = [NSNumber numberWithDouble:?];
  v9 = [NSNumber numberWithInt:3];
  [v26 importDate];
  v11 = v10;
  +[MTUniversalPlaybackPositionDataSource uppLastSyncTime];
  v17 = [NSNumber numberWithBool:v11 > v12];
  [v26 lastUserMarkedAsPlayedDate];
  v16 = [NSNumber numberWithDouble:?];
  [v26 lastDatePlayed];
  v15 = [NSNumber numberWithDouble:?];
  v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v26 playStateManuallySet]);
  v13 = [[NSMutableDictionary alloc] initWithCapacity:12];
  [v13 setValue:v2 forKey:@"storeItemAdamID"];
  [v13 setValue:v25 forKey:@"podcastURL"];
  [v13 setValue:v24 forKey:@"podcastGUID"];
  [v13 setValue:v23 forKey:@"title"];
  [v13 setValue:v21 forKey:@"artist"];
  [v13 setValue:v22 forKey:@"albumTitle"];
  [v13 setValue:v5 forKey:@"playCount"];
  [v13 setValue:v18 forKey:@"hasBeenPalyed"];
  [v13 setValue:v7 forKey:@"bookmarkTime"];
  [v13 setValue:v8 forKey:@"bookmarkMetadataTimestamp"];
  [v13 setValue:v9 forKey:@"mediaEntityType"];
  [v13 setValue:v17 forKey:@"isNew"];
  [v13 setValue:v16 forKey:@"lastUserMarkedAsPlayedDate"];
  [v13 setValue:v15 forKey:@"lastDatePlayed"];
  [v13 setValue:v14 forKey:@"playStateManuallySet"];
  [*(a1 + 32) setMediaItemDictionary:v13];
}

void sub_1000CA980(uint64_t a1, void *a2, void *a3)
{
  v20 = a2;
  v5 = a3;
  v6 = [v20 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [v20 object];
    v9 = [v8 objectForKey:@"data"];
    if (!v9)
    {
      v10 = [v8 objectForKey:@"results"];
      objc_opt_class();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 objectForKey:@"podcast-episodes"];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = [v10 objectForKey:@"podcast"];
        }

        v15 = v13;
      }

      else
      {
        v15 = 0;
      }

      objc_opt_class();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v15 firstObject];
      }

      else
      {
        v16 = 0;
      }

      objc_opt_class();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [v16 objectForKey:@"data"];
      }

      else
      {
        v17 = 0;
      }

      objc_opt_class();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v9 = v18;
    }

    v19 = *(a1 + 32);
    if (v19)
    {
      (*(v19 + 16))(v19, v9, 0);
    }
  }

  else
  {
    v14 = *(a1 + 32);
    if (v14)
    {
      (*(v14 + 16))(v14, 0, v5);
    }
  }
}

void sub_1000CB150(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) shareModeForShareFromMode:{objc_msgSend(a2, "selectedOptionIndex")}];
  v4 = [*(a1 + 32) dataSource];
  [v4 setCurrentShareMode:v3];

  v5 = [*(a1 + 32) dataSource];
  v6 = [MTShareUtil shareActivityItems:v5];

  [*(a1 + 32) _updateActivityItems:v6 applicationActivities:&__NSArray0__struct];
}

id sub_1000D0654()
{
  v0 = objc_opt_new();
  v1 = [v0 _disclosureChevronImage:0];

  return v1;
}

void sub_1000D27D0(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (MPMediaPlaylistPropertyName == v7)
  {
    [*(a1 + 32) setName:v5];
  }

  else if (MPMediaEntityPropertyPersistentID == v7)
  {
    [*(a1 + 32) setMediaLibraryId:v5];
  }

  else if (MPMediaPlaylistPropertyParentPersistentID == v7)
  {
    [*(a1 + 32) setParentMediaLibraryId:v5];
  }

  else if (MPMediaPlaylistPropertyIsFolder == v7)
  {
    [*(a1 + 32) setIsFolder:{objc_msgSend(v5, "BOOLValue")}];
  }

  else if (MPMediaPlaylistPropertyPlaylistAttributes == v7)
  {
    v6 = [v5 integerValue];
    [*(a1 + 32) setIsGenius:(v6 >> 2) & 1];
    [*(a1 + 32) setIsOnTheGo:v6 & 1];
    [*(a1 + 32) setIsSmart:(v6 >> 1) & 1];
  }

  else if (MPMediaPlaylistPropertyIsHidden == v7)
  {
    [*(a1 + 32) setIsHidden:{objc_msgSend(v5, "BOOLValue")}];
  }
}

void sub_1000D321C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000D3240(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [*(a1 + 32) currentFetchRequest];
  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

id *sub_1000D3474(id *result)
{
  if (result[7])
  {
    v1 = result;
    v2 = result[4];
    v3 = v2[2];
    v4 = v2[9];
    result = [result[5] count];
    if (v4 < result)
    {
      v6 = v3 - 1;
      *&v5 = 138412290;
      v22 = v5;
      do
      {
        v7 = objc_autoreleasePoolPush();
        v8 = *(v1[4] + 9);
        if (!(v8 % 0x19))
        {
          v9 = _MTLogCategorySpotlight();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = [NSNumber numberWithUnsignedInteger:*(v1[4] + 9)];
            v11 = [NSNumber numberWithInteger:v6];
            v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v1[5] count]);
            v13 = v1[4];
            *buf = 138413058;
            v25 = v10;
            v26 = 2112;
            v27 = v11;
            v28 = 2112;
            v29 = v12;
            v30 = 2112;
            v31 = v13;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[Indexing] *** batch processing - #%@ in batch %@ with %@ entities [%@]", buf, 0x2Au);
          }

          v8 = *(v1[4] + 9);
        }

        v14 = [v1[5] objectAtIndex:{v8, v22}];
        v15 = [v1[4] externallyProcessedMOIDs];
        v16 = [v15 containsObject:v14];

        if ((v16 & 1) == 0)
        {
          v17 = v1[6];
          v23 = 0;
          v18 = [v17 existingObjectWithID:v14 error:&v23];
          v19 = v23;
          if (v18)
          {
            v20 = +[MTCoreSpotlightUtil indexPathForObjectType:batch:indexInBatch:](MTCoreSpotlightUtil, "indexPathForObjectType:batch:indexInBatch:", *(v1[4] + 1), *(v1[4] + 2), (*(v1[4] + 9) + 1) % [v1[5] count]);
            (*(v1[7] + 2))();
          }

          else
          {
            v20 = _MTLogCategorySpotlight();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = v22;
              v25 = v19;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Indexing found a MOID with no backing object with error: %@", buf, 0xCu);
            }
          }

          [v1[6] refreshObject:v18 mergeChanges:0];
        }

        objc_autoreleasePoolPop(v7);
        v21 = ++*(v1[4] + 9);
        result = [v1[5] count];
      }

      while (v21 < result);
    }
  }

  return result;
}

uint64_t sub_1000D3990(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 externallyProcessedMOIDs];
  v5 = [v3 objectID];

  LODWORD(v3) = [v4 containsObject:v5];
  return v3 ^ 1;
}

void sub_1000D3AF4(id a1)
{
  v1 = dispatch_queue_create(0, 0);
  v2 = qword_100583C10;
  qword_100583C10 = v1;
}

uint64_t sub_1000D3B30(uint64_t result)
{
  v1 = qword_100571CC8;
  *(*(*(result + 32) + 8) + 24) = qword_100571CC8;
  qword_100571CC8 = v1 + 1;
  return result;
}

void sub_1000D3D44(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (MPMediaItemPropertyArtist == v11)
  {
    [*(a1 + 32) setArtist:v5];
    goto LABEL_52;
  }

  if (MPMediaItemPropertyPodcastURL == v11)
  {
    [*(a1 + 32) setFeedUrl:v5];
    goto LABEL_52;
  }

  if (MPMediaItemPropertyPodcastTitle == v11)
  {
    [*(a1 + 32) setPodcastTitle:v5];
    goto LABEL_52;
  }

  if (MPMediaItemPropertyPodcastPersistentID == v11)
  {
    [*(a1 + 32) setPodcastPersistentId:v5];
    goto LABEL_52;
  }

  if (MPMediaItemPropertyFilePath == v11)
  {
    v6 = [v5 length];
    v7 = *(a1 + 32);
    if (!v6)
    {
      [v7 setAssetUrl:0];
      goto LABEL_52;
    }

    v8 = [NSURL fileURLWithPath:v5];
    v9 = [v8 absoluteString];
    [v7 setAssetUrl:v9];

LABEL_30:
    goto LABEL_52;
  }

  if (MPMediaItemPropertyIsITunesU == v11)
  {
    [*(a1 + 32) setIsItunesU:{objc_msgSend(v5, "BOOLValue")}];
    goto LABEL_52;
  }

  if (MPMediaItemPropertyPersistentID == v11)
  {
    [*(a1 + 32) setPersistentId:v5];
    goto LABEL_52;
  }

  if (MPMediaItemPropertyFileSize == v11)
  {
    [*(a1 + 32) setByteSize:v5];
    goto LABEL_52;
  }

  if (MPMediaItemPropertyGenre == v11)
  {
    [*(a1 + 32) setCategory:v5];
    goto LABEL_52;
  }

  if (MPMediaItemPropertyPlaybackDuration == v11)
  {
    [*(a1 + 32) setDuration:v5];
    goto LABEL_52;
  }

  if (MPMediaItemPropertyTitle == v11)
  {
    [*(a1 + 32) setTitle:v5];
    goto LABEL_52;
  }

  if (MPMediaItemPropertyMediaType == v11)
  {
    if ([v5 integerValue] == 1024 || objc_msgSend(v5, "integerValue") == 4096)
    {
      v10 = &UTTypeMovie;
    }

    else
    {
      v10 = &UTTypeAudio;
    }

    v8 = [*v10 identifier];
    [*(a1 + 32) setUti:v8];
    goto LABEL_30;
  }

  if (MPMediaItemPropertyPodcastGUID == v11)
  {
    [*(a1 + 32) setGuid:v5];
  }

  else if (MPMediaItemPropertyReleaseDate == v11)
  {
    [*(a1 + 32) setPubDate:v5];
  }

  else if (MPMediaItemPropertyBookmarkTime == v11)
  {
    [*(a1 + 32) setPlayhead:v5];
  }

  else if (MPMediaItemPropertyHasBeenPlayed == v11)
  {
    [*(a1 + 32) setHasBeenPlayed:{objc_msgSend(v5, "BOOLValue")}];
  }

  else if (MPMediaItemPropertyPlayCount == v11)
  {
    [*(a1 + 32) setPlayCount:v5];
  }

  else if (MPMediaItemPropertyDownloadIdentifier == v11)
  {
    [*(a1 + 32) setDownloadIdentifier:v5];
  }

  else if (MPMediaItemPropertyRestricted == v11)
  {
    [*(a1 + 32) setIsExplicit:{objc_msgSend(v5, "BOOLValue")}];
  }

  else if (MPMediaItemPropertyStoreID == v11)
  {
    [*(a1 + 32) setStoreTrackId:v5];
  }

  else if (MPMediaItemPropertyStorePlaylistID == v11)
  {
    [*(a1 + 32) setStoreCollectionId:v5];
  }

  else if (MPMediaItemPropertyLastPlayedDate == v11)
  {
    [*(a1 + 32) setLastPlayedDate:v5];
  }

LABEL_52:
}

BOOL sub_1000D4170(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 itemWithPersistentID:{objc_msgSend(v2, "persistentID")}];

  v5 = [MTMLMediaItem isMissingAssetForItem:v4];
  if (v5)
  {
    v9 = @"persistantID";
    v6 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 persistentID]);
    v10 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [IMMetrics recordUserAction:@"medialibrary_missing_asset" dataSource:0 withData:v7];

    [v4 populateLocationPropertiesWithPath:0];
  }

  return v5;
}

void sub_1000D49E8(uint64_t a1)
{
  [*(a1 + 32) setHidden:1];
  [*(a1 + 40) _deleteSpotlightIdentifierForPlaylist:*(a1 + 32)];
  v2 = [*(a1 + 32) managedObjectContext];
  [v2 deletePlaylist:*(a1 + 32)];

  v3 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v3 setIsPlaylistSyncDirty:1];
}

void sub_1000D4BC4(uint64_t a1)
{
  v2 = [*(a1 + 32) playlistForUuid:*(a1 + 40)];
  [*(a1 + 48) deletePlaylist:v2];
}

void sub_1000D4D1C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = kMTPlaylistEntityName;
  v4 = +[MTPlaylist topLevelPlaylistsExcludingFoldersPredicate];
  v5 = [v2 objectsInEntity:v3 predicate:v4 sortDescriptors:0];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(a1 + 40) deletePlaylist:{*(*(&v11 + 1) + 8 * v10), v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

void sub_1000D5790(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v3 - 136));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_1000D57E8(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v6 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000D58F4;
  v8[3] = &unk_1004DB810;
  objc_copyWeak(&v10, &location);
  v11 = a3;
  v9 = *(a1 + 40);
  v7.receiver = v6;
  v7.super_class = MTStoreManifest;
  objc_msgSendSuper2(&v7, "load:", v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void sub_1000D58D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t sub_1000D58F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateLoadStatus:*(a1 + 48)];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_1000D5958(id *a1, void *a2)
{
  v3 = a2;
  [a1[4] timeIntervalSinceNow];
  v5 = v4;
  v6 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "StorePlatform lookup took: %f", buf, 0xCu);
  }

  buf[0] = 0;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v8 = [WeakRetained playbackOrder] == 2;

  v9 = objc_loadWeakRetained(a1 + 7);
  v10 = [v9 podcastAdamId];
  v11 = [v10 stringValue];
  v12 = [v3 objectForKeyedSubscript:v11];

  v13 = objc_loadWeakRetained(a1 + 7);
  v14 = [objc_opt_class() playerItemsFromPodcastStorePlatformDictionary:v12 oldestEpisode:v8 restricted:buf initiatedByAnotherUser:{objc_msgSend(a1[5], "initiatedByAnotherUser")}];
  v15 = objc_loadWeakRetained(a1 + 7);
  [v15 setItems:v14];

  v16 = a1[5];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000D5BB0;
  v18[3] = &unk_1004DB810;
  objc_copyWeak(&v20, a1 + 7);
  v21 = buf[0];
  v19 = a1[6];
  v17.receiver = v16;
  v17.super_class = MTStoreManifest;
  objc_msgSendSuper2(&v17, "load:", v18);

  objc_destroyWeak(&v20);
}

uint64_t sub_1000D5BB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateLoadStatus:*(a1 + 48)];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t sub_1000D5C14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateLoadStatus:0];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_1000D60E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  objc_destroyWeak((v10 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v11 - 56));
  _Unwind_Resume(a1);
}

void sub_1000D6120(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000D6228;
  v10[3] = &unk_1004DB8B0;
  objc_copyWeak(v13, (a1 + 48));
  v6 = v5;
  v7 = *(a1 + 56);
  v11 = v6;
  v13[1] = v7;
  v9 = *(a1 + 32);
  v8 = v9;
  v12 = v9;
  v14 = a3;
  [IMAVPlayer performOnMainQueue:v10];

  objc_destroyWeak(v13);
}

uint64_t sub_1000D6228(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained setItems:v2];

  v4 = *(a1 + 64);
  if (v4 >= [*(a1 + 32) count])
  {
    if (![*(a1 + 32) count])
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_12;
    }

    v5 = 0;
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else
  {
    v5 = *(a1 + 64);
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_12;
    }
  }

  v6 = v5;
  v7 = [*(a1 + 32) objectAtIndexedSubscript:v5];
  v8 = v7;
  if (v7)
  {
    v9 = *(*(*(a1 + 48) + 8) + 24);
    if (v9 != 0.0)
    {
      [v7 duration];
      if (v9 < v10)
      {
        [v8 setPlayhead:*(*(*(a1 + 48) + 8) + 24)];
      }
    }
  }

LABEL_12:
  v11 = objc_loadWeakRetained((a1 + 56));
  [v11 setCurrentIndex:v6];

  result = *(a1 + 40);
  if (result)
  {
    v13 = *(result + 16);

    return v13();
  }

  return result;
}

uint64_t sub_1000D69F0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    objc_opt_class();
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 1;
  }

  return isKindOfClass & 1;
}

void sub_1000D6D60(uint64_t a1)
{
  [*(a1 + 32) objectsInEntity:kMTEpisodeEntityName predicate:*(a1 + 40) propertiesToFetch:*(a1 + 48) batchSize:0];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v19 = 0u;
  v1 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v17;
    v4 = kEpisodeUuid;
    v13 = kEpisodeAssetURL;
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v17 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v16 + 1) + 8 * i);
        v7 = [v6 enclosureURL];
        if ([v7 length])
        {
          v8 = [v6 uuid];
          v9 = [v6 assetURL];
          v10 = [NSMutableDictionary dictionaryWithObject:v8 forKey:v4];
          if ([v9 length])
          {
            [v10 setObject:v9 forKey:v13];
          }

          v11 = *(a1 + 56);
          v12 = [v10 copy];
          [v11 setObject:v12 forKey:v7];
        }
      }

      v2 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v2);
  }
}

void sub_1000D7954(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v17 = a1;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v20;
    v10 = kMTPreferredArtworkSize;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = [v3 objectForKeyedSubscript:{*(*(&v19 + 1) + 8 * i), v17}];
        if (v12)
        {
          v18 = 0;
          v13 = [MTStorePlatformUtil storeMediaDictionaryFromStorePlatformDictionary:v12 artworkSize:&v18 restricted:v10];
          if (v13)
          {
            [v4 addObject:v13];
          }

          v8 |= v18;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v14 = [*(v17 + 48) storeMediaDictionariesToPlayerItems:v4 initiatedByAnotherUser:*(v17 + 56)];
  v15 = v14;
  v16 = *(v17 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, v14, ([v14 count] == 0) & v8);
  }
}