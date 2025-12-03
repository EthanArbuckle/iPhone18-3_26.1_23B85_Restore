@interface HDMedicalDownloadableAttachmentEntity
+ (BOOL)_attachmentMatchesDownloadableAttachment:(id)attachment hdAttachment:(id)hdAttachment;
+ (BOOL)_checkForObsoleteDownloadableAttachmentsForMedicalRecord:(id)record extractedDownloadableAttachments:(id)attachments medicalObjectIdentifier:(id)identifier clinicalObjectIdentifier:(id)objectIdentifier profile:(id)profile error:(id *)error;
+ (BOOL)_deleteAttachmentWithIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (BOOL)_deleteAttachmentsWithMedicalRecordIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (BOOL)_markAvailableAndClearInlineDataForAttachmentWithIdentifier:(id)identifier attachmentIdentifier:(id)attachmentIdentifier profile:(id)profile error:(id *)error;
+ (BOOL)_processClinicalNotesType:(id)type medicalRecord:(id)record clinicalRecord:(id)clinicalRecord profile:(id)profile error:(id *)error;
+ (BOOL)_reconcileExistingAttachmentsIfFoundForDownloadableAttachment:(id)attachment medicalRecord:(id)record clinicalRecord:(id)clinicalRecord attachment:(id *)a6 profile:(id)profile error:(id *)error;
+ (BOOL)_updateHKAttachmentIdentifierForAttachmentWithIdentifier:(id)identifier attachmentIdentifier:(id)attachmentIdentifier profile:(id)profile error:(id *)error;
+ (BOOL)_updateWithExistingAttachmentIfFoundForDownloadableAttachment:(id)attachment medicalRecord:(id)record clinicalRecord:(id)clinicalRecord profile:(id)profile error:(id *)error;
+ (BOOL)deleteAttachmentWithIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (BOOL)enumerateAttachmentsWithPredicate:(id)predicate profile:(id)profile error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)updateAttachmentWithIdentifier:(id)identifier properties:(id)properties profile:(id)profile error:(id *)error bindingHandler:(id)handler;
+ (id)_attachmentEntityForIdentifier:(id)identifier databaseTransaction:(id)transaction error:(id *)error;
+ (id)_attachmentRefsForDownloadableAttachment:(id)attachment attachmentObjectIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (id)_attachmentsAfterRelinkingFromClinicalRecord:(id)record toClinicalRecord:(id)clinicalRecord profile:(id)profile error:(id *)error;
+ (id)_attachmentsAfterRelinkingFromMedicalRecord:(id)record toMedicalRecord:(id)medicalRecord profile:(id)profile error:(id *)error;
+ (id)_attachmentsForDownloadableAttachment:(id)attachment attachmentObjectIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (id)_checkForExistingDownloadableAttachment:(id)attachment profile:(id)profile error:(id *)error;
+ (id)_propertiesForEntity;
+ (id)attachmentForRow:(HDSQLiteRow *)row;
+ (id)attachmentWithIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (id)processMedicalDownloadableAttachmentsInExtractionResult:(id)result accountIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (void)_removeDuplicateAttachments:(id)attachments profile:(id)profile;
@end

@implementation HDMedicalDownloadableAttachmentEntity

+ (id)processMedicalDownloadableAttachmentsInExtractionResult:(id)result accountIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  resultCopy = result;
  identifierCopy = identifier;
  profileCopy = profile;
  _HKInitializeLogging();
  v13 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = NSStringFromClass(self);
    *buf = 138543618;
    *&buf[4] = v15;
    *&buf[12] = 2114;
    *&buf[14] = resultCopy;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ processing extraction result %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v37 = 0;
  database = [profileCopy database];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_72714;
  v30[3] = &unk_106390;
  v31 = resultCopy;
  selfCopy = self;
  v32 = profileCopy;
  v33 = identifierCopy;
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
  v20 = [self performWriteTransactionWithHealthDatabase:database error:error block:v30 inaccessibilityHandler:&v23];

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

