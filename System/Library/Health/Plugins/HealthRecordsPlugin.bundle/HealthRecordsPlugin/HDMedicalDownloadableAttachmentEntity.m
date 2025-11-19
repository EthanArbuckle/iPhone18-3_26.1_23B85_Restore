@interface HDMedicalDownloadableAttachmentEntity
+ (BOOL)_attachmentMatchesDownloadableAttachment:(id)a3 hdAttachment:(id)a4;
+ (BOOL)_checkForObsoleteDownloadableAttachmentsForMedicalRecord:(id)a3 extractedDownloadableAttachments:(id)a4 medicalObjectIdentifier:(id)a5 clinicalObjectIdentifier:(id)a6 profile:(id)a7 error:(id *)a8;
+ (BOOL)_deleteAttachmentWithIdentifier:(id)a3 profile:(id)a4 error:(id *)a5;
+ (BOOL)_deleteAttachmentsWithMedicalRecordIdentifier:(id)a3 profile:(id)a4 error:(id *)a5;
+ (BOOL)_markAvailableAndClearInlineDataForAttachmentWithIdentifier:(id)a3 attachmentIdentifier:(id)a4 profile:(id)a5 error:(id *)a6;
+ (BOOL)_processClinicalNotesType:(id)a3 medicalRecord:(id)a4 clinicalRecord:(id)a5 profile:(id)a6 error:(id *)a7;
+ (BOOL)_reconcileExistingAttachmentsIfFoundForDownloadableAttachment:(id)a3 medicalRecord:(id)a4 clinicalRecord:(id)a5 attachment:(id *)a6 profile:(id)a7 error:(id *)a8;
+ (BOOL)_updateHKAttachmentIdentifierForAttachmentWithIdentifier:(id)a3 attachmentIdentifier:(id)a4 profile:(id)a5 error:(id *)a6;
+ (BOOL)_updateWithExistingAttachmentIfFoundForDownloadableAttachment:(id)a3 medicalRecord:(id)a4 clinicalRecord:(id)a5 profile:(id)a6 error:(id *)a7;
+ (BOOL)deleteAttachmentWithIdentifier:(id)a3 profile:(id)a4 error:(id *)a5;
+ (BOOL)enumerateAttachmentsWithPredicate:(id)a3 profile:(id)a4 error:(id *)a5 enumerationHandler:(id)a6;
+ (BOOL)updateAttachmentWithIdentifier:(id)a3 properties:(id)a4 profile:(id)a5 error:(id *)a6 bindingHandler:(id)a7;
+ (id)_attachmentEntityForIdentifier:(id)a3 databaseTransaction:(id)a4 error:(id *)a5;
+ (id)_attachmentRefsForDownloadableAttachment:(id)a3 attachmentObjectIdentifier:(id)a4 profile:(id)a5 error:(id *)a6;
+ (id)_attachmentsAfterRelinkingFromClinicalRecord:(id)a3 toClinicalRecord:(id)a4 profile:(id)a5 error:(id *)a6;
+ (id)_attachmentsAfterRelinkingFromMedicalRecord:(id)a3 toMedicalRecord:(id)a4 profile:(id)a5 error:(id *)a6;
+ (id)_attachmentsForDownloadableAttachment:(id)a3 attachmentObjectIdentifier:(id)a4 profile:(id)a5 error:(id *)a6;
+ (id)_checkForExistingDownloadableAttachment:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)_propertiesForEntity;
+ (id)attachmentForRow:(HDSQLiteRow *)a3;
+ (id)attachmentWithIdentifier:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)processMedicalDownloadableAttachmentsInExtractionResult:(id)a3 accountIdentifier:(id)a4 profile:(id)a5 error:(id *)a6;
+ (void)_removeDuplicateAttachments:(id)a3 profile:(id)a4;
@end

@implementation HDMedicalDownloadableAttachmentEntity

+ (id)processMedicalDownloadableAttachmentsInExtractionResult:(id)a3 accountIdentifier:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  _HKInitializeLogging();
  v13 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = NSStringFromClass(a1);
    *buf = 138543618;
    *&buf[4] = v15;
    *&buf[12] = 2114;
    *&buf[14] = v10;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ processing extraction result %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v37 = 0;
  v16 = [v12 database];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_72714;
  v30[3] = &unk_106390;
  v31 = v10;
  v35 = a1;
  v32 = v12;
  v33 = v11;
  v34 = buf;
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_73034;
  v26 = &unk_1063B8;
  v17 = v31;
  v27 = v17;
  v18 = v33;
  v28 = v18;
  v19 = v32;
  v29 = v19;
  v20 = [a1 performWriteTransactionWithHealthDatabase:v16 error:a6 block:v30 inaccessibilityHandler:&v23];

  if (v20)
  {
    v21 = [NSNumber numberWithUnsignedInteger:*(*&buf[8] + 24), v23, v24, v25, v26, v27, v28];
  }

  else
  {
    v21 = 0;
  }

  _Block_object_dispose(buf, 8);

  return v21;
}

