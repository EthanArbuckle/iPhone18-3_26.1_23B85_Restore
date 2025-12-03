@interface AMSSubscriptionEntitlementsTask
+ (id)updateCacheForMediaType:(int64_t)type account:(id)account data:(id)data;
+ (unint64_t)_segmentForMediaType:(int64_t)type error:(id *)error;
- (AMSSubscriptionEntitlementsTask)initWithMediaType:(int64_t)type;
- (id)_fetchEntitlementsFromASD;
- (id)_fetchEntitlementsFromIC;
- (id)_queryCachedASDSubscriptionForSegment:(unint64_t)segment controller:(id)controller reloadIfNeeded:(BOOL)needed;
- (id)_reloadASDSubscriptionForSegment:(unint64_t)segment controller:(id)controller;
- (id)_resultFromASDEntitlements:(id)entitlements;
- (id)_resultFromICResponse:(id)response;
- (id)performExternalLookup;
@end

@implementation AMSSubscriptionEntitlementsTask

- (AMSSubscriptionEntitlementsTask)initWithMediaType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = AMSSubscriptionEntitlementsTask;
  result = [(AMSTask *)&v5 init];
  if (result)
  {
    result->_mediaType = type;
  }

  return result;
}

- (id)performExternalLookup
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__AMSSubscriptionEntitlementsTask_performExternalLookup__block_invoke;
  v5[3] = &unk_1E73B3588;
  v5[4] = self;
  v4.receiver = self;
  v4.super_class = AMSSubscriptionEntitlementsTask;
  v2 = [(AMSTask *)&v4 performTaskWithPromiseBlock:v5];

  return v2;
}

id __56__AMSSubscriptionEntitlementsTask_performExternalLookup__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mediaType];
  v3 = *(a1 + 32);
  if (v2 == 2)
  {
    [v3 _fetchEntitlementsFromIC];
  }

  else
  {
    [v3 _fetchEntitlementsFromASD];
  }
  v4 = ;

  return v4;
}

+ (id)updateCacheForMediaType:(int64_t)type account:(id)account data:(id)data
{
  v40 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  dataCopy = data;
  if (type > 7)
  {
    goto LABEL_20;
  }

  v31 = 0;
  v10 = [self _segmentForMediaType:type error:&v31];
  v11 = v31;
  if (v11)
  {
    v12 = +[AMSLogConfig sharedConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v12 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      *buf = 138544130;
      v33 = v14;
      v34 = 2114;
      v35 = v15;
      v36 = 2048;
      typeCopy3 = type;
      v38 = 2114;
      v39 = v11;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch ASD segment for mediaType: %ld. %{public}@", buf, 0x2Au);
    }

    goto LABEL_8;
  }

  if ([dataCopy count])
  {
    v23 = +[AMSLogConfig sharedConfig];
    if (!v23)
    {
      v23 = +[AMSLogConfig sharedConfig];
    }

    LODWORD(v24) = 4u >> type;
    oSLogObject2 = [v23 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      v26 = AMSLogKey();
      *buf = 138543874;
      v33 = v24;
      LOBYTE(v24) = 4u >> type;
      v34 = 2114;
      v35 = v26;
      v27 = v26;
      v36 = 2048;
      typeCopy3 = type;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Caching ASD entitlement data for mediaType: %ld", buf, 0x20u);
    }

    sharedInstance = [getASDSubscriptionEntitlementsClass() sharedInstance];
    ams_DSID = [accountCopy ams_DSID];
    [sharedInstance setSubscriptionEntitlementsWithDictionary:dataCopy forAccountID:ams_DSID segment:v10];

    if (v24)
    {
      goto LABEL_9;
    }

LABEL_20:
    binaryPromiseAdapter = +[AMSBinaryPromise promiseWithSuccess];
    goto LABEL_21;
  }

LABEL_8:

LABEL_9:
  v16 = +[AMSLogConfig sharedConfig];
  if (!v16)
  {
    v16 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject3 = [v16 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v19 = AMSLogKey();
    *buf = 138543874;
    v33 = v18;
    v34 = 2114;
    v35 = v19;
    v36 = 2048;
    typeCopy3 = type;
    _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Reloading entitlement data for mediaType: %ld", buf, 0x20u);
  }

  v20 = [[AMSSubscriptionEntitlementsTask alloc] initWithMediaType:type];
  [(AMSSubscriptionEntitlementsTask *)v20 setCachePolicy:1];
  performExternalLookup = [(AMSSubscriptionEntitlementsTask *)v20 performExternalLookup];
  binaryPromiseAdapter = [performExternalLookup binaryPromiseAdapter];

LABEL_21:

  return binaryPromiseAdapter;
}

- (id)_fetchEntitlementsFromASD
{
  v10 = 0;
  v3 = [AMSSubscriptionEntitlementsTask _segmentForMediaType:[(AMSSubscriptionEntitlementsTask *)self mediaType] error:&v10];
  v4 = v10;
  if (v4)
  {
    v5 = [AMSPromise promiseWithError:v4];
  }

  else
  {
    sharedInstance = [getASDSubscriptionEntitlementsClass() sharedInstance];
    if ([(AMSSubscriptionEntitlementsTask *)self _shouldIgnoreCaches])
    {
      [(AMSSubscriptionEntitlementsTask *)self _reloadASDSubscriptionForSegment:v3 controller:sharedInstance];
    }

    else
    {
      [(AMSSubscriptionEntitlementsTask *)self _queryCachedASDSubscriptionForSegment:v3 controller:sharedInstance reloadIfNeeded:[(AMSSubscriptionEntitlementsTask *)self _shouldIgnoreRemoteData]^ 1];
    }
    v7 = ;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__AMSSubscriptionEntitlementsTask__fetchEntitlementsFromASD__block_invoke;
    v9[3] = &unk_1E73B3028;
    v9[4] = self;
    v5 = [v7 thenWithBlock:v9];
  }

  return v5;
}

id __60__AMSSubscriptionEntitlementsTask__fetchEntitlementsFromASD__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    v11 = 138543618;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully fetched subscriptions", &v11, 0x16u);
  }

  v8 = [*(a1 + 32) _resultFromASDEntitlements:v3];

  v9 = [AMSPromise promiseWithResult:v8];

  return v9;
}

