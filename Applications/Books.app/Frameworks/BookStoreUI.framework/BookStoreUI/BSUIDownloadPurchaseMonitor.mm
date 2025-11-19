@interface BSUIDownloadPurchaseMonitor
- (BOOL)_isPreOrder:(id)a3;
- (BSUIDownloadPurchaseMonitor)initWithDelegate:(id)a3;
- (BSUIDownloadPurchaseMonitorDelegate)delegate;
- (id)_addPurchaseForItemID:(id)a3 isAudioBook:(BOOL)a4;
- (id)_buyParamsDictFromString:(id)a3;
- (id)_newContentDataForID:(id)a3 isAudioBook:(BOOL)a4 hasRacSupport:(BOOL)a5 tracker:(id)a6 supplementalContentCount:(id)a7 appAnalyticsAdditionalData:(id)a8;
- (id)_newPurchaseDataForPurchaseID:(id)a3 isPreorder:(BOOL)a4 pricingParameters:(id)a5;
- (id)_newPurchaseFailData:(int64_t)a3 errorCode:(id)a4 errorDescription:(id)a5 errorDomain:(id)a6;
- (id)_purchaseForItemID:(id)a3;
- (id)purchaseIDs;
- (int64_t)_newProductionTypeForIsAudiobook:(BOOL)a3 hasRacSupport:(BOOL)a4;
- (void)_addStoreIDToWantToReadCollection:(id)a3 tracker:(id)a4 productionType:(int64_t)a5;
- (void)_emitPurchaseAttemptEventWithTracker:(id)a3 forID:(id)a4 buyParams:(id)a5 isAudioBook:(BOOL)a6 hasRacSupport:(BOOL)a7 upSellData:(id)a8 appAnalyticsAdditionalData:(id)a9;
- (void)_emitPurchaseFailEventWithTracker:(id)a3 sessionAssertion:(id)a4 forID:(id)a5 buyParams:(id)a6 hasRacSupport:(BOOL)a7 response:(id)a8 upSellData:(id)a9 appAnalyticsAdditionalData:(id)a10;
- (void)_emitPurchaseSuccessEventWithTracker:(id)a3 sessionAssertion:(id)a4 forID:(id)a5 response:(id)a6 upSellData:(id)a7 appAnalyticsAdditionalData:(id)a8;
- (void)_removePurchaseByItemID:(id)a3;
- (void)_removeStoreIDFromSamplesCollection:(id)a3 tracker:(id)a4 productionType:(int64_t)a5;
- (void)aq_processCompletedPurchaseAttempt:(id)a3;
- (void)aq_processFailedPurchaseAttempt:(id)a3;
- (void)downloadQueue:(id)a3 purchaseAttemptForRequest:(id)a4;
- (void)downloadQueue:(id)a3 purchasedDidCompleteWithResponse:(id)a4;
- (void)downloadQueue:(id)a3 purchasedDidFailWithResponse:(id)a4;
- (void)pauseRemovingFromMySamples;
- (void)resumeRemovingFromMySamplesWithTracker:(id)a3;
@end

@implementation BSUIDownloadPurchaseMonitor

- (BSUIDownloadPurchaseMonitor)initWithDelegate:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = BSUIDownloadPurchaseMonitor;
  v5 = [(BSUIDownloadPurchaseMonitor *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = dispatch_queue_create("BSUIDownloadPurchaseMonitor.access", 0);
    access = v6->_access;
    v6->_access = v7;

    v9 = +[BCCloudCollectionsManager sharedManager];
    cloudCollectionsManager = v6->_cloudCollectionsManager;
    v6->_cloudCollectionsManager = v9;

    v11 = +[NSMutableDictionary dictionary];
    downloadPurchaseAttempts = v6->_downloadPurchaseAttempts;
    v6->_downloadPurchaseAttempts = v11;

    queuedStoreIDsToRemoveFromMySamples = v6->_queuedStoreIDsToRemoveFromMySamples;
    v6->_queuedStoreIDsToRemoveFromMySamples = 0;

    v14 = +[BLDownloadQueue sharedInstance];
    [v14 addObserver:v6];
  }

  return v6;
}