+ (BOOL)_processClinicalNotesType:(id)type medicalRecord:(id)record clinicalRecord:(id)clinicalRecord profile:(id)profile error:(id *)error
{
  typeCopy = type;
  recordCopy = record;
  clinicalRecordCopy = clinicalRecord;
  profileCopy = profile;
  v29 = 0;
  v16 = [self _checkForExistingDownloadableAttachment:typeCopy profile:profileCopy error:&v29];
  v17 = v29;
  if (!v17)
  {
    if (v16)
    {
      if (recordCopy)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v28 = 0;
      v20 = [self insertAttachment:typeCopy profile:profileCopy error:&v28];
      v21 = v28;
      if ((v20 & 1) == 0)
      {
        _HKInitializeLogging();
        v22 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          v26 = v22;
          v27 = [self debugDescription];
          *buf = 138543874;
          v31 = v27;
          v32 = 2114;
          v33 = typeCopy;
          v34 = 2114;
          v35 = v21;
          _os_log_error_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%{public}@ failed to store downloadable attachment %{public}@, will discard. Error: %{public}@", buf, 0x20u);
        }

        v23 = v21;
        if (v23)
        {
          if (error)
          {
            v24 = v23;
            *error = v23;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v16 = 0;
        goto LABEL_18;
      }

      v16 = typeCopy;

      if (recordCopy)
      {
LABEL_6:
        v19 = [self _updateWithExistingAttachmentIfFoundForDownloadableAttachment:v16 medicalRecord:recordCopy clinicalRecord:clinicalRecordCopy profile:profileCopy error:error];
        goto LABEL_19;
      }
    }

    v19 = 1;
    goto LABEL_19;
  }

  if (!error)
  {
    _HKLogDroppedError();
LABEL_18:
    v19 = 0;
    goto LABEL_19;
  }

  v18 = v17;
  v19 = 0;
  *error = v17;
LABEL_19:

  return v19;
}

+ (id)_checkForExistingDownloadableAttachment:(id)attachment profile:(id)profile error:(id *)error
{
  attachmentCopy = attachment;
  profileCopy = profile;
  accountIdentifier = [attachmentCopy accountIdentifier];

  if (accountIdentifier)
  {
    medicalRecordIdentifier = [attachmentCopy medicalRecordIdentifier];
    v12 = [self _predicateForDownloadableAttachmentsWithMedicalRecordIdentifier:medicalRecordIdentifier];

    webURL = [attachmentCopy webURL];

    if (webURL)
    {
      webURL2 = [attachmentCopy webURL];
      absoluteString = [webURL2 absoluteString];
      v16 = [HDSQLiteComparisonPredicate predicateWithProperty:HDMedicalDownloadableAttachmentEntityPropertyWebURL equalToValue:absoluteString];
    }

    else
    {
      inlineDataChecksum = [attachmentCopy inlineDataChecksum];

      if (!inlineDataChecksum)
      {
        goto LABEL_13;
      }

      webURL2 = [attachmentCopy inlineDataChecksum];
      v16 = [HDSQLiteComparisonPredicate predicateWithProperty:HDMedicalDownloadableAttachmentEntityPropertyInlineDataChecksum equalToValue:webURL2];
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
      [HDMedicalDownloadableAttachmentEntity enumerateAttachmentsWithPredicate:v20 profile:profileCopy error:&v37 enumerationHandler:v36];
      v21 = v37;
      v22 = v21;
      if (v21)
      {
        v23 = v21;
        v24 = v23;
        if (error)
        {
          v25 = v23;
          *error = v24;
        }

        else
        {
          _HKLogDroppedError();
        }

        firstObject = 0;
      }

      else
      {
        if ([v39[5] count] >= 2)
        {
          webURL3 = [attachmentCopy webURL];
          v28 = webURL3 == 0;

          if (v28)
          {
            inlineDataChecksum2 = [attachmentCopy inlineDataChecksum];
            v34 = inlineDataChecksum2 == 0;

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
              webURL4 = [attachmentCopy webURL];
              absoluteString2 = [webURL4 absoluteString];
              sub_A664C(absoluteString2, buf, v29, webURL4);
            }
          }
        }

        firstObject = [v39[5] firstObject];
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
      sub_A66F0(v26, self);
    }

    [NSError hk_assignError:error code:3 format:@"HKMedicalDownloadableAttachment has neither a webURL nor an inlineDataChecksum"];
    firstObject = 0;
    goto LABEL_25;
  }

  _HKInitializeLogging();
  v17 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
  {
    sub_A6794(v17, self);
  }

  [NSError hk_assignError:error code:3 format:@"HKMedicalDownloadableAttachment has no accountIdentifier"];
  firstObject = 0;
LABEL_26:

  return firstObject;
}

+ (BOOL)_updateWithExistingAttachmentIfFoundForDownloadableAttachment:(id)attachment medicalRecord:(id)record clinicalRecord:(id)clinicalRecord profile:(id)profile error:(id *)error
{
  attachmentCopy = attachment;
  profileCopy = profile;
  v26 = 0;
  LODWORD(record) = [self _reconcileExistingAttachmentsIfFoundForDownloadableAttachment:attachmentCopy medicalRecord:record clinicalRecord:clinicalRecord attachment:&v26 profile:profileCopy error:error];
  v14 = v26;
  v15 = v14;
  if (record)
  {
    if (!v14)
    {
LABEL_11:
      v21 = 1;
      goto LABEL_12;
    }

    metadata = [attachmentCopy metadata];
    v17 = [metadata objectForKeyedSubscript:HKMedicalDownloadableAttachmentMetadataNeedsReIndexingKey];

    if (!v17 && ([attachmentCopy status] == &dword_4 + 2 || objc_msgSend(attachmentCopy, "status") == &dword_4 + 1 || objc_msgSend(attachmentCopy, "status") == &dword_8 + 1))
    {
      identifier = [v15 identifier];
      attachmentIdentifier = [attachmentCopy attachmentIdentifier];
      v24 = [identifier isEqual:attachmentIdentifier];

      if (v24)
      {
        goto LABEL_11;
      }

      identifier2 = [attachmentCopy identifier];
      identifier3 = [v15 identifier];
      v20 = [self _updateHKAttachmentIdentifierForAttachmentWithIdentifier:identifier2 attachmentIdentifier:identifier3 profile:profileCopy error:error];
    }

    else
    {
      identifier2 = [attachmentCopy identifier];
      identifier3 = [v15 identifier];
      v20 = [self _markAvailableAndClearInlineDataForAttachmentWithIdentifier:identifier2 attachmentIdentifier:identifier3 profile:profileCopy error:error];
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

+ (BOOL)_reconcileExistingAttachmentsIfFoundForDownloadableAttachment:(id)attachment medicalRecord:(id)record clinicalRecord:(id)clinicalRecord attachment:(id *)a6 profile:(id)profile error:(id *)error
{
  attachmentCopy = attachment;
  recordCopy = record;
  clinicalRecordCopy = clinicalRecord;
  profileCopy = profile;
  v18 = objc_alloc_init(NSMutableSet);
  attachmentObjectIdentifier = [recordCopy attachmentObjectIdentifier];
  v20 = [self _attachmentsForDownloadableAttachment:attachmentCopy attachmentObjectIdentifier:attachmentObjectIdentifier profile:profileCopy error:error];

  if (!v20)
  {
    LOBYTE(a6) = 0;
    goto LABEL_33;
  }

  [v18 addObjectsFromArray:v20];
  v40 = recordCopy;
  if (clinicalRecordCopy)
  {
    attachmentObjectIdentifier2 = [clinicalRecordCopy attachmentObjectIdentifier];
    v22 = [self _attachmentsForDownloadableAttachment:attachmentCopy attachmentObjectIdentifier:attachmentObjectIdentifier2 profile:profileCopy error:error];

    if (!v22)
    {
      LOBYTE(a6) = 0;
      recordCopy = v40;
      goto LABEL_33;
    }

    [v18 addObjectsFromArray:v22];

    recordCopy = v40;
  }

  if ([v18 count] > 1)
  {
    allObjects2 = [v18 hk_firstSortedObjectWithComparison:&stru_1083D8];
    [v18 removeObject:allObjects2];
    if (a6)
    {
      v24 = allObjects2;
      *a6 = allObjects2;
    }

    if ([v18 count])
    {
      allObjects = [v18 allObjects];
      [self _removeDuplicateAttachments:allObjects profile:profileCopy];

      recordCopy = v40;
    }

    attachmentObjectIdentifier3 = [recordCopy attachmentObjectIdentifier];
    a6 = [self _attachmentRefsForDownloadableAttachment:attachmentCopy attachmentObjectIdentifier:attachmentObjectIdentifier3 profile:profileCopy error:error];

    v39 = a6;
    if (!a6)
    {
      recordCopy = v40;
      goto LABEL_31;
    }

    if ([a6 count])
    {
      recordCopy = v40;
      if (!clinicalRecordCopy)
      {
        LOBYTE(a6) = 1;
        goto LABEL_31;
      }
    }

    else
    {
      [profileCopy attachmentManager];
      v37 = v36 = allObjects2;
      hkAttachment = [allObjects2 hkAttachment];
      a6 = [v40 attachmentObjectIdentifier];
      v28 = [v37 addReferenceWithAttachment:hkAttachment toObjectWithIdentifier:? schemaIdentifier:? metadata:? error:?];

      LOBYTE(a6) = v28 != 0;
      v35 = v28;

      if (!clinicalRecordCopy)
      {
        recordCopy = v40;
        allObjects2 = v36;
        goto LABEL_31;
      }

      recordCopy = v40;
      allObjects2 = v36;
      if (!v35)
      {
LABEL_31:

        goto LABEL_32;
      }
    }

    attachmentObjectIdentifier4 = [clinicalRecordCopy attachmentObjectIdentifier];
    v30 = [self _attachmentRefsForDownloadableAttachment:attachmentCopy attachmentObjectIdentifier:attachmentObjectIdentifier4 profile:profileCopy error:error];

    if (!v30)
    {
      goto LABEL_28;
    }

    recordCopy = v40;
    if ([v30 count])
    {
      LOBYTE(a6) = 1;
LABEL_30:

      goto LABEL_31;
    }

    attachmentManager = [profileCopy attachmentManager];
    hkAttachment2 = [allObjects2 hkAttachment];
    attachmentObjectIdentifier5 = [clinicalRecordCopy attachmentObjectIdentifier];
    v33 = [attachmentManager addReferenceWithAttachment:hkAttachment2 toObjectWithIdentifier:? schemaIdentifier:? metadata:? error:?];

    if (v33)
    {
      LOBYTE(a6) = 1;
    }

    else
    {
LABEL_28:
      LOBYTE(a6) = 0;
    }

    recordCopy = v40;
    goto LABEL_30;
  }

  if (a6 && [v18 count] == &dword_0 + 1)
  {
    allObjects2 = [v18 allObjects];
    *a6 = [allObjects2 firstObject];
    LOBYTE(a6) = 1;
LABEL_32:

    goto LABEL_33;
  }

  LOBYTE(a6) = 1;
LABEL_33:

  return a6;
}

+ (id)_attachmentsForDownloadableAttachment:(id)attachment attachmentObjectIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  attachmentCopy = attachment;
  profileCopy = profile;
  identifierCopy = identifier;
  v13 = objc_alloc_init(NSMutableArray);
  attachmentManager = [profileCopy attachmentManager];

  v15 = HKAttachmentClinicalRecordSchemaIdentifier;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_73F38;
  v20[3] = &unk_108400;
  selfCopy = self;
  v21 = attachmentCopy;
  v16 = v13;
  v22 = v16;
  v17 = attachmentCopy;
  LODWORD(error) = [attachmentManager attachmentReferencesForObjectIdentifier:identifierCopy schemaIdentifier:v15 error:error enumerationHandler:v20];

  if (error)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)_attachmentRefsForDownloadableAttachment:(id)attachment attachmentObjectIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  attachmentCopy = attachment;
  profileCopy = profile;
  identifierCopy = identifier;
  v13 = objc_alloc_init(NSMutableArray);
  attachmentManager = [profileCopy attachmentManager];

  v15 = HKAttachmentClinicalRecordSchemaIdentifier;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_740E4;
  v20[3] = &unk_108400;
  selfCopy = self;
  v21 = attachmentCopy;
  v16 = v13;
  v22 = v16;
  v17 = attachmentCopy;
  LODWORD(error) = [attachmentManager attachmentReferencesForObjectIdentifier:identifierCopy schemaIdentifier:v15 error:error enumerationHandler:v20];

  if (error)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (BOOL)_attachmentMatchesDownloadableAttachment:(id)attachment hdAttachment:(id)hdAttachment
{
  attachmentCopy = attachment;
  hdAttachmentCopy = hdAttachment;
  metadata = [hdAttachmentCopy metadata];
  v8 = [metadata objectForKeyedSubscript:HKMedicalDownloadableAttachmentMetadataWebURLKey];

  webURL = [attachmentCopy webURL];
  v10 = webURL;
  if (webURL && v8)
  {
    webURL2 = [attachmentCopy webURL];
    absoluteString = [webURL2 absoluteString];
    v13 = [absoluteString isEqualToString:v8];

    if (v13)
    {
      v14 = 1;
      goto LABEL_10;
    }
  }

  else
  {
  }

  metadata2 = [hdAttachmentCopy metadata];
  v16 = [metadata2 objectForKeyedSubscript:HKMedicalDownloadableAttachmentMetadataInlineDataChecksumKey];

  inlineDataChecksum = [attachmentCopy inlineDataChecksum];
  v14 = 0;
  if (inlineDataChecksum && v16)
  {
    inlineDataChecksum2 = [attachmentCopy inlineDataChecksum];
    v14 = [inlineDataChecksum2 isEqual:v16];
  }

LABEL_10:
  return v14;
}

+ (void)_removeDuplicateAttachments:(id)attachments profile:(id)profile
{
  attachmentsCopy = attachments;
  profileCopy = profile;
  attachmentManager = [profileCopy attachmentManager];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = attachmentsCopy;
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
        [attachmentManager attachmentReferencesForAttachment:v11 error:0 enumerationHandler:v21];
        v12 = v23[5];
        v20 = 0;
        LOBYTE(v11) = [attachmentManager removeAttachmentReferences:v12 error:&v20];
        v13 = v20;
        if ((v11 & 1) == 0)
        {
          _HKInitializeLogging();
          v14 = HKLogHealthRecords;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            v19 = [self debugDescription];
            localizedDescription = [v13 localizedDescription];
            *buf = 138543619;
            v33 = v19;
            v34 = 2113;
            v35 = localizedDescription;
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

+ (BOOL)_checkForObsoleteDownloadableAttachmentsForMedicalRecord:(id)record extractedDownloadableAttachments:(id)attachments medicalObjectIdentifier:(id)identifier clinicalObjectIdentifier:(id)objectIdentifier profile:(id)profile error:(id *)error
{
  recordCopy = record;
  attachmentsCopy = attachments;
  identifierCopy = identifier;
  objectIdentifierCopy = objectIdentifier;
  profileCopy = profile;
  v50 = recordCopy;
  v52 = [self _predicateForDownloadableAttachmentsWithMedicalRecordIdentifier:recordCopy];
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
  v16 = attachmentsCopy;
  v65 = v16;
  v66 = &v68;
  [HDMedicalDownloadableAttachmentEntity enumerateAttachmentsWithPredicate:v52 profile:profileCopy error:&v67 enumerationHandler:v64];
  v17 = v67;
  v49 = v16;
  if (v17)
  {
    v18 = v17;
    v19 = v18;
    if (error)
    {
      v20 = v18;
      v21 = 0;
      *error = v19;
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
          attachmentIdentifier = [v26 attachmentIdentifier];
          v28 = attachmentIdentifier == 0;

          if (!v28)
          {
            attachmentManager = [profileCopy attachmentManager];
            if (identifierCopy)
            {
              attachmentIdentifier2 = [v26 attachmentIdentifier];
              v59 = 0;
              v31 = [attachmentManager removeAllReferencesWithAttachmentIdentifier:attachmentIdentifier2 objectIdentifier:identifierCopy schemaIdentifier:v54 error:&v59];
              v32 = v59;

              if ((v31 & 1) == 0)
              {
                _HKInitializeLogging();
                v33 = HKLogHealthRecords;
                if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  v40 = [self debugDescription];
                  attachmentIdentifier3 = [v26 attachmentIdentifier];
                  *buf = 138543875;
                  v75 = v40;
                  v76 = 2114;
                  v77 = attachmentIdentifier3;
                  v78 = 2113;
                  v79 = v32;
                  v47 = attachmentIdentifier3;
                  _os_log_error_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "%{public}@ failed to remove HKAttachmentReferences for medicalRecord from HKAttachment with identifier %{public}@. Error: %{private}@", buf, 0x20u);
                }
              }
            }

            if (objectIdentifierCopy)
            {
              attachmentIdentifier4 = [v26 attachmentIdentifier];
              v58 = 0;
              v35 = [attachmentManager removeAllReferencesWithAttachmentIdentifier:attachmentIdentifier4 objectIdentifier:objectIdentifierCopy schemaIdentifier:v54 error:&v58];
              v36 = v58;

              if ((v35 & 1) == 0)
              {
                _HKInitializeLogging();
                v37 = HKLogHealthRecords;
                if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  v42 = [self debugDescription];
                  attachmentIdentifier5 = [v26 attachmentIdentifier];
                  *buf = 138543875;
                  v75 = v42;
                  v76 = 2114;
                  v77 = attachmentIdentifier5;
                  v78 = 2113;
                  v79 = v36;
                  v48 = attachmentIdentifier5;
                  _os_log_error_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "%{public}@ failed to remove HKAttachmentReferencesfor clinicalRecord from HKAttachment with identifier %{public}@. Error: %{private}@", buf, 0x20u);
                }
              }
            }
          }

          identifier = [v26 identifier];
          v57 = 0;
          [self deleteAttachmentWithIdentifier:identifier profile:profileCopy error:&v57];
          v39 = v57;

          if (v39)
          {
            v44 = v39;
            v22 = v44;
            if (error)
            {
              v45 = v44;
              *error = v22;
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

+ (BOOL)_markAvailableAndClearInlineDataForAttachmentWithIdentifier:(id)identifier attachmentIdentifier:(id)attachmentIdentifier profile:(id)profile error:(id *)error
{
  attachmentIdentifierCopy = attachmentIdentifier;
  v17[0] = HDMedicalDownloadableAttachmentEntityPropertyAttachmentUUID;
  v17[1] = HDMedicalDownloadableAttachmentEntityPropertyStatus;
  v17[2] = HDMedicalDownloadableAttachmentEntityPropertyErrorStatus;
  v17[3] = HDMedicalDownloadableAttachmentEntityPropertyLastError;
  v17[4] = HDMedicalDownloadableAttachmentEntityPropertyInlineData;
  v17[5] = HDMedicalDownloadableAttachmentEntityPropertyRetryCount;
  v17[6] = HDMedicalDownloadableAttachmentEntityPropertyNextRetryDate;
  profileCopy = profile;
  identifierCopy = identifier;
  v12 = [NSArray arrayWithObjects:v17 count:7];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_74F3C;
  v15[3] = &unk_105B80;
  v16 = attachmentIdentifierCopy;
  v13 = attachmentIdentifierCopy;
  LOBYTE(error) = [HDMedicalDownloadableAttachmentEntity updateAttachmentWithIdentifier:identifierCopy properties:v12 profile:profileCopy error:error bindingHandler:v15];

  return error;
}

+ (BOOL)_updateHKAttachmentIdentifierForAttachmentWithIdentifier:(id)identifier attachmentIdentifier:(id)attachmentIdentifier profile:(id)profile error:(id *)error
{
  attachmentIdentifierCopy = attachmentIdentifier;
  v17 = HDMedicalDownloadableAttachmentEntityPropertyAttachmentUUID;
  profileCopy = profile;
  identifierCopy = identifier;
  v12 = [NSArray arrayWithObjects:&v17 count:1];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_7514C;
  v15[3] = &unk_105B80;
  v16 = attachmentIdentifierCopy;
  v13 = attachmentIdentifierCopy;
  LOBYTE(error) = [HDMedicalDownloadableAttachmentEntity updateAttachmentWithIdentifier:identifierCopy properties:v12 profile:profileCopy error:error bindingHandler:v15];

  return error;
}

+ (BOOL)_deleteAttachmentsWithMedicalRecordIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  profileCopy = profile;
  v10 = [self _predicateForDownloadableAttachmentsWithMedicalRecordIdentifier:identifierCopy];
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
  [HDMedicalDownloadableAttachmentEntity enumerateAttachmentsWithPredicate:v10 profile:profileCopy error:&v22 enumerationHandler:v21];
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

        [self deleteAttachmentWithIdentifier:*(*(&v17 + 1) + 8 * v15) profile:profileCopy error:{error, v17}];
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

+ (id)_attachmentsAfterRelinkingFromMedicalRecord:(id)record toMedicalRecord:(id)medicalRecord profile:(id)profile error:(id *)error
{
  recordCopy = record;
  medicalRecordCopy = medicalRecord;
  profileCopy = profile;
  v12 = objc_alloc_init(NSMutableArray);
  v58 = profileCopy;
  attachmentManager = [profileCopy attachmentManager];
  attachmentObjectIdentifier = [recordCopy attachmentObjectIdentifier];
  v15 = HKAttachmentClinicalRecordSchemaIdentifier;
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_759FC;
  v68[3] = &unk_108478;
  v16 = v12;
  v69 = v16;
  LOBYTE(v12) = [attachmentManager attachmentReferencesForObjectIdentifier:attachmentObjectIdentifier schemaIdentifier:v15 error:error enumerationHandler:v68];

  if ((v12 & 1) == 0)
  {
    _HKInitializeLogging();
    v17 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      v39 = v17;
      v40 = [self debugDescription];
      uUID = [recordCopy UUID];
      v42 = *error;
      *buf = 138543875;
      v73 = v40;
      v74 = 2114;
      v75 = uUID;
      v76 = 2113;
      v77 = v42;
      _os_log_error_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "%{public}@ failed to retrieve HDAttachments for existing medicalRecord with UUID %{public}@. Error: %{private}@", buf, 0x20u);
    }
  }

  uUID2 = [recordCopy UUID];
  v19 = [self _predicateForDownloadableAttachmentsWithMedicalRecordIdentifier:uUID2];

  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_75A1C;
  v66[3] = &unk_1084A0;
  v20 = objc_alloc_init(NSMutableArray);
  v67 = v20;
  if ([HDMedicalDownloadableAttachmentEntity enumerateAttachmentsWithPredicate:v19 profile:v58 error:error enumerationHandler:v66])
  {
    v49 = v16;
    selfCopy = self;
    v48 = v20;
    errorCopy = error;
    v50 = attachmentManager;
    v51 = recordCopy;
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
          metadata = [v26 metadata];
          v28 = metadata;
          if (!metadata)
          {
            metadata = &__NSDictionary0__struct;
          }

          v29 = [metadata mutableCopy];

          [v29 setObject:&__kCFBooleanTrue forKeyedSubscript:v54];
          identifier = [v26 identifier];
          v31 = [HDSQLiteComparisonPredicate predicateWithProperty:v53 equalToValue:identifier];

          v70[0] = v23;
          v70[1] = v24;
          v32 = [NSArray arrayWithObjects:v70 count:2];
          database = [v58 database];
          v59[0] = _NSConcreteStackBlock;
          v59[1] = 3221225472;
          v59[2] = sub_75A40;
          v59[3] = &unk_1065E0;
          v60 = medicalRecordCopy;
          v34 = v29;
          v61 = v34;
          v35 = [HDMedicalDownloadableAttachmentEntity updateProperties:v32 predicate:v31 healthDatabase:database error:errorCopy bindingHandler:v59];

          if ((v35 & 1) == 0)
          {
            _HKInitializeLogging();
            v37 = HKLogHealthRecords;
            recordCopy = v51;
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
            {
              v43 = v37;
              v44 = [selfCopy debugDescription];
              uUID3 = [v51 UUID];
              v46 = *errorCopy;
              *buf = 138543875;
              v73 = v44;
              v74 = 2114;
              v75 = uUID3;
              v76 = 2113;
              v77 = v46;
              _os_log_error_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "%{public}@ failed to update MedicalDownloadableAttachment for existing medicalRecord with UUID %{public}@. Error: %{private}@", buf, 0x20u);
            }

            v36 = 0;
            v16 = v49;
            attachmentManager = v50;
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
    attachmentManager = v50;
    recordCopy = v51;
LABEL_20:
    v20 = v48;
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

+ (id)_attachmentsAfterRelinkingFromClinicalRecord:(id)record toClinicalRecord:(id)clinicalRecord profile:(id)profile error:(id *)error
{
  recordCopy = record;
  clinicalRecordCopy = clinicalRecord;
  profileCopy = profile;
  v13 = objc_alloc_init(NSMutableArray);
  attachmentManager = [profileCopy attachmentManager];
  attachmentObjectIdentifier = [recordCopy attachmentObjectIdentifier];
  v16 = HKAttachmentClinicalRecordSchemaIdentifier;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_75EA4;
  v41[3] = &unk_108478;
  v17 = v13;
  v42 = v17;
  v38 = attachmentManager;
  LOBYTE(v16) = [attachmentManager attachmentReferencesForObjectIdentifier:attachmentObjectIdentifier schemaIdentifier:v16 error:error enumerationHandler:v41];

  if ((v16 & 1) == 0)
  {
    _HKInitializeLogging();
    v18 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      v29 = v18;
      v30 = [self debugDescription];
      uUID = [recordCopy UUID];
      v32 = *error;
      *buf = 138543875;
      v45 = v30;
      v46 = 2114;
      v47 = uUID;
      v48 = 2113;
      v49 = v32;
      _os_log_error_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "%{public}@ failed to retrieve HDAttachments for existing clinicalRecord with UUID %{public}@. Error: %{private}@", buf, 0x20u);
    }
  }

  selfCopy = self;
  v19 = HDMedicalDownloadableAttachmentEntityPropertyClinicalRecordUUID;
  v43 = HDMedicalDownloadableAttachmentEntityPropertyClinicalRecordUUID;
  v20 = [NSArray arrayWithObjects:&v43 count:1];
  uUID2 = [recordCopy UUID];
  v22 = [HDSQLiteComparisonPredicate predicateWithProperty:v19 equalToValue:uUID2];
  database = [profileCopy database];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_75EC4;
  v39[3] = &unk_105B80;
  v24 = clinicalRecordCopy;
  v40 = v24;
  v25 = [HDMedicalDownloadableAttachmentEntity updateProperties:v20 predicate:v22 healthDatabase:database error:error bindingHandler:v39];

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
      v34 = [selfCopy debugDescription];
      uUID3 = [recordCopy UUID];
      v36 = *error;
      *buf = 138543875;
      v45 = v34;
      v46 = 2114;
      v47 = uUID3;
      v48 = 2113;
      v49 = v36;
      _os_log_error_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "%{public}@ failed to update MedicalDownloadableAttachment for existing clinicalRecord with UUID %{public}@. Error: %{private}@", buf, 0x20u);
    }

    v26 = 0;
  }

  return v26;
}

+ (id)attachmentWithIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  profileCopy = profile;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_73758;
  v22 = sub_73768;
  v23 = 0;
  database = [profileCopy database];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_760AC;
  v14[3] = &unk_1078F0;
  selfCopy = self;
  v11 = identifierCopy;
  v15 = v11;
  v16 = &v18;
  [self performReadTransactionWithHealthDatabase:database error:error block:v14];

  v12 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v12;
}