- (id)_fetchEntitlementsFromIC
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(AMSMutablePromise);
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    *buf = 138543618;
    *&buf[4] = v6;
    *&buf[12] = 2114;
    *&buf[14] = v7;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetching Music subscription entitlements", buf, 0x16u);
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v8 = qword_1ED6E3130;
  v30 = qword_1ED6E3130;
  if (!qword_1ED6E3130)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getICMusicSubscriptionStatusControllerClass_block_invoke_0;
    v32 = &unk_1E73B3880;
    v33 = &v27;
    __getICMusicSubscriptionStatusControllerClass_block_invoke_0(buf);
    v8 = v28[3];
  }

  v9 = v8;
  _Block_object_dispose(&v27, 8);
  sharedStatusController = [v8 sharedStatusController];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v11 = qword_1ED6E3138;
  v30 = qword_1ED6E3138;
  if (!qword_1ED6E3138)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getICStoreRequestContextClass_block_invoke;
    v32 = &unk_1E73B3880;
    v33 = &v27;
    __getICStoreRequestContextClass_block_invoke(buf);
    v11 = v28[3];
  }

  v12 = v11;
  _Block_object_dispose(&v27, 8);
  v13 = [v11 alloc];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v14 = qword_1ED6E3140;
  v30 = qword_1ED6E3140;
  if (!qword_1ED6E3140)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getICUserIdentityClass_block_invoke;
    v32 = &unk_1E73B3880;
    v33 = &v27;
    __getICUserIdentityClass_block_invoke(buf);
    v14 = v28[3];
  }

  v15 = v14;
  _Block_object_dispose(&v27, 8);
  activeAccount = [v14 activeAccount];
  v17 = [v13 initWithIdentity:activeAccount];

  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v18 = qword_1ED6E3148;
  v30 = qword_1ED6E3148;
  if (!qword_1ED6E3148)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getICMusicSubscriptionStatusRequestClass_block_invoke;
    v32 = &unk_1E73B3880;
    v33 = &v27;
    __getICMusicSubscriptionStatusRequestClass_block_invoke(buf);
    v18 = v28[3];
  }

  v19 = v18;
  _Block_object_dispose(&v27, 8);
  v20 = [[v18 alloc] initWithStoreRequestContext:v17];
  [v20 setShouldBypassEnforcementOfPrivacyAcknowledgement:1];
  if ([(AMSSubscriptionEntitlementsTask *)self _shouldIgnoreCaches])
  {
    [v20 setShouldIgnoreCache:1];
  }

  else
  {
    [v20 setAllowsFallbackToExpiredStatus:1];
    [v20 setAllowsFallbackToStatusNeedingReload:1];
    if ([(AMSSubscriptionEntitlementsTask *)self _shouldIgnoreRemoteData])
    {
      [v20 setShouldReturnLastKnownStatusOnly:1];
    }
  }

  if ([(AMSSubscriptionEntitlementsTask *)self extendedCarrierCheck])
  {
    [v20 setCarrierBundleProvisioningStyle:2];
    [v20 setReason:1];
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __59__AMSSubscriptionEntitlementsTask__fetchEntitlementsFromIC__block_invoke;
  v25[3] = &unk_1E73BC5E8;
  v25[4] = self;
  v21 = v3;
  v26 = v21;
  [sharedStatusController performSubscriptionStatusRequest:v20 withCompletionHandler:v25];
  v22 = v26;
  v23 = v21;

  return v21;
}