- (void)_addStoreIDToWantToReadCollection:(id)a3 tracker:(id)a4 productionType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if ([v8 length])
  {
    v10 = +[BCCloudAssetManager sharedManager];
    v11 = [v10 readingNowDetailManager];
    v18 = v8;
    v12 = [NSArray arrayWithObjects:&v18 count:1];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1E78C;
    v13[3] = &unk_387800;
    v14 = v8;
    v15 = self;
    v16 = v9;
    v17 = a5;
    [v11 readingNowDetailsForAssetIDs:v12 completion:v13];
  }
}

- (void)_removeStoreIDFromSamplesCollection:(id)a3 tracker:(id)a4 productionType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if ([v8 length])
  {
    if (self->_queuedStoreIDsToRemoveFromMySamples)
    {
      v10 = BSUIDownloadPurchaseMonitorLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v8;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "BSUIDownloadPurchaseMonitor: Deferred removal of %@ from My Samples", buf, 0xCu);
      }

      [(NSMutableArray *)self->_queuedStoreIDsToRemoveFromMySamples addObject:v8];
    }

    else
    {
      v11 = [BCCollectionMember collectionMemberIDWithCollectionID:kBKCollectionDefaultIDSamples assetID:v8];
      v12 = [(BSUIDownloadPurchaseMonitor *)self cloudCollectionsManager];
      v13 = [v12 collectionMemberManager];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1EDE0;
      v15[3] = &unk_3877D8;
      v15[4] = self;
      v16 = v11;
      v17 = v9;
      v18 = v8;
      v19 = a5;
      v14 = v11;
      [v13 collectionMemberForCollectionMemberID:v14 completion:v15];
    }
  }
}

- (void)aq_processCompletedPurchaseAttempt:(id)a3
{
  v13 = a3;
  v4 = [v13 purchaseResponse];
  if (v4)
  {
    v5 = v4;
    v6 = [v13 isSupplementalContent];

    if ((v6 & 1) == 0)
    {
      v7 = [v13 tracker];
      v8 = [v13 sessionAssertion];
      v9 = [v13 storeID];
      v10 = [v13 purchaseResponse];
      v11 = [v13 upSellData];
      v12 = [v13 appAnalyticsAdditionalData];
      [(BSUIDownloadPurchaseMonitor *)self _emitPurchaseSuccessEventWithTracker:v7 sessionAssertion:v8 forID:v9 response:v10 upSellData:v11 appAnalyticsAdditionalData:v12];
    }
  }
}

- (void)aq_processFailedPurchaseAttempt:(id)a3
{
  v15 = a3;
  v4 = [v15 failureResponse];
  if (v4)
  {
    v5 = v4;
    v6 = [v15 isSupplementalContent];

    if ((v6 & 1) == 0)
    {
      v7 = [v15 storeID];
      v8 = [v15 tracker];
      v9 = [v15 sessionAssertion];
      v10 = [v15 buyParams];
      v11 = [v15 hasRacSupport];
      v12 = [v15 failureResponse];
      v13 = [v15 upSellData];
      v14 = [v15 appAnalyticsAdditionalData];
      [(BSUIDownloadPurchaseMonitor *)self _emitPurchaseFailEventWithTracker:v8 sessionAssertion:v9 forID:v7 buyParams:v10 hasRacSupport:v11 response:v12 upSellData:v13 appAnalyticsAdditionalData:v14];
    }
  }
}

- (void)downloadQueue:(id)a3 purchaseAttemptForRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = sub_1F434;
  v30[4] = sub_1F444;
  v8 = [v7 analyticsInfo];
  v9 = [v8 objectForKeyedSubscript:@"BATracker"];
  v31 = [v9 newSessionExtendingAssertion];

  v10 = [v7 storeIdentifier];
  v11 = [v10 stringValue];

  if (v11)
  {
    v12 = [v7 buyParameters];
    v13 = [v7 isAudiobook];
    v14 = [v7 isSupplementalContent];
    v15 = [v7 analyticsInfo];
    objc_opt_class();
    v16 = [v15 objectForKeyedSubscript:@"hasRacSupport"];
    v17 = BUDynamicCast();

    access = self->_access;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1F44C;
    block[3] = &unk_387850;
    block[4] = self;
    v23 = v11;
    v24 = v12;
    v28 = v13;
    v25 = v15;
    v26 = v17;
    v29 = v14;
    v27 = v30;
    v19 = v17;
    v20 = v15;
    v21 = v12;
    dispatch_async(access, block);
  }

  _Block_object_dispose(v30, 8);
}