+ (BOOL)_processClinicalNotesType:(id)a3 medicalRecord:(id)a4 clinicalRecord:(id)a5 profile:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v29 = 0;
  v16 = [a1 _checkForExistingDownloadableAttachment:v12 profile:v15 error:&v29];
  v17 = v29;
  if (!v17)
  {
    if (v16)
    {
      if (v13)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v28 = 0;
      v20 = [a1 insertAttachment:v12 profile:v15 error:&v28];
      v21 = v28;
      if ((v20 & 1) == 0)
      {
        _HKInitializeLogging();
        v22 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          v26 = v22;
          v27 = [a1 debugDescription];
          *buf = 138543874;
          v31 = v27;
          v32 = 2114;
          v33 = v12;
          v34 = 2114;
          v35 = v21;
          _os_log_error_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%{public}@ failed to store downloadable attachment %{public}@, will discard. Error: %{public}@", buf, 0x20u);
        }

        v23 = v21;
        if (v23)
        {
          if (a7)
          {
            v24 = v23;
            *a7 = v23;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v16 = 0;
        goto LABEL_18;
      }

      v16 = v12;

      if (v13)
      {
LABEL_6:
        v19 = [a1 _updateWithExistingAttachmentIfFoundForDownloadableAttachment:v16 medicalRecord:v13 clinicalRecord:v14 profile:v15 error:a7];
        goto LABEL_19;
      }
    }

    v19 = 1;
    goto LABEL_19;
  }

  if (!a7)
  {
    _HKLogDroppedError();
LABEL_18:
    v19 = 0;
    goto LABEL_19;
  }

  v18 = v17;
  v19 = 0;
  *a7 = v17;
LABEL_19:

  return v19;
}

+ (id)_checkForExistingDownloadableAttachment:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 accountIdentifier];

  if (v10)
  {
    v11 = [v8 medicalRecordIdentifier];
    v12 = [a1 _predicateForDownloadableAttachmentsWithMedicalRecordIdentifier:v11];

    v13 = [v8 webURL];

    if (v13)
    {
      v14 = [v8 webURL];
      v15 = [v14 absoluteString];
      v16 = [HDSQLiteComparisonPredicate predicateWithProperty:HDMedicalDownloadableAttachmentEntityPropertyWebURL equalToValue:v15];
    }

    else
    {
      v19 = [v8 inlineDataChecksum];

      if (!v19)
      {
        goto LABEL_13;
      }

      v14 = [v8 inlineDataChecksum];
      v16 = [HDSQLiteComparisonPredicate predicateWithProperty:HDMedicalDownloadableAttachmentEntityPropertyInlineDataChecksum equalToValue:v14];
    }

    if (v16)
    {
      v20 = [HDSQLiteCompoundPredicate compoundPredicateWithPredicate:v12 otherPredicate:v16];
      v38 = 0;
      v39 = &v38;
      v40 = 0x3032000000;
      v41 = sub_73758;
      v42 = sub_73768;
      v43 = objc_alloc_init(NSMutableArray);
      v36[4] = &v38;
      v37 = 0;
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_73770;
      v36[3] = &unk_108398;
      [HDMedicalDownloadableAttachmentEntity enumerateAttachmentsWithPredicate:v20 profile:v9 error:&v37 enumerationHandler:v36];
      v21 = v37;
      v22 = v21;
      if (v21)
      {
        v23 = v21;
        v24 = v23;
        if (a5)
        {
          v25 = v23;
          *a5 = v24;
        }

        else
        {
          _HKLogDroppedError();
        }

        v18 = 0;
      }

      else
      {
        if ([v39[5] count] >= 2)
        {
          v27 = [v8 webURL];
          v28 = v27 == 0;

          if (v28)
          {
            v33 = [v8 inlineDataChecksum];
            v34 = v33 == 0;

            if (!v34)
            {
              _HKInitializeLogging();
              v35 = HKLogHealthRecords;
              if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
              {
                sub_A66AC(v35);
              }
            }
          }

          else
          {
            _HKInitializeLogging();
            v29 = HKLogHealthRecords;
            if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
            {
              v30 = [v8 webURL];
              v31 = [v30 absoluteString];
              sub_A664C(v31, buf, v29, v30);
            }
          }
        }

        v18 = [v39[5] firstObject];
      }

      _Block_object_dispose(&v38, 8);

LABEL_25:
      goto LABEL_26;
    }

LABEL_13:
    _HKInitializeLogging();
    v26 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_A66F0(v26, a1);
    }

    [NSError hk_assignError:a5 code:3 format:@"HKMedicalDownloadableAttachment has neither a webURL nor an inlineDataChecksum"];
    v18 = 0;
    goto LABEL_25;
  }

  _HKInitializeLogging();
  v17 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
  {
    sub_A6794(v17, a1);
  }

  [NSError hk_assignError:a5 code:3 format:@"HKMedicalDownloadableAttachment has no accountIdentifier"];
  v18 = 0;
LABEL_26:

  return v18;
}

