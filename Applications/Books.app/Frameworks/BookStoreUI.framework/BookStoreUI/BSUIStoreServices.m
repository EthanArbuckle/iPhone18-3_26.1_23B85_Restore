@interface BSUIStoreServices
+ (BSUIStoreServices)sharedInstance;
+ (void)checkAudiobookAvailabilityForStoreID:(id)a3 completion:(id)a4;
- (BSUIStoreServices)initWithDelegate:(id)a3;
- (BSUIStoreServicesDelegate)delegate;
- (id)_optionsForTransaction:(id)a3;
- (id)analyticsTrackerForPurchaseMonitor:(id)a3;
- (id)customerReviewURLForAssetID:(id)a3;
- (void)_analyticsSubmitHideBookEventWithStoreIDs:(id)a3 contentTypeDictionary:(id)a4 supplementalContentCountDictionary:(id)a5 hasRACSupportDictionary:(id)a6 tracker:(id)a7;
- (void)_setPurchaseHidden:(BOOL)a3 forStoreID:(id)a4 withCompletion:(id)a5;
- (void)canHandleURLAsProductPage:(id)a3 completion:(id)a4;
- (void)hidePurchasedForStoreIDs:(id)a3 contentTypeDictionary:(id)a4 supplementalContentCountDictionary:(id)a5 hasRACSupportDictionary:(id)a6 tracker:(id)a7;
- (void)pauseRemovingFromMySamples;
- (void)productPageURLForStoreID:(id)a3 completion:(id)a4;
- (void)purchasedDidHide:(BOOL)a3 withStoreID:(id)a4 withCompletion:(id)a5;
- (void)purchasedHiddenDidChange:(id)a3 :(id)a4;
- (void)resumeRemovingFromMySamplesWithTracker:(id)a3;
- (void)showProductPageForStoreID:(id)a3 resourceType:(int64_t)a4 transaction:(id)a5 needsAnalyticsLinkData:(BOOL)a6;
- (void)showProductPagesForStoreIDs:(id)a3 resourceTypes:(id)a4 focusedIndex:(unint64_t)a5 transaction:(id)a6 needsAnalyticsLinkData:(BOOL)a7;
- (void)showWriteAReviewForStoreId:(id)a3 transaction:(id)a4 completion:(id)a5;
@end

@implementation BSUIStoreServices

- (BSUIStoreServices)initWithDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BSUIStoreServices;
  v5 = [(BSUIStoreServices *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = [[BSUIDownloadPurchaseMonitor alloc] initWithDelegate:v6];
    downloadPurchaseMonitor = v6->_downloadPurchaseMonitor;
    v6->_downloadPurchaseMonitor = v7;
  }

  return v6;
}

+ (BSUIStoreServices)sharedInstance
{
  if (qword_3CA818[0] != -1)
  {
    sub_2BDA08();
  }

  v3 = qword_3CA810;

  return v3;
}

