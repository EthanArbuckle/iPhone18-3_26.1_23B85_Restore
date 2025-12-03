@interface CacheDeleteManagedAssets
- (BOOL)dateHasExpired:(id)expired interval:(double)interval;
- (BOOL)periodicShouldRemoveAsset:(id)asset;
- (CacheDeleteManagedAssets)initWithInfo:(id)info atUrgency:(int)urgency;
- (id)analytics;
- (id)assetsFromArray:(id)array forAmount:(unint64_t)amount;
- (id)sizeEligibleAsset:(int64_t *)asset;
- (id)sortAssets:(id)assets;
- (unint64_t)purgeAssets:(unint64_t)assets testObject:(id)object;
- (void)periodic:(id)periodic;
@end

@implementation CacheDeleteManagedAssets

- (CacheDeleteManagedAssets)initWithInfo:(id)info atUrgency:(int)urgency
{
  infoCopy = info;
  v17.receiver = self;
  v17.super_class = CacheDeleteManagedAssets;
  v8 = [(CacheDeleteManagedAssets *)&v17 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v8->_info, info);
  v10 = [infoCopy objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v11 = evaluateStringProperty();
  volume = v9->_volume;
  v9->_volume = v11;

  if (!v9->_volume)
  {
    v14 = CDGetLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16[0] = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Missing volume parameter", v16, 2u);
    }

    goto LABEL_8;
  }

  v9->_urgency = urgency;
  if ((urgency - 5) < 0xFFFFFFFC)
  {
LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

LABEL_4:
  v13 = v9;
LABEL_9:

  return v13;
}

- (BOOL)dateHasExpired:(id)expired interval:(double)interval
{
  if (!expired)
  {
    return 0;
  }

  expiredCopy = expired;
  v6 = +[NSDate date];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;

  [expiredCopy timeIntervalSinceReferenceDate];
  v10 = v9;

  return v8 - v10 > interval && v8 >= v10;
}

- (BOOL)periodicShouldRemoveAsset:(id)asset
{
  assetCopy = asset;
  expirationDate = [assetCopy expirationDate];
  v6 = [(CacheDeleteManagedAssets *)self dateHasExpired:expirationDate interval:0.0];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    downloadCompletionDate = [assetCopy downloadCompletionDate];

    if (downloadCompletionDate)
    {
      v7 = 0;
    }

    else
    {
      downloadStartDate = [assetCopy downloadStartDate];
      v7 = [(CacheDeleteManagedAssets *)self dateHasExpired:downloadStartDate interval:2592000.0];
    }
  }

  return v7;
}

- (id)sortAssets:(id)assets
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __39__CacheDeleteManagedAssets_sortAssets___block_invoke;
  v5[3] = &unk_10000C5A8;
  v5[4] = self;
  v3 = [assets sortedArrayUsingComparator:v5];

  return v3;
}

uint64_t __39__CacheDeleteManagedAssets_sortAssets___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  LODWORD(v6) = [v7 purgeabilityScoreAtUrgency:{objc_msgSend(*(a1 + 32), "urgency")}];
  if (v6 < [v8 purgeabilityScoreAtUrgency:{objc_msgSend(*(a1 + 32), "urgency")}])
  {
    v9 = CDGetLogHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
LABEL_3:
      v10 = -1;
      goto LABEL_7;
    }

    v31 = 67109634;
    v32 = 120;
    v33 = 2112;
    v34 = v7;
    v35 = 2112;
    v36 = v8;
LABEL_26:
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "SORT %d\nassetOne: %@\nassetTwo: %@", &v31, 0x1Cu);
    goto LABEL_3;
  }

  v11 = [v7 purgeabilityScoreAtUrgency:{objc_msgSend(*(a1 + 32), "urgency")}];
  if (v11 > [v8 purgeabilityScoreAtUrgency:{objc_msgSend(*(a1 + 32), "urgency")}])
  {
    v9 = CDGetLogHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
LABEL_6:
      v10 = 1;
      goto LABEL_7;
    }

    v31 = 67109634;
    v32 = 123;
    v33 = 2112;
    v34 = v7;
    v35 = 2112;
    v36 = v8;