void __59__AMSSubscriptionEntitlementsTask__fetchEntitlementsFromIC__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[AMSLogConfig sharedConfig];
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      v17 = 138543874;
      v18 = v10;
      v19 = 2114;
      v20 = v11;
      v21 = 2114;
      v22 = v6;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Lookup failed. %{public}@", &v17, 0x20u);
    }

    [*(a1 + 40) finishWithError:v6];
  }

  else
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v8 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      v17 = 138543618;
      v18 = v13;
      v19 = 2114;
      v20 = v14;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Lookup succeeded", &v17, 0x16u);
    }

    v15 = *(a1 + 40);
    v16 = [*(a1 + 32) _resultFromICResponse:v5];
    [v15 finishWithResult:v16];
  }
}

- (id)_queryCachedASDSubscriptionForSegment:(unint64_t)segment controller:(id)controller reloadIfNeeded:(BOOL)needed
{
  v28 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v9 = objc_alloc_init(AMSMutablePromise);
  v10 = +[AMSLogConfig sharedConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = AMSLogKey();
    *buf = 138543618;
    v25 = v12;
    v26 = 2114;
    v27 = v13;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetching ASD cached subscriptions", buf, 0x16u);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __99__AMSSubscriptionEntitlementsTask__queryCachedASDSubscriptionForSegment_controller_reloadIfNeeded___block_invoke;
  v19[3] = &unk_1E73BC610;
  neededCopy = needed;
  segmentCopy = segment;
  v19[4] = self;
  v20 = controllerCopy;
  v14 = v9;
  v21 = v14;
  v15 = controllerCopy;
  [v15 getCachedSubscriptionEntitlementsForSegment:segment withResultHandler:v19];
  v16 = v21;
  v17 = v14;

  return v14;
}

void __99__AMSSubscriptionEntitlementsTask__queryCachedASDSubscriptionForSegment_controller_reloadIfNeeded___block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v11 = a2;
  v7 = a4;
  v8 = v7;
  if (a3 && *(a1 + 64) == 1)
  {
    v9 = [*(a1 + 32) _reloadASDSubscriptionForSegment:*(a1 + 56) controller:*(a1 + 40)];
    [*(a1 + 48) finishWithPromise:v9];
  }

  else
  {
    if (v7)
    {
      [*(a1 + 48) finishWithError:v7];
      goto LABEL_10;
    }

    v10 = *(a1 + 48);
    if (v11)
    {
      [v10 finishWithResult:?];
      goto LABEL_10;
    }

    v9 = AMSError(0, @"Cached Subscription Status Failed", @"Neither a result nor error returned", 0);
    [v10 finishWithError:v9];
  }

LABEL_10:
}

