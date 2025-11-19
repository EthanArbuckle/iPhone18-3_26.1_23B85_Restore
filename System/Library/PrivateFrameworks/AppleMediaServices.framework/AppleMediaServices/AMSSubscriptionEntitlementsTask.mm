@interface AMSSubscriptionEntitlementsTask
+ (id)updateCacheForMediaType:(int64_t)a3 account:(id)a4 data:(id)a5;
+ (unint64_t)_segmentForMediaType:(int64_t)a3 error:(id *)a4;
- (AMSSubscriptionEntitlementsTask)initWithMediaType:(int64_t)a3;
- (id)_fetchEntitlementsFromASD;
- (id)_fetchEntitlementsFromIC;
- (id)_queryCachedASDSubscriptionForSegment:(unint64_t)a3 controller:(id)a4 reloadIfNeeded:(BOOL)a5;
- (id)_reloadASDSubscriptionForSegment:(unint64_t)a3 controller:(id)a4;
- (id)_resultFromASDEntitlements:(id)a3;
- (id)_resultFromICResponse:(id)a3;
- (id)performExternalLookup;
@end

@implementation AMSSubscriptionEntitlementsTask

- (AMSSubscriptionEntitlementsTask)initWithMediaType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = AMSSubscriptionEntitlementsTask;
  result = [(AMSTask *)&v5 init];
  if (result)
  {
    result->_mediaType = a3;
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

+ (id)updateCacheForMediaType:(int64_t)a3 account:(id)a4 data:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if (a3 > 7)
  {
    goto LABEL_20;
  }

  v31 = 0;
  v10 = [a1 _segmentForMediaType:a3 error:&v31];
  v11 = v31;
  if (v11)
  {
    v12 = +[AMSLogConfig sharedConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      *buf = 138544130;
      v33 = v14;
      v34 = 2114;
      v35 = v15;
      v36 = 2048;
      v37 = a3;
      v38 = 2114;
      v39 = v11;
      _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch ASD segment for mediaType: %ld. %{public}@", buf, 0x2Au);
    }

    goto LABEL_8;
  }

  if ([v9 count])
  {
    v23 = +[AMSLogConfig sharedConfig];
    if (!v23)
    {
      v23 = +[AMSLogConfig sharedConfig];
    }

    LODWORD(v24) = 4u >> a3;
    v25 = [v23 OSLogObject];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      v26 = AMSLogKey();
      *buf = 138543874;
      v33 = v24;
      LOBYTE(v24) = 4u >> a3;
      v34 = 2114;
      v35 = v26;
      v27 = v26;
      v36 = 2048;
      v37 = a3;
      _os_log_impl(&dword_192869000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Caching ASD entitlement data for mediaType: %ld", buf, 0x20u);
    }

    v28 = [getASDSubscriptionEntitlementsClass() sharedInstance];
    v29 = [v8 ams_DSID];
    [v28 setSubscriptionEntitlementsWithDictionary:v9 forAccountID:v29 segment:v10];

    if (v24)
    {
      goto LABEL_9;
    }

LABEL_20:
    v22 = +[AMSBinaryPromise promiseWithSuccess];
    goto LABEL_21;
  }

LABEL_8:

LABEL_9:
  v16 = +[AMSLogConfig sharedConfig];
  if (!v16)
  {
    v16 = +[AMSLogConfig sharedConfig];
  }

  v17 = [v16 OSLogObject];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v19 = AMSLogKey();
    *buf = 138543874;
    v33 = v18;
    v34 = 2114;
    v35 = v19;
    v36 = 2048;
    v37 = a3;
    _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Reloading entitlement data for mediaType: %ld", buf, 0x20u);
  }

  v20 = [[AMSSubscriptionEntitlementsTask alloc] initWithMediaType:a3];
  [(AMSSubscriptionEntitlementsTask *)v20 setCachePolicy:1];
  v21 = [(AMSSubscriptionEntitlementsTask *)v20 performExternalLookup];
  v22 = [v21 binaryPromiseAdapter];