LABEL_33:
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "SORT %d\nassetOne: %@\nassetTwo: %@", &v31, 0x1Cu);
    goto LABEL_6;
  }

  v13 = [v7 expirationDate];

  v14 = [v8 expirationDate];

  if (v13)
  {
    if (!v14)
    {
      v9 = CDGetLogHandle();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_3;
      }

      v31 = 67109634;
      v32 = 137;
      v33 = 2112;
      v34 = v7;
      v35 = 2112;
      v36 = v8;
      goto LABEL_26;
    }

    v15 = [v7 expirationDate];
    v16 = [v8 expirationDate];
    v10 = [v15 compare:v16];

    if (v10)
    {
      v9 = CDGetLogHandle();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_7;
      }

      v31 = 67109634;
      v32 = 133;
      v33 = 2112;
      v34 = v7;
      v35 = 2112;
      v36 = v8;
LABEL_13:
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "SORT %d\nassetOne: %@\nassetTwo: %@", &v31, 0x1Cu);
      goto LABEL_7;
    }
  }

  else if (v14)
  {
    v9 = CDGetLogHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_6;
    }

    v31 = 67109634;
    v32 = 141;
    v33 = 2112;
    v34 = v7;
    v35 = 2112;
    v36 = v8;
    goto LABEL_33;
  }

  v17 = [v7 priority];
  if (v17 < [v8 priority])
  {
    v9 = CDGetLogHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_3;
    }

    v31 = 67109634;
    v32 = 147;
    v33 = 2112;
    v34 = v7;
    v35 = 2112;
    v36 = v8;
    goto LABEL_26;
  }

  v18 = [v7 priority];
  if (v18 > [v8 priority])
  {
    v9 = CDGetLogHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_6;
    }

    v31 = 67109634;
    v32 = 150;
    v33 = 2112;
    v34 = v7;
    v35 = 2112;
    v36 = v8;
    goto LABEL_33;
  }

  v19 = [v7 consumedDate];

  v20 = [v8 consumedDate];

  if (v19)
  {
    if (!v20)
    {
      v9 = CDGetLogHandle();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_3;
      }

      v31 = 67109634;
      v32 = 164;
      v33 = 2112;
      v34 = v7;
      v35 = 2112;
      v36 = v8;
      goto LABEL_26;
    }

    v21 = [v7 consumedDate];
    v22 = [v8 consumedDate];
    v10 = [v21 compare:v22];

    if (v10)
    {
      v9 = CDGetLogHandle();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_7;
      }

      v31 = 67109634;
      v32 = 160;
      v33 = 2112;
      v34 = v7;
      v35 = 2112;
      v36 = v8;
      goto LABEL_13;
    }
  }

  else if (v20)
  {
    v9 = CDGetLogHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_6;
    }

    v31 = 67109634;
    v32 = 168;
    v33 = 2112;
    v34 = v7;
    v35 = 2112;
    v36 = v8;
    goto LABEL_33;
  }

  v23 = [v7 downloadCompletionDate];

  v24 = [v8 downloadCompletionDate];

  if (v23)
  {
    if (!v24)
    {
      v9 = CDGetLogHandle();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_3;
      }

      v31 = 67109634;
      v32 = 182;
      v33 = 2112;
      v34 = v7;
      v35 = 2112;
      v36 = v8;
      goto LABEL_26;
    }

    v25 = [v7 downloadCompletionDate];
    v26 = [v8 downloadCompletionDate];
    v10 = [v25 compare:v26];

    if (v10)
    {
      v9 = CDGetLogHandle();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_7;
      }

      v31 = 67109634;
      v32 = 178;
      v33 = 2112;
      v34 = v7;
      v35 = 2112;
      v36 = v8;
      goto LABEL_13;
    }
  }

  else if (v24)
  {
    v9 = CDGetLogHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_6;
    }

    v31 = 67109634;
    v32 = 186;
    v33 = 2112;
    v34 = v7;
    v35 = 2112;
    v36 = v8;
    goto LABEL_33;
  }

  v27 = [v7 downloadStartDate];

  v28 = [v8 downloadStartDate];

  if (v27)
  {
    if (!v28)
    {
      v9 = CDGetLogHandle();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_3;
      }

      v31 = 67109634;
      v32 = 200;
      v33 = 2112;
      v34 = v7;
      v35 = 2112;
      v36 = v8;
      goto LABEL_26;
    }

    v29 = [v7 downloadStartDate];
    v30 = [v8 downloadStartDate];
    v10 = [v29 compare:v30];

    if (v10)
    {
      v9 = CDGetLogHandle();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_7;
      }

      v31 = 67109634;
      v32 = 196;
      v33 = 2112;
      v34 = v7;
      v35 = 2112;
      v36 = v8;
      goto LABEL_13;
    }
  }

  else if (v28)
  {
    v9 = CDGetLogHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_6;
    }

    v31 = 67109634;
    v32 = 204;
    v33 = 2112;
    v34 = v7;
    v35 = 2112;
    v36 = v8;
    goto LABEL_33;
  }

  v9 = CDGetLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v31 = 67109634;
    v32 = 209;
    v33 = 2112;
    v34 = v7;
    v35 = 2112;
    v36 = v8;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "SORT %d\nassetOne: %@\nassetTwo: %@", &v31, 0x1Cu);
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (id)sizeEligibleAsset:(int64_t *)asset
{
  v5 = +[NSMutableArray array];
  info = [(CacheDeleteManagedAssets *)self info];
  v7 = CacheDeleteUserManagedAssetsPurgeable();

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (kCFBooleanTrue == v7)
  {
    v9 = v5;
    CacheManagementEnumerateAssets();
  }

  if (asset)
  {
    *asset = v11[3];
  }

  _Block_object_dispose(&v10, 8);

  return v5;
}

