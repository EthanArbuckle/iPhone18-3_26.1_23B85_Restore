@interface ICNACloudOperationEventReporter
+ (id)sharedReporter;
- (id)accountDataForOperation:(id)a3;
- (id)cloudSyncableDataForOperation:(id)a3 recordsByRecordID:(id)a4;
- (id)operationDataForOperaiton:(id)a3;
- (id)partialCloudErrorDataForOperation:(id)a3 recordsByRecordID:(id)a4 operationError:(id)a5;
- (id)saltedAccountIDForOperation:(id)a3;
- (id)saltedIDForOperation:(id)a3;
- (id)saltedIDforID:(id)a3;
- (id)subTrackerForOperation:(id)a3;
- (void)cloudContext:(id)a3 reportOperationEnd:(id)a4 recordsByRecordID:(id)a5 operationError:(id)a6;
- (void)submitCloudOperationEndEventForCKOperation:(id)a3 recordsByRecordID:(id)a4 operationError:(id)a5;
@end

@implementation ICNACloudOperationEventReporter

+ (id)sharedReporter
{
  if (qword_1006CB2B8 != -1)
  {
    sub_1000049C4();
  }

  v3 = qword_1006CB2B0;

  return v3;
}

- (id)saltedIDforID:(id)a3
{
  v3 = a3;
  v4 = +[ICNAIdentityManager sharedManager];
  v5 = [v4 saltedID:v3 forClass:objc_opt_class()];

  return v5;
}

- (id)saltedIDForOperation:(id)a3
{
  v4 = [a3 operationID];
  v5 = [(ICNACloudOperationEventReporter *)self saltedIDforID:v4];

  return v5;
}

- (id)saltedAccountIDForOperation:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v4 database], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "container"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "setupInfo"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "accountOverrideInfo"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "accountID"), v9 = objc_claimAutoreleasedReturnValue(), v8, v7, v6, v5, v9))
  {
    v10 = [(ICNACloudOperationEventReporter *)self saltedIDforID:v9];
  }

  else
  {
    v10 = @"icna_account_id_unknown";
  }

  return v10;
}

- (id)subTrackerForOperation:(id)a3
{
  v4 = a3;
  v5 = [ICNASubTracker alloc];
  v6 = [(ICNACloudOperationEventReporter *)self saltedIDForOperation:v4];

  v7 = [v5 initWithName:v6];

  return v7;
}

- (void)submitCloudOperationEndEventForCKOperation:(id)a3 recordsByRecordID:(id)a4 operationError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v35 = [(ICNACloudOperationEventReporter *)self subTrackerForOperation:v8];
  v11 = [(ICNACloudOperationEventReporter *)self accountDataForOperation:v8];
  v12 = [(ICNACloudOperationEventReporter *)self operationDataForOperaiton:v8];
  v13 = [(ICNACloudOperationEventReporter *)self cloudSyncableDataForOperation:v8 recordsByRecordID:v9];
  v14 = objc_alloc_init(NSMutableArray);
  v34 = v11;
  [v14 addObject:v11];
  [v14 addObject:v12];
  [v14 addObject:v13];
  v36 = v9;
  if (!v10)
  {
    v18 = 1;
    goto LABEL_9;
  }

  v15 = [v10 domain];
  if (![v15 isEqualToString:CKErrorDomain])
  {

    goto LABEL_7;
  }

  v16 = [v10 code];

  if (v16 != 2)
  {
LABEL_7:
    v19 = [v10 domain];
    v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@_%ld", v19, [v10 code]);

    v20 = [ICASFullErrorData alloc];
    v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 code]);
    v22 = [v20 initWithFullErrorCode:v21 errorString:v17];

    [v14 addObject:v22];
    v18 = 3;
    goto LABEL_8;
  }

  v17 = [(ICNACloudOperationEventReporter *)self partialCloudErrorDataForOperation:v8 recordsByRecordID:v9 operationError:v10];
  [v14 addObject:v17];
  v18 = 2;