+ (BOOL)enumerateAttachmentsWithPredicate:(id)predicate profile:(id)profile error:(id *)error enumerationHandler:(id)handler
{
  handlerCopy = handler;
  profileCopy = profile;
  predicateCopy = predicate;
  _propertiesForEntity = [self _propertiesForEntity];
  database = [profileCopy database];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_76314;
  v17[3] = &unk_1084F0;
  v18 = handlerCopy;
  selfCopy = self;
  v15 = handlerCopy;
  LOBYTE(error) = [self enumerateProperties:_propertiesForEntity withPredicate:predicateCopy healthDatabase:database error:error enumerationHandler:v17];

  return error;
}

+ (BOOL)updateAttachmentWithIdentifier:(id)identifier properties:(id)properties profile:(id)profile error:(id *)error bindingHandler:(id)handler
{
  handlerCopy = handler;
  profileCopy = profile;
  identifierCopy = identifier;
  v15 = [properties mutableCopy];
  [v15 addObject:HDMedicalDownloadableAttachmentEntityPropertyLastUpdatedDate];
  v16 = [HDSQLiteComparisonPredicate predicateWithProperty:HDMedicalDownloadableAttachmentEntityPropertyIdentifier equalToValue:identifierCopy];

  database = [profileCopy database];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_76518;
  v20[3] = &unk_108518;
  v21 = handlerCopy;
  v18 = handlerCopy;
  LOBYTE(error) = [self updateProperties:v15 predicate:v16 healthDatabase:database error:error bindingHandler:v20];

  return error;
}