+ (void)checkAudiobookAvailabilityForStoreID:(id)a3 completion:(id)a4
{
  v11 = a3;
  v5 = a4;
  if ((+[BKReachability isOffline]& 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    v7 = +[BCMBridgedCatalogService sharedInstance];
    v8 = [BFMRequestMetadata alloc];
    v9 = [NSString stringWithFormat:@"%s", "BSUIStoreServices.m"];
    v10 = [v8 initWithFileID:v9 line:77];
    v6 = [v7 checkAvailabilityForStoreID:v11 type:0 metadata:v10] ^ 1;
  }

  v5[2](v5, v6);
}

- (id)analyticsTrackerForPurchaseMonitor:(id)a3
{
  v4 = [(BSUIStoreServices *)self delegate];
  v5 = [v4 analyticsTrackerForStoreServices:self];

  return v5;
}

- (id)_optionsForTransaction:(id)a3
{
  if (a3)
  {
    v6 = BCTransactionOptionsTransactionKey;
    v7 = a3;
    v3 = a3;
    v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  }

  else
  {
    v4 = &__NSDictionary0__struct;
  }

  return v4;
}

- (void)showProductPageForStoreID:(id)a3 resourceType:(int64_t)a4 transaction:(id)a5 needsAnalyticsLinkData:(BOOL)a6
{
  v6 = a6;
  v16 = a3;
  v10 = a5;
  v11 = a3;
  v12 = [NSArray arrayWithObjects:&v16 count:1];
  v13 = [NSNumber numberWithInteger:a4];
  v15 = v13;
  v14 = [NSArray arrayWithObjects:&v15 count:1];

  [(BSUIStoreServices *)self showProductPagesForStoreIDs:v12 resourceTypes:v14 focusedIndex:0 transaction:v10 needsAnalyticsLinkData:v6];
}

- (void)showProductPagesForStoreIDs:(id)a3 resourceTypes:(id)a4 focusedIndex:(unint64_t)a5 transaction:(id)a6 needsAnalyticsLinkData:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = BSUIStoreServicesLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v12 componentsJoinedByString:{@", "}];
    v17 = [NSNumber numberWithUnsignedInteger:a5];
    *buf = 136446722;
    v46 = "[BSUIStoreServices showProductPagesForStoreIDs:resourceTypes:focusedIndex:transaction:needsAnalyticsLinkData:]";
    v47 = 2112;
    v48 = v16;
    v49 = 2112;
    v50 = v17;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}s adamIDs=[%@], focusedIndex=%@", buf, 0x20u);
  }

  if ([v12 count])
  {
    v30 = a7;
    v31 = a5;
    v29 = [(BSUIStoreServices *)self _optionsForTransaction:v14];
    v18 = +[NSMutableArray array];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v19 = v13;
    v20 = [v19 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v41;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v41 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = +[BCMAssetWrapper nameForResourceType:](BCMAssetWrapper, "nameForResourceType:", [*(*(&v40 + 1) + 8 * i) integerValue]);
          [v18 addObject:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v21);
    }

    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_3BF3C;
    v34[3] = &unk_3883C0;
    v39 = v30;
    v34[4] = self;
    v35 = v12;
    v38 = v31;
    v25 = v18;
    v36 = v25;
    v26 = v29;
    v37 = v26;
    v27 = objc_retainBlock(v34);
    v28 = v27;
    if (v14)
    {
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_3C1DC;
      v32[3] = &unk_386C58;
      v33 = v27;
      [v14 commit:v32];
    }

    else
    {
      (v27[2])(v27);
    }
  }
}

- (void)_setPurchaseHidden:(BOOL)a3 forStoreID:(id)a4 withCompletion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (v7 && (+[BLLibraryUtility _isMultiUser](BLLibraryUtility, "_isMultiUser") & 1) == 0 && (+[BURestrictionsProvider sharedInstance](BURestrictionsProvider, "sharedInstance"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isAccountModificationAllowed], v9, v10))
  {
    v11 = +[JSABridge sharedInstance];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_3C33C;
    v14[3] = &unk_388410;
    v16 = v8;
    v17 = a3;
    v15 = v7;
    [v11 enqueueBlock:v14 file:@"BSUIStoreServices.m" line:170];
  }

  else
  {
    v12 = objc_retainBlock(v8);
    v13 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12, 0);
    }
  }
}