LABEL_21:

  return v22;
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
    v6 = [getASDSubscriptionEntitlementsClass() sharedInstance];
    if ([(AMSSubscriptionEntitlementsTask *)self _shouldIgnoreCaches])
    {
      [(AMSSubscriptionEntitlementsTask *)self _reloadASDSubscriptionForSegment:v3 controller:v6];
    }

    else
    {
      [(AMSSubscriptionEntitlementsTask *)self _queryCachedASDSubscriptionForSegment:v3 controller:v6 reloadIfNeeded:[(AMSSubscriptionEntitlementsTask *)self _shouldIgnoreRemoteData]^ 1];
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

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    *buf = 138543618;
    *&buf[4] = v6;
    *&buf[12] = 2114;
    *&buf[14] = v7;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetching Music subscription entitlements", buf, 0x16u);
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
  v10 = [v8 sharedStatusController];
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
  v16 = [v14 activeAccount];
  v17 = [v13 initWithIdentity:v16];

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
  [v10 performSubscriptionStatusRequest:v20 withCompletionHandler:v25];
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

- (id)_queryCachedASDSubscriptionForSegment:(unint64_t)a3 controller:(id)a4 reloadIfNeeded:(BOOL)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = objc_alloc_init(AMSMutablePromise);
  v10 = +[AMSLogConfig sharedConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = AMSLogKey();
    *buf = 138543618;
    v25 = v12;
    v26 = 2114;
    v27 = v13;
    _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetching ASD cached subscriptions", buf, 0x16u);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __99__AMSSubscriptionEntitlementsTask__queryCachedASDSubscriptionForSegment_controller_reloadIfNeeded___block_invoke;
  v19[3] = &unk_1E73BC610;
  v23 = a5;
  v22 = a3;
  v19[4] = self;
  v20 = v8;
  v14 = v9;
  v21 = v14;
  v15 = v8;
  [v15 getCachedSubscriptionEntitlementsForSegment:a3 withResultHandler:v19];
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

- (id)_reloadASDSubscriptionForSegment:(unint64_t)a3 controller:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_alloc_init(AMSMutablePromise);
  v7 = +[AMSLogConfig sharedConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    *buf = 138543618;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Forcing ASD fetch for subscriptions", buf, 0x16u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__AMSSubscriptionEntitlementsTask__reloadASDSubscriptionForSegment_controller___block_invoke;
  v13[3] = &unk_1E73BC638;
  v11 = v6;
  v14 = v11;
  [v5 getSubscriptionEntitlementsForSegment:a3 ignoreCaches:1 isBackground:1 requestingBundleId:@"com.apple.AppStore" withCacheInfoResultHandler:v13];

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

- (id)_resultFromASDEntitlements:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v46 = objc_alloc_init(AMSSubscriptionEntitlementsResult);
  v48 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
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
        if (v6)
        {
          if (v7)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v6 = [*(*(&v49 + 1) + 8 * i) appVersion];
          if (v7)
          {
            goto LABEL_8;
          }
        }

        v7 = [v10 appAdamID];
LABEL_8:
        v11 = objc_alloc_init(AMSSubscriptionEntitlement);
        -[AMSSubscriptionEntitlement setAutoRenewEnabled:](v11, "setAutoRenewEnabled:", [v10 autoRenewEnabled]);
        v12 = [v10 expiryDate];
        [(AMSSubscriptionEntitlement *)v11 setExpiration:v12];

        v13 = [v10 chargeStoreFrontID];
        [(AMSSubscriptionEntitlement *)v11 setChargeStoreFrontID:v13];

        v14 = [v10 externalSubscriptionID];
        [(AMSSubscriptionEntitlement *)v11 setExternalSubscriptionID:v14];

        v15 = [v10 familyRank];
        [(AMSSubscriptionEntitlement *)v11 setFamilyRank:v15];

        -[AMSSubscriptionEntitlement setFamilySubscription:](v11, "setFamilySubscription:", [v10 hasFamily]);
        v16 = [v10 inAppAdamID];
        [(AMSSubscriptionEntitlement *)v11 setInAppAdamId:v16];

        v17 = [v10 inAppVersion];
        [(AMSSubscriptionEntitlement *)v11 setInAppVersion:v17];

        v18 = [v10 offerID];
        [(AMSSubscriptionEntitlement *)v11 setOfferId:v18];

        v19 = [v10 entitlementOriginType];
        [(AMSSubscriptionEntitlement *)v11 setEntitlementOriginType:v19];

        v20 = [v10 entitlementSourceAdamID];
        [(AMSSubscriptionEntitlement *)v11 setEntitlementSourceAdamId:v20];

        v21 = [v10 featureAccessTypeID];
        [(AMSSubscriptionEntitlement *)v11 setFeatureAccessTypeId:v21];

        v22 = [v10 freeTrialPeriodID];
        [(AMSSubscriptionEntitlement *)v11 setFreeTrialPeriodId:v22];

        v23 = [v10 poolType];
        [(AMSSubscriptionEntitlement *)v11 setPoolType:v23];

        v24 = [v10 promoScenarioID];
        [(AMSSubscriptionEntitlement *)v11 setPromoScenarioId:v24];

        v25 = [v10 startDate];
        [(AMSSubscriptionEntitlement *)v11 setStartDate:v25];

        v26 = [v10 subscriptionBundleID];
        [(AMSSubscriptionEntitlement *)v11 setSubscriptionBundleId:v26];

        v27 = [v10 vendorAdHocOfferID];
        [(AMSSubscriptionEntitlement *)v11 setVendorAdHocOfferId:v27];

        v28 = [v10 vendorID];
        [(AMSSubscriptionEntitlement *)v11 setVendorId:v28];

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
        v31 = [v10 initialPurchaseTimestamp];
        [v31 doubleValue];
        [(AMSSubscriptionEntitlement *)v11 setInitialPurchaseTimestamp:v32 / 1000.0];

        v33 = [v10 startDate];
        [(AMSSubscriptionEntitlement *)v11 setRenewDate:v33];

        v34 = [v10 serviceBeginsTimestamp];
        [v34 doubleValue];
        [(AMSSubscriptionEntitlement *)v11 setServiceBeginsTimestamp:v35 / 1000.0];

        -[AMSSubscriptionEntitlement setPurchaser:](v11, "setPurchaser:", [v10 isPurchaser]);
        [(AMSSubscriptionEntitlement *)v11 setSource:1];
        v36 = [v10 expiryDate];

        if (v36)
        {
          v37 = [MEMORY[0x1E695DF00] now];
          v38 = [v10 expiryDate];
          v36 = [v37 compare:v38] == -1;
        }

        [(AMSSubscriptionEntitlement *)v11 setStatus:v36];
        v39 = [v10 inAppAdamID];
        v40 = [v39 stringValue];
        v41 = v40;
        if (v40)
        {
          v42 = v40;
        }

        else
        {
          v43 = [MEMORY[0x1E696AFB0] UUID];
          v42 = [v43 UUIDString];
        }

        [v48 setObject:v11 forKeyedSubscript:v42];
      }

      v5 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
      if (!v5)
      {
        goto LABEL_25;
      }
    }
  }

  v6 = 0;
  v7 = 0;
