uint64_t sub_100001B28(uint64_t a1, int a2, int a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, (a3 | a2) == 0);
  }

  return result;
}

void sub_100001E98(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = 134217984;
      v11 = a2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to set playback queue: MediaRemote command failed with MRSendCommandError: %ld", &v10, 0xCu);
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      (*(v6 + 16))(v6, 2, a2);
    }
  }

  else
  {
    v7 = [a3 firstObject];
    v8 = [v7 unsignedIntValue];
    if (v8)
    {
      v9 = _MTLogCategoryPlayback();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = 134217984;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to set playback queue: MediaRemote command failed with MRMediaRemoteCommandHandlerStatus: %ld", &v10, 0xCu);
      }
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_10000232C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100002348(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002360(uint64_t a1)
{
  v2 = [*(a1 + 32) podcastForUuid:*(a1 + 40)];
  if (v2)
  {
    v6 = v2;
    v3 = [v2 sortDescriptorsForSortOrder];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = v6;
  }
}

uint64_t sub_100002C2C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100002DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002E04(uint64_t a1)
{
  v2 = [*(a1 + 32) episodeForUuid:*(a1 + 40)];
  if (v2)
  {
    v8 = v2;
    v3 = [v2 uuid];
    v4 = [v3 length];

    v2 = v8;
    if (v4)
    {
      v5 = (*(*(a1 + 48) + 16))();
      v6 = *(*(a1 + 56) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v2 = v8;
    }
  }
}

void sub_100003040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000305C(uint64_t a1)
{
  v2 = [*(a1 + 32) podcastForUuid:*(a1 + 40)];
  if (v2)
  {
    v8 = v2;
    v3 = [v2 uuid];
    v4 = [v3 length];

    v2 = v8;
    if (v4)
    {
      v5 = (*(*(a1 + 48) + 16))();
      v6 = *(*(a1 + 56) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v2 = v8;
    }
  }
}

uint64_t sub_100003610(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000037C8(uint64_t a1)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100002348;
  v28 = sub_100002358;
  v29 = 0;
  v2 = +[MTDB sharedInstance];
  v3 = [v2 mainOrPrivateContext];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100003A4C;
  v19[3] = &unk_10002C890;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v20 = v4;
  v23 = v5;
  v6 = v3;
  v21 = v6;
  v22 = &v24;
  [v6 performBlockAndWait:v19];
  v7 = +[NSMutableSet set];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v25[5];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v30 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = [DatabaseEpisodePropertySource alloc];
        v14 = [(DatabaseEpisodePropertySource *)v13 initWithFetchedPropertyValues:v12, v15];
        if (v14)
        {
          [v7 addObject:v14];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v30 count:16];
    }

    while (v9);
  }

  (*(*(a1 + 40) + 16))();
  _Block_object_dispose(&v24, 8);
}

void sub_100003A4C(uint64_t a1)
{
  if ([*(a1 + 32) count] == 1)
  {
    v2 = [*(a1 + 32) firstObject];
    [MTEpisode predicateForEpisodeUuid:v2];
  }

  else
  {
    v2 = [NSSet setWithArray:*(a1 + 32)];
    [MTEpisode predicateForEpisodeUuids:v2];
  }
  v3 = ;

  v4 = [*(a1 + 56) propertiesToFetch];
  v5 = [v4 setByAddingObject:kEpisodeUuid];

  v6 = [*(a1 + 56) computedPropertiesToFetch];
  v7 = *(a1 + 40);
  v8 = kMTEpisodeEntityName;
  v9 = [v5 allObjects];
  v10 = [v7 objectDictionariesInEntity:v8 predicate:v3 sortDescriptors:0 propertiesToFetch:v9 includeObjectId:0];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100003C18;
  v15[3] = &unk_10002C868;
  v16 = *(a1 + 40);
  v17 = v6;
  v11 = v6;
  v12 = [v10 mt_compactMap:v15];
  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

id sub_100003C18(uint64_t a1, void *a2)
{
  v3 = kEpisodeUuid;
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = [*(a1 + 32) objectDictionaryForUuid:v5 entityName:kMTEpisodeEntityName byAddingComputedProperties:*(a1 + 40) toFetchedObjectDictionary:v4];

  return v6;
}

uint64_t sub_100004564(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100004CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100004CCC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isSourceOfTruth] & 1) != 0 || (objc_msgSend(*(a1 + 32), "backgroundEpisodeUuidFetches"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "uuid"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "containsObject:", v5), v5, v4, (v6))
  {
    v7 = 0;
  }

  else
  {
    v7 = [v3 uuid];
  }

  return v7;
}

void sub_100004D70(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004E3C;
  block[3] = &unk_10002C930;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
}

void sub_100004E3C(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 48));
  v2 = objc_loadWeakRetained(&to);
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) count];

    if (v4)
    {
      v5 = objc_loadWeakRetained(&to);
      v6 = [*(a1 + 32) allObjects];
      [v5 _didFetchEpisodePropertySources:v6];
    }
  }

  v7 = objc_loadWeakRetained(&to);
  v8 = [v7 backgroundEpisodeUuidFetches];
  [v8 removeObjectsInArray:*(a1 + 40)];

  objc_destroyWeak(&to);
}

