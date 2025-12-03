@interface SHLCloudModifyTaskTransformer
- (SHLCloudModifyTaskTransformer)initWithConfiguration:(id)configuration;
- (id)cloudBackedOperationFromModifyTask:(id)task container:(id)container;
- (id)recordIDsToDeleteFromModifyTask:(id)task;
- (id)recordsToSaveFromModifyTask:(id)task container:(id)container;
@end

@implementation SHLCloudModifyTaskTransformer

- (SHLCloudModifyTaskTransformer)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = SHLCloudModifyTaskTransformer;
  v6 = [(SHLCloudModifyTaskTransformer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v8 = objc_alloc_init(CKModifyRecordsOperation);
    modifyRecordsOperation = v7->_modifyRecordsOperation;
    v7->_modifyRecordsOperation = v8;

    [(CKModifyRecordsOperation *)v7->_modifyRecordsOperation setSavePolicy:1];
  }

  return v7;
}

- (id)cloudBackedOperationFromModifyTask:(id)task container:(id)container
{
  taskCopy = task;
  containerCopy = container;
  container = [containerCopy container];
  privateCloudDatabase = [container privateCloudDatabase];
  modifyRecordsOperation = [(SHLCloudModifyTaskTransformer *)self modifyRecordsOperation];
  [modifyRecordsOperation setDatabase:privateCloudDatabase];

  v11 = [(SHLCloudModifyTaskTransformer *)self recordsToSaveFromModifyTask:taskCopy container:containerCopy];
  modifyRecordsOperation2 = [(SHLCloudModifyTaskTransformer *)self modifyRecordsOperation];
  [modifyRecordsOperation2 setRecordsToSave:v11];

  v13 = [(SHLCloudModifyTaskTransformer *)self recordIDsToDeleteFromModifyTask:taskCopy];
  modifyRecordsOperation3 = [(SHLCloudModifyTaskTransformer *)self modifyRecordsOperation];
  [modifyRecordsOperation3 setRecordIDsToDelete:v13];

  progress = [taskCopy progress];
  modifyRecordsOperation4 = [(SHLCloudModifyTaskTransformer *)self modifyRecordsOperation];
  recordsToSave = [modifyRecordsOperation4 recordsToSave];
  [progress setTotalUnitCount:{objc_msgSend(recordsToSave, "count")}];

  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_10002DA64;
  v52[3] = &unk_10007DAE8;
  v18 = taskCopy;
  v53 = v18;
  modifyRecordsOperation5 = [(SHLCloudModifyTaskTransformer *)self modifyRecordsOperation];
  [modifyRecordsOperation5 setPerRecordSaveBlock:v52];

  v20 = [SHLCloudLibraryCache alloc];
  configuration = [(SHLCloudModifyTaskTransformer *)self configuration];
  callingProcessIdentifier = [configuration callingProcessIdentifier];
  container2 = [containerCopy container];
  containerIdentifier = [container2 containerIdentifier];
  configuration2 = [(SHLCloudModifyTaskTransformer *)self configuration];
  sessionIdentifier = [configuration2 sessionIdentifier];
  v27 = [(SHLCloudLibraryCache *)v20 initWithCallingProcessIdentifier:callingProcessIdentifier containerIdentifier:containerIdentifier transactionIdentifier:sessionIdentifier];

  v45 = _NSConcreteStackBlock;
  v46 = 3221225472;
  v47 = sub_10002DAD4;
  v48 = &unk_10007DB10;
  v49 = v27;
  v50 = v18;
  v51 = containerCopy;
  v28 = containerCopy;
  v29 = v18;
  v30 = v27;
  modifyRecordsOperation6 = [(SHLCloudModifyTaskTransformer *)self modifyRecordsOperation];
  [modifyRecordsOperation6 setModifyRecordsCompletionBlock:&v45];

  v32 = objc_alloc_init(CKOperationGroup);
  [v32 setExpectedSendSize:1];
  modifyRecordsOperation7 = [(SHLCloudModifyTaskTransformer *)self modifyRecordsOperation];
  recordsToSave2 = [modifyRecordsOperation7 recordsToSave];
  v35 = [recordsToSave2 count];
  modifyRecordsOperation8 = [(SHLCloudModifyTaskTransformer *)self modifyRecordsOperation];
  recordIDsToDelete = [modifyRecordsOperation8 recordIDsToDelete];
  [v32 setQuantity:{&v35[objc_msgSend(recordIDsToDelete, "count")]}];

  syncStartCondition = [v29 syncStartCondition];
  v39 = [NSString stringWithFormat:@"%@_%@", syncStartCondition, @"ModifyRecords", v45, v46, v47, v48];
  [v32 setName:v39];

  modifyRecordsOperation9 = [(SHLCloudModifyTaskTransformer *)self modifyRecordsOperation];
  [modifyRecordsOperation9 setGroup:v32];

  v41 = [SHLCloudBackedOperation alloc];
  modifyRecordsOperation10 = [(SHLCloudModifyTaskTransformer *)self modifyRecordsOperation];
  v43 = [(SHLCloudBackedOperation *)v41 initWithOperation:modifyRecordsOperation10];

  return v43;
}

