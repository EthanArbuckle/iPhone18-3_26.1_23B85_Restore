@interface SHLCloudSubscriptionTransformer
- (SHLCloudSubscriptionTransformer)initWithConfiguration:(id)configuration;
- (id)cloudBackedOperationForZones:(id)zones container:(id)container;
- (id)newSubscriptionForZoneID:(id)d;
@end

@implementation SHLCloudSubscriptionTransformer

- (SHLCloudSubscriptionTransformer)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = SHLCloudSubscriptionTransformer;
  v6 = [(SHLCloudSubscriptionTransformer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v8 = objc_alloc_init(CKModifySubscriptionsOperation);
    modifySubscriptionsOperation = v7->_modifySubscriptionsOperation;
    v7->_modifySubscriptionsOperation = v8;
  }

  return v7;
}

- (id)cloudBackedOperationForZones:(id)zones container:(id)container
{
  zonesCopy = zones;
  containerCopy = container;
  v8 = [SHLCloudLibraryCache alloc];
  configuration = [(SHLCloudSubscriptionTransformer *)self configuration];
  callingProcessIdentifier = [configuration callingProcessIdentifier];
  v52 = containerCopy;
  container = [containerCopy container];
  containerIdentifier = [container containerIdentifier];
  selfCopy = self;
  configuration2 = [(SHLCloudSubscriptionTransformer *)self configuration];
  sessionIdentifier = [configuration2 sessionIdentifier];
  v55 = [(SHLCloudLibraryCache *)v8 initWithCallingProcessIdentifier:callingProcessIdentifier containerIdentifier:containerIdentifier transactionIdentifier:sessionIdentifier];

  v54 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [zonesCopy count]);
  v15 = zonesCopy;
  v16 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [zonesCopy count]);
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
        zoneID = [v22 zoneID];
        v24 = [(SHLCloudSubscriptionTransformer *)selfCopy newSubscriptionForZoneID:zoneID];

        v25 = [[SHLCloudBackedSubscription alloc] initWithSubscription:v24];
        v26 = [v21 zone];
        zoneID2 = [v26 zoneID];
        zoneName = [zoneID2 zoneName];
        [(SHLCloudLibraryCache *)v55 storeSubscription:v25 forZoneIdentifier:zoneName error:0];

        v29 = [v21 zone];
        zoneID3 = [v29 zoneID];
        subscriptionID = [v24 subscriptionID];
        [v54 setObject:zoneID3 forKey:subscriptionID];

        subscriptionID2 = [v24 subscriptionID];
        [v16 setObject:v24 forKey:subscriptionID2];
      }

      v18 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
    }

    while (v18);
  }

  container2 = [v52 container];
  privateCloudDatabase = [container2 privateCloudDatabase];
  modifySubscriptionsOperation = [(SHLCloudSubscriptionTransformer *)selfCopy modifySubscriptionsOperation];
  [modifySubscriptionsOperation setDatabase:privateCloudDatabase];

  allValues = [v16 allValues];
  modifySubscriptionsOperation2 = [(SHLCloudSubscriptionTransformer *)selfCopy modifySubscriptionsOperation];
  [modifySubscriptionsOperation2 setSubscriptionsToSave:allValues];

  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_1000311C0;
  v58[3] = &unk_10007DBD8;
  v59 = v54;
  v60 = v55;
  v56 = v55;
  v38 = v54;
  modifySubscriptionsOperation3 = [(SHLCloudSubscriptionTransformer *)selfCopy modifySubscriptionsOperation];
  [modifySubscriptionsOperation3 setModifySubscriptionsCompletionBlock:v58];

  v40 = objc_alloc_init(CKOperationGroup);
  [v40 setExpectedSendSize:1];
  modifySubscriptionsOperation4 = [(SHLCloudSubscriptionTransformer *)selfCopy modifySubscriptionsOperation];
  subscriptionsToSave = [modifySubscriptionsOperation4 subscriptionsToSave];
  v43 = [subscriptionsToSave count];
  modifySubscriptionsOperation5 = [(SHLCloudSubscriptionTransformer *)selfCopy modifySubscriptionsOperation];
  subscriptionIDsToDelete = [modifySubscriptionsOperation5 subscriptionIDsToDelete];
  [v40 setQuantity:{&v43[objc_msgSend(subscriptionIDsToDelete, "count")]}];

  v46 = [NSString stringWithFormat:@"%@", @"ModifySubscriptions"];
  [v40 setName:v46];

  modifySubscriptionsOperation6 = [(SHLCloudSubscriptionTransformer *)selfCopy modifySubscriptionsOperation];
  [modifySubscriptionsOperation6 setGroup:v40];

  v48 = [SHLCloudBackedOperation alloc];
  modifySubscriptionsOperation7 = [(SHLCloudSubscriptionTransformer *)selfCopy modifySubscriptionsOperation];
  v50 = [(SHLCloudBackedOperation *)v48 initWithOperation:modifySubscriptionsOperation7];

  return v50;
}

- (id)newSubscriptionForZoneID:(id)d
{
  dCopy = d;
  v4 = [CKRecordZoneSubscription alloc];
  zoneName = [dCopy zoneName];
  v6 = [v4 initWithZoneID:dCopy subscriptionID:zoneName];

  v7 = objc_alloc_init(CKNotificationInfo);
  [v7 setShouldSendContentAvailable:1];
  [v6 setNotificationInfo:v7];

  return v6;
}

@end