LABEL_8:

LABEL_9:
  v23 = [[ICASErrorStatus alloc] initWithErrorStatus:v18];
  v24 = [[ICASCloudErrorData alloc] initWithErrorStatus:v23];
  [v14 addObject:v24];
  if (+[ICUtilities isInternalInstall])
  {
    v25 = dispatch_semaphore_create(0);
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = sub_1000A3C58;
    v44 = sub_1000A3C68;
    v45 = @"icna_device_id_unknown";
    v26 = [v8 configuration];
    v27 = [v26 container];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000A3C70;
    v37[3] = &unk_100647E30;
    v39 = &v40;
    v28 = v25;
    v38 = v28;
    [v27 fetchCurrentDeviceIDWithCompletionHandler:v37];

    v29 = dispatch_time(0, 750000000);
    if (dispatch_semaphore_wait(v28, v29))
    {
      v30 = v41[5];
      v41[5] = @"icna_device_id_failed_to_obtain";
    }

    v31 = [ICASInternalUserData alloc];
    v32 = [v31 initWithRawUserDSID:v41[5]];
    [v14 addObject:v32];

    _Block_object_dispose(&v40, 8);
  }

  v33 = +[ICNAController sharedController];
  [v33 submitEventOfType:objc_opt_class() pushThenPopDataObjects:v14 subTracker:v35];
}

- (id)accountDataForOperation:(id)a3
{
  v3 = [(ICNACloudOperationEventReporter *)self saltedAccountIDForOperation:a3];
  v4 = [[ICASAccountType alloc] initWithAccountType:1];
  v5 = [[ICASAccountData alloc] initWithAccountType:v4 accountID:v3];

  return v5;
}

- (id)operationDataForOperaiton:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = 5;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = 6;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v5 = 7;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v5 = 8;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v5 = 9;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v5 = 10;
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v5 = 11;
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v5 = 1;
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v5 = 2;
                    }

                    else
                    {
                      v5 = 0;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v6 = [ICASCloudOperationData alloc];
  v7 = [(ICNACloudOperationEventReporter *)self saltedIDForOperation:v4];
  v8 = [[ICASOperationType alloc] initWithOperationType:v5];
  v9 = [v4 group];
  v10 = [v9 name];
  v11 = [v6 initWithOperationID:v7 operationType:v8 operationGroupName:v10];

  return v11;
}

- (id)cloudSyncableDataForOperation:(id)a3 recordsByRecordID:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 recordIDs];
    v8 = 0;
LABEL_6:
    v9 = @"icna_record_type_unknown";
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 0;
    v7 = 0;
    goto LABEL_6;
  }

  v7 = [v5 recordIDsToDelete];
  v8 = [v5 recordsToSave];
  v9 = @"icna_record_type_deleted";
LABEL_7:
  v33 = v9;
  v40 = objc_alloc_init(NSMutableArray);
  v10 = objc_alloc_init(NSMutableSet);
  if ([v6 count] || objc_msgSend(v8, "count"))
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    v12 = objc_alloc_init(NSMutableSet);
    if ([v6 count])
    {
      v13 = [v6 allValues];
      [v12 addObjectsFromArray:v13];
    }

    v37 = v7;
    v38 = v6;
    v39 = v5;
    if ([v8 count])
    {
      [v12 addObjectsFromArray:v8];
    }

    v36 = v8;
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1000A43D4;
    v45[3] = &unk_100647E58;
    v14 = v11;
    v46 = v14;
    v47 = v10;
    v35 = v12;
    [v12 enumerateObjectsUsingBlock:v45];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v34 = v14;
    v15 = [v14 allValues];
    v16 = [v15 countByEnumeratingWithState:&v41 objects:v48 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v42;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v42 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v41 + 1) + 8 * i);
          v21 = [ICASCloudSyncableItemData alloc];
          v22 = [v20 syncableDataType];
          v23 = [v20 count];
          [v23 intValue];
          v24 = [NSNumber numberWithInteger:ICNARoundTo2SigFigsInt()];
          v25 = [v21 initWithSyncableDataType:v22 count:v24];

          [v40 addObject:v25];
        }

        v17 = [v15 countByEnumeratingWithState:&v41 objects:v48 count:16];
      }

      while (v17);
    }

    v6 = v38;
    v5 = v39;
    v8 = v36;
    v7 = v37;
  }

  if ([v7 count])
  {
    v26 = [v7 mutableCopy];
    v27 = [v10 allObjects];
    [v26 removeObjectsInArray:v27];

    if ([v26 count])
    {
      v28 = [ICASCloudSyncableItemData alloc];
      [v26 count];
      v29 = [NSNumber numberWithInteger:ICNARoundTo2SigFigsInt()];
      v30 = [v28 initWithSyncableDataType:v33 count:v29];

      [v40 addObject:v30];
    }
  }

  v31 = [[ICASCloudSyncableData alloc] initWithSyncableDataSummary:v40];

  return v31;
}