uint64_t __46__CacheDeleteManagedAssets_sizeEligibleAsset___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 purgeabilityScoreAtUrgency:{objc_msgSend(*(a1 + 32), "urgency")}];
  if (v4 && v4 <= [*(a1 + 32) urgency])
  {
    v5 = CDGetLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "purgeable: %@", &v7, 0xCu);
    }

    [*(a1 + 40) addObject:v3];
    *(*(*(a1 + 48) + 8) + 24) += [v3 size];
  }

  return 1;
}

- (id)assetsFromArray:(id)array forAmount:(unint64_t)amount
{
  arrayCopy = array;
  v6 = +[NSMutableDictionary dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = arrayCopy;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v20;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v19 + 1) + 8 * v12);
      identifier = [v13 identifier];
      v15 = [v6 objectForKeyedSubscript:identifier];

      if (!v15)
      {
        v15 = +[NSMutableArray array];
        identifier2 = [v13 identifier];
        [v6 setObject:v15 forKeyedSubscript:identifier2];
      }

      [v15 addObject:v13];
      v10 += [v13 sizeCached:1];

      if (v10 >= amount)
      {
        break;
      }

      if (v9 == ++v12)
      {
        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v17 = [v6 copy];

  return v17;
}

- (unint64_t)purgeAssets:(unint64_t)assets testObject:(id)object
{
  objectCopy = object;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v24 = 0;
  v7 = [(CacheDeleteManagedAssets *)self sizeEligibleAsset:&v24];
  v8 = dispatch_group_create();
  v9 = dispatch_queue_create("com.apple.mobile.cache_delete_managed_assets.CacheManagementAsset.Purge", 0);
  if (v24 <= assets)
  {
    v11 = [v7 mutableCopy];
  }

  else
  {
    v10 = [(CacheDeleteManagedAssets *)self sortAssets:v7];
    v11 = [v10 mutableCopy];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __51__CacheDeleteManagedAssets_purgeAssets_testObject___block_invoke;
  block[3] = &unk_10000C668;
  v22 = &v25;
  assetsCopy = assets;
  v18 = v11;
  selfCopy = self;
  v20 = objectCopy;
  v21 = v8;
  v12 = v8;
  v13 = objectCopy;
  v14 = v11;
  dispatch_group_async(v12, v9, block);
  dispatch_group_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  v15 = v26[3];

  _Block_object_dispose(&v25, 8);
  return v15;
}

void __51__CacheDeleteManagedAssets_purgeAssets_testObject___block_invoke(uint64_t a1)
{
  while (*(*(*(a1 + 64) + 8) + 24) < *(a1 + 72))
  {
    if (![*(a1 + 32) count])
    {
      break;
    }

    v2 = [*(a1 + 40) assetsFromArray:*(a1 + 32) forAmount:*(a1 + 72) - *(*(*(a1 + 64) + 8) + 24)];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v22;
LABEL_5:
      v7 = 0;
      while (1)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        v9 = [v3 objectForKeyedSubscript:{v8, v17}];
        v10 = *(a1 + 48);
        v25 = v8;
        v11 = [NSArray arrayWithObjects:&v25 count:1];
        v18 = v9;
        v19 = *(a1 + 40);
        v20 = *(a1 + 72);
        v17 = *(a1 + 56);
        v12 = v17;
        v13 = v9;
        v14 = assert_group_cache_deletion();

        [*(a1 + 32) removeObjectsInArray:v13];
        v15 = *(a1 + 72);
        v16 = *(*(*(a1 + 64) + 8) + 24);

        if (v16 >= v15)
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
          if (v5)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }
  }
}