- (id)_reloadASDSubscriptionForSegment:(unint64_t)segment controller:(id)controller
{
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v6 = objc_alloc_init(AMSMutablePromise);
  v7 = +[AMSLogConfig sharedConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    *buf = 138543618;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Forcing ASD fetch for subscriptions", buf, 0x16u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__AMSSubscriptionEntitlementsTask__reloadASDSubscriptionForSegment_controller___block_invoke;
  v13[3] = &unk_1E73BC638;
  v11 = v6;
  v14 = v11;
  [controllerCopy getSubscriptionEntitlementsForSegment:segment ignoreCaches:1 isBackground:1 requestingBundleId:@"com.apple.AppStore" withCacheInfoResultHandler:v13];

  return v11;
}

void __79__AMSSubscriptionEntitlementsTask__reloadASDSubscriptionForSegment_controller___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = a2;
  v7 = a5;
  if (v7)
  {
    [*(a1 + 32) finishWithError:v7];
  }

  else
  {
    v8 = *(a1 + 32);
    if (v10)
    {
      [v8 finishWithResult:?];
    }

    else
    {
      v9 = AMSError(0, @"Reload Subscription Status Failed", @"Neither a result nor error returned", 0);
      [v8 finishWithError:v9];
    }
  }
}

- (id)_resultFromASDEntitlements:(id)entitlements
{
  v54 = *MEMORY[0x1E69E9840];
  entitlementsCopy = entitlements;
  v46 = objc_alloc_init(AMSSubscriptionEntitlementsResult);
  v48 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = entitlementsCopy;
  v4 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v4)
  {
    v5 = v4;
    appVersion = 0;
    appAdamID = 0;
    v8 = *v50;
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v50 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v49 + 1) + 8 * i);
        if (appVersion)
        {
          if (appAdamID)
          {
            goto LABEL_8;
          }
        }

        else
        {
          appVersion = [*(*(&v49 + 1) + 8 * i) appVersion];
          if (appAdamID)
          {
            goto LABEL_8;
          }
        }

        appAdamID = [v10 appAdamID];
