void sub_1488(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = &OBJC_METACLASS___MTShowsPreferencesDataStore;
  v1 = [objc_msgSendSuper2(&v3 allocWithZone:{0), "init"}];
  v2 = qword_22F70;
  qword_22F70 = v1;
}

void sub_1DDC(id a1)
{
  qword_22F80 = [[NMTPodcastsArtworkDataSource alloc] _initWithIsImageURLKey:0];

  _objc_release_x1();
}

void sub_1E64(id a1)
{
  qword_22F90 = [[NMTPodcastsArtworkDataSource alloc] _initWithIsImageURLKey:1];

  _objc_release_x1();
}

void sub_2408(uint64_t a1)
{
  v2 = +[MTImageStore defaultStore];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_24E0;
  v5[3] = &unk_1C7F0;
  v8 = *(a1 + 80);
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 40);
  v6 = v4;
  v7 = *(a1 + 56);
  [v2 asyncImageForKey:v3 size:v5 completionHandler:{*(a1 + 64), *(a1 + 72)}];
}

void sub_24E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = a3;
    v7 = [[PFStaticArtworkVisualIdenticality alloc] initWithArtworkIdentifier:v6];
    v8 = [MPArtworkRepresentation representationForVisualIdentity:v7 withSize:v5 image:*(a1 + 56), *(a1 + 64)];
    v9 = [*(a1 + 32) _cacheKeyForSize:v6 withBaseKey:{*(a1 + 56), *(a1 + 64)}];

    v10 = [*(a1 + 40) cache];
    [v10 setObject:v8 forKey:v9];

    v11 = *(a1 + 48);
    if (v11)
    {
      (*(v11 + 16))(v11, v8, 0);
    }
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = a3;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [NSString stringWithFormat:@"Failed to resize existing original for key: %@", v13, NSDebugDescriptionErrorKey];

    v21 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v18 = [NSError errorWithDomain:v15 code:1 userInfo:v17];

    v19 = *(a1 + 48);
    if (v19)
    {
      (*(v19 + 16))(v19, 0, v18);
    }
  }
}

void sub_26C8(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a1[6];
    v4 = *(a1[6] + 16);

    v4();
  }

  else
  {
    v5 = a1[4];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [NSString stringWithFormat:@"Failed to download original for key: %@", a1[5], NSDebugDescriptionErrorKey];
    v13 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v10 = [NSError errorWithDomain:v7 code:2 userInfo:v9];

    v11 = a1[7];
    if (v11)
    {
      (*(v11 + 16))(v11, 0, v10);
    }
  }
}

void sub_4070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_4090(uint64_t a1, unint64_t a2)
{
  [NSMutableArray arrayWithCapacity:a2];
  v23 = v22 = a2;
  v4 = [NSMutableSet setWithCapacity:a2];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained settings];

  v7 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v25;
    *&v8 = 138412290;
    v21 = v8;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [v12 podcast];
        v14 = [v13 uuid];
        v15 = [v13 artworkCatalog];
        v16 = v15;
        if (v14)
        {
          v17 = v15 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (v17)
        {
          v18 = _MTLogCategoryDefault();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v21;
            v29 = v12;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Station artwork will ignore podcast setting: %@", buf, 0xCu);
          }
        }

        else
        {
          v19 = [v13 isExplicit];
          if (!v19 || +[PFRestrictionsController isExplicitContentAllowed])
          {
            if (([v4 containsObject:v14] & 1) == 0)
            {
              [v23 addObject:v16];
              [v4 addObject:v14];
            }

            if ([v23 count] >= v22)
            {

              goto LABEL_23;
            }
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_23:

  return v23;
}

id sub_6158(uint64_t a1)
{
  [*(a1 + 32) reloadSpecifiers];
  v2 = *(a1 + 32);

  return [v2 _updateHeaderAndSyncProgress];
}

void sub_6CAC(id a1)
{
  v1 = objc_alloc_init(NSNumberFormatter);
  v2 = qword_22FA0;
  qword_22FA0 = v1;

  [qword_22FA0 setNumberStyle:1];
  v3 = qword_22FA0;
  v4 = +[NSLocale currentLocale];
  [v3 setLocale:v4];

  v5 = qword_22FA0;

  [v5 setMaximumFractionDigits:0];
}

void sub_8F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_8F3C(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v3 = [MTRecencyUtil upNextForPodcastUuid:v2 excludeExplicit:0 ctx:*(a1 + 40)];

  v4 = [v3 episodeUuid];
  v5 = [*(a1 + 32) nextEpisodeUuid];
  v6 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) uuid];
    v8 = [v3 episodeUuid];
    [v3 modifiedDate];
    v14 = 138543874;
    v15 = v7;
    v16 = 2114;
    v17 = v8;
    v18 = 2050;
    v19 = v9;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "UpNext result from update cursor position for podcast %{public}@: episodeUuid: %{public}@ at %{public}f", &v14, 0x20u);
  }

  v10 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v3 episodeUuid];
    v14 = 138543618;
    v15 = v5;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "UpNext result updating podcast nextEpisodeUuid from %{public}@ to %{public}@", &v14, 0x16u);
  }

  if (v5 != v4 && ([v5 isEqualToString:v4] & 1) == 0)
  {
    v12 = [*(a1 + 40) episodeForUuid:v4];
    v13 = [*(a1 + 40) episodeForUuid:v5];
    if ([v13 listenNowEpisode])
    {
      [v13 setListenNowEpisode:0];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    if (v12 && ([v12 listenNowEpisode] & 1) == 0)
    {
      [v12 setListenNowEpisode:1];
      *(*(*(a1 + 48) + 8) + 24) = 1;
      [v3 modifiedDate];
      [*(a1 + 32) setModifiedDate:?];
    }
  }

  if (*(a1 + 56) == 1 && *(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) saveInCurrentBlock];
  }
}

void sub_9334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_934C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_9364(uint64_t a1)
{
  v5 = [*(a1 + 32) podcastForFeedUrl:*(a1 + 40)];
  v2 = [v5 uuid];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_952C(uint64_t a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:kMTEpisodeEntityName];
  v3 = [*(a1 + 32) uuid];
  v4 = [MTEpisode predicateForEpisodesWithSeasonNumbersOnPodcastUuid:v3];
  [v2 setPredicate:v4];

  [v2 setFetchLimit:1];
  v5 = *(a1 + 40);
  v8 = 0;
  v6 = [v5 executeFetchRequest:v2 error:&v8];
  v7 = v8;
  *(*(*(a1 + 48) + 8) + 24) = [v6 count] != 0;

  [v7 logAndThrow:0];
}

void sub_E860(id a1, BSProcessHandle *a2, NSError *a3)
{
  v3 = a3;
  v4 = _MTLogCategoryBridge();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = v3;
      v6 = "Podcasts failed to launch due to %{public}@";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 12;
LABEL_6:
      _os_log_impl(&dword_0, v7, v8, v6, &v10, v9);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    v6 = "Podcasts launched successfully.";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEFAULT;
    v9 = 2;
    goto LABEL_6;
  }
}