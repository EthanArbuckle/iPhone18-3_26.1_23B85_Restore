@interface SHLCloudModifyTaskTransformer
- (SHLCloudModifyTaskTransformer)initWithConfiguration:(id)a3;
- (id)cloudBackedOperationFromModifyTask:(id)a3 container:(id)a4;
- (id)recordIDsToDeleteFromModifyTask:(id)a3;
- (id)recordsToSaveFromModifyTask:(id)a3 container:(id)a4;
@end

@implementation SHLCloudModifyTaskTransformer

- (SHLCloudModifyTaskTransformer)initWithConfiguration:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SHLCloudModifyTaskTransformer;
  v6 = [(SHLCloudModifyTaskTransformer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v8 = objc_alloc_init(CKModifyRecordsOperation);
    modifyRecordsOperation = v7->_modifyRecordsOperation;
    v7->_modifyRecordsOperation = v8;

    [(CKModifyRecordsOperation *)v7->_modifyRecordsOperation setSavePolicy:1];
  }

  return v7;
}

- (id)cloudBackedOperationFromModifyTask:(id)a3 container:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 container];
  v9 = [v8 privateCloudDatabase];
  v10 = [(SHLCloudModifyTaskTransformer *)self modifyRecordsOperation];
  [v10 setDatabase:v9];

  v11 = [(SHLCloudModifyTaskTransformer *)self recordsToSaveFromModifyTask:v6 container:v7];
  v12 = [(SHLCloudModifyTaskTransformer *)self modifyRecordsOperation];
  [v12 setRecordsToSave:v11];

  v13 = [(SHLCloudModifyTaskTransformer *)self recordIDsToDeleteFromModifyTask:v6];
  v14 = [(SHLCloudModifyTaskTransformer *)self modifyRecordsOperation];
  [v14 setRecordIDsToDelete:v13];

  v15 = [v6 progress];
  v16 = [(SHLCloudModifyTaskTransformer *)self modifyRecordsOperation];
  v17 = [v16 recordsToSave];
  [v15 setTotalUnitCount:{objc_msgSend(v17, "count")}];

  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_10002DA64;
  v52[3] = &unk_10007DAE8;
  v18 = v6;
  v53 = v18;
  v19 = [(SHLCloudModifyTaskTransformer *)self modifyRecordsOperation];
  [v19 setPerRecordSaveBlock:v52];

  v20 = [SHLCloudLibraryCache alloc];
  v21 = [(SHLCloudModifyTaskTransformer *)self configuration];
  v22 = [v21 callingProcessIdentifier];
  v23 = [v7 container];
  v24 = [v23 containerIdentifier];
  v25 = [(SHLCloudModifyTaskTransformer *)self configuration];
  v26 = [v25 sessionIdentifier];
  v27 = [(SHLCloudLibraryCache *)v20 initWithCallingProcessIdentifier:v22 containerIdentifier:v24 transactionIdentifier:v26];

  v45 = _NSConcreteStackBlock;
  v46 = 3221225472;
  v47 = sub_10002DAD4;
  v48 = &unk_10007DB10;
  v49 = v27;
  v50 = v18;
  v51 = v7;
  v28 = v7;
  v29 = v18;
  v30 = v27;
  v31 = [(SHLCloudModifyTaskTransformer *)self modifyRecordsOperation];
  [v31 setModifyRecordsCompletionBlock:&v45];

  v32 = objc_alloc_init(CKOperationGroup);
  [v32 setExpectedSendSize:1];
  v33 = [(SHLCloudModifyTaskTransformer *)self modifyRecordsOperation];
  v34 = [v33 recordsToSave];
  v35 = [v34 count];
  v36 = [(SHLCloudModifyTaskTransformer *)self modifyRecordsOperation];
  v37 = [v36 recordIDsToDelete];
  [v32 setQuantity:{&v35[objc_msgSend(v37, "count")]}];

  v38 = [v29 syncStartCondition];
  v39 = [NSString stringWithFormat:@"%@_%@", v38, @"ModifyRecords", v45, v46, v47, v48];
  [v32 setName:v39];

  v40 = [(SHLCloudModifyTaskTransformer *)self modifyRecordsOperation];
  [v40 setGroup:v32];

  v41 = [SHLCloudBackedOperation alloc];
  v42 = [(SHLCloudModifyTaskTransformer *)self modifyRecordsOperation];
  v43 = [(SHLCloudBackedOperation *)v41 initWithOperation:v42];

  return v43;
}

- (id)recordsToSaveFromModifyTask:(id)a3 container:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 tracksToModify];
  v8 = [v7 insertions];
  v9 = [v8 count];
  v10 = [v5 groupsToModify];
  v11 = [v10 insertions];
  v12 = [v11 count];

  v13 = [NSMutableArray arrayWithCapacity:&v9[v12]];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v14 = [v5 groupsToModify];
  v15 = [v14 insertions];

  v16 = [v15 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v39;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v39 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [SHLCloudGroupTransformer cloudBackedItemFromLibraryGroup:*(*(&v38 + 1) + 8 * i)];
        v21 = v20;
        if (v20)
        {
          v22 = [v20 record];
          [v13 addObject:v22];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v17);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v23 = [v5 tracksToModify];
  v24 = [v23 insertions];

  v25 = [v24 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v35;
    do
    {
      for (j = 0; j != v26; j = j + 1)
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = +[SHLCloudTrackTransformer cloudBackedItemFromLibraryTrack:usingEncryption:](SHLCloudTrackTransformer, "cloudBackedItemFromLibraryTrack:usingEncryption:", *(*(&v34 + 1) + 8 * j), [v6 isEncrypted]);
        v30 = v29;
        if (v29)
        {
          v31 = [v29 record];
          [v13 addObject:v31];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v26);
  }

  v32 = [v13 copy];

  return v32;
}

- (id)recordIDsToDeleteFromModifyTask:(id)a3
{
  v3 = a3;
  v4 = [v3 tracksToModify];
  v5 = [v4 deletions];
  v6 = [v5 count];
  v7 = [v3 groupsToModify];
  v8 = [v7 deletions];
  v9 = [v8 count];

  v10 = [NSMutableArray arrayWithCapacity:&v6[v9]];
  v11 = +[SHLCloudContext sharedContext];
  v12 = [v11 shazamLibraryZone];
  v13 = [v12 zoneID];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = [v3 groupsToModify];
  v15 = [v14 deletions];

  v16 = [v15 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v35;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [[CKRecordID alloc] initWithRecordName:*(*(&v34 + 1) + 8 * i) zoneID:v13];
        [v10 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v17);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v21 = [v3 tracksToModify];
  v22 = [v21 deletions];

  v23 = [v22 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v31;
    do
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [[CKRecordID alloc] initWithRecordName:*(*(&v30 + 1) + 8 * j) zoneID:v13];
        [v10 addObject:v27];
      }

      v24 = [v22 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v24);
  }

  v28 = [v10 copy];

  return v28;
}

@end