- (void)downloadQueue:(id)a3 purchasedDidCompleteWithResponse:(id)a4
{
  v5 = a4;
  v6 = [v5 storeID];
  v7 = [v6 stringValue];

  if ([v7 length])
  {
    access = self->_access;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1F7C8;
    block[3] = &unk_387000;
    block[4] = self;
    v10 = v7;
    v11 = v5;
    dispatch_async(access, block);
  }
}

- (void)downloadQueue:(id)a3 purchasedDidFailWithResponse:(id)a4
{
  v5 = a4;
  v6 = [v5 storeID];
  v7 = [v6 stringValue];

  if ([v7 length])
  {
    access = self->_access;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1FA10;
    block[3] = &unk_387000;
    block[4] = self;
    v10 = v7;
    v11 = v5;
    dispatch_async(access, block);
  }
}

- (void)pauseRemovingFromMySamples
{
  access = self->_access;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1FB18;
  block[3] = &unk_3873D8;
  block[4] = self;
  dispatch_async(access, block);
}

- (void)resumeRemovingFromMySamplesWithTracker:(id)a3
{
  v4 = a3;
  access = self->_access;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1FC08;
  v7[3] = &unk_386D98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(access, v7);
}

- (BSUIDownloadPurchaseMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_emitPurchaseAttemptEventWithTracker:(id)a3 forID:(id)a4 buyParams:(id)a5 isAudioBook:(BOOL)a6 hasRacSupport:(BOOL)a7 upSellData:(id)a8 appAnalyticsAdditionalData:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a8;
  v18 = a9;
  v19 = [(BSUIDownloadPurchaseMonitor *)self _buyParamsDictFromString:a5];
  v20 = [v19 objectForKeyedSubscript:@"pricingParameters"];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2D150;
  block[3] = &unk_387E40;
  block[4] = self;
  v27 = v16;
  v32 = a6;
  v33 = a7;
  v28 = v15;
  v29 = v18;
  v34 = [(BSUIDownloadPurchaseMonitor *)self _isPreOrder:v19];
  v30 = v20;
  v31 = v17;
  v21 = v17;
  v22 = v20;
  v23 = v18;
  v24 = v15;
  v25 = v16;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_emitPurchaseSuccessEventWithTracker:(id)a3 sessionAssertion:(id)a4 forID:(id)a5 response:(id)a6 upSellData:(id)a7 appAnalyticsAdditionalData:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [v17 purchaseParameters];
  v21 = [(BSUIDownloadPurchaseMonitor *)self _buyParamsDictFromString:v20];

  v22 = [v21 objectForKeyedSubscript:@"pricingParameters"];
  LOBYTE(v20) = [(BSUIDownloadPurchaseMonitor *)self _isPreOrder:v21];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_2D4C0;
  v40[3] = &unk_3873D8;
  v41 = v15;
  v23 = v15;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2D54C;
  block[3] = &unk_387E68;
  block[4] = self;
  v32 = v16;
  v33 = v14;
  v34 = v17;
  v39 = v20;
  v35 = v19;
  v36 = v22;
  v37 = v18;
  v38 = objc_retainBlock(v40);
  v24 = v38;
  v25 = v18;
  v26 = v22;
  v27 = v19;
  v28 = v17;
  v29 = v14;
  v30 = v16;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_emitPurchaseFailEventWithTracker:(id)a3 sessionAssertion:(id)a4 forID:(id)a5 buyParams:(id)a6 hasRacSupport:(BOOL)a7 response:(id)a8 upSellData:(id)a9 appAnalyticsAdditionalData:(id)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = [(BSUIDownloadPurchaseMonitor *)self _buyParamsDictFromString:a6];
  v22 = [v21 objectForKeyedSubscript:@"pricingParameters"];
  v23 = [(BSUIDownloadPurchaseMonitor *)self _isPreOrder:v21];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_2D8EC;
  v43[3] = &unk_3873D8;
  v44 = v16;
  v32 = v16;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2D978;
  block[3] = &unk_387E90;
  block[4] = self;
  v34 = v17;
  v41 = a7;
  v35 = v15;
  v36 = v20;
  v42 = v23;
  v37 = v22;
  v38 = v18;
  v39 = v19;
  v40 = objc_retainBlock(v43);
  v24 = v40;
  v25 = v19;
  v26 = v18;
  v27 = v22;
  v28 = v20;
  v29 = v15;
  v30 = v17;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)_buyParamsDictFromString:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 componentsSeparatedByString:@"&"];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) componentsSeparatedByString:@"="];
        if ([v10 count] == &dword_0 + 2)
        {
          v11 = [v10 objectAtIndexedSubscript:0];
          v12 = [v10 objectAtIndexedSubscript:1];
          if ([v11 length])
          {
            [v4 setObject:v12 forKeyedSubscript:v11];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)_isPreOrder:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"pricingParameters"];
  v5 = [v3 objectForKeyedSubscript:@"isPreorder"];

  LOBYTE(v3) = [v5 isEqualToString:@"1"];
  LOBYTE(v3) = [v4 hasSuffix:@"PRE"] | v3;

  return v3 & 1;
}

