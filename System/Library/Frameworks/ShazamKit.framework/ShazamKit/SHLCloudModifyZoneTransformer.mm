@interface SHLCloudModifyZoneTransformer
- (SHLCloudModifyZoneTransformer)initWithConfiguration:(id)a3;
- (id)cloudBackedOperationForZonesToSave:(id)a3 container:(id)a4;
- (id)recordZonesFromCloudBackedZones:(id)a3;
@end

@implementation SHLCloudModifyZoneTransformer

- (SHLCloudModifyZoneTransformer)initWithConfiguration:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SHLCloudModifyZoneTransformer;
  v6 = [(SHLCloudModifyZoneTransformer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v8 = objc_alloc_init(CKModifyRecordZonesOperation);
    modifyRecordZonesOperation = v7->_modifyRecordZonesOperation;
    v7->_modifyRecordZonesOperation = v8;
  }

  return v7;
}

- (id)cloudBackedOperationForZonesToSave:(id)a3 container:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 container];
  v9 = [v8 privateCloudDatabase];
  v10 = [(SHLCloudModifyZoneTransformer *)self modifyRecordZonesOperation];
  [v10 setDatabase:v9];

  v11 = [(SHLCloudModifyZoneTransformer *)self recordZonesFromCloudBackedZones:v7];

  v12 = [(SHLCloudModifyZoneTransformer *)self modifyRecordZonesOperation];
  [v12 setRecordZonesToSave:v11];

  v13 = [SHLCloudLibraryCache alloc];
  v14 = [(SHLCloudModifyZoneTransformer *)self configuration];
  v15 = [v14 callingProcessIdentifier];
  v16 = [v6 container];

  v17 = [v16 containerIdentifier];
  v18 = [(SHLCloudModifyZoneTransformer *)self configuration];
  v19 = [v18 sessionIdentifier];
  v20 = [(SHLCloudLibraryCache *)v13 initWithCallingProcessIdentifier:v15 containerIdentifier:v17 transactionIdentifier:v19];

  v35 = _NSConcreteStackBlock;
  v36 = 3221225472;
  v37 = sub_100044C6C;
  v38 = &unk_10007E168;
  v39 = v20;
  v21 = v20;
  v22 = [(SHLCloudModifyZoneTransformer *)self modifyRecordZonesOperation];
  [v22 setModifyRecordZonesCompletionBlock:&v35];

  v23 = objc_alloc_init(CKOperationGroup);
  [v23 setExpectedSendSize:1];
  v24 = [(SHLCloudModifyZoneTransformer *)self modifyRecordZonesOperation];
  v25 = [v24 recordZonesToSave];
  v26 = [v25 count];
  v27 = [(SHLCloudModifyZoneTransformer *)self modifyRecordZonesOperation];
  v28 = [v27 recordZoneIDsToDelete];
  [v23 setQuantity:{&v26[objc_msgSend(v28, "count")]}];

  v29 = [NSString stringWithFormat:@"%@", @"ModifyZones", v35, v36, v37, v38];
  [v23 setName:v29];

  v30 = [(SHLCloudModifyZoneTransformer *)self modifyRecordZonesOperation];
  [v30 setGroup:v23];

  v31 = [SHLCloudBackedOperation alloc];
  v32 = [(SHLCloudModifyZoneTransformer *)self modifyRecordZonesOperation];
  v33 = [(SHLCloudBackedOperation *)v31 initWithOperation:v32];

  return v33;
}

- (id)recordZonesFromCloudBackedZones:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
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