void __51__CacheDeleteManagedAssets_purgeAssets_testObject___block_invoke_2(uint64_t a1)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v17;
    *&v4 = 136315394;
    v14 = v4;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v17 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v8 = *(*(&v16 + 1) + 8 * v7);
      v9 = [*(a1 + 40) cancel];
      v10 = *(a1 + 56);
      v11 = *(a1 + 64);
      if ((v9 & 1) == 0 && *(*(v10 + 8) + 24) < v11)
      {
        [v8 sizeCached:1];
        v12 = CDGetLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v14;
          v21 = "com.apple.mobile.cache_delete_managed_assets";
          v22 = 2112;
          v23 = v8;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s purging %@", buf, 0x16u);
        }

        dispatch_group_enter(*(a1 + 48));
        v15 = *(a1 + 48);
        v13 = v15;
        CacheManagementRemove();

        v10 = *(a1 + 56);
        v11 = *(a1 + 64);
      }

      if (*(*(v10 + 8) + 24) >= v11)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

void __51__CacheDeleteManagedAssets_purgeAssets_testObject___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = CDGetLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v3;
      v8 = 2112;
      v9 = v5;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "purge CacheManagementRemove ERROR: %@, for asset: %@", &v6, 0x16u);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) += *(a1 + 56);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __51__CacheDeleteManagedAssets_purgeAssets_testObject___block_invoke_13(id a1, NSError *a2, NSString *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = CDGetLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v4;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to acquire termination assertion for '%@': %@", &v7, 0x16u);
  }
}

- (void)periodic:(id)periodic
{
  periodicCopy = periodic;
  +[NSMutableDictionary dictionary];
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = __37__CacheDeleteManagedAssets_periodic___block_invoke;
  v24 = &unk_10000C690;
  v26 = v25 = self;
  CacheManagementEnumerateAssets();
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v26;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v27 = *(*(&v17 + 1) + 8 * i);
        v10 = [NSArray arrayWithObjects:&v27 count:1, v13, v14, v15, v16];
        v13 = _NSConcreteStackBlock;
        v14 = 3221225472;
        v15 = __37__CacheDeleteManagedAssets_periodic___block_invoke_2;
        v16 = &unk_10000C6E0;
        v11 = v5;
        v12 = assert_group_cache_deletion();
      }

      v7 = [v11 countByEnumeratingWithState:&v17 objects:v28 count:{16, _NSConcreteStackBlock, 3221225472, __37__CacheDeleteManagedAssets_periodic___block_invoke_2, &unk_10000C6E0}];
    }

    while (v7);
  }
}

uint64_t __37__CacheDeleteManagedAssets_periodic___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) periodicShouldRemoveAsset:v3])
  {
    v4 = *(a1 + 40);
    v5 = [v3 identifier];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (!v6)
    {
      v6 = +[NSMutableSet set];
      v7 = *(a1 + 40);
      v8 = [v3 identifier];
      [v7 setObject:v6 forKeyedSubscript:v8];
    }

    [v6 addObject:v3];
  }

  return 1;
}