id sub_100005120(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  v4 = [v2 containsObject:v3];

  return v4;
}

void sub_100006268(uint64_t a1)
{
  v2 = [*(a1 + 32) episodePropertySource];
  v3 = *(a1 + 40);

  if (v2 == v3)
  {
    v4 = [*(a1 + 32) artworkView];
    [v4 setImage:*(a1 + 48)];
  }
}

id *sub_100006480(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] applyImage:a2 fromSource:result[5]];
  }

  return result;
}

void sub_100006618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000663C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = [[NSData alloc] initWithContentsOfURL:v3];
      v6 = *(a1 + 40);
      v7 = [UIImage imageWithData:v5];
      (*(v6 + 16))(v6, v7);
    }

    else
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10000676C;
      v9[3] = &unk_10002CA78;
      v8 = *(a1 + 32);
      v10 = *(a1 + 40);
      [v8 placeholderWithSize:v9 completionHandler:{*(a1 + 56), *(a1 + 64)}];
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100006C98(uint64_t a1)
{
  [*(a1 + 32) _removeNotificationFromHistory];
  v2 = [*(a1 + 32) extensionContext];
  [v2 dismissNotificationContentExtension];
}

uint64_t sub_100006E90(uint64_t a1, void *a2)
{
  v3 = [a2 podcastUuid];
  v4 = [*(a1 + 32) podcastUuid];
  v5 = [v3 isEqualToString:v4];

  return v5 ^ 1;
}

id sub_100007E28(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

double sub_100007FF0(uint64_t a1, unint64_t a2)
{
  [*(a1 + 32) itemSize];
  v5 = v4;
  v6 = 0.0;
  if (a2 >= 2)
  {
    [*(a1 + 32) minimumLineSpacing];
    v6 = v7 * (a2 - 1);
  }

  [*(a1 + 32) sectionInset];
  v9 = v6 + v5 * a2 + v8;
  [*(a1 + 32) sectionInset];
  v11 = v9 + v10;
  [*(a1 + 32) footerReferenceSize];
  return v11 + v12;
}

id *sub_1000091D0(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] applyImage:a2 fromSource:result[5]];
  }

  return result;
}

void sub_1000092B0(uint64_t a1)
{
  v2 = [*(a1 + 32) episodePropertySource];
  v3 = *(a1 + 40);

  if (v2 == v3)
  {
    [*(a1 + 32) setHasLoadedCurrentImage:{objc_msgSend(*(a1 + 40), "isSourceOfTruth")}];
    v4 = [*(a1 + 32) artworkView];
    [v4 setImage:*(a1 + 48)];
  }
}

void sub_10000A370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000A394(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = [[NSData alloc] initWithContentsOfURL:v3];
      v6 = *(a1 + 40);
      v7 = [UIImage imageWithData:v5];
      (*(v6 + 16))(v6, v7);
    }

    else
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10000A4C4;
      v9[3] = &unk_10002CA78;
      v8 = *(a1 + 32);
      v10 = *(a1 + 40);
      [v8 placeholderWithSize:v9 completionHandler:{*(a1 + 56), *(a1 + 64)}];
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t sub_10000A880(uint64_t a1)
{
  qword_1000367C0 = [objc_alloc(*(a1 + 32)) _initDefault];

  return _objc_release_x1();
}

uint64_t sub_10000ACA8(uint64_t a1)
{
  qword_1000367D0 = [objc_alloc(*(a1 + 32)) _initDefault];

  return _objc_release_x1();
}

void sub_10000B2E0()
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000B460;
  v3[3] = &unk_10002CBC8;
  v4 = &stru_10002CB78;
  v5 = "preferredContentSizeCategory";
  [IMRuntimeUtil swizzleMethod:"preferredContentSizeCategory" onClass:objc_opt_class() withReplacementBlock:v3];
  v0[0] = _NSConcreteStackBlock;
  v0[1] = 3221225472;
  v0[2] = sub_10000B520;
  v0[3] = &unk_10002CBC8;
  v1 = &stru_10002CB78;
  v2 = "preferredContentSizeCategory";
  [IMRuntimeUtil swizzleMethod:"preferredContentSizeCategory" onClass:objc_opt_class() withReplacementBlock:v0];
}

