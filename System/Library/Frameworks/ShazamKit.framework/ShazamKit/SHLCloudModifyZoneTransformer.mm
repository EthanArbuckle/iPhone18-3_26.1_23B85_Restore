@interface SHLCloudModifyZoneTransformer
- (SHLCloudModifyZoneTransformer)initWithConfiguration:(id)configuration;
- (id)cloudBackedOperationForZonesToSave:(id)save container:(id)container;
- (id)recordZonesFromCloudBackedZones:(id)zones;
@end

@implementation SHLCloudModifyZoneTransformer

- (SHLCloudModifyZoneTransformer)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = SHLCloudModifyZoneTransformer;
  v6 = [(SHLCloudModifyZoneTransformer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v8 = objc_alloc_init(CKModifyRecordZonesOperation);
    modifyRecordZonesOperation = v7->_modifyRecordZonesOperation;
    v7->_modifyRecordZonesOperation = v8;
  }

  return v7;
}

- (id)cloudBackedOperationForZonesToSave:(id)save container:(id)container
{
  containerCopy = container;
  saveCopy = save;
  container = [containerCopy container];
  privateCloudDatabase = [container privateCloudDatabase];
  modifyRecordZonesOperation = [(SHLCloudModifyZoneTransformer *)self modifyRecordZonesOperation];
  [modifyRecordZonesOperation setDatabase:privateCloudDatabase];

  v11 = [(SHLCloudModifyZoneTransformer *)self recordZonesFromCloudBackedZones:saveCopy];

  modifyRecordZonesOperation2 = [(SHLCloudModifyZoneTransformer *)self modifyRecordZonesOperation];
  [modifyRecordZonesOperation2 setRecordZonesToSave:v11];

  v13 = [SHLCloudLibraryCache alloc];
  configuration = [(SHLCloudModifyZoneTransformer *)self configuration];
  callingProcessIdentifier = [configuration callingProcessIdentifier];
  container2 = [containerCopy container];

  containerIdentifier = [container2 containerIdentifier];
  configuration2 = [(SHLCloudModifyZoneTransformer *)self configuration];
  sessionIdentifier = [configuration2 sessionIdentifier];
  v20 = [(SHLCloudLibraryCache *)v13 initWithCallingProcessIdentifier:callingProcessIdentifier containerIdentifier:containerIdentifier transactionIdentifier:sessionIdentifier];

  v35 = _NSConcreteStackBlock;
  v36 = 3221225472;
  v37 = sub_100044C6C;
  v38 = &unk_10007E168;
  v39 = v20;
  v21 = v20;
  modifyRecordZonesOperation3 = [(SHLCloudModifyZoneTransformer *)self modifyRecordZonesOperation];
  [modifyRecordZonesOperation3 setModifyRecordZonesCompletionBlock:&v35];

  v23 = objc_alloc_init(CKOperationGroup);
  [v23 setExpectedSendSize:1];
  modifyRecordZonesOperation4 = [(SHLCloudModifyZoneTransformer *)self modifyRecordZonesOperation];
  recordZonesToSave = [modifyRecordZonesOperation4 recordZonesToSave];
  v26 = [recordZonesToSave count];
  modifyRecordZonesOperation5 = [(SHLCloudModifyZoneTransformer *)self modifyRecordZonesOperation];
  recordZoneIDsToDelete = [modifyRecordZonesOperation5 recordZoneIDsToDelete];
  [v23 setQuantity:{&v26[objc_msgSend(recordZoneIDsToDelete, "count")]}];

  v29 = [NSString stringWithFormat:@"%@", @"ModifyZones", v35, v36, v37, v38];
  [v23 setName:v29];

  modifyRecordZonesOperation6 = [(SHLCloudModifyZoneTransformer *)self modifyRecordZonesOperation];
  [modifyRecordZonesOperation6 setGroup:v23];

  v31 = [SHLCloudBackedOperation alloc];
  modifyRecordZonesOperation7 = [(SHLCloudModifyZoneTransformer *)self modifyRecordZonesOperation];
  v33 = [(SHLCloudBackedOperation *)v31 initWithOperation:modifyRecordZonesOperation7];

  return v33;
}

- (id)recordZonesFromCloudBackedZones:(id)zones
{
  zonesCopy = zones;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [zonesCopy count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = zonesCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) zone];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

@end