- (void)hidePurchasedForStoreIDs:(id)a3 contentTypeDictionary:(id)a4 supplementalContentCountDictionary:(id)a5 hasRACSupportDictionary:(id)a6 tracker:(id)a7
{
  v11 = a3;
  v59 = a4;
  v53 = a5;
  v51 = a6;
  v50 = a7;
  v12 = BSUIStoreServicesLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v11 allObjects];
    v14 = [v13 componentsJoinedByString:{@", "}];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v14;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "[BSUIStoreServices] hidePurchasedForStoreIDs:(%@)", &buf, 0xCu);
  }

  v15 = objc_opt_new();
  v60 = objc_opt_new();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v91 = 0x3032000000;
  v92 = sub_3CDC4;
  v93 = sub_3CDD4;
  v94 = 0;
  v84[0] = 0;
  v84[1] = v84;
  v84[2] = 0x3032000000;
  v84[3] = sub_3CDC4;
  v84[4] = sub_3CDD4;
  v85 = 0;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = v11;
  v16 = [obj countByEnumeratingWithState:&v80 objects:v89 count:16];
  if (v16)
  {
    v17 = *v81;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v81 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v80 + 1) + 8 * i);
        v20 = [v59 objectForKeyedSubscript:v19];
        v21 = [v20 integerValue] == &dword_0 + 2;

        if (v21)
        {
          v22 = v15;
        }

        else
        {
          v22 = v60;
        }

        [v22 addObject:v19];
      }

      v16 = [obj countByEnumeratingWithState:&v80 objects:v89 count:16];
    }

    while (v16);
  }

  group = dispatch_group_create();
  if ([v60 count])
  {
    dispatch_group_enter(group);
    v23 = BSUIStoreServicesLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v60 allObjects];
      v25 = [v24 componentsJoinedByString:{@", "}];
      *v87 = 138412290;
      v88 = v25;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "BSUIStoreServices hiding jalisco items with identifiers on server %@", v87, 0xCu);
    }

    v26 = +[BDSJaliscoDAAPClient sharedClient];
    v76[0] = _NSConcreteStackBlock;
    v76[1] = 3221225472;
    v76[2] = sub_3CDDC;
    v76[3] = &unk_388438;
    v79 = v84;
    v77 = v60;
    v78 = group;
    [v26 hideItemsWithStoreIDs:v77 completion:v76];
  }

  v57 = objc_opt_new();
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v55 = v15;
  v27 = [v55 countByEnumeratingWithState:&v72 objects:v86 count:16];
  if (v27)
  {
    v58 = *v73;
    v28 = MPMediaItemPropertyStoreID;
    v29 = MPMediaItemPropertyPurchaseHistoryID;
    do
    {
      for (j = 0; j != v27; j = j + 1)
      {
        if (*v73 != v58)
        {
          objc_enumerationMutation(v55);
        }

        v31 = *(*(&v72 + 1) + 8 * j);
        v32 = +[MPMediaQuery bk_audiobooksQuery];
        v33 = [MPMediaPropertyPredicate predicateWithValue:v31 forProperty:v28];
        [v32 addFilterPredicate:v33];

        v34 = [v32 collections];
        v35 = [v34 firstObject];

        v36 = [v35 bk_cloudRepresentativeItem];
        v37 = [v36 valueForProperty:v29];
        if (v37)
        {
          [v57 setObject:v37 forKeyedSubscript:v31];
        }

        else
        {
          v38 = BSUIStoreServicesLog();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *v87 = 138412290;
            v88 = v31;
            _os_log_error_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "BSUIStoreServices failed to find purchase history id for audiobook %@", v87, 0xCu);
          }
        }
      }

      v27 = [v55 countByEnumeratingWithState:&v72 objects:v86 count:16];
    }

    while (v27);
  }

  v39 = [v57 allValues];
  v40 = [v39 count] == 0;

  if (!v40)
  {
    v41 = BSUIStoreServicesLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = [v57 allKeys];
      *v87 = 138412290;
      v88 = v42;
      _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "BSUIStoreServices hiding audiobooks with identifiers %@", v87, 0xCu);
    }

    dispatch_group_enter(group);
    v43 = +[MPCloudController sharedCloudController];
    v44 = [v57 allValues];
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_3CF30;
    v68[3] = &unk_3884A0;
    p_buf = &buf;
    v69 = v57;
    v70 = group;
    [v43 hideItemsWithPurchaseHistoryIDs:v44 completionHandler:v68];
  }

  v45 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3D0CC;
  block[3] = &unk_3884F0;
  v66 = &buf;
  v67 = v84;
  block[4] = self;
  v62 = v59;
  v63 = v53;
  v64 = v51;
  v65 = v50;
  v46 = v50;
  v47 = v51;
  v48 = v53;
  v49 = v59;
  dispatch_group_notify(group, v45, block);

  _Block_object_dispose(v84, 8);
  _Block_object_dispose(&buf, 8);
}