+ (BOOL)_updateWithExistingAttachmentIfFoundForDownloadableAttachment:(id)a3 medicalRecord:(id)a4 clinicalRecord:(id)a5 profile:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a6;
  v26 = 0;
  LODWORD(a4) = [a1 _reconcileExistingAttachmentsIfFoundForDownloadableAttachment:v12 medicalRecord:a4 clinicalRecord:a5 attachment:&v26 profile:v13 error:a7];
  v14 = v26;
  v15 = v14;
  if (a4)
  {
    if (!v14)
    {
LABEL_11:
      v21 = 1;
      goto LABEL_12;
    }

    v16 = [v12 metadata];
    v17 = [v16 objectForKeyedSubscript:HKMedicalDownloadableAttachmentMetadataNeedsReIndexingKey];

    if (!v17 && ([v12 status] == &dword_4 + 2 || objc_msgSend(v12, "status") == &dword_4 + 1 || objc_msgSend(v12, "status") == &dword_8 + 1))
    {
      v22 = [v15 identifier];
      v23 = [v12 attachmentIdentifier];
      v24 = [v22 isEqual:v23];

      if (v24)
      {
        goto LABEL_11;
      }

      v18 = [v12 identifier];
      v19 = [v15 identifier];
      v20 = [a1 _updateHKAttachmentIdentifierForAttachmentWithIdentifier:v18 attachmentIdentifier:v19 profile:v13 error:a7];
    }

    else
    {
      v18 = [v12 identifier];
      v19 = [v15 identifier];
      v20 = [a1 _markAvailableAndClearInlineDataForAttachmentWithIdentifier:v18 attachmentIdentifier:v19 profile:v13 error:a7];
    }

    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

LABEL_12:

  return v21;
}

+ (BOOL)_reconcileExistingAttachmentsIfFoundForDownloadableAttachment:(id)a3 medicalRecord:(id)a4 clinicalRecord:(id)a5 attachment:(id *)a6 profile:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = objc_alloc_init(NSMutableSet);
  v19 = [v15 attachmentObjectIdentifier];
  v20 = [a1 _attachmentsForDownloadableAttachment:v14 attachmentObjectIdentifier:v19 profile:v17 error:a8];

  if (!v20)
  {
    LOBYTE(a6) = 0;
    goto LABEL_33;
  }

  [v18 addObjectsFromArray:v20];
  v40 = v15;
  if (v16)
  {
    v21 = [v16 attachmentObjectIdentifier];
    v22 = [a1 _attachmentsForDownloadableAttachment:v14 attachmentObjectIdentifier:v21 profile:v17 error:a8];

    if (!v22)
    {
      LOBYTE(a6) = 0;
      v15 = v40;
      goto LABEL_33;
    }

    [v18 addObjectsFromArray:v22];

    v15 = v40;
  }

  if ([v18 count] > 1)
  {
    v23 = [v18 hk_firstSortedObjectWithComparison:&stru_1083D8];
    [v18 removeObject:v23];
    if (a6)
    {
      v24 = v23;
      *a6 = v23;
    }

    if ([v18 count])
    {
      v25 = [v18 allObjects];
      [a1 _removeDuplicateAttachments:v25 profile:v17];

      v15 = v40;
    }

    v26 = [v15 attachmentObjectIdentifier];
    a6 = [a1 _attachmentRefsForDownloadableAttachment:v14 attachmentObjectIdentifier:v26 profile:v17 error:a8];

    v39 = a6;
    if (!a6)
    {
      v15 = v40;
      goto LABEL_31;
    }

    if ([a6 count])
    {
      v15 = v40;
      if (!v16)
      {
        LOBYTE(a6) = 1;
        goto LABEL_31;
      }
    }

    else
    {
      [v17 attachmentManager];
      v37 = v36 = v23;
      v27 = [v23 hkAttachment];
      a6 = [v40 attachmentObjectIdentifier];
      v28 = [v37 addReferenceWithAttachment:v27 toObjectWithIdentifier:? schemaIdentifier:? metadata:? error:?];

      LOBYTE(a6) = v28 != 0;
      v35 = v28;

      if (!v16)
      {
        v15 = v40;
        v23 = v36;
        goto LABEL_31;
      }

      v15 = v40;
      v23 = v36;
      if (!v35)
      {
LABEL_31:

        goto LABEL_32;
      }
    }

    v29 = [v16 attachmentObjectIdentifier];
    v30 = [a1 _attachmentRefsForDownloadableAttachment:v14 attachmentObjectIdentifier:v29 profile:v17 error:a8];

    if (!v30)
    {
      goto LABEL_28;
    }

    v15 = v40;
    if ([v30 count])
    {
      LOBYTE(a6) = 1;
LABEL_30:

      goto LABEL_31;
    }

    v38 = [v17 attachmentManager];
    v31 = [v23 hkAttachment];
    v32 = [v16 attachmentObjectIdentifier];
    v33 = [v38 addReferenceWithAttachment:v31 toObjectWithIdentifier:? schemaIdentifier:? metadata:? error:?];

    if (v33)
    {
      LOBYTE(a6) = 1;
    }

    else
    {
LABEL_28:
      LOBYTE(a6) = 0;
    }

    v15 = v40;
    goto LABEL_30;
  }

  if (a6 && [v18 count] == &dword_0 + 1)
  {
    v23 = [v18 allObjects];
    *a6 = [v23 firstObject];
    LOBYTE(a6) = 1;
LABEL_32:

    goto LABEL_33;
  }

  LOBYTE(a6) = 1;
LABEL_33:

  return a6;
}