- (id)_newContentDataForID:(id)a3 isAudioBook:(BOOL)a4 hasRacSupport:(BOOL)a5 tracker:(id)a6 supplementalContentCount:(id)a7 appAnalyticsAdditionalData:(id)a8
{
  v11 = a5;
  v12 = a4;
  v14 = a3;
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = [v17 contentPrivateIDForContentID:v14];
  v19 = [v17 contentUserIDForContentID:v14];

  v20 = +[BAEventReporter sharedReporter];
  v21 = [v20 seriesTypeForContentID:v14];

  v22 = [(BSUIDownloadPurchaseMonitor *)self _newProductionTypeForIsAudiobook:v12 hasRacSupport:v11];
  if (v15 && _os_feature_enabled_impl())
  {
    v23 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v15 supportsUnifiedProductPage]);
    v24 = [v15 editionKind];
  }

  else
  {
    v24 = 0;
    v23 = 0;
  }

  if (v12)
  {
    v25 = 2;
  }

  else
  {
    v25 = 1;
  }

  v26 = [[BAContentData alloc] initWithContentID:v14 contentType:v25 contentPrivateID:v18 contentUserID:v19 contentAcquisitionType:1 contentSubType:0 contentLength:0 supplementalContentCount:v16 seriesType:v21 productionType:v22 isUnified:v23 contentKind:v24];

  return v26;
}

- (int64_t)_newProductionTypeForIsAudiobook:(BOOL)a3 hasRacSupport:(BOOL)a4
{
  v4 = 1;
  if (!a4)
  {
    v4 = 2;
  }

  if (a3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (id)_newPurchaseDataForPurchaseID:(id)a3 isPreorder:(BOOL)a4 pricingParameters:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = a3;
  v9 = [[BAPurchaseData alloc] initWithPurchaseAttemptID:v8 purchaseMethod:0 isPreorder:v5 pricingParameters:v7];

  return v9;
}

- (id)_newPurchaseFailData:(int64_t)a3 errorCode:(id)a4 errorDescription:(id)a5 errorDomain:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [[BAPurchaseFailData alloc] initWithPurchaseFailureReason:a3 errorCode:v11 errorDescription:v10 errorDomain:v9];

  return v12;
}

- (id)purchaseIDs
{
  v2 = qword_3CA7D0;
  if (!qword_3CA7D0)
  {
    v3 = objc_opt_new();
    v4 = qword_3CA7D0;
    qword_3CA7D0 = v3;

    v2 = qword_3CA7D0;
  }

  return v2;
}

- (id)_purchaseForItemID:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(BSUIDownloadPurchaseMonitor *)self purchaseIDs];
    v6 = [v5 objectForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_addPurchaseForItemID:(id)a3 isAudioBook:(BOOL)a4
{
  if (a3)
  {
    v4 = a4;
    v6 = a3;
    v7 = objc_opt_new();
    v8 = +[NSUUID UUID];
    v9 = [v8 UUIDString];
    [v7 setIdentifier:v9];

    [v7 setIsAudioBook:v4];
    v10 = [(BSUIDownloadPurchaseMonitor *)self purchaseIDs];
    [v10 setObject:v7 forKey:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_removePurchaseByItemID:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(BSUIDownloadPurchaseMonitor *)self purchaseIDs];
    [v5 removeObjectForKey:v4];
  }
}

@end