LABEL_8:
        v11 = objc_alloc_init(AMSSubscriptionEntitlement);
        -[AMSSubscriptionEntitlement setAutoRenewEnabled:](v11, "setAutoRenewEnabled:", [v10 autoRenewEnabled]);
        expiryDate = [v10 expiryDate];
        [(AMSSubscriptionEntitlement *)v11 setExpiration:expiryDate];

        chargeStoreFrontID = [v10 chargeStoreFrontID];
        [(AMSSubscriptionEntitlement *)v11 setChargeStoreFrontID:chargeStoreFrontID];

        externalSubscriptionID = [v10 externalSubscriptionID];
        [(AMSSubscriptionEntitlement *)v11 setExternalSubscriptionID:externalSubscriptionID];

        familyRank = [v10 familyRank];
        [(AMSSubscriptionEntitlement *)v11 setFamilyRank:familyRank];

        -[AMSSubscriptionEntitlement setFamilySubscription:](v11, "setFamilySubscription:", [v10 hasFamily]);
        inAppAdamID = [v10 inAppAdamID];
        [(AMSSubscriptionEntitlement *)v11 setInAppAdamId:inAppAdamID];

        inAppVersion = [v10 inAppVersion];
        [(AMSSubscriptionEntitlement *)v11 setInAppVersion:inAppVersion];

        offerID = [v10 offerID];
        [(AMSSubscriptionEntitlement *)v11 setOfferId:offerID];

        entitlementOriginType = [v10 entitlementOriginType];
        [(AMSSubscriptionEntitlement *)v11 setEntitlementOriginType:entitlementOriginType];

        entitlementSourceAdamID = [v10 entitlementSourceAdamID];
        [(AMSSubscriptionEntitlement *)v11 setEntitlementSourceAdamId:entitlementSourceAdamID];

        featureAccessTypeID = [v10 featureAccessTypeID];
        [(AMSSubscriptionEntitlement *)v11 setFeatureAccessTypeId:featureAccessTypeID];

        freeTrialPeriodID = [v10 freeTrialPeriodID];
        [(AMSSubscriptionEntitlement *)v11 setFreeTrialPeriodId:freeTrialPeriodID];

        poolType = [v10 poolType];
        [(AMSSubscriptionEntitlement *)v11 setPoolType:poolType];

        promoScenarioID = [v10 promoScenarioID];
        [(AMSSubscriptionEntitlement *)v11 setPromoScenarioId:promoScenarioID];

        startDate = [v10 startDate];
        [(AMSSubscriptionEntitlement *)v11 setStartDate:startDate];

        subscriptionBundleID = [v10 subscriptionBundleID];
        [(AMSSubscriptionEntitlement *)v11 setSubscriptionBundleId:subscriptionBundleID];

        vendorAdHocOfferID = [v10 vendorAdHocOfferID];
        [(AMSSubscriptionEntitlement *)v11 setVendorAdHocOfferId:vendorAdHocOfferID];

        vendorID = [v10 vendorID];
        [(AMSSubscriptionEntitlement *)v11 setVendorId:vendorID];

        [(AMSSubscriptionEntitlement *)v11 setPeriod:0];
        -[AMSSubscriptionEntitlement setPeriod:](v11, "setPeriod:", -[AMSSubscriptionEntitlement period](v11, "period") | [v10 isTrialPeriod]);
        if ([v10 isOfferPeriod])
        {
          v29 = 2;
        }

        else
        {
          v29 = 0;
        }

        [(AMSSubscriptionEntitlement *)v11 setPeriod:[(AMSSubscriptionEntitlement *)v11 period]| v29];
        if ([v10 isInGracePeriod])
        {
          v30 = 4;
        }

        else
        {
          v30 = 0;
        }

        [(AMSSubscriptionEntitlement *)v11 setPeriod:[(AMSSubscriptionEntitlement *)v11 period]| v30];
        [(AMSSubscriptionEntitlement *)v11 setInFreePeriod:[(AMSSubscriptionEntitlement *)v11 period]& 1];
        initialPurchaseTimestamp = [v10 initialPurchaseTimestamp];
        [initialPurchaseTimestamp doubleValue];
        [(AMSSubscriptionEntitlement *)v11 setInitialPurchaseTimestamp:v32 / 1000.0];

        startDate2 = [v10 startDate];
        [(AMSSubscriptionEntitlement *)v11 setRenewDate:startDate2];

        serviceBeginsTimestamp = [v10 serviceBeginsTimestamp];
        [serviceBeginsTimestamp doubleValue];
        [(AMSSubscriptionEntitlement *)v11 setServiceBeginsTimestamp:v35 / 1000.0];

        -[AMSSubscriptionEntitlement setPurchaser:](v11, "setPurchaser:", [v10 isPurchaser]);
        [(AMSSubscriptionEntitlement *)v11 setSource:1];
        expiryDate2 = [v10 expiryDate];

        if (expiryDate2)
        {
          v37 = [MEMORY[0x1E695DF00] now];
          expiryDate3 = [v10 expiryDate];
          expiryDate2 = [v37 compare:expiryDate3] == -1;
        }

        [(AMSSubscriptionEntitlement *)v11 setStatus:expiryDate2];
        inAppAdamID2 = [v10 inAppAdamID];
        stringValue = [inAppAdamID2 stringValue];
        v41 = stringValue;
        if (stringValue)
        {
          uUIDString = stringValue;
        }

        else
        {
          uUID = [MEMORY[0x1E696AFB0] UUID];
          uUIDString = [uUID UUIDString];
        }

        [v48 setObject:v11 forKeyedSubscript:uUIDString];
      }

      v5 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
      if (!v5)
      {
        goto LABEL_25;
      }
    }
  }

  appVersion = 0;
  appAdamID = 0;
LABEL_25:

  [(AMSSubscriptionEntitlementsResult *)v46 setEntitlements:v48];
  [(AMSSubscriptionEntitlementsResult *)v46 setAppAdamId:appAdamID];
  [(AMSSubscriptionEntitlementsResult *)v46 setAppVersion:appVersion];
  v44 = v46;

  return v46;
}