NSString *__cdecl sub_10000B408(id a1, id a2, SEL a3, void *a4)
{
  v4 = (a4)(a2, a3);
  if (UIContentSizeCategoryIsAccessibilityCategory(v4))
  {
    v5 = UIContentSizeCategoryExtraExtraExtraLarge;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v5;
}

IMP sub_10000B460(uint64_t a1, uint64_t a2)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000B508;
  v9[3] = &unk_10002CBA0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10 = v4;
  v11 = v5;
  v12 = a2;
  v6 = objc_retainBlock(v9);
  v7 = imp_implementationWithBlock(v6);

  return v7;
}

IMP sub_10000B520(uint64_t a1, uint64_t a2)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000B5C8;
  v9[3] = &unk_10002CBA0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10 = v4;
  v11 = v5;
  v12 = a2;
  v6 = objc_retainBlock(v9);
  v7 = imp_implementationWithBlock(v6);

  return v7;
}

int64_t sub_10000BC14(id a1, MTLineCountLayoutGroupItem *a2, MTLineCountLayoutGroupItem *a3)
{
  v4 = a3;
  v5 = [(MTLineCountLayoutGroupItem *)a2 sharingPriority];
  v6 = [(MTLineCountLayoutGroupItem *)v4 sharingPriority];

  v7 = -1;
  if (v5 <= v6)
  {
    v7 = 1;
  }

  if (v5 == v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

void sub_10000D060(id a1, NSLayoutConstraint *a2, unint64_t a3, BOOL *a4)
{
  v6 = a2;
  v4 = [(NSLayoutConstraint *)v6 mt_dynamicTypeConstant];
  v5 = v4;
  if (v4)
  {
    [v4 currentConstant];
    [(NSLayoutConstraint *)v6 setConstant:?];
  }
}

id sub_10000D280(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSURLQueryItem alloc];
  v5 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v6 = [v4 initWithName:v3 value:v5];

  return v6;
}

id sub_10000D4D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSURLQueryItem alloc];
  v5 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v6 = [v4 initWithName:v3 value:v5];

  return v6;
}

void sub_10000D5E8(id a1)
{
  v3[0] = @"playPodcast";
  v3[1] = @"playPodcasts";
  v3[2] = @"playStation";
  v1 = [NSArray arrayWithObjects:v3 count:3];
  v2 = qword_1000367D8;
  qword_1000367D8 = v1;
}

void sub_10000DD70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000DD88(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000DDA0(uint64_t a1)
{
  v6 = [*(a1 + 32) episodeForUuid:*(a1 + 40)];
  v2 = [v6 podcast];
  v3 = [v2 uuid];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10000E6D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_10000E700(void *a1)
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

void sub_10000E960(id a1)
{
  v3[0] = @"playPodcasts";
  v3[1] = @"playPodcast";
  v4[0] = &off_10002DE48;
  v4[1] = &off_10002DE60;
  v3[2] = @"playStation";
  v4[2] = &off_10002DE78;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = qword_1000367F0;
  qword_1000367F0 = v1;
}

void sub_10000F710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v8 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 - 56));
  _Unwind_Resume(a1);
}

void sub_10000F744(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained podcastUuid];
  v4 = [v2 podcastForUuid:v3];
  *(*(*(a1 + 40) + 8) + 24) = v4 != 0;
}

void sub_10000F92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v8 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 - 56));
  _Unwind_Resume(a1);
}

void sub_10000F960(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained episodeUuid];
  v4 = [v2 episodeForUuid:v3];
  *(*(*(a1 + 40) + 8) + 24) = v4 != 0;
}

id sub_10000FB9C(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000FF88;
  v3[3] = &unk_10002CDA8;
  v3[4] = a1;
  v1 = sub_10000FF00(v3);

  return v1;
}

id sub_10000FF00(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (qword_1000367F8 == -1)
  {
    if (v1)
    {
LABEL_3:
      v3 = v2[2](v2, qword_100036800, qword_100036808);
      goto LABEL_6;
    }
  }

  else
  {
    sub_100015D74();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
LABEL_6:

  return v3;
}

id sub_10000FF88(uint64_t a1, void *a2)
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
    v7 = [v3 objectForKeyedSubscript:&off_10002DEA8];
  }

  v8 = v7;

  return v8;
}

