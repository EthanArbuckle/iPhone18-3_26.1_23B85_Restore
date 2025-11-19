@interface SHLCloudSubscriptionTransformer
- (SHLCloudSubscriptionTransformer)initWithConfiguration:(id)a3;
- (id)cloudBackedOperationForZones:(id)a3 container:(id)a4;
- (id)newSubscriptionForZoneID:(id)a3;
@end

@implementation SHLCloudSubscriptionTransformer

- (SHLCloudSubscriptionTransformer)initWithConfiguration:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SHLCloudSubscriptionTransformer;
  v6 = [(SHLCloudSubscriptionTransformer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v8 = objc_alloc_init(CKModifySubscriptionsOperation);
    modifySubscriptionsOperation = v7->_modifySubscriptionsOperation;
    v7->_modifySubscriptionsOperation = v8;
  }

  return v7;
}

- (id)cloudBackedOperationForZones:(id)a3 container:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [SHLCloudLibraryCache alloc];
  v9 = [(SHLCloudSubscriptionTransformer *)self configuration];
  v10 = [v9 callingProcessIdentifier];
  v52 = v7;
  v11 = [v7 container];
  v12 = [v11 containerIdentifier];
  v57 = self;
  v13 = [(SHLCloudSubscriptionTransformer *)self configuration];
  v14 = [v13 sessionIdentifier];
  v55 = [(SHLCloudLibraryCache *)v8 initWithCallingProcessIdentifier:v10 containerIdentifier:v12 transactionIdentifier:v14];

  v54 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v6 count]);
  v15 = v6;
  v16 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v6 count]);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v15;
  v17 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v62;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v62 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v61 + 1) + 8 * i);
        v22 = [v21 zone];
        v23 = [v22 zoneID];
        v24 = [(SHLCloudSubscriptionTransformer *)v57 newSubscriptionForZoneID:v23];

        v25 = [[SHLCloudBackedSubscription alloc] initWithSubscription:v24];
        v26 = [v21 zone];
        v27 = [v26 zoneID];
        v28 = [v27 zoneName];
        [(SHLCloudLibraryCache *)v55 storeSubscription:v25 forZoneIdentifier:v28 error:0];

        v29 = [v21 zone];
        v30 = [v29 zoneID];
        v31 = [v24 subscriptionID];
        [v54 setObject:v30 forKey:v31];

        v32 = [v24 subscriptionID];
        [v16 setObject:v24 forKey:v32];
      }

      v18 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
    }

    while (v18);
  }

  v33 = [v52 container];
  v34 = [v33 privateCloudDatabase];
  v35 = [(SHLCloudSubscriptionTransformer *)v57 modifySubscriptionsOperation];
  [v35 setDatabase:v34];

  v36 = [v16 allValues];
  v37 = [(SHLCloudSubscriptionTransformer *)v57 modifySubscriptionsOperation];
  [v37 setSubscriptionsToSave:v36];

  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_1000311C0;
  v58[3] = &unk_10007DBD8;
  v59 = v54;
  v60 = v55;
  v56 = v55;
  v38 = v54;
  v39 = [(SHLCloudSubscriptionTransformer *)v57 modifySubscriptionsOperation];
  [v39 setModifySubscriptionsCompletionBlock:v58];

  v40 = objc_alloc_init(CKOperationGroup);
  [v40 setExpectedSendSize:1];
  v41 = [(SHLCloudSubscriptionTransformer *)v57 modifySubscriptionsOperation];
  v42 = [v41 subscriptionsToSave];
  v43 = [v42 count];
  v44 = [(SHLCloudSubscriptionTransformer *)v57 modifySubscriptionsOperation];
  v45 = [v44 subscriptionIDsToDelete];
  [v40 setQuantity:{&v43[objc_msgSend(v45, "count")]}];

  v46 = [NSString stringWithFormat:@"%@", @"ModifySubscriptions"];
  [v40 setName:v46];

  v47 = [(SHLCloudSubscriptionTransformer *)v57 modifySubscriptionsOperation];
  [v47 setGroup:v40];

  v48 = [SHLCloudBackedOperation alloc];
  v49 = [(SHLCloudSubscriptionTransformer *)v57 modifySubscriptionsOperation];
  v50 = [(SHLCloudBackedOperation *)v48 initWithOperation:v49];

  return v50;
}

- (id)newSubscriptionForZoneID:(id)a3
{
  v3 = a3;
  v4 = [CKRecordZoneSubscription alloc];
  v5 = [v3 zoneName];
  v6 = [v4 initWithZoneID:v3 subscriptionID:v5];

  v7 = objc_alloc_init(CKNotificationInfo);
  [v7 setShouldSendContentAvailable:1];
  [v6 setNotificationInfo:v7];

  return v6;
}

@end