- (void)purchasedHiddenDidChange:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_0, "Books/BSUIPurchaseHiddenChange", &_os_activity_none, OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3D55C;
  block[3] = &unk_387000;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  os_activity_apply(v8, block);
}

- (void)purchasedDidHide:(BOOL)a3 withStoreID:(id)a4 withCompletion:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = a5;
  v9 = BSUIStoreServicesLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "BSUIStoreServices Attempting to update jalisco after hide:%d storeid:%@.", buf, 0x12u);
  }

  if (!v6)
  {
    v10 = +[MPCloudController sharedCloudController];
    [v10 updateJaliscoMediaLibraryWithReason:1 completionHandler:&stru_388510];
  }

  v11 = +[BDSJaliscoDAAPClient sharedClient];
  [v11 setItemHidden:v6 forStoreID:v7 completion:0];

  v12 = +[BDSJaliscoDAAPClient sharedClient];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_3DA40;
  v15[3] = &unk_388538;
  v18 = v6;
  v16 = v7;
  v17 = v8;
  v13 = v8;
  v14 = v7;
  [v12 updatePolitely:0 reason:8 completion:v15];
}

- (void)showWriteAReviewForStoreId:(id)a3 transaction:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = BSUIStoreServicesLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "BSUIStoreServices showWriteAReviewForStoreId adamID=%@.", &buf, 0xCu);
  }

  v12 = [(BSUIStoreServices *)self customerReviewURLForAssetID:v8];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_3DE58;
  v23[3] = &unk_387000;
  v23[4] = self;
  v13 = v9;
  v24 = v13;
  v14 = v12;
  v25 = v14;
  v15 = objc_retainBlock(v23);
  v16 = v15;
  if (!v14)
  {
    v17 = objc_retainBlock(v10);
    v18 = v17;
    if (v17)
    {
      v17[2](v17, 0);
    }

    goto LABEL_11;
  }

  if (!v13)
  {
    (v15[2])(v15);
    v19 = objc_retainBlock(v10);
    v18 = v19;
    if (v19)
    {
      v19[2](v19, 1);
    }

LABEL_11:

    v10 = v18;
    goto LABEL_12;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v27 = 0x3032000000;
  v28 = sub_3DEBC;
  v29 = sub_3DEE8;
  v30 = objc_retainBlock(v10);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_3DEF0;
  v20[3] = &_s11descr385029OMF.NumFields + 2;
  v21 = v16;
  p_buf = &buf;
  [v13 commit:v20];

  _Block_object_dispose(&buf, 8);
LABEL_12:
}

- (id)customerReviewURLForAssetID:(id)a3
{
  v3 = JSARatingsWriteReviewUrlString;
  v4 = a3;
  v5 = [v3 mutableCopy];
  [v5 replaceOccurrencesOfString:@"%7Bid%7D" withString:v4 options:2 range:{0, objc_msgSend(v5, "length")}];

  v6 = [NSURL URLWithString:v5];

  return v6;
}

- (void)canHandleURLAsProductPage:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = dispatch_get_global_queue(21, 0);
  if (v6)
  {
    v8 = +[MCProfileConnection sharedConnection];
    v9 = [v8 isOnDeviceAppInstallationAllowed];

    if (v9)
    {
      v10 = [v5 underlyingURL];
      v11 = [v10 scheme];

      if ([v11 caseInsensitiveCompare:@"http"] && objc_msgSend(v11, "caseInsensitiveCompare:", @"https"))
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_3E370;
        block[3] = &unk_386C58;
        v26 = v6;
        dispatch_async(v7, block);
        v12 = v26;
      }

      else
      {
        v12 = dispatch_group_create();
        v24[0] = 0;
        v24[1] = v24;
        v24[2] = 0x2020000000;
        v24[3] = 0;
        v13 = [v5 underlyingURL];
        if (v13)
        {
          dispatch_group_enter(v12);
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_3E384;
          v21[3] = &unk_388588;
          v23 = v24;
          v14 = v12;
          v22 = v14;
          [v13 bc_isStoreProductURLWithCompletion:v21];
          dispatch_group_enter(v14);
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_3E3A4;
          v18[3] = &unk_388588;
          v20 = v24;
          v19 = v14;
          [v13 bc_isBookStoreProductURLWithCompletion:v18];
        }

        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_3E3C4;
        v15[3] = &_s11descr385029OMF.NumFields + 2;
        v16 = v6;
        v17 = v24;
        dispatch_group_notify(v12, v7, v15);

        _Block_object_dispose(v24, 8);
      }
    }

    else
    {
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_3E35C;
      v27[3] = &unk_386C58;
      v28 = v6;
      dispatch_async(v7, v27);
      v11 = v28;
    }
  }
}