- (id)partialCloudErrorDataForOperation:(id)a3 recordsByRecordID:(id)a4 operationError:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [a5 userInfo];
  v10 = [v9 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

  objc_opt_class();
  v38 = v7;
  if (objc_opt_isKindOfClass())
  {
    v11 = [v7 recordIDs];
    v12 = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v7 recordIDsToDelete];
      v12 = [v7 recordsToSave];
      v13 = @"icna_record_type_deleted";
      goto LABEL_7;
    }

    v12 = 0;
    v11 = 0;
  }

  v13 = @"icna_record_type_unknown";
LABEL_7:
  v14 = objc_alloc_init(NSMutableDictionary);
  v37 = v8;
  [v14 addEntriesFromDictionary:v8];
  if ([v12 count])
  {
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_1000A4958;
    v49[3] = &unk_100647E80;
    v50 = v14;
    [v12 enumerateObjectsUsingBlock:v49];
  }

  v35 = v12;
  v15 = objc_alloc_init(NSMutableDictionary);
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_1000A49BC;
  v44[3] = &unk_100647EA8;
  v33 = v14;
  v45 = v33;
  v34 = v11;
  v46 = v34;
  v47 = v13;
  v16 = v15;
  v48 = v16;
  v36 = v10;
  [v10 enumerateKeysAndObjectsUsingBlock:v44];
  v17 = +[NSMutableArray array];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v32 = v16;
  obj = [v16 allValues];
  v18 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v41;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v41 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v40 + 1) + 8 * i);
        v23 = [ICASPartialCloudErrorItemData alloc];
        v24 = [v22 syncableDataType];
        v25 = [v22 errorCode];
        v26 = [v22 count];
        [v26 intValue];
        v27 = [NSNumber numberWithInteger:ICNARoundTo2SigFigsInt()];
        v28 = [v22 errorString];
        v29 = [v23 initWithSyncableDataType:v24 errorCode:v25 count:v27 errorString:v28];

        [v17 addObject:v29];
      }

      v19 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
    }

    while (v19);
  }

  v30 = [[ICASPartialCloudErrorData alloc] initWithPartialErrorSummary:v17];

  return v30;
}

- (void)cloudContext:(id)a3 reportOperationEnd:(id)a4 recordsByRecordID:(id)a5 operationError:(id)a6
{
  v15 = a4;
  v9 = a5;
  v10 = a6;
  v11 = +[NSUserDefaults standardUserDefaults];
  v12 = [v11 BOOLForKey:kICInternalSettingsMuteSyncHealthTracking];

  if ((v12 & 1) == 0)
  {
    v13 = +[ICNASamplingController sharedController];
    v14 = [v13 shouldTrackSyncHealth];

    if (v14)
    {
      [(ICNACloudOperationEventReporter *)self submitCloudOperationEndEventForCKOperation:v15 recordsByRecordID:v9 operationError:v10];
    }
  }
}

@end