+ (id)_attachmentsForDownloadableAttachment:(id)a3 attachmentObjectIdentifier:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a4;
  v13 = objc_alloc_init(NSMutableArray);
  v14 = [v11 attachmentManager];

  v15 = HKAttachmentClinicalRecordSchemaIdentifier;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_73F38;
  v20[3] = &unk_108400;
  v23 = a1;
  v21 = v10;
  v16 = v13;
  v22 = v16;
  v17 = v10;
  LODWORD(a6) = [v14 attachmentReferencesForObjectIdentifier:v12 schemaIdentifier:v15 error:a6 enumerationHandler:v20];

  if (a6)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)_attachmentRefsForDownloadableAttachment:(id)a3 attachmentObjectIdentifier:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a4;
  v13 = objc_alloc_init(NSMutableArray);
  v14 = [v11 attachmentManager];

  v15 = HKAttachmentClinicalRecordSchemaIdentifier;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_740E4;
  v20[3] = &unk_108400;
  v23 = a1;
  v21 = v10;
  v16 = v13;
  v22 = v16;
  v17 = v10;
  LODWORD(a6) = [v14 attachmentReferencesForObjectIdentifier:v12 schemaIdentifier:v15 error:a6 enumerationHandler:v20];

  if (a6)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (BOOL)_attachmentMatchesDownloadableAttachment:(id)a3 hdAttachment:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 metadata];
  v8 = [v7 objectForKeyedSubscript:HKMedicalDownloadableAttachmentMetadataWebURLKey];

  v9 = [v5 webURL];
  v10 = v9;
  if (v9 && v8)
  {
    v11 = [v5 webURL];
    v12 = [v11 absoluteString];
    v13 = [v12 isEqualToString:v8];

    if (v13)
    {
      v14 = 1;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v15 = [v6 metadata];
  v16 = [v15 objectForKeyedSubscript:HKMedicalDownloadableAttachmentMetadataInlineDataChecksumKey];

  v17 = [v5 inlineDataChecksum];
  v14 = 0;
  if (v17 && v16)
  {
    v18 = [v5 inlineDataChecksum];
    v14 = [v18 isEqual:v16];
  }

LABEL_10:
  return v14;
}

+ (void)_removeDuplicateAttachments:(id)a3 profile:(id)a4
{
  v5 = a3;
  v16 = a4;
  v6 = [v16 attachmentManager];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v8)
  {
    v9 = *v29;
    v17 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v28 + 1) + 8 * v10);
        v22 = 0;
        v23 = &v22;
        v24 = 0x3032000000;
        v25 = sub_73758;
        v26 = sub_73768;
        v27 = objc_alloc_init(NSMutableArray);
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_74584;
        v21[3] = &unk_108428;
        v21[4] = &v22;
        [v6 attachmentReferencesForAttachment:v11 error:0 enumerationHandler:v21];
        v12 = v23[5];
        v20 = 0;
        LOBYTE(v11) = [v6 removeAttachmentReferences:v12 error:&v20];
        v13 = v20;
        if ((v11 & 1) == 0)
        {
          _HKInitializeLogging();
          v14 = HKLogHealthRecords;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            v19 = [a1 debugDescription];
            v15 = [v13 localizedDescription];
            *buf = 138543619;
            v33 = v19;
            v34 = 2113;
            v35 = v15;
            _os_log_fault_impl(&dword_0, v14, OS_LOG_TYPE_FAULT, "%{public}@ HDAttachmentManager.removeAttachmentReferences failed removing duplicate HKAttachment with error %{private}@", buf, 0x16u);

            v7 = v17;
          }
        }

        _Block_object_dispose(&v22, 8);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v8);
  }
}