- (id)recordsToSaveFromModifyTask:(id)task container:(id)container
{
  taskCopy = task;
  containerCopy = container;
  tracksToModify = [taskCopy tracksToModify];
  insertions = [tracksToModify insertions];
  v9 = [insertions count];
  groupsToModify = [taskCopy groupsToModify];
  insertions2 = [groupsToModify insertions];
  v12 = [insertions2 count];

  v13 = [NSMutableArray arrayWithCapacity:&v9[v12]];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  groupsToModify2 = [taskCopy groupsToModify];
  insertions3 = [groupsToModify2 insertions];

  v16 = [insertions3 countByEnumeratingWithState:&v38 objects:v43 count:16];
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
          objc_enumerationMutation(insertions3);
        }

        v20 = [SHLCloudGroupTransformer cloudBackedItemFromLibraryGroup:*(*(&v38 + 1) + 8 * i)];
        v21 = v20;
        if (v20)
        {
          record = [v20 record];
          [v13 addObject:record];
        }
      }

      v17 = [insertions3 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v17);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  tracksToModify2 = [taskCopy tracksToModify];
  insertions4 = [tracksToModify2 insertions];

  v25 = [insertions4 countByEnumeratingWithState:&v34 objects:v42 count:16];
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
          objc_enumerationMutation(insertions4);
        }

        v29 = +[SHLCloudTrackTransformer cloudBackedItemFromLibraryTrack:usingEncryption:](SHLCloudTrackTransformer, "cloudBackedItemFromLibraryTrack:usingEncryption:", *(*(&v34 + 1) + 8 * j), [containerCopy isEncrypted]);
        v30 = v29;
        if (v29)
        {
          record2 = [v29 record];
          [v13 addObject:record2];
        }
      }

      v26 = [insertions4 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v26);
  }

  v32 = [v13 copy];

  return v32;
}

- (id)recordIDsToDeleteFromModifyTask:(id)task
{
  taskCopy = task;
  tracksToModify = [taskCopy tracksToModify];
  deletions = [tracksToModify deletions];
  v6 = [deletions count];
  groupsToModify = [taskCopy groupsToModify];
  deletions2 = [groupsToModify deletions];
  v9 = [deletions2 count];

  v10 = [NSMutableArray arrayWithCapacity:&v6[v9]];
  v11 = +[SHLCloudContext sharedContext];
  shazamLibraryZone = [v11 shazamLibraryZone];
  zoneID = [shazamLibraryZone zoneID];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  groupsToModify2 = [taskCopy groupsToModify];
  deletions3 = [groupsToModify2 deletions];

  v16 = [deletions3 countByEnumeratingWithState:&v34 objects:v39 count:16];
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
          objc_enumerationMutation(deletions3);
        }

        v20 = [[CKRecordID alloc] initWithRecordName:*(*(&v34 + 1) + 8 * i) zoneID:zoneID];
        [v10 addObject:v20];
      }

      v17 = [deletions3 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v17);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  tracksToModify2 = [taskCopy tracksToModify];
  deletions4 = [tracksToModify2 deletions];

  v23 = [deletions4 countByEnumeratingWithState:&v30 objects:v38 count:16];
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
          objc_enumerationMutation(deletions4);
        }

        v27 = [[CKRecordID alloc] initWithRecordName:*(*(&v30 + 1) + 8 * j) zoneID:zoneID];
        [v10 addObject:v27];
      }

      v24 = [deletions4 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v24);
  }

  v28 = [v10 copy];

  return v28;
}

@end