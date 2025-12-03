@interface BSUIDownloadPurchaseMonitor
- (BOOL)_isPreOrder:(id)order;
- (BSUIDownloadPurchaseMonitor)initWithDelegate:(id)delegate;
- (BSUIDownloadPurchaseMonitorDelegate)delegate;
- (id)_addPurchaseForItemID:(id)d isAudioBook:(BOOL)book;
- (id)_buyParamsDictFromString:(id)string;
- (id)_newContentDataForID:(id)d isAudioBook:(BOOL)book hasRacSupport:(BOOL)support tracker:(id)tracker supplementalContentCount:(id)count appAnalyticsAdditionalData:(id)data;
- (id)_newPurchaseDataForPurchaseID:(id)d isPreorder:(BOOL)preorder pricingParameters:(id)parameters;
- (id)_newPurchaseFailData:(int64_t)data errorCode:(id)code errorDescription:(id)description errorDomain:(id)domain;
- (id)_purchaseForItemID:(id)d;
- (id)purchaseIDs;
- (int64_t)_newProductionTypeForIsAudiobook:(BOOL)audiobook hasRacSupport:(BOOL)support;
- (void)_addStoreIDToWantToReadCollection:(id)collection tracker:(id)tracker productionType:(int64_t)type;
- (void)_emitPurchaseAttemptEventWithTracker:(id)tracker forID:(id)d buyParams:(id)params isAudioBook:(BOOL)book hasRacSupport:(BOOL)support upSellData:(id)data appAnalyticsAdditionalData:(id)additionalData;
- (void)_emitPurchaseFailEventWithTracker:(id)tracker sessionAssertion:(id)assertion forID:(id)d buyParams:(id)params hasRacSupport:(BOOL)support response:(id)response upSellData:(id)data appAnalyticsAdditionalData:(id)self0;
- (void)_emitPurchaseSuccessEventWithTracker:(id)tracker sessionAssertion:(id)assertion forID:(id)d response:(id)response upSellData:(id)data appAnalyticsAdditionalData:(id)additionalData;
- (void)_removePurchaseByItemID:(id)d;
- (void)_removeStoreIDFromSamplesCollection:(id)collection tracker:(id)tracker productionType:(int64_t)type;
- (void)aq_processCompletedPurchaseAttempt:(id)attempt;
- (void)aq_processFailedPurchaseAttempt:(id)attempt;
- (void)downloadQueue:(id)queue purchaseAttemptForRequest:(id)request;
- (void)downloadQueue:(id)queue purchasedDidCompleteWithResponse:(id)response;
- (void)downloadQueue:(id)queue purchasedDidFailWithResponse:(id)response;
- (void)pauseRemovingFromMySamples;
- (void)resumeRemovingFromMySamplesWithTracker:(id)tracker;
@end

@implementation BSUIDownloadPurchaseMonitor

- (BSUIDownloadPurchaseMonitor)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = BSUIDownloadPurchaseMonitor;
  v5 = [(BSUIDownloadPurchaseMonitor *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
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

- (void)_addStoreIDToWantToReadCollection:(id)collection tracker:(id)tracker productionType:(int64_t)type
{
  collectionCopy = collection;
  trackerCopy = tracker;
  if ([collectionCopy length])
  {
    v10 = +[BCCloudAssetManager sharedManager];
    readingNowDetailManager = [v10 readingNowDetailManager];
    v18 = collectionCopy;
    v12 = [NSArray arrayWithObjects:&v18 count:1];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1E78C;
    v13[3] = &unk_387800;
    v14 = collectionCopy;
    selfCopy = self;
    v16 = trackerCopy;
    typeCopy = type;
    [readingNowDetailManager readingNowDetailsForAssetIDs:v12 completion:v13];
  }
}

- (void)_removeStoreIDFromSamplesCollection:(id)collection tracker:(id)tracker productionType:(int64_t)type
{
  collectionCopy = collection;
  trackerCopy = tracker;
  if ([collectionCopy length])
  {
    if (self->_queuedStoreIDsToRemoveFromMySamples)
    {
      v10 = BSUIDownloadPurchaseMonitorLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = collectionCopy;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "BSUIDownloadPurchaseMonitor: Deferred removal of %@ from My Samples", buf, 0xCu);
      }

      [(NSMutableArray *)self->_queuedStoreIDsToRemoveFromMySamples addObject:collectionCopy];
    }

    else
    {
      v11 = [BCCollectionMember collectionMemberIDWithCollectionID:kBKCollectionDefaultIDSamples assetID:collectionCopy];
      cloudCollectionsManager = [(BSUIDownloadPurchaseMonitor *)self cloudCollectionsManager];
      collectionMemberManager = [cloudCollectionsManager collectionMemberManager];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1EDE0;
      v15[3] = &unk_3877D8;
      v15[4] = self;
      v16 = v11;
      v17 = trackerCopy;
      v18 = collectionCopy;
      typeCopy = type;
      v14 = v11;
      [collectionMemberManager collectionMemberForCollectionMemberID:v14 completion:v15];
    }
  }
}