+ (BOOL)_checkForObsoleteDownloadableAttachmentsForMedicalRecord:(id)a3 extractedDownloadableAttachments:(id)a4 medicalObjectIdentifier:(id)a5 clinicalObjectIdentifier:(id)a6 profile:(id)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v56 = a5;
  v55 = a6;
  v15 = a7;
  v50 = v13;
  v52 = [a1 _predicateForDownloadableAttachmentsWithMedicalRecordIdentifier:v13];
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = sub_73758;
  v72 = sub_73768;
  v73 = objc_alloc_init(NSMutableArray);
  v67 = 0;
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_74B70;
  v64[3] = &unk_108450;
  v16 = v14;
  v65 = v16;
  v66 = &v68;
  [HDMedicalDownloadableAttachmentEntity enumerateAttachmentsWithPredicate:v52 profile:v15 error:&v67 enumerationHandler:v64];
  v17 = v67;
  v49 = v16;
  if (v17)
  {
    v18 = v17;
    v19 = v18;
    if (a8)
    {
      v20 = v18;
      v21 = 0;
      *a8 = v19;
    }

    else
    {
      _HKLogDroppedError();
      v21 = 0;
    }

    v22 = v19;
  }

  else
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v19 = v69[5];
    v23 = [v19 countByEnumeratingWithState:&v60 objects:v80 count:16];
    if (v23)
    {
      obj = v19;
      v24 = *v61;
      v54 = HKAttachmentClinicalRecordSchemaIdentifier;
      while (2)
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v61 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v60 + 1) + 8 * i);
          v27 = [v26 attachmentIdentifier];
          v28 = v27 == 0;

          if (!v28)
          {
            v29 = [v15 attachmentManager];
            if (v56)
            {
              v30 = [v26 attachmentIdentifier];
              v59 = 0;
              v31 = [v29 removeAllReferencesWithAttachmentIdentifier:v30 objectIdentifier:v56 schemaIdentifier:v54 error:&v59];
              v32 = v59;

              if ((v31 & 1) == 0)
              {
                _HKInitializeLogging();
                v33 = HKLogHealthRecords;
                if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  v40 = [a1 debugDescription];
                  v41 = [v26 attachmentIdentifier];
                  *buf = 138543875;
                  v75 = v40;
                  v76 = 2114;
                  v77 = v41;
                  v78 = 2113;
                  v79 = v32;
                  v47 = v41;
                  _os_log_error_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "%{public}@ failed to remove HKAttachmentReferences for medicalRecord from HKAttachment with identifier %{public}@. Error: %{private}@", buf, 0x20u);
                }
              }
            }

            if (v55)
            {
              v34 = [v26 attachmentIdentifier];
              v58 = 0;
              v35 = [v29 removeAllReferencesWithAttachmentIdentifier:v34 objectIdentifier:v55 schemaIdentifier:v54 error:&v58];
              v36 = v58;

              if ((v35 & 1) == 0)
              {
                _HKInitializeLogging();
                v37 = HKLogHealthRecords;
                if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  v42 = [a1 debugDescription];
                  v43 = [v26 attachmentIdentifier];
                  *buf = 138543875;
                  v75 = v42;
                  v76 = 2114;
                  v77 = v43;
                  v78 = 2113;
                  v79 = v36;
                  v48 = v43;
                  _os_log_error_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "%{public}@ failed to remove HKAttachmentReferencesfor clinicalRecord from HKAttachment with identifier %{public}@. Error: %{private}@", buf, 0x20u);
                }
              }
            }
          }

          v38 = [v26 identifier];
          v57 = 0;
          [a1 deleteAttachmentWithIdentifier:v38 profile:v15 error:&v57];
          v39 = v57;

          if (v39)
          {
            v44 = v39;
            v22 = v44;
            if (a8)
            {
              v45 = v44;
              *a8 = v22;
            }

            else
            {
              _HKLogDroppedError();
            }

            v21 = 0;
            goto LABEL_34;
          }
        }

        v23 = [obj countByEnumeratingWithState:&v60 objects:v80 count:16];
        v21 = 1;
        if (v23)
        {
          continue;
        }

        break;
      }

      v22 = 0;
LABEL_34:
      v19 = obj;
    }

    else
    {
      v22 = 0;
      v21 = 1;
    }
  }

  _Block_object_dispose(&v68, 8);
  return v21;
}

+ (BOOL)_markAvailableAndClearInlineDataForAttachmentWithIdentifier:(id)a3 attachmentIdentifier:(id)a4 profile:(id)a5 error:(id *)a6
{
  v9 = a4;
  v17[0] = HDMedicalDownloadableAttachmentEntityPropertyAttachmentUUID;
  v17[1] = HDMedicalDownloadableAttachmentEntityPropertyStatus;
  v17[2] = HDMedicalDownloadableAttachmentEntityPropertyErrorStatus;
  v17[3] = HDMedicalDownloadableAttachmentEntityPropertyLastError;
  v17[4] = HDMedicalDownloadableAttachmentEntityPropertyInlineData;
  v17[5] = HDMedicalDownloadableAttachmentEntityPropertyRetryCount;
  v17[6] = HDMedicalDownloadableAttachmentEntityPropertyNextRetryDate;
  v10 = a5;
  v11 = a3;
  v12 = [NSArray arrayWithObjects:v17 count:7];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_74F3C;
  v15[3] = &unk_105B80;
  v16 = v9;
  v13 = v9;
  LOBYTE(a6) = [HDMedicalDownloadableAttachmentEntity updateAttachmentWithIdentifier:v11 properties:v12 profile:v10 error:a6 bindingHandler:v15];

  return a6;
}

+ (BOOL)_updateHKAttachmentIdentifierForAttachmentWithIdentifier:(id)a3 attachmentIdentifier:(id)a4 profile:(id)a5 error:(id *)a6
{
  v9 = a4;
  v17 = HDMedicalDownloadableAttachmentEntityPropertyAttachmentUUID;
  v10 = a5;
  v11 = a3;
  v12 = [NSArray arrayWithObjects:&v17 count:1];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_7514C;
  v15[3] = &unk_105B80;
  v16 = v9;
  v13 = v9;
  LOBYTE(a6) = [HDMedicalDownloadableAttachmentEntity updateAttachmentWithIdentifier:v11 properties:v12 profile:v10 error:a6 bindingHandler:v15];

  return a6;
}