void sub_100010028(id a1)
{
  v15[0] = &off_10002DEA8;
  v1 = [NSString stringWithFormat:@"%@%d", @"podcastAction-", 0];
  v16[0] = v1;
  v15[1] = &off_10002DEC0;
  v2 = [NSString stringWithFormat:@"%@%d", @"podcastAction-", 1];
  v16[1] = v2;
  v15[2] = &off_10002DED8;
  v3 = [NSString stringWithFormat:@"%@%d", @"podcastAction-", 2];
  v16[2] = v3;
  v15[3] = &off_10002DEF0;
  v4 = [NSString stringWithFormat:@"%@%d", @"podcastAction-", 3];
  v16[3] = v4;
  v15[4] = &off_10002DF08;
  v5 = [NSString stringWithFormat:@"%@%d", @"podcastAction-", 4];
  v16[4] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:5];
  v7 = qword_100036800;
  qword_100036800 = v6;

  v8 = +[NSMutableDictionary dictionary];
  v9 = qword_100036800;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100010250;
  v13[3] = &unk_10002CDF0;
  v14 = v8;
  v10 = v8;
  [v9 enumerateKeysAndObjectsUsingBlock:v13];
  v11 = [v10 copy];
  v12 = qword_100036808;
  qword_100036808 = v11;
}

void sub_100010778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100010790(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000107A8(uint64_t a1)
{
  v4 = [*(a1 + 32) podcastForUuid:*(a1 + 40)];
  if ([v4 hidden])
  {
    v2 = *(*(a1 + 48) + 8);
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;
  }
}

void sub_100010998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000109B0(uint64_t a1)
{
  v2 = [*(a1 + 32) podcastForUuid:*(a1 + 40)];
  v3 = *(a1 + 56);
  v6 = v2;
  if (*(a1 + 64) == 1)
  {
    if (*(a1 + 65))
    {
      [v2 newestUserEpisodeExcludingExplicit:v3];
    }

    else
    {
      [v2 oldestUserEpisodeExcludingExplicit:v3];
    }
  }

  else if (*(a1 + 65))
  {
    [v2 newestEpisodeExcludingUuid:0 excludeExplicit:v3];
  }

  else
  {
    [v2 oldestEpisodeExcludingExplicit:v3];
  }
  v4 = ;
  v5 = v4;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v4);
}

void sub_100010B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100010BAC(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) uuid];

  return _objc_release_x1();
}

id sub_100010CBC(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = [[MTNotificationEpisode alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

id sub_100010F30(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_100011560(id a1)
{
  v1 = dispatch_queue_create(0, 0);
  v2 = qword_100036818;
  qword_100036818 = v1;

  qword_100036820 = +[NSMutableDictionary dictionary];

  _objc_release_x1();
}

void sub_1000116C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000116D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000116F0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = [v3 identifier];
  v5 = [v4 objectForKeyedSubscript:v8];

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_1000117FC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v6 = [NSNumber numberWithUnsignedInteger:v3];
  v5 = [*(a1 + 32) identifier];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

uint64_t sub_100011AFC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100011B14(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  if (!v2)
  {
    v2 = *(v1 + 56);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

void sub_100011BE4(uint64_t a1)
{
  v2 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MTAccountController: Setting active account: %@", &v4, 0xCu);
  }

  objc_storeStrong((*(a1 + 40) + 56), *(a1 + 32));
}

void sub_100011DD0(uint64_t a1)
{
  if (([*(a1 + 32) hasFetchedInitialAccount] & 1) == 0)
  {
    [*(a1 + 32) _updateActiveAccount];
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(*(a1 + 32) + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100011E84;
    block[3] = &unk_10002CF18;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

void sub_1000121E8(uint64_t a1)
{
  v2 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MTAccountController: updating active account", v7, 2u);
  }

  v3 = [*(a1 + 32) _activeAccountBlocking];
  v4 = [v3 ams_DSID];
  v5 = [v4 stringValue];

  v6 = *(a1 + 40);
  if (v6 | v5 && ([v6 isEqualToString:v5] & 1) == 0)
  {
    dispatch_async(&_dispatch_main_q, &stru_10002CFE8);
  }

  [*(a1 + 32) setActiveAccount:v3];
  [*(a1 + 32) setHasFetchedInitialAccount:1];
}

void sub_1000122D4(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"AccountDSIDChangedNotification" object:0];
}

void sub_100012AEC(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = &OBJC_METACLASS___MTShowsPreferencesDataStore;
  v1 = [objc_msgSendSuper2(&v3 allocWithZone:{0), "init"}];
  v2 = qword_100036828;
  qword_100036828 = v1;
}

void sub_10001476C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100014784(uint64_t a1)
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "UpNext result from update cursor position for podcast %{public}@: episodeUuid: %{public}@ at %{public}f", &v14, 0x20u);
  }

  v10 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v3 episodeUuid];
    v14 = 138543618;
    v15 = v5;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "UpNext result updating podcast nextEpisodeUuid from %{public}@ to %{public}@", &v14, 0x16u);
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

void sub_100014B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100014B94(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100014BAC(uint64_t a1)
{
  v5 = [*(a1 + 32) podcastForFeedUrl:*(a1 + 40)];
  v2 = [v5 uuid];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100014D74(uint64_t a1)
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