- (void)aq_processCompletedPurchaseAttempt:(id)attempt
{
  attemptCopy = attempt;
  purchaseResponse = [attemptCopy purchaseResponse];
  if (purchaseResponse)
  {
    v5 = purchaseResponse;
    isSupplementalContent = [attemptCopy isSupplementalContent];

    if ((isSupplementalContent & 1) == 0)
    {
      tracker = [attemptCopy tracker];
      sessionAssertion = [attemptCopy sessionAssertion];
      storeID = [attemptCopy storeID];
      purchaseResponse2 = [attemptCopy purchaseResponse];
      upSellData = [attemptCopy upSellData];
      appAnalyticsAdditionalData = [attemptCopy appAnalyticsAdditionalData];
      [(BSUIDownloadPurchaseMonitor *)self _emitPurchaseSuccessEventWithTracker:tracker sessionAssertion:sessionAssertion forID:storeID response:purchaseResponse2 upSellData:upSellData appAnalyticsAdditionalData:appAnalyticsAdditionalData];
    }
  }
}

- (void)aq_processFailedPurchaseAttempt:(id)attempt
{
  attemptCopy = attempt;
  failureResponse = [attemptCopy failureResponse];
  if (failureResponse)
  {
    v5 = failureResponse;
    isSupplementalContent = [attemptCopy isSupplementalContent];

    if ((isSupplementalContent & 1) == 0)
    {
      storeID = [attemptCopy storeID];
      tracker = [attemptCopy tracker];
      sessionAssertion = [attemptCopy sessionAssertion];
      buyParams = [attemptCopy buyParams];
      hasRacSupport = [attemptCopy hasRacSupport];
      failureResponse2 = [attemptCopy failureResponse];
      upSellData = [attemptCopy upSellData];
      appAnalyticsAdditionalData = [attemptCopy appAnalyticsAdditionalData];
      [(BSUIDownloadPurchaseMonitor *)self _emitPurchaseFailEventWithTracker:tracker sessionAssertion:sessionAssertion forID:storeID buyParams:buyParams hasRacSupport:hasRacSupport response:failureResponse2 upSellData:upSellData appAnalyticsAdditionalData:appAnalyticsAdditionalData];
    }
  }
}

- (void)downloadQueue:(id)queue purchaseAttemptForRequest:(id)request
{
  queueCopy = queue;
  requestCopy = request;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = sub_1F434;
  v30[4] = sub_1F444;
  analyticsInfo = [requestCopy analyticsInfo];
  v9 = [analyticsInfo objectForKeyedSubscript:@"BATracker"];
  newSessionExtendingAssertion = [v9 newSessionExtendingAssertion];

  storeIdentifier = [requestCopy storeIdentifier];
  stringValue = [storeIdentifier stringValue];

  if (stringValue)
  {
    buyParameters = [requestCopy buyParameters];
    isAudiobook = [requestCopy isAudiobook];
    isSupplementalContent = [requestCopy isSupplementalContent];
    analyticsInfo2 = [requestCopy analyticsInfo];
    objc_opt_class();
    v16 = [analyticsInfo2 objectForKeyedSubscript:@"hasRacSupport"];
    v17 = BUDynamicCast();

    access = self->_access;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1F44C;
    block[3] = &unk_387850;
    block[4] = self;
    v23 = stringValue;
    v24 = buyParameters;
    v28 = isAudiobook;
    v25 = analyticsInfo2;
    v26 = v17;
    v29 = isSupplementalContent;
    v27 = v30;
    v19 = v17;
    v20 = analyticsInfo2;
    v21 = buyParameters;
    dispatch_async(access, block);
  }

  _Block_object_dispose(v30, 8);
}

- (void)downloadQueue:(id)queue purchasedDidCompleteWithResponse:(id)response
{
  responseCopy = response;
  storeID = [responseCopy storeID];
  stringValue = [storeID stringValue];

  if ([stringValue length])
  {
    access = self->_access;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1F7C8;
    block[3] = &unk_387000;
    block[4] = self;
    v10 = stringValue;
    v11 = responseCopy;
    dispatch_async(access, block);
  }
}