+ (BOOL)_deleteAttachmentsWithMedicalRecordIdentifier:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 _predicateForDownloadableAttachmentsWithMedicalRecordIdentifier:v8];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_73758;
  v27 = sub_73768;
  v28 = objc_alloc_init(NSMutableArray);
  v21[4] = &v23;
  v22 = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_753B4;
  v21[3] = &unk_108398;
  [HDMedicalDownloadableAttachmentEntity enumerateAttachmentsWithPredicate:v10 profile:v9 error:&v22 enumerationHandler:v21];
  v11 = v22;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = v24[5];
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v29 count:16];
  if (v13)
  {
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v12);
        }

        [a1 deleteAttachmentWithIdentifier:*(*(&v17 + 1) + 8 * v15) profile:v9 error:{a5, v17}];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v17 objects:v29 count:16];
    }

    while (v13);
  }

  _Block_object_dispose(&v23, 8);
  return 1;
}

+ (id)_attachmentsAfterRelinkingFromMedicalRecord:(id)a3 toMedicalRecord:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v57 = a4;
  v11 = a5;
  v12 = objc_alloc_init(NSMutableArray);
  v58 = v11;
  v13 = [v11 attachmentManager];
  v14 = [v10 attachmentObjectIdentifier];
  v15 = HKAttachmentClinicalRecordSchemaIdentifier;
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_759FC;
  v68[3] = &unk_108478;
  v16 = v12;
  v69 = v16;
  LOBYTE(v12) = [v13 attachmentReferencesForObjectIdentifier:v14 schemaIdentifier:v15 error:a6 enumerationHandler:v68];

  if ((v12 & 1) == 0)
  {
    _HKInitializeLogging();
    v17 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      v39 = v17;
      v40 = [a1 debugDescription];
      v41 = [v10 UUID];
      v42 = *a6;
      *buf = 138543875;
      v73 = v40;
      v74 = 2114;
      v75 = v41;
      v76 = 2113;
      v77 = v42;
      _os_log_error_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "%{public}@ failed to retrieve HDAttachments for existing medicalRecord with UUID %{public}@. Error: %{private}@", buf, 0x20u);
    }
  }

  v18 = [v10 UUID];
  v19 = [a1 _predicateForDownloadableAttachmentsWithMedicalRecordIdentifier:v18];

  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_75A1C;
  v66[3] = &unk_1084A0;
  v20 = objc_alloc_init(NSMutableArray);
  v67 = v20;
  if ([HDMedicalDownloadableAttachmentEntity enumerateAttachmentsWithPredicate:v19 profile:v58 error:a6 enumerationHandler:v66])
  {
    v49 = v16;
    v47 = a1;
    v48 = v20;
    v56 = a6;
    v50 = v13;
    v51 = v10;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = v20;
    v21 = [obj countByEnumeratingWithState:&v62 objects:v71 count:16];
    if (v21)
    {
      v22 = v21;
      v55 = *v63;
      v53 = HDMedicalDownloadableAttachmentEntityPropertyIdentifier;
      v54 = HKMedicalDownloadableAttachmentMetadataNeedsReIndexingKey;
      v23 = HDMedicalDownloadableAttachmentEntityPropertyMedicalRecordUUID;
      v24 = HDMedicalDownloadableAttachmentEntityPropertyMetadata;
      while (2)
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v63 != v55)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v62 + 1) + 8 * i);
          v27 = [v26 metadata];
          v28 = v27;
          if (!v27)
          {
            v27 = &__NSDictionary0__struct;
          }

          v29 = [v27 mutableCopy];

          [v29 setObject:&__kCFBooleanTrue forKeyedSubscript:v54];
          v30 = [v26 identifier];
          v31 = [HDSQLiteComparisonPredicate predicateWithProperty:v53 equalToValue:v30];

          v70[0] = v23;
          v70[1] = v24;
          v32 = [NSArray arrayWithObjects:v70 count:2];
          v33 = [v58 database];
          v59[0] = _NSConcreteStackBlock;
          v59[1] = 3221225472;
          v59[2] = sub_75A40;
          v59[3] = &unk_1065E0;
          v60 = v57;
          v34 = v29;
          v61 = v34;
          v35 = [HDMedicalDownloadableAttachmentEntity updateProperties:v32 predicate:v31 healthDatabase:v33 error:v56 bindingHandler:v59];

          if ((v35 & 1) == 0)
          {
            _HKInitializeLogging();
            v37 = HKLogHealthRecords;
            v10 = v51;
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
            {
              v43 = v37;
              v44 = [v47 debugDescription];
              v45 = [v51 UUID];
              v46 = *v56;
              *buf = 138543875;
              v73 = v44;
              v74 = 2114;
              v75 = v45;
              v76 = 2113;
              v77 = v46;
              _os_log_error_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "%{public}@ failed to update MedicalDownloadableAttachment for existing medicalRecord with UUID %{public}@. Error: %{private}@", buf, 0x20u);
            }

            v36 = 0;
            v16 = v49;
            v13 = v50;
            goto LABEL_20;
          }
        }

        v22 = [obj countByEnumeratingWithState:&v62 objects:v71 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    v16 = v49;
    v36 = v49;
    v13 = v50;
    v10 = v51;
LABEL_20:
    v20 = v48;
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

+ (id)_attachmentsAfterRelinkingFromClinicalRecord:(id)a3 toClinicalRecord:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_alloc_init(NSMutableArray);
  v14 = [v12 attachmentManager];
  v15 = [v10 attachmentObjectIdentifier];
  v16 = HKAttachmentClinicalRecordSchemaIdentifier;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_75EA4;
  v41[3] = &unk_108478;
  v17 = v13;
  v42 = v17;
  v38 = v14;
  LOBYTE(v16) = [v14 attachmentReferencesForObjectIdentifier:v15 schemaIdentifier:v16 error:a6 enumerationHandler:v41];

  if ((v16 & 1) == 0)
  {
    _HKInitializeLogging();
    v18 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      v29 = v18;
      v30 = [a1 debugDescription];
      v31 = [v10 UUID];
      v32 = *a6;
      *buf = 138543875;
      v45 = v30;
      v46 = 2114;
      v47 = v31;
      v48 = 2113;
      v49 = v32;
      _os_log_error_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "%{public}@ failed to retrieve HDAttachments for existing clinicalRecord with UUID %{public}@. Error: %{private}@", buf, 0x20u);
    }
  }

  v37 = a1;
  v19 = HDMedicalDownloadableAttachmentEntityPropertyClinicalRecordUUID;
  v43 = HDMedicalDownloadableAttachmentEntityPropertyClinicalRecordUUID;
  v20 = [NSArray arrayWithObjects:&v43 count:1];
  v21 = [v10 UUID];
  v22 = [HDSQLiteComparisonPredicate predicateWithProperty:v19 equalToValue:v21];
  v23 = [v12 database];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_75EC4;
  v39[3] = &unk_105B80;
  v24 = v11;
  v40 = v24;
  v25 = [HDMedicalDownloadableAttachmentEntity updateProperties:v20 predicate:v22 healthDatabase:v23 error:a6 bindingHandler:v39];

  if (v25)
  {
    v26 = v17;
  }

  else
  {
    _HKInitializeLogging();
    v27 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      v33 = v27;
      v34 = [v37 debugDescription];
      v35 = [v10 UUID];
      v36 = *a6;
      *buf = 138543875;
      v45 = v34;
      v46 = 2114;
      v47 = v35;
      v48 = 2113;
      v49 = v36;
      _os_log_error_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "%{public}@ failed to update MedicalDownloadableAttachment for existing clinicalRecord with UUID %{public}@. Error: %{private}@", buf, 0x20u);
    }

    v26 = 0;
  }

  return v26;
}