LABEL_25:

  [(AMSSubscriptionEntitlementsResult *)v46 setEntitlements:v48];
  [(AMSSubscriptionEntitlementsResult *)v46 setAppAdamId:v7];
  [(AMSSubscriptionEntitlementsResult *)v46 setAppVersion:v6];
  v44 = v46;

  return v46;
}

- (id)_resultFromICResponse:(id)a3
{
  v21[2] = *MEMORY[0x1E69E9840];
  v3 = [a3 subscriptionStatus];
  v4 = objc_alloc_init(AMSSubscriptionEntitlementsResult);
  [(AMSSubscriptionEntitlementsResult *)v4 setAppAdamId:0];
  [(AMSSubscriptionEntitlementsResult *)v4 setAppVersion:0];
  v5 = [v3 responseDictionary];
  [(AMSSubscriptionEntitlementsResult *)v4 setServerResponse:v5];

  v6 = objc_alloc_init(AMSSubscriptionEntitlement);
  -[AMSSubscriptionEntitlement setStatus:](v6, "setStatus:", [v3 isMatchEnabled]);
  v7 = objc_alloc_init(AMSSubscriptionEntitlement);
  -[AMSSubscriptionEntitlement setAutoRenewEnabled:](v7, "setAutoRenewEnabled:", [v3 isAutoRenewEnabled]);
  v8 = [v3 expirationDate];
  [(AMSSubscriptionEntitlement *)v7 setExpiration:v8];

  v9 = [v3 statusType] == 1 && objc_msgSend(v3, "reasonType") == 2;
  [(AMSSubscriptionEntitlement *)v7 setFamilySubscription:v9];
  -[AMSSubscriptionEntitlement setFreeTrialEligible:](v7, "setFreeTrialEligible:", [v3 isEligibleForFreeTrial]);
  -[AMSSubscriptionEntitlement setPurchaser:](v7, "setPurchaser:", [v3 isPurchaser]);
  -[AMSSubscriptionEntitlement setCarrierErrorCode:](v7, "setCarrierErrorCode:", [v3 carrierBundlingErrorCode]);
  v10 = [v3 cellularOperatorName];
  [(AMSSubscriptionEntitlement *)v7 setCarrierOperatorName:v10];

  v11 = [v3 sessionIdentifier];
  [(AMSSubscriptionEntitlement *)v7 setCarrierSessionId:v11];

  v12 = [v3 phoneNumber];
  [(AMSSubscriptionEntitlement *)v7 setCarrierPhoneNumber:v12];

  v13 = [v3 studentExpirationDate];
  [(AMSSubscriptionEntitlement *)v7 setStudentExpirationDate:v13];

  v14 = [v3 initialPurchaseTimestamp];
  [v14 timeIntervalSince1970];
  [(AMSSubscriptionEntitlement *)v7 setInitialPurchaseTimestamp:?];

  v15 = [v3 serviceBeginsTimestamp];
  [v15 timeIntervalSince1970];
  [(AMSSubscriptionEntitlement *)v7 setServiceBeginsTimestamp:?];

  v16 = [v3 carrierBundlingStatusType];
  if (v16 <= 4)
  {
    [(AMSSubscriptionEntitlement *)v7 setCarrierStatus:dword_193016AE8[v16]];
  }

  [(AMSSubscriptionEntitlement *)v7 setPeriod:0];
  -[AMSSubscriptionEntitlement setPeriod:](v7, "setPeriod:", -[AMSSubscriptionEntitlement period](v7, "period") | [v3 isInFreeTrial]);
  -[AMSSubscriptionEntitlement setInFreePeriod:](v7, "setInFreePeriod:", [v3 isInFreePeriod]);
  v17 = [v3 sourceType];
  if (v17 <= 2)
  {
    [(AMSSubscriptionEntitlement *)v7 setSource:v17];
  }

  -[AMSSubscriptionEntitlement setStatus:](v7, "setStatus:", [v3 statusType] == 1);
  v20[0] = @"music-match";
  v20[1] = @"music";
  v21[0] = v6;
  v21[1] = v7;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  [(AMSSubscriptionEntitlementsResult *)v4 setEntitlements:v18];

  return v4;
}

+ (unint64_t)_segmentForMediaType:(int64_t)a3 error:(id *)a4
{
  if (a3 >= 8)
  {
    if (a4)
    {
      *a4 = AMSErrorWithFormat(12, @"Entitlements Failure", @"Unhandled segment for mediaType: %ld", a4, v4, v5, v6, v7, a3);
    }

    return 1;
  }

  else
  {
    v9 = qword_1E73BC688[a3];

    return [v9 unsignedLongValue];
  }
}

@end