- (void)downloadQueue:(id)queue purchasedDidFailWithResponse:(id)response
{
  responseCopy = response;
  storeID = [responseCopy storeID];
  stringValue = [storeID stringValue];

  if ([stringValue length])
  {
    access = self->_access;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1FA10;
    block[3] = &unk_387000;
    block[4] = self;
    v10 = stringValue;
    v11 = responseCopy;
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

- (void)resumeRemovingFromMySamplesWithTracker:(id)tracker
{
  trackerCopy = tracker;
  access = self->_access;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1FC08;
  v7[3] = &unk_386D98;
  v7[4] = self;
  v8 = trackerCopy;
  v6 = trackerCopy;
  dispatch_async(access, v7);
}

- (BSUIDownloadPurchaseMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_emitPurchaseAttemptEventWithTracker:(id)tracker forID:(id)d buyParams:(id)params isAudioBook:(BOOL)book hasRacSupport:(BOOL)support upSellData:(id)data appAnalyticsAdditionalData:(id)additionalData
{
  trackerCopy = tracker;
  dCopy = d;
  dataCopy = data;
  additionalDataCopy = additionalData;
  v19 = [(BSUIDownloadPurchaseMonitor *)self _buyParamsDictFromString:params];
  v20 = [v19 objectForKeyedSubscript:@"pricingParameters"];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2D150;
  block[3] = &unk_387E40;
  block[4] = self;
  v27 = dCopy;
  bookCopy = book;
  supportCopy = support;
  v28 = trackerCopy;
  v29 = additionalDataCopy;
  v34 = [(BSUIDownloadPurchaseMonitor *)self _isPreOrder:v19];
  v30 = v20;
  v31 = dataCopy;
  v21 = dataCopy;
  v22 = v20;
  v23 = additionalDataCopy;
  v24 = trackerCopy;
  v25 = dCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_emitPurchaseSuccessEventWithTracker:(id)tracker sessionAssertion:(id)assertion forID:(id)d response:(id)response upSellData:(id)data appAnalyticsAdditionalData:(id)additionalData
{
  trackerCopy = tracker;
  assertionCopy = assertion;
  dCopy = d;
  responseCopy = response;
  dataCopy = data;
  additionalDataCopy = additionalData;
  purchaseParameters = [responseCopy purchaseParameters];
  v21 = [(BSUIDownloadPurchaseMonitor *)self _buyParamsDictFromString:purchaseParameters];

  v22 = [v21 objectForKeyedSubscript:@"pricingParameters"];
  LOBYTE(purchaseParameters) = [(BSUIDownloadPurchaseMonitor *)self _isPreOrder:v21];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_2D4C0;
  v40[3] = &unk_3873D8;
  v41 = assertionCopy;
  v23 = assertionCopy;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2D54C;
  block[3] = &unk_387E68;
  block[4] = self;
  v32 = dCopy;
  v33 = trackerCopy;
  v34 = responseCopy;
  v39 = purchaseParameters;
  v35 = additionalDataCopy;
  v36 = v22;
  v37 = dataCopy;
  v38 = objc_retainBlock(v40);
  v24 = v38;
  v25 = dataCopy;
  v26 = v22;
  v27 = additionalDataCopy;
  v28 = responseCopy;
  v29 = trackerCopy;
  v30 = dCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_emitPurchaseFailEventWithTracker:(id)tracker sessionAssertion:(id)assertion forID:(id)d buyParams:(id)params hasRacSupport:(BOOL)support response:(id)response upSellData:(id)data appAnalyticsAdditionalData:(id)self0
{
  trackerCopy = tracker;
  assertionCopy = assertion;
  dCopy = d;
  responseCopy = response;
  dataCopy = data;
  additionalDataCopy = additionalData;
  v21 = [(BSUIDownloadPurchaseMonitor *)self _buyParamsDictFromString:params];
  v22 = [v21 objectForKeyedSubscript:@"pricingParameters"];
  v23 = [(BSUIDownloadPurchaseMonitor *)self _isPreOrder:v21];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_2D8EC;
  v43[3] = &unk_3873D8;
  v44 = assertionCopy;
  v32 = assertionCopy;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2D978;
  block[3] = &unk_387E90;
  block[4] = self;
  v34 = dCopy;
  supportCopy = support;
  v35 = trackerCopy;
  v36 = additionalDataCopy;
  v42 = v23;
  v37 = v22;
  v38 = responseCopy;
  v39 = dataCopy;
  v40 = objc_retainBlock(v43);
  v24 = v40;
  v25 = dataCopy;
  v26 = responseCopy;
  v27 = v22;
  v28 = additionalDataCopy;
  v29 = trackerCopy;
  v30 = dCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)_buyParamsDictFromString:(id)string
{
  stringCopy = string;
  v4 = objc_opt_new();
  v5 = [stringCopy componentsSeparatedByString:@"&"];
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

- (BOOL)_isPreOrder:(id)order
{
  orderCopy = order;
  v4 = [orderCopy objectForKeyedSubscript:@"pricingParameters"];
  v5 = [orderCopy objectForKeyedSubscript:@"isPreorder"];

  LOBYTE(orderCopy) = [v5 isEqualToString:@"1"];
  LOBYTE(orderCopy) = [v4 hasSuffix:@"PRE"] | orderCopy;

  return orderCopy & 1;
}

- (id)_newContentDataForID:(id)d isAudioBook:(BOOL)book hasRacSupport:(BOOL)support tracker:(id)tracker supplementalContentCount:(id)count appAnalyticsAdditionalData:(id)data
{
  supportCopy = support;
  bookCopy = book;
  dCopy = d;
  dataCopy = data;
  countCopy = count;
  trackerCopy = tracker;
  v18 = [trackerCopy contentPrivateIDForContentID:dCopy];
  v19 = [trackerCopy contentUserIDForContentID:dCopy];

  v20 = +[BAEventReporter sharedReporter];
  v21 = [v20 seriesTypeForContentID:dCopy];

  v22 = [(BSUIDownloadPurchaseMonitor *)self _newProductionTypeForIsAudiobook:bookCopy hasRacSupport:supportCopy];
  if (dataCopy && _os_feature_enabled_impl())
  {
    v23 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [dataCopy supportsUnifiedProductPage]);
    editionKind = [dataCopy editionKind];
  }

  else
  {
    editionKind = 0;
    v23 = 0;
  }

  if (bookCopy)
  {
    v25 = 2;
  }

  else
  {
    v25 = 1;
  }

  v26 = [[BAContentData alloc] initWithContentID:dCopy contentType:v25 contentPrivateID:v18 contentUserID:v19 contentAcquisitionType:1 contentSubType:0 contentLength:0 supplementalContentCount:countCopy seriesType:v21 productionType:v22 isUnified:v23 contentKind:editionKind];

  return v26;
}

- (int64_t)_newProductionTypeForIsAudiobook:(BOOL)audiobook hasRacSupport:(BOOL)support
{
  v4 = 1;
  if (!support)
  {
    v4 = 2;
  }

  if (audiobook)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (id)_newPurchaseDataForPurchaseID:(id)d isPreorder:(BOOL)preorder pricingParameters:(id)parameters
{
  preorderCopy = preorder;
  parametersCopy = parameters;
  dCopy = d;
  v9 = [[BAPurchaseData alloc] initWithPurchaseAttemptID:dCopy purchaseMethod:0 isPreorder:preorderCopy pricingParameters:parametersCopy];

  return v9;
}

- (id)_newPurchaseFailData:(int64_t)data errorCode:(id)code errorDescription:(id)description errorDomain:(id)domain
{
  domainCopy = domain;
  descriptionCopy = description;
  codeCopy = code;
  v12 = [[BAPurchaseFailData alloc] initWithPurchaseFailureReason:data errorCode:codeCopy errorDescription:descriptionCopy errorDomain:domainCopy];

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

- (id)_purchaseForItemID:(id)d
{
  if (d)
  {
    dCopy = d;
    purchaseIDs = [(BSUIDownloadPurchaseMonitor *)self purchaseIDs];
    v6 = [purchaseIDs objectForKey:dCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_addPurchaseForItemID:(id)d isAudioBook:(BOOL)book
{
  if (d)
  {
    bookCopy = book;
    dCopy = d;
    v7 = objc_opt_new();
    v8 = +[NSUUID UUID];
    uUIDString = [v8 UUIDString];
    [v7 setIdentifier:uUIDString];

    [v7 setIsAudioBook:bookCopy];
    purchaseIDs = [(BSUIDownloadPurchaseMonitor *)self purchaseIDs];
    [purchaseIDs setObject:v7 forKey:dCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_removePurchaseByItemID:(id)d
{
  if (d)
  {
    dCopy = d;
    purchaseIDs = [(BSUIDownloadPurchaseMonitor *)self purchaseIDs];
    [purchaseIDs removeObjectForKey:dCopy];
  }
}

@end