+ (id)attachmentWithIdentifier:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_73758;
  v22 = sub_73768;
  v23 = 0;
  v10 = [v9 database];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_760AC;
  v14[3] = &unk_1078F0;
  v17 = a1;
  v11 = v8;
  v15 = v11;
  v16 = &v18;
  [a1 performReadTransactionWithHealthDatabase:v10 error:a5 block:v14];

  v12 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v12;
}

+ (BOOL)enumerateAttachmentsWithPredicate:(id)a3 profile:(id)a4 error:(id *)a5 enumerationHandler:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [a1 _propertiesForEntity];
  v14 = [v11 database];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_76314;
  v17[3] = &unk_1084F0;
  v18 = v10;
  v19 = a1;
  v15 = v10;
  LOBYTE(a5) = [a1 enumerateProperties:v13 withPredicate:v12 healthDatabase:v14 error:a5 enumerationHandler:v17];

  return a5;
}

+ (BOOL)updateAttachmentWithIdentifier:(id)a3 properties:(id)a4 profile:(id)a5 error:(id *)a6 bindingHandler:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = a3;
  v15 = [a4 mutableCopy];
  [v15 addObject:HDMedicalDownloadableAttachmentEntityPropertyLastUpdatedDate];
  v16 = [HDSQLiteComparisonPredicate predicateWithProperty:HDMedicalDownloadableAttachmentEntityPropertyIdentifier equalToValue:v14];

  v17 = [v13 database];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_76518;
  v20[3] = &unk_108518;
  v21 = v12;
  v18 = v12;
  LOBYTE(a6) = [a1 updateProperties:v15 predicate:v16 healthDatabase:v17 error:a6 bindingHandler:v20];

  return a6;
}

+ (BOOL)deleteAttachmentWithIdentifier:(id)a3 profile:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[HDDeleteMedicalDownloadableAttachmentOperation alloc] initWithAttachmentIdentifier:v8];

  LOBYTE(a5) = [(HDDeleteMedicalDownloadableAttachmentOperation *)v9 performOrJournalWithProfile:v7 error:a5];
  return a5;
}