+ (BOOL)deleteAttachmentWithIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  identifierCopy = identifier;
  v9 = [[HDDeleteMedicalDownloadableAttachmentOperation alloc] initWithAttachmentIdentifier:identifierCopy];

  LOBYTE(error) = [(HDDeleteMedicalDownloadableAttachmentOperation *)v9 performOrJournalWithProfile:profileCopy error:error];
  return error;
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

+ (id)attachmentForRow:(HDSQLiteRow *)row
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

+ (id)_attachmentEntityForIdentifier:(id)identifier databaseTransaction:(id)transaction error:(id *)error
{
  v8 = HDMedicalDownloadableAttachmentEntityPropertyIdentifier;
  transactionCopy = transaction;
  v10 = [HDSQLiteComparisonPredicate predicateWithProperty:v8 equalToValue:identifier];
  v11 = [transactionCopy databaseForEntityClass:self];

  v12 = [self anyInDatabase:v11 predicate:v10 error:error];

  return v12;
}

+ (BOOL)_deleteAttachmentWithIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  v8 = HDMedicalDownloadableAttachmentEntityPropertyIdentifier;
  profileCopy = profile;
  v10 = [HDSQLiteComparisonPredicate predicateWithProperty:v8 equalToValue:identifier];
  database = [profileCopy database];

  LOBYTE(error) = [self deleteEntitiesWithPredicate:v10 healthDatabase:database error:error];
  return error;
}

@end