- (void)productPageURLForStoreID:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    if (v5)
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x3032000000;
      v18 = sub_3CDC4;
      v19 = sub_3CDD4;
      v8 = +[BSUIItemDescriptionCache sharedInstance];
      v21 = v5;
      v9 = [NSArray arrayWithObjects:&v21 count:1];
      v10 = [v8 itemDescriptionsFromIdentifiers:v9];
      v20 = [v10 objectForKey:v5];

      v11 = v16[5];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_3E5BC;
      v12[3] = &unk_3881C0;
      v13 = v7;
      v14 = &v15;
      [v11 get:v12];

      _Block_object_dispose(&v15, 8);
    }

    else
    {
      (*(v6 + 2))(v6, 0);
    }
  }
}

- (void)pauseRemovingFromMySamples
{
  v3 = BSUIStoreServicesLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[BSUIStoreServices pauseRemovingFromMySamples]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v4, 0xCu);
  }

  [(BSUIDownloadPurchaseMonitor *)self->_downloadPurchaseMonitor pauseRemovingFromMySamples];
}

- (void)resumeRemovingFromMySamplesWithTracker:(id)a3
{
  v4 = a3;
  v5 = BSUIStoreServicesLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446210;
    v7 = "[BSUIStoreServices resumeRemovingFromMySamplesWithTracker:]";
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", &v6, 0xCu);
  }

  [(BSUIDownloadPurchaseMonitor *)self->_downloadPurchaseMonitor resumeRemovingFromMySamplesWithTracker:v4];
}

- (void)_analyticsSubmitHideBookEventWithStoreIDs:(id)a3 contentTypeDictionary:(id)a4 supplementalContentCountDictionary:(id)a5 hasRACSupportDictionary:(id)a6 tracker:(id)a7
{
  obj = a3;
  v34 = a4;
  v33 = a5;
  v11 = a6;
  v12 = a7;
  if (v12)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v35)
    {
      v30 = *v37;
      v31 = v12;
      v32 = v11;
      do
      {
        for (i = 0; i != v35; i = i + 1)
        {
          if (*v37 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v36 + 1) + 8 * i);
          v15 = [v12 contentPrivateIDForContentID:v14];
          v16 = [v12 contentUserIDForContentID:v14];
          v17 = [v34 objectForKey:v14];
          v18 = v17;
          if (v17)
          {
            v19 = [v17 integerValue];
          }

          else
          {
            v19 = 0;
          }

          v20 = +[BAEventReporter sharedReporter];
          v21 = [v20 seriesTypeForContentID:v14];

          v22 = [v11 objectForKey:v14];

          if (v22)
          {
            v23 = [v11 objectForKey:v14];
            if ([v23 BOOLValue])
            {
              v24 = 1;
            }

            else
            {
              v24 = 2;
            }
          }

          else
          {
            v24 = 0;
          }

          v25 = [BAContentData alloc];
          v26 = [v33 objectForKey:v14];
          v27 = [v25 initWithContentID:v14 contentType:v19 contentPrivateID:v15 contentUserID:v16 contentAcquisitionType:1 contentSubType:0 contentLength:0 supplementalContentCount:v26 seriesType:v21 productionType:v24 isUnified:0 contentKind:0];

          v28 = +[BAEventReporter sharedReporter];
          v12 = v31;
          [v28 emitHideBookEventWithTracker:v31 contentData:v27];

          v11 = v32;
        }

        v35 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v35);
    }
  }
}

- (BSUIStoreServicesDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end