+ (id)_propertiesForEntity
{
  v4[0] = HDMedicalDownloadableAttachmentEntityPropertyIdentifier;
  v4[1] = HDMedicalDownloadableAttachmentEntityPropertyMedicalRecordUUID;
  v4[2] = HDMedicalDownloadableAttachmentEntityPropertyClinicalRecordUUID;
  v4[3] = HDMedicalDownloadableAttachmentEntityPropertyAccountIdentifier;
  v4[4] = HDMedicalDownloadableAttachmentEntityPropertyFHIRVersion;
  v4[5] = HDMedicalDownloadableAttachmentEntityPropertyType;
  v4[6] = HDMedicalDownloadableAttachmentEntityPropertyStatus;
  v4[7] = HDMedicalDownloadableAttachmentEntityPropertyErrorStatus;
  v4[8] = HDMedicalDownloadableAttachmentEntityPropertyTitle;
  v4[9] = HDMedicalDownloadableAttachmentEntityPropertyWebURL;
  v4[10] = HDMedicalDownloadableAttachmentEntityPropertySizeInBytes;
  v4[11] = HDMedicalDownloadableAttachmentEntityPropertyContentType;
  v4[12] = HDMedicalDownloadableAttachmentEntityPropertyLocale;
  v4[13] = HDMedicalDownloadableAttachmentEntityPropertyExpectedHash;
  v4[14] = HDMedicalDownloadableAttachmentEntityPropertyCreationDate;
  v4[15] = HDMedicalDownloadableAttachmentEntityPropertyRetryCount;
  v4[16] = HDMedicalDownloadableAttachmentEntityPropertyNextRetryDate;
  v4[17] = HDMedicalDownloadableAttachmentEntityPropertyLastUpdatedDate;
  v4[18] = HDMedicalDownloadableAttachmentEntityPropertyLastError;
  v4[19] = HDMedicalDownloadableAttachmentEntityPropertyFileURL;
  v4[20] = HDMedicalDownloadableAttachmentEntityPropertyInlineData;
  v4[21] = HDMedicalDownloadableAttachmentEntityPropertyInlineDataChecksum;
  v4[22] = HDMedicalDownloadableAttachmentEntityPropertyAttachmentUUID;
  v4[23] = HDMedicalDownloadableAttachmentEntityPropertyMetadata;
  v2 = [NSArray arrayWithObjects:v4 count:24];

  return v2;
}

+ (id)attachmentForRow:(HDSQLiteRow *)a3
{
  v32 = HDSQLiteColumnWithNameAsUUID();
  v31 = HDSQLiteColumnWithNameAsUUID();
  v30 = HDSQLiteColumnWithNameAsUUID();
  v29 = HDSQLiteColumnWithNameAsUUID();
  v25 = HDSQLiteColumnWithNameAsString();
  v24 = [HKFHIRVersion versionFromVersionString:?];
  v22 = HDSQLiteColumnWithNameAsInteger();
  v21 = HDSQLiteColumnWithNameAsInteger();
  v20 = HDSQLiteColumnWithNameAsInteger();
  v28 = HDSQLiteColumnWithNameAsString();
  v27 = HDSQLiteColumnWithNameAsURL();
  v3 = HDSQLiteColumnWithNameAsString();
  v26 = [NSLocale localeWithLocaleIdentifier:v3];

  v19 = HDSQLiteColumnWithNameAsNumber();
  v18 = HDSQLiteColumnWithNameAsString();
  v17 = HDSQLiteColumnWithNameAsData();
  v16 = HDSQLiteColumnWithNameAsDate();
  v15 = HDSQLiteColumnWithNameAsInteger();
  v4 = HDSQLiteColumnWithNameAsDate();
  v5 = HDSQLiteColumnWithNameAsDate();
  objc_opt_class();
  v6 = HDSQLiteColumnWithNameAsObject();
  v7 = HDSQLiteColumnWithNameAsString();

  if (v7)
  {
    v8 = HDSQLiteColumnWithNameAsString();
    v7 = [NSURL fileURLWithPath:v8];
  }

  v14 = HDSQLiteColumnWithNameAsData();
  v9 = HDSQLiteColumnWithNameAsData();
  v10 = HDSQLiteColumnWithNameAsUUID();
  v11 = +[NSDictionary hk_secureCodingClasses];
  v12 = HDSQLiteColumnWithNameAsObjectWithClasses();

  v23 = [[HKMedicalDownloadableAttachment alloc] initWithIdentifier:v32 medicalRecordIdentifier:v31 clinicalRecordIdentifier:v30 accountIdentifier:v29 FHIRVersion:v24 type:v22 status:v21 errorStatus:v20 title:v28 webURL:v27 sizeInBytes:v19 contentType:v18 locale:v26 expectedHash:v17 creationDate:v16 retryCount:v15 nextRetryDate:v4 lastUpdatedDate:v5 lastError:v6 fileURL:v7 inlineData:v14 inlineDataChecksum:v9 attachmentIdentifier:v10 metadata:v12];

  return v23;
}

+ (id)_attachmentEntityForIdentifier:(id)a3 databaseTransaction:(id)a4 error:(id *)a5
{
  v8 = HDMedicalDownloadableAttachmentEntityPropertyIdentifier;
  v9 = a4;
  v10 = [HDSQLiteComparisonPredicate predicateWithProperty:v8 equalToValue:a3];
  v11 = [v9 databaseForEntityClass:a1];

  v12 = [a1 anyInDatabase:v11 predicate:v10 error:a5];

  return v12;
}

+ (BOOL)_deleteAttachmentWithIdentifier:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = HDMedicalDownloadableAttachmentEntityPropertyIdentifier;
  v9 = a4;
  v10 = [HDSQLiteComparisonPredicate predicateWithProperty:v8 equalToValue:a3];
  v11 = [v9 database];

  LOBYTE(a5) = [a1 deleteEntitiesWithPredicate:v10 healthDatabase:v11 error:a5];
  return a5;
}

@end