- (id)_resultFromICResponse:(id)response
{
  v21[2] = *MEMORY[0x1E69E9840];
  subscriptionStatus = [response subscriptionStatus];
  v4 = objc_alloc_init(AMSSubscriptionEntitlementsResult);
  [(AMSSubscriptionEntitlementsResult *)v4 setAppAdamId:0];
  [(AMSSubscriptionEntitlementsResult *)v4 setAppVersion:0];
  responseDictionary = [subscriptionStatus responseDictionary];
  [(AMSSubscriptionEntitlementsResult *)v4 setServerResponse:responseDictionary];

  v6 = objc_alloc_init(AMSSubscriptionEntitlement);
  -[AMSSubscriptionEntitlement setStatus:](v6, "setStatus:", [subscriptionStatus isMatchEnabled]);
  v7 = objc_alloc_init(AMSSubscriptionEntitlement);
  -[AMSSubscriptionEntitlement setAutoRenewEnabled:](v7, "setAutoRenewEnabled:", [subscriptionStatus isAutoRenewEnabled]);
  expirationDate = [subscriptionStatus expirationDate];
  [(AMSSubscriptionEntitlement *)v7 setExpiration:expirationDate];

  v9 = [subscriptionStatus statusType] == 1 && objc_msgSend(subscriptionStatus, "reasonType") == 2;
  [(AMSSubscriptionEntitlement *)v7 setFamilySubscription:v9];
  -[AMSSubscriptionEntitlement setFreeTrialEligible:](v7, "setFreeTrialEligible:", [subscriptionStatus isEligibleForFreeTrial]);
  -[AMSSubscriptionEntitlement setPurchaser:](v7, "setPurchaser:", [subscriptionStatus isPurchaser]);
  -[AMSSubscriptionEntitlement setCarrierErrorCode:](v7, "setCarrierErrorCode:", [subscriptionStatus carrierBundlingErrorCode]);
  cellularOperatorName = [subscriptionStatus cellularOperatorName];
  [(AMSSubscriptionEntitlement *)v7 setCarrierOperatorName:cellularOperatorName];

  sessionIdentifier = [subscriptionStatus sessionIdentifier];
  [(AMSSubscriptionEntitlement *)v7 setCarrierSessionId:sessionIdentifier];

  phoneNumber = [subscriptionStatus phoneNumber];
  [(AMSSubscriptionEntitlement *)v7 setCarrierPhoneNumber:phoneNumber];

  studentExpirationDate = [subscriptionStatus studentExpirationDate];
  [(AMSSubscriptionEntitlement *)v7 setStudentExpirationDate:studentExpirationDate];

  initialPurchaseTimestamp = [subscriptionStatus initialPurchaseTimestamp];
  [initialPurchaseTimestamp timeIntervalSince1970];
  [(AMSSubscriptionEntitlement *)v7 setInitialPurchaseTimestamp:?];

  serviceBeginsTimestamp = [subscriptionStatus serviceBeginsTimestamp];
  [serviceBeginsTimestamp timeIntervalSince1970];
  [(AMSSubscriptionEntitlement *)v7 setServiceBeginsTimestamp:?];

  carrierBundlingStatusType = [subscriptionStatus carrierBundlingStatusType];
  if (carrierBundlingStatusType <= 4)
  {
    [(AMSSubscriptionEntitlement *)v7 setCarrierStatus:dword_193016AE8[carrierBundlingStatusType]];
  }

  [(AMSSubscriptionEntitlement *)v7 setPeriod:0];
  -[AMSSubscriptionEntitlement setPeriod:](v7, "setPeriod:", -[AMSSubscriptionEntitlement period](v7, "period") | [subscriptionStatus isInFreeTrial]);
  -[AMSSubscriptionEntitlement setInFreePeriod:](v7, "setInFreePeriod:", [subscriptionStatus isInFreePeriod]);
  sourceType = [subscriptionStatus sourceType];
  if (sourceType <= 2)
  {
    [(AMSSubscriptionEntitlement *)v7 setSource:sourceType];
  }

  -[AMSSubscriptionEntitlement setStatus:](v7, "setStatus:", [subscriptionStatus statusType] == 1);
  v20[0] = @"music-match";
  v20[1] = @"music";
  v21[0] = v6;
  v21[1] = v7;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  [(AMSSubscriptionEntitlementsResult *)v4 setEntitlements:v18];

  return v4;
}

+ (unint64_t)_segmentForMediaType:(int64_t)type error:(id *)error
{
  if (type >= 8)
  {
    if (error)
    {
      *error = AMSErrorWithFormat(12, @"Entitlements Failure", @"Unhandled segment for mediaType: %ld", error, v4, v5, v6, v7, type);
    }

    return 1;
  }

  else
  {
    v9 = qword_1E73BC688[type];

    return [v9 unsignedLongValue];
  }
}

@end