void __37__CacheDeleteManagedAssets_periodic___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v7 + 1) + 8 * i);
        CacheManagementRemove();
      }

      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

void __37__CacheDeleteManagedAssets_periodic___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CDGetLogHandle();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v8 = 138412546;
      v9 = v3;
      v10 = 2112;
      v11 = v6;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "periodic CacheManagementRemove error: %@, %@", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "periodic removed: %@", &v8, 0xCu);
  }
}

void __37__CacheDeleteManagedAssets_periodic___block_invoke_16(id a1, NSError *a2, NSString *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = CDGetLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v4;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to acquire termination assertion for '%@': %@", &v7, 0x16u);
  }
}

- (id)analytics
{
  info = [(CacheDeleteManagedAssets *)self info];
  v25 = CacheDeleteUserManagedAssetsPurgeable();

  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v4 = [(CacheDeleteManagedAssets *)self urgency]- 1;
  if (v4 >= 4)
  {
    v5 = @"???";
  }

  else
  {
    v5 = *(&off_10000C7F8 + v4);
  }

  v6 = [NSString stringWithFormat:@"ManagedAssets_%@", v5];
  CacheManagementEnumerateAssets();
  v58[0] = @"ManagedAssets_autoPurgeEnabled";
  v59[0] = v25;
  v24 = [v6 stringByAppendingString:@"_size"];
  v58[1] = v24;
  v23 = [NSNumber numberWithUnsignedLong:v55[3]];
  v59[1] = v23;
  v22 = [v6 stringByAppendingString:@"_count"];
  v58[2] = v22;
  v21 = [NSNumber numberWithUnsignedLong:v51[3]];
  v59[2] = v21;
  v20 = [v6 stringByAppendingString:@"_eligibleSize"];
  v58[3] = v20;
  v19 = [NSNumber numberWithUnsignedLong:v47[3]];
  v59[3] = v19;
  v18 = [v6 stringByAppendingString:@"_eligibleCount"];
  v58[4] = v18;
  v7 = [NSNumber numberWithUnsignedLong:v43[3]];
  v59[4] = v7;
  v8 = [v6 stringByAppendingString:@"_watchedSize"];
  v58[5] = v8;
  v9 = [NSNumber numberWithUnsignedLong:v39[3]];
  v59[5] = v9;
  v10 = [v6 stringByAppendingString:@"_watchedCount"];
  v58[6] = v10;
  v11 = [NSNumber numberWithUnsignedLong:v35[3]];
  v59[6] = v11;
  v12 = [v6 stringByAppendingString:@"_downloadingSize"];
  v58[7] = v12;
  v13 = [NSNumber numberWithUnsignedLong:v31[3]];
  v59[7] = v13;
  v14 = [v6 stringByAppendingString:@"_downloadingCount"];
  v58[8] = v14;
  v15 = [NSNumber numberWithUnsignedLong:v27[3]];
  v59[8] = v15;
  v17 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:9];

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v54, 8);

  return v17;
}

uint64_t __37__CacheDeleteManagedAssets_analytics__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  ++*(*(*(a1 + 40) + 8) + 24);
  *(*(*(a1 + 48) + 8) + 24) += [v3 size];
  v4 = [v3 purgeabilityScoreAtUrgency:{objc_msgSend(*(a1 + 32), "urgency")}];
  if (v4 && v4 <= [*(a1 + 32) urgency])
  {
    ++*(*(*(a1 + 56) + 8) + 24);
    *(*(*(a1 + 64) + 8) + 24) += [v3 size];
  }

  v5 = [v3 consumedDate];

  if (v5)
  {
    ++*(*(*(a1 + 72) + 8) + 24);
    *(*(*(a1 + 80) + 8) + 24) += [v3 size];
  }

  v6 = [v3 downloadCompletionDate];

  if (!v6)
  {
    ++*(*(*(a1 + 88) + 8) + 24);
    *(*(*(a1 + 96) + 8) + 24) += [v3 size];
  }

  return 1;
}

@end