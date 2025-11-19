@interface PFCloudKitSerializer
+ (BOOL)shouldTrackAttribute:(uint64_t)a1;
+ (id)assetsOnRecord:(uint64_t)a1 withOptions:(void *)a2;
+ (id)createSetOfObjectIDsRelatedToObject:(uint64_t)a1;
+ (id)defaultRecordZoneIDForDatabaseScope:(int64_t)a3;
+ (id)newSetOfRecordKeysForAttribute:(int)a3 includeCKAssetsForFileBackedFutures:;
+ (id)newSetOfRecordKeysForEntitiesInConfiguration:(void *)a3 inManagedObjectModel:(int)a4 includeCKAssetsForFileBackedFutures:;
+ (uint64_t)applyCDPrefixToName:(uint64_t)a1;
+ (uint64_t)assetStorageDirectoryURLForStore:(uint64_t)a1;
+ (uint64_t)estimateByteSizeOfRecordID:(uint64_t)a1;
+ (uint64_t)generateCKAssetFileURLForObjectInStore:(uint64_t)a1;
+ (uint64_t)isMirroredRelationshipRecordType:(uint64_t)a1;
+ (uint64_t)isPrivateAttribute:(uint64_t)a1;
+ (uint64_t)isVariableLengthAttributeType:(uint64_t)a1;
+ (uint64_t)mtmKeyForObjectWithRecordName:(uint64_t)a3 relatedToObjectWithRecordName:(uint64_t)a4 byRelationship:(uint64_t)a5 withInverse:;
+ (uint64_t)oldAssetStorageDirectoryURLForStore:(uint64_t)a1;
+ (uint64_t)recordTypeForEntity:(uint64_t)a1;
+ (uint64_t)sizeOfVariableLengthAttribute:(void *)a3 withValue:;
+ (void)_invalidateStaticCaches;
+ (void)initialize;
- (PFCloudKitSerializer)initWithMirroringOptions:(id)a3 metadataCache:(id)a4 recordNamePrefix:(id)a5;
- (id)getRecordMetadataForObject:(void *)a3 inManagedObjectContext:(void *)a4 error:;
- (id)newCKRecordsFromObject:(int)a3 fullyMaterializeRecords:(int)a4 includeRelationships:(void *)a5 error:;
- (uint64_t)applyUpdatedRecords:(uint64_t)a3 deletedRecordIDs:(uint64_t)a4 toStore:(void *)a5 inManagedObjectContext:(uint64_t)a6 onlyUpdatingAttributes:(uint64_t)a7 andRelationships:(uint64_t)a8 madeChanges:(void *)a9 error:;
- (uint64_t)shouldEncryptValueForAttribute:(uint64_t)result;
- (void)dealloc;
@end

@implementation PFCloudKitSerializer

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__PFCloudKitSerializer_initialize__block_invoke;
    block[3] = &unk_1E6EC16F0;
    block[4] = a1;
    if (initialize_onceToken != -1)
    {
      dispatch_once(&initialize_onceToken, block);
    }
  }
}

- (PFCloudKitSerializer)initWithMirroringOptions:(id)a3 metadataCache:(id)a4 recordNamePrefix:(id)a5
{
  v10.receiver = self;
  v10.super_class = PFCloudKitSerializer;
  v8 = [(PFCloudKitSerializer *)&v10 init];
  if (v8)
  {
    v8->_manyToManyRecordNameToRecord = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8->_recordNamePrefix = [a5 copy];
    v8->_mirroringOptions = a3;
    v8->_writtenAssetURLs = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8->_metadataCache = a4;
  }

  return v8;
}

- (void)dealloc
{
  self->_manyToManyRecordNameToRecord = 0;

  self->_recordNamePrefix = 0;
  self->_mirroringOptions = 0;

  self->_writtenAssetURLs = 0;
  self->_metadataCache = 0;
  v3.receiver = self;
  v3.super_class = PFCloudKitSerializer;
  [(PFCloudKitSerializer *)&v3 dealloc];
}

- (id)newCKRecordsFromObject:(int)a3 fullyMaterializeRecords:(int)a4 includeRelationships:(void *)a5 error:
{
  v145 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v102 = 0;
    goto LABEL_127;
  }

  v6 = a2;
  v127 = 0;
  v128 = &v127;
  v129 = 0x2020000000;
  v130 = 1;
  v121 = 0;
  v122 = &v121;
  v123 = 0x3052000000;
  v124 = __Block_byref_object_copy__37;
  v125 = __Block_byref_object_dispose__37;
  v126 = 0;
  v100 = [a2 managedObjectContext];
  v102 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v101 = [v6 entity];
  v98 = a4;
  v99 = [objc_msgSend(v6 "objectID")];
  v7 = [v6 managedObjectContext];
  v8 = [(PFCloudKitSerializer *)a1 getRecordMetadataForObject:v6 inManagedObjectContext:v7 error:v122 + 5];
  v103 = v8;
  if (v8)
  {
    v104 = -[NSCKRecordZoneMetadata createRecordZoneID]([v8 recordZone]);
    v9 = [v103 encodedRecordAsset];
    v10 = v9;
    if (v9)
    {
      if ([objc_msgSend(v9 "binaryData")])
      {
        v11 = [v10 binaryData];
      }

      else
      {
        v11 = [v10 externalBinaryData];
      }
    }

    else
    {
      v11 = 0;
    }

    if ([v11 length])
    {
      v13 = *(a1 + 24);
      if (v13)
      {
        v14 = *(v13 + 136);
      }

      else
      {
        v14 = 0;
      }

      v15 = [v103 encodedRecordAsset];
      v16 = v15;
      if (v15)
      {
        if ([objc_msgSend(v15 "binaryData")])
        {
          v17 = [v16 binaryData];
        }

        else
        {
          v17 = [v16 externalBinaryData];
        }
      }

      else
      {
        v17 = 0;
      }

      v106 = [(PFCloudKitArchivingUtilities *)v14 recordFromEncodedData:v17 error:v122 + 5];
      if (!v106)
      {
        *(v128 + 24) = 0;
        v20 = v122[5];
        if (v128[3])
        {
          goto LABEL_22;
        }

        v18 = 0;
        v19 = 0;
        v106 = 0;
        goto LABEL_39;
      }
    }

    else
    {
      v106 = [v103 createRecordFromSystemFields];
    }

    if (v128[3])
    {
      if (v106)
      {
        v105 = [(__CFString *)v106 recordID];
        goto LABEL_23;
      }

LABEL_22:
      v21 = [(NSCKRecordMetadata *)v103 createRecordID];
      v22 = objc_alloc(getCloudKitCKRecordClass[0]());
      v105 = v21;
      v106 = [v22 initWithRecordType:+[PFCloudKitSerializer recordTypeForEntity:](PFCloudKitSerializer recordID:{v101), v21}];
LABEL_23:
      v23 = [v101 name];
      objc_opt_self();
      v24 = [@"CD_" stringByAppendingString:@"entityName"];
      v25 = [*(a1 + 24) useDeviceToDeviceEncryption];
      v26 = v106;
      if (v25)
      {
        v26 = [(__CFString *)v106 encryptedValues];
      }

      [(__CFString *)v26 setObject:v23 forKey:v24];
      if ([objc_msgSend(v103 "moveReceipts")] || a3)
      {
        if (a3)
        {
          v27 = [@"Some sample move receipt data." dataUsingEncoding:4];
          objc_opt_self();
          v28 = [@"CD_" stringByAppendingString:@"moveReceipt"];
          v29 = [*(a1 + 24) useDeviceToDeviceEncryption];
          v30 = v106;
          if (v29)
          {
            v30 = [(__CFString *)v106 encryptedValues];
          }

          [(__CFString *)v30 setObject:v27 forKey:v28];
          v31 = +[PFCloudKitSerializer generateCKAssetFileURLForObjectInStore:](PFCloudKitSerializer, [objc_msgSend(v6 "objectID")]);
          if ([v27 writeToURL:v31 options:0 error:v122 + 5])
          {
            [*(a1 + 40) addObject:v31];
            v32 = [objc_alloc(getCloudKitCKAssetClass()) initWithFileURL:v31];
            objc_opt_self();
            v33 = [@"CD_" stringByAppendingString:@"moveReceipt"];
            objc_opt_self();
            -[__CFString setObject:forKey:](v106, "setObject:forKey:", v32, [v33 stringByAppendingString:@"_ckAsset"]);
          }

          else
          {
            v40 = objc_autoreleasePoolPush();
            Stream = __PFCloudKitLoggingGetStream();
            v42 = Stream;
            if (__ckLoggingOverride == 17)
            {
              v43 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v43 = OS_LOG_TYPE_ERROR;
            }

            if (os_log_type_enabled(Stream, v43))
            {
              v44 = [v6 objectID];
              v45 = [(__CFString *)v106 recordID];
              v46 = v122[5];
              *buf = 136316418;
              v134 = "[PFCloudKitSerializer newCKRecordsFromObject:fullyMaterializeRecords:includeRelationships:error:]";
              v135 = 1024;
              v136 = 224;
              v137 = 2112;
              v138 = @"moveReceipt";
              v139 = 2112;
              v140 = v44;
              v141 = 2112;
              v142 = v45;
              v143 = 2112;
              v144 = v46;
              _os_log_impl(&dword_18565F000, v42, v43, "CoreData+CloudKit: %s(%d): Failed to write CKAsset data for '%@' on '%@' backing record '%@'.\n%@", buf, 0x3Au);
            }

            objc_autoreleasePoolPop(v40);
            *(v128 + 24) = 0;
            v47 = v122[5];
          }
        }

        else
        {
          v34 = [v103 createEncodedMoveReceiptData:v122 + 5];
          if (v34)
          {
            v35 = [objc_msgSend(*(a1 + 24) "ckAssetThresholdBytes")];
            objc_opt_self();
            v36 = [@"CD_" stringByAppendingString:@"moveReceipt"];
            objc_opt_self();
            v37 = [v36 stringByAppendingString:@"_ckAsset"];
            if (v35 && [v34 length] > v35 || (v38 = objc_msgSend(v34, "length"), (-[__CFString size](v106, "size") + v38) >= 0xAAE61))
            {
              v39 = +[PFCloudKitSerializer generateCKAssetFileURLForObjectInStore:](PFCloudKitSerializer, [objc_msgSend(v6 "objectID")]);
              if ([v34 writeToURL:v39 options:0 error:v122 + 5])
              {
                [*(a1 + 40) addObject:v39];
                -[__CFString setObject:forKey:](v106, "setObject:forKey:", [objc_alloc(getCloudKitCKAssetClass()) initWithFileURL:v39], v37);
              }

              else
              {
                v52 = objc_autoreleasePoolPush();
                v53 = __PFCloudKitLoggingGetStream();
                v54 = v53;
                if (__ckLoggingOverride == 17)
                {
                  v55 = OS_LOG_TYPE_FAULT;
                }

                else
                {
                  v55 = OS_LOG_TYPE_ERROR;
                }

                if (os_log_type_enabled(v53, v55))
                {
                  v56 = v6;
                  v57 = [v6 objectID];
                  v58 = [(__CFString *)v106 recordID];
                  v59 = v122[5];
                  *buf = 136316418;
                  v134 = "[PFCloudKitSerializer newCKRecordsFromObject:fullyMaterializeRecords:includeRelationships:error:]";
                  v135 = 1024;
                  v136 = 194;
                  v137 = 2112;
                  v138 = @"moveReceipt";
                  v139 = 2112;
                  v140 = v57;
                  v141 = 2112;
                  v142 = v58;
                  v143 = 2112;
                  v144 = v59;
                  _os_log_impl(&dword_18565F000, v54, v55, "CoreData+CloudKit: %s(%d): Failed to write CKAsset data for '%@' on '%@' backing record '%@'.\n%@", buf, 0x3Au);
                  v6 = v56;
                }

                objc_autoreleasePoolPop(v52);
                *(v128 + 24) = 0;
                v60 = v122[5];
              }
            }

            else
            {
              objc_opt_self();
              v49 = [@"CD_" stringByAppendingString:@"moveReceipt"];
              v50 = [*(a1 + 24) useDeviceToDeviceEncryption];
              v51 = v106;
              if (v50)
              {
                v51 = [(__CFString *)v106 encryptedValues];
              }

              [(__CFString *)v51 setObject:v34 forKey:v49];
            }
          }

          else
          {
            *(v128 + 24) = 0;
            v48 = v122[5];
          }
        }
      }

      v61 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:{objc_msgSend(objc_msgSend(v101, "attributesByName"), "allValues")}];
      [v61 filterUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", &__block_literal_global_23)}];
      v19 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v61, "count")}];
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v18 = v61;
      v62 = [v61 countByEnumeratingWithState:&v117 objects:v132 count:16];
      if (v62)
      {
        v63 = *v118;
        v96 = *MEMORY[0x1E696A250];
        do
        {
          for (i = 0; i != v62; ++i)
          {
            if (*v118 != v63)
            {
              objc_enumerationMutation(v18);
            }

            v65 = *(*(&v117 + 1) + 8 * i);
            v66 = objc_autoreleasePoolPush();
            v67 = [v65 name];
            v68 = [v6 valueForKey:v67];
            if ([v65 attributeType] == 1800 || objc_msgSend(v65, "attributeType") == 2100)
            {
              if (v68)
              {
                v69 = [_PFRoutines retainedEncodeObjectValue:v68 forTransformableAttribute:v65];
              }

              else
              {
                if (!a3)
                {
                  goto LABEL_75;
                }

                v69 = [PFCloudKitSchemaGenerator representativeValueFor:v65];
              }
            }

            else if ([v65 attributeType] == 1100)
            {
              v69 = [(__CFString *)v68 UUIDString];
            }

            else
            {
              if ([v65 attributeType] != 1200)
              {
                goto LABEL_73;
              }

              v69 = [(__CFString *)v68 absoluteString];
            }

            v68 = v69;
LABEL_73:
            if (v68)
            {
              [v19 setObject:v68 forKey:v67];
            }

LABEL_75:
            objc_autoreleasePoolPop(v66);
          }

          v62 = [v18 countByEnumeratingWithState:&v117 objects:v132 count:16];
        }

        while (v62);
      }

LABEL_77:
      v70 = v18;
      if (*(v128 + 24) == 1)
      {
        v116[0] = MEMORY[0x1E69E9820];
        v116[1] = 3221225472;
        v116[2] = __98__PFCloudKitSerializer_newCKRecordsFromObject_fullyMaterializeRecords_includeRelationships_error___block_invoke_21;
        v116[3] = &unk_1E6EC4728;
        v116[4] = v19;
        [v18 sortUsingComparator:v116];
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v71 = [v18 countByEnumeratingWithState:&v112 objects:v131 count:16];
        if (v71)
        {
          v72 = *v113;
          do
          {
            for (j = 0; j != v71; ++j)
            {
              if (*v113 != v72)
              {
                objc_enumerationMutation(v18);
              }

              v74 = *(*(&v112 + 1) + 8 * j);
              if ([PFCloudKitSerializer shouldTrackAttribute:v74])
              {
                v110[0] = MEMORY[0x1E69E9820];
                v110[1] = 3221225472;
                v110[2] = __98__PFCloudKitSerializer_newCKRecordsFromObject_fullyMaterializeRecords_includeRelationships_error___block_invoke_2;
                v110[3] = &unk_1E6EC4750;
                v110[4] = v74;
                v110[5] = v19;
                v111 = a3;
                v110[6] = a1;
                v110[7] = v106;
                v110[8] = v6;
                v110[9] = &v127;
                v110[10] = &v121;
                [_PFRoutines wrapBlockInGuardedAutoreleasePool:v110];
              }
            }

            v71 = [v18 countByEnumeratingWithState:&v112 objects:v131 count:16];
          }

          while (v71);
        }

        v70 = v18;
        if (v98)
        {
          v75 = [v101 relationshipsByName];
          v109[0] = MEMORY[0x1E69E9820];
          v109[1] = 3221225472;
          v109[2] = __98__PFCloudKitSerializer_newCKRecordsFromObject_fullyMaterializeRecords_includeRelationships_error___block_invoke_28;
          v109[3] = &unk_1E6EC4778;
          v109[4] = v6;
          v109[5] = a1;
          v109[6] = v103;
          v109[7] = v105;
          v109[8] = v104;
          v109[12] = &v121;
          v109[13] = &v127;
          v109[9] = v100;
          v109[10] = v102;
          v109[11] = v106;
          [v75 enumerateKeysAndObjectsUsingBlock:v109];
        }
      }

      v76 = v70;
      if (*(v128 + 24) == 1)
      {
        if (v106)
        {
          v77 = objc_autoreleasePoolPush();
          v78 = __PFCloudKitLoggingGetStream();
          v79 = v78;
          v80 = __ckLoggingOverride;
          if (__ckLoggingOverride > 0xFu)
          {
            if (__ckLoggingOverride != 16 && __ckLoggingOverride != 17)
            {
              v80 = OS_LOG_TYPE_DEBUG;
            }
          }

          else
          {
            if (__ckLoggingOverride == 1)
            {
              v81 = 1;
            }

            else
            {
              v81 = 2;
            }

            if (__ckLoggingOverride)
            {
              v80 = v81;
            }

            else
            {
              v80 = OS_LOG_TYPE_DEFAULT;
            }
          }

          if (os_log_type_enabled(v78, v80))
          {
            v87 = [*(a1 + 24) useDeviceToDeviceEncryption];
            v88 = v106;
            if (v87)
            {
              v88 = [(__CFString *)v106 encryptedValueStore];
            }

            v89 = [(__CFString *)v88 changedKeys];
            *buf = 136315906;
            v134 = "[PFCloudKitSerializer newCKRecordsFromObject:fullyMaterializeRecords:includeRelationships:error:]";
            v135 = 1024;
            v136 = 583;
            v137 = 2112;
            v138 = v106;
            v139 = 2112;
            v140 = v89;
            _os_log_impl(&dword_18565F000, v79, v80, "CoreData+CloudKit: %s(%d): Serializer has finished creating record: %@\nModified Fields: %@", buf, 0x26u);
          }

          v70 = v76;
          objc_autoreleasePoolPop(v77);
          [v102 addObject:v106];
          goto LABEL_116;
        }

        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          v95 = v122[5];
          *buf = 138412290;
          v134 = v95;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Supposedly serialization succeeded but there's no record: %@\n", buf, 0xCu);
        }

        v83 = _PFLogGetLogStream(17);
        if (!os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_116;
        }

        v86 = v122[5];
        *buf = 138412290;
        v134 = v86;
        v84 = "CoreData: Supposedly serialization succeeded but there's no record: %@";
      }

      else
      {
        if (v122[5])
        {
          goto LABEL_116;
        }

        v82 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v134 = v6;
          _os_log_error_impl(&dword_18565F000, v82, OS_LOG_TYPE_ERROR, "CoreData: fault: Object serialization failed but did not set an error: %@\n", buf, 0xCu);
        }

        v83 = _PFLogGetLogStream(17);
        if (!os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_116;
        }

        *buf = 138412290;
        v134 = v6;
        v84 = "CoreData: Object serialization failed but did not set an error: %@";
      }

      _os_log_fault_impl(&dword_18565F000, v83, OS_LOG_TYPE_FAULT, v84, buf, 0xCu);
LABEL_116:

      goto LABEL_117;
    }

    v18 = 0;
    v19 = 0;
LABEL_39:
    v105 = 0;
    goto LABEL_77;
  }

  *(v128 + 24) = 0;
  v12 = v122[5];
LABEL_117:

  if ((v128[3] & 1) == 0)
  {
    v90 = v122[5];
    if (v90)
    {
      if (a5)
      {
        *a5 = v90;
      }
    }

    else
    {
      v91 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v134 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitSerializer.m";
        v135 = 1024;
        v136 = 612;
        _os_log_error_impl(&dword_18565F000, v91, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v92 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v92, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v134 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitSerializer.m";
        v135 = 1024;
        v136 = 612;
        _os_log_fault_impl(&dword_18565F000, v92, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    v102 = 0;
  }

  v122[5] = 0;
  _Block_object_dispose(&v121, 8);
  _Block_object_dispose(&v127, 8);
LABEL_127:
  v93 = *MEMORY[0x1E69E9840];
  return v102;
}

- (id)getRecordMetadataForObject:(void *)a3 inManagedObjectContext:(void *)a4 error:
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_23;
  }

  v20 = 0;
  v8 = *(a1 + 48);
  if (!v8 || (v9 = [*(v8 + 16) objectForKey:{objc_msgSend(a2, "objectID")}]) == 0)
  {
    v10 = [NSCKRecordMetadata metadataForObject:a2 inManagedObjectContext:a3 error:&v20];
    if (v10)
    {
      v9 = v10;
LABEL_6:
      [(PFCloudKitMetadataCache *)*(a1 + 48) registerRecordMetadata:v9 forObject:a2];
      goto LABEL_7;
    }

    if (!v20)
    {
      v17 = +[PFCloudKitSerializer defaultRecordZoneIDForDatabaseScope:](PFCloudKitSerializer, "defaultRecordZoneIDForDatabaseScope:", [*(a1 + 24) databaseScope]);
      v9 = +[NSCKRecordMetadata insertMetadataForObject:setRecordName:inZoneWithID:recordNamePrefix:error:](NSCKRecordMetadata, "insertMetadataForObject:setRecordName:inZoneWithID:recordNamePrefix:error:", a2, [*(a1 + 24) preserveLegacyRecordMetadataBehavior], v17, *(a1 + 16), &v20);
      [v9 setNeedsUpload:1];

      if (v9)
      {
        goto LABEL_6;
      }
    }

    v13 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v15 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v16 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v16 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v16))
    {
      *buf = 136315650;
      v22 = "[PFCloudKitSerializer getRecordMetadataForObject:inManagedObjectContext:error:]";
      v23 = 1024;
      v24 = 1591;
      v25 = 2112;
      v26 = v20;
      _os_log_impl(&dword_18565F000, v15, v16, "CoreData+CloudKit: %s(%d): Failed to get a metadata zone: %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v13);
    if (v20)
    {
      if (a4)
      {
        v9 = 0;
        *a4 = v20;
        goto LABEL_7;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v22 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitSerializer.m";
        v23 = 1024;
        v24 = 1596;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v19 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v22 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitSerializer.m";
        v23 = 1024;
        v24 = 1596;
        _os_log_fault_impl(&dword_18565F000, v19, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

LABEL_23:
    v9 = 0;
  }

LABEL_7:
  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (uint64_t)recordTypeForEntity:(uint64_t)a1
{
  objc_opt_self();
  if (a2)
  {
    if (atomic_load((a2 + 124)))
    {
      v4 = *(a2 + 72);
    }

    else
    {
      do
      {
        v4 = a2;
        a2 = [a2 superentity];
      }

      while (a2);
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 name];
  objc_opt_self();

  return [@"CD_" stringByAppendingString:v5];
}

+ (uint64_t)applyCDPrefixToName:(uint64_t)a1
{
  objc_opt_self();

  return [@"CD_" stringByAppendingString:a2];
}

+ (uint64_t)generateCKAssetFileURLForObjectInStore:(uint64_t)a1
{
  objc_opt_self();
  v3 = [PFCloudKitSerializer assetStorageDirectoryURLForStore:a2];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.fxd", objc_msgSend(objc_msgSend(MEMORY[0x1E696AFB0], "UUID"), "UUIDString")];

  return [v3 URLByAppendingPathComponent:v4 isDirectory:0];
}

uint64_t __98__PFCloudKitSerializer_newCKRecordsFromObject_fullyMaterializeRecords_includeRelationships_error___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 isTransient])
  {
    return 0;
  }

  else
  {
    return [a2 isReadOnly] ^ 1;
  }
}

uint64_t __98__PFCloudKitSerializer_newCKRecordsFromObject_fullyMaterializeRecords_includeRelationships_error___block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v6 = +[PFCloudKitSerializer isVariableLengthAttributeType:](PFCloudKitSerializer, [a2 attributeType]);
  v7 = +[PFCloudKitSerializer isVariableLengthAttributeType:](PFCloudKitSerializer, [a3 attributeType]);
  v8 = v6 ^ 1;
  if ((v7 & 1) == 0 && !v8)
  {
    return 1;
  }

  if ((v6 & v7) != 1)
  {
    return ((v7 & v8) << 63) >> 63;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{+[PFCloudKitSerializer sizeOfVariableLengthAttribute:withValue:](PFCloudKitSerializer, a2, objc_msgSend(*(a1 + 32), "objectForKey:", objc_msgSend(a2, "name")))}];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{+[PFCloudKitSerializer sizeOfVariableLengthAttribute:withValue:](PFCloudKitSerializer, a3, objc_msgSend(*(a1 + 32), "objectForKey:", objc_msgSend(a3, "name")))}];

  return [v10 compare:v11];
}

+ (uint64_t)isVariableLengthAttributeType:(uint64_t)a1
{
  objc_opt_self();
  result = 1;
  if (a2 > 799)
  {
    if (a2 > 1199)
    {
      if (a2 > 1999)
      {
        if (a2 == 2100)
        {
          return result;
        }

        return 0;
      }

      if (a2 != 1200 && a2 != 1800)
      {
        return 0;
      }
    }

    else if (a2 <= 999 || a2 != 1000)
    {
      return 0;
    }
  }

  else if (a2 <= 399 || a2 <= 600 || a2 != 700)
  {
    return 0;
  }

  return result;
}

+ (uint64_t)sizeOfVariableLengthAttribute:(void *)a3 withValue:
{
  objc_opt_self();
  v5 = [a2 attributeType];
  if (!a3)
  {
    return 0;
  }

  if (v5 <= 1199)
  {
    if (v5 == 700)
    {
      goto LABEL_13;
    }

    if (v5 == 1000)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (v5 == 1200)
  {
    goto LABEL_13;
  }

  if (v5 != 2100 && v5 != 1800)
  {
    return 0;
  }

LABEL_6:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [a3 fileSize];
  }

LABEL_13:

  return [a3 length];
}

+ (BOOL)shouldTrackAttribute:(uint64_t)a1
{
  objc_opt_self();
  if ((+[PFCloudKitSerializer isPrivateAttribute:](PFCloudKitSerializer, a2) & 1) != 0 || ![a2 attributeType])
  {
    return 0;
  }

  return [PFCloudKitSerializer shouldTrackProperty:a2];
}

void __98__PFCloudKitSerializer_newCKRecordsFromObject_fullyMaterializeRecords_includeRelationships_error___block_invoke_2(uint64_t a1)
{
  v66 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) name];
  objc_opt_self();
  v3 = [@"CD_" stringByAppendingString:v2];
  v4 = [*(a1 + 40) objectForKey:v2];
  if ([*(a1 + 32) attributeType] == 1000 || objc_msgSend(*(a1 + 32), "attributeType") == 1800)
  {
    v5 = [objc_msgSend(*(*(a1 + 48) + 24) "ckAssetThresholdBytes")];
    objc_opt_self();
    v6 = [@"CD_" stringByAppendingString:v2];
    objc_opt_self();
    v7 = [v6 stringByAppendingString:@"_ckAsset"];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [MEMORY[0x1E695DEF0] dataWithBytes:objc_msgSend(v4 length:{"bytes"), objc_msgSend(v4, "length")}];
      }

      if (([*(a1 + 32) isFileBackedFuture] & 1) != 0 || v5 || (*(a1 + 88) & 1) != 0 || (v8 = objc_msgSend(v4, "length"), (objc_msgSend(*(a1 + 56), "size") + v8) > 0xAAE60))
      {
        if (([*(a1 + 32) isFileBackedFuture] & 1) != 0 || objc_msgSend(v4, "length") >= v5 || (*(a1 + 88) & 1) != 0 || (v9 = objc_msgSend(v4, "length"), (objc_msgSend(*(a1 + 56), "size") + v9) > 0xAAE60))
        {
          if (*(a1 + 88))
          {
            v10 = *(a1 + 48);
            v11 = [(PFCloudKitSerializer *)v10 shouldEncryptValueForAttribute:?];
            v12 = v4;
            if (v10)
            {
              v13 = v11;
              v14 = *(a1 + 56);
              if (v13)
              {
                v14 = [v14 encryptedValues];
              }

              [v14 setObject:v4 forKey:v3];
              v12 = v4;
            }
          }

          else
          {
            v12 = 0;
          }

          v24 = +[PFCloudKitSerializer generateCKAssetFileURLForObjectInStore:](PFCloudKitSerializer, [objc_msgSend(*(a1 + 64) "objectID")]);
          v53 = 0;
          if ([*(a1 + 32) isFileBackedFuture])
          {
            v25 = [v4 fileURL];
            if (v25)
            {
              if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
              {
                [*(*(a1 + 48) + 40) addObject:v24];
                [*(a1 + 56) setObject:objc_msgSend(objc_alloc(getCloudKitCKAssetClass()) forKey:{"initWithFileURL:", v24), v7}];
                v12 = [(_NSDataFileBackedFuture *)v4 _storeMetadata];

                goto LABEL_71;
              }

              v38 = objc_autoreleasePoolPush();
              Stream = __PFCloudKitLoggingGetStream();
              v40 = Stream;
              if (__ckLoggingOverride == 17)
              {
                v41 = OS_LOG_TYPE_FAULT;
              }

              else
              {
                v41 = OS_LOG_TYPE_ERROR;
              }

              if (os_log_type_enabled(Stream, v41))
              {
                v42 = [*(a1 + 64) objectID];
                v43 = [*(a1 + 56) recordID];
                *buf = 136316418;
                v55 = "[PFCloudKitSerializer newCKRecordsFromObject:fullyMaterializeRecords:includeRelationships:error:]_block_invoke_2";
                v56 = 1024;
                v57 = 346;
                v58 = 2112;
                v59 = v2;
                v60 = 2112;
                v61 = v42;
                v62 = 2112;
                v63 = v43;
                v64 = 2112;
                v65 = v53;
                _os_log_impl(&dword_18565F000, v40, v41, "CoreData+CloudKit: %s(%d): Failed to copy CKAsset data for '%@' on '%@' backing record '%@'.\n%@", buf, 0x3Au);
              }

              objc_autoreleasePoolPop(v38);
            }

            goto LABEL_75;
          }

          if ([v4 writeToURL:v24 options:0 error:&v53])
          {
            [*(*(a1 + 48) + 40) addObject:v24];
            v26 = *(a1 + 56);
            v27 = objc_alloc(getCloudKitCKAssetClass());
            v28 = v24;
LABEL_63:
            [v26 setObject:objc_msgSend(v27 forKey:{"initWithFileURL:", v28), v7}];
            goto LABEL_71;
          }

          v29 = objc_autoreleasePoolPush();
          v30 = __PFCloudKitLoggingGetStream();
          v31 = v30;
          if (__ckLoggingOverride == 17)
          {
            v32 = OS_LOG_TYPE_FAULT;
          }

          else
          {
            v32 = OS_LOG_TYPE_ERROR;
          }

          if (os_log_type_enabled(v30, v32))
          {
            v33 = [*(a1 + 64) objectID];
            v34 = [*(a1 + 56) recordID];
            *buf = 136316418;
            v55 = "[PFCloudKitSerializer newCKRecordsFromObject:fullyMaterializeRecords:includeRelationships:error:]_block_invoke";
            v56 = 1024;
            v57 = 361;
            v58 = 2112;
            v59 = v2;
            v60 = 2112;
            v61 = v33;
            v62 = 2112;
            v63 = v34;
            v64 = 2112;
            v65 = v53;
LABEL_69:
            _os_log_impl(&dword_18565F000, v31, v32, "CoreData+CloudKit: %s(%d): Failed to write CKAsset data for '%@' on '%@' backing record '%@'.\n%@", buf, 0x3Au);
            goto LABEL_70;
          }

          goto LABEL_70;
        }
      }

      goto LABEL_43;
    }

    v15 = *(a1 + 56);
    goto LABEL_20;
  }

  if ([*(a1 + 32) attributeType] != 700 && objc_msgSend(*(a1 + 32), "attributeType") != 1200)
  {
    goto LABEL_44;
  }

  v16 = [objc_msgSend(*(*(a1 + 48) + 24) "ckAssetThresholdBytes")];
  objc_opt_self();
  v17 = [@"CD_" stringByAppendingString:v2];
  objc_opt_self();
  v7 = [v17 stringByAppendingString:@"_ckAsset"];
  if (!v4)
  {
    v35 = *(a1 + 48);
    v36 = [(PFCloudKitSerializer *)v35 shouldEncryptValueForAttribute:?];
    if (!v35)
    {
      goto LABEL_21;
    }

    v37 = v36;
    v15 = *(a1 + 56);
    if (v37)
    {
      v15 = [v15 encryptedValues];
    }

LABEL_20:
    [v15 setObject:0 forKey:v7];
LABEL_21:
    v12 = 0;
    goto LABEL_71;
  }

  if (!v16 && (*(a1 + 88) & 1) == 0 && (v18 = [v4 length], (objc_msgSend(*(a1 + 56), "size") + v18) <= 0xAAE60) || objc_msgSend(v4, "length") < v16 && (*(a1 + 88) & 1) == 0 && (v19 = objc_msgSend(v4, "length"), (objc_msgSend(*(a1 + 56), "size") + v19) <= 0xAAE60))
  {
LABEL_43:
    [*(a1 + 56) setObject:0 forKey:v7];
LABEL_44:
    v12 = v4;
    goto LABEL_71;
  }

  if (*(a1 + 88))
  {
    v20 = *(a1 + 48);
    v21 = [(PFCloudKitSerializer *)v20 shouldEncryptValueForAttribute:?];
    v12 = v4;
    if (v20)
    {
      v22 = v21;
      v23 = *(a1 + 56);
      if (v22)
      {
        v23 = [v23 encryptedValues];
      }

      [v23 setObject:v4 forKey:v3];
      v12 = v4;
    }
  }

  else
  {
    v12 = 0;
  }

  v44 = +[PFCloudKitSerializer generateCKAssetFileURLForObjectInStore:](PFCloudKitSerializer, [objc_msgSend(*(a1 + 64) "objectID")]);
  v53 = 0;
  if ([objc_msgSend(v4 dataUsingEncoding:4 allowLossyConversion:{0), "writeToURL:options:error:", v44, 0, &v53}])
  {
    [*(*(a1 + 48) + 40) addObject:v44];
    v26 = *(a1 + 56);
    v27 = objc_alloc(getCloudKitCKAssetClass());
    v28 = v44;
    goto LABEL_63;
  }

  v29 = objc_autoreleasePoolPush();
  v45 = __PFCloudKitLoggingGetStream();
  v31 = v45;
  if (__ckLoggingOverride == 17)
  {
    v32 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v32 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(v45, v32))
  {
    v46 = [*(a1 + 64) objectID];
    v47 = [*(a1 + 56) recordID];
    *buf = 136316418;
    v55 = "[PFCloudKitSerializer newCKRecordsFromObject:fullyMaterializeRecords:includeRelationships:error:]_block_invoke";
    v56 = 1024;
    v57 = 409;
    v58 = 2112;
    v59 = v2;
    v60 = 2112;
    v61 = v46;
    v62 = 2112;
    v63 = v47;
    v64 = 2112;
    v65 = v53;
    goto LABEL_69;
  }

LABEL_70:
  objc_autoreleasePoolPop(v29);
  *(*(*(a1 + 72) + 8) + 24) = 0;
  *(*(*(a1 + 80) + 8) + 40) = v53;
LABEL_71:
  v48 = *(a1 + 48);
  v49 = [(PFCloudKitSerializer *)v48 shouldEncryptValueForAttribute:?];
  if (v48)
  {
    v50 = v49;
    v51 = *(a1 + 56);
    if (v50)
    {
      v51 = [v51 encryptedValues];
    }

    [v51 setObject:v12 forKey:v3];
  }

LABEL_75:
  v52 = *MEMORY[0x1E69E9840];
}

- (uint64_t)shouldEncryptValueForAttribute:(uint64_t)result
{
  if (result)
  {
    if ([*(result + 24) useDeviceToDeviceEncryption])
    {
      return 1;
    }

    else
    {
      v3 = [objc_msgSend(a2 "userInfo")];
      if (v3)
      {

        return [v3 BOOLValue];
      }

      else
      {

        return [a2 allowsCloudEncryption];
      }
    }
  }

  return result;
}

void __98__PFCloudKitSerializer_newCKRecordsFromObject_fullyMaterializeRecords_includeRelationships_error___block_invoke_28(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v89 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (![PFCloudKitSerializer shouldTrackProperty:a3])
  {
    goto LABEL_70;
  }

  v64 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v71 = [a3 inverseRelationship];
  if (![a3 isToMany] || !objc_msgSend(v71, "isToMany"))
  {
    if (([a3 isToMany] & 1) == 0)
    {
      v46 = [*(a1 + 32) valueForKey:a2];
      v47 = *(a1 + 40);
      if (v46)
      {
        v48 = -[PFCloudKitSerializer getRecordMetadataForObject:inManagedObjectContext:error:](v47, v46, [v46 managedObjectContext], (*(*(a1 + 96) + 8) + 40));
        if (!v48)
        {
          *(*(*(a1 + 104) + 8) + 24) = 0;
          v60 = *(*(*(a1 + 96) + 8) + 40);
          v45 = 0;
          *a4 = 1;
          goto LABEL_69;
        }

        v49 = *(a1 + 40);
        v50 = [v48 ckRecordName];
        objc_opt_self();
        v51 = [@"CD_" stringByAppendingString:a2];
        v52 = [*(*(a1 + 40) + 24) useDeviceToDeviceEncryption];
        if (v49)
        {
          v53 = v52;
          v54 = *(a1 + 88);
          if (v53)
          {
            v54 = [v54 encryptedValues];
          }

          [v54 setObject:v50 forKey:v51];
        }
      }

      else
      {
        objc_opt_self();
        v55 = [@"CD_" stringByAppendingString:a2];
        v56 = [*(*(a1 + 40) + 24) useDeviceToDeviceEncryption];
        if (v47)
        {
          v57 = v56;
          v58 = *(a1 + 88);
          if (v57)
          {
            v58 = [v58 encryptedValues];
          }

          [v58 setObject:0 forKey:v55];
        }
      }
    }

    v45 = 0;
    goto LABEL_69;
  }

  obj = [*(a1 + 32) valueForKey:a2];
  v67 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v68 = a3;
  v62 = a4;
  v63 = a2;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v70 = [obj countByEnumeratingWithState:&v77 objects:v88 count:16];
  if (!v70)
  {
    goto LABEL_38;
  }

  v69 = *v78;
  *&v8 = 138412802;
  v61 = v8;
  do
  {
    v9 = 0;
    do
    {
      if (*v78 != v69)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v77 + 1) + 8 * v9);
      context = objc_autoreleasePoolPush();
      v11 = -[PFCloudKitSerializer getRecordMetadataForObject:inManagedObjectContext:error:](*(a1 + 40), v10, [*(a1 + 32) managedObjectContext], (*(*(a1 + 96) + 8) + 40));
      if (v11)
      {
        v12 = +[PFCloudKitSerializer mtmKeyForObjectWithRecordName:relatedToObjectWithRecordName:byRelationship:withInverse:](PFCloudKitSerializer, [*(a1 + 48) ckRecordName], objc_msgSend(v11, "ckRecordName"), v68, v71);
        [v67 addObject:v12];
        v13 = *(*(a1 + 40) + 48);
        v14 = [*(a1 + 56) zoneID];
        if (v13 && (v15 = [objc_msgSend(v13[4] objectForKey:{v14), "objectForKey:", v12}], (v13 = v15) != 0))
        {
          if ([v15 isUploadedBool])
          {
            goto LABEL_33;
          }

          v16 = 0;
        }

        else
        {
          v16 = 1;
        }

        v18 = [*(*(a1 + 40) + 8) objectForKey:{v12, v61}];
        if (!v18)
        {
          v19 = [v13 ckRecordID];
          if ([v19 length])
          {
            v20 = objc_alloc(getCloudKitCKRecordIDClass[0]());
          }

          else
          {
            v20 = objc_alloc(getCloudKitCKRecordIDClass[0]());
            v19 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
          }

          v21 = [v20 initWithRecordName:v19 zoneID:*(a1 + 64)];
          v65 = [(NSCKRecordMetadata *)*(a1 + 48) createRecordID];
          v22 = [(NSCKRecordMetadata *)v11 createRecordID];
          v23 = -[PFMirroredManyToManyRelationshipV2 initWithRecordID:forRecordWithID:relatedToRecordWithID:byRelationship:withInverse:andType:]([PFMirroredManyToManyRelationshipV2 alloc], "initWithRecordID:forRecordWithID:relatedToRecordWithID:byRelationship:withInverse:andType:", v21, v65, v22, v68, [objc_msgSend(objc_msgSend(v10 "entity")], 0);
          if (v16)
          {
            v24 = +[NSCKMirroredRelationship insertMirroredRelationshipForManyToMany:inZoneWithMetadata:inStore:withManagedObjectContext:](NSCKMirroredRelationship, v23, [*(a1 + 48) recordZone], objc_msgSend(objc_msgSend(*(a1 + 32), "objectID"), "persistentStore"), *(a1 + 72));
            [(NSManagedObject *)v24 setIsUploadedBool:0];
            [(NSManagedObject *)v24 setNeedsDeleteBool:0];
            [(NSManagedObject *)v24 setIsPendingBool:0];
          }

          if (![objc_msgSend(v21 "zoneID")] || (objc_msgSend(objc_msgSend(v21, "zoneID"), "isEqual:", objc_msgSend(v22, "zoneID")) & 1) == 0)
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              v30 = *(a1 + 56);
              *buf = v61;
              v83 = v21;
              v84 = 2112;
              v85 = v30;
              v86 = 2112;
              v87 = v22;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Serializer is attempting to link relationships across zones: %@ - %@ / %@\n", buf, 0x20u);
            }

            v26 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
            {
              v31 = *(a1 + 56);
              *buf = v61;
              v83 = v21;
              v84 = 2112;
              v85 = v31;
              v86 = 2112;
              v87 = v22;
              _os_log_fault_impl(&dword_18565F000, v26, OS_LOG_TYPE_FAULT, "CoreData: Serializer is attempting to link relationships across zones: %@ - %@ / %@", buf, 0x20u);
            }
          }

          v18 = [objc_alloc(getCloudKitCKRecordClass[0]()) initWithRecordType:@"CDMR" recordID:v21];
          [*(a1 + 80) addObject:v18];
          v27 = *(a1 + 40);
          if (v27)
          {
            v28 = [*(v27 + 24) useDeviceToDeviceEncryption];
            v29 = v18;
            if (v28)
            {
              v29 = [v18 encryptedValueStore];
            }
          }

          else
          {
            v29 = 0;
          }

          [(PFMirroredManyToManyRelationshipV2 *)v23 populateRecordValues:v29];
          [*(*(a1 + 40) + 8) setObject:v18 forKey:v12];
        }
      }

      else
      {
        *(*(*(a1 + 104) + 8) + 24) = 0;
        v17 = *(*(*(a1 + 96) + 8) + 40);
      }

LABEL_33:
      objc_autoreleasePoolPop(context);
      if (!v11)
      {
        goto LABEL_38;
      }

      ++v9;
    }

    while (v70 != v9);
    v32 = [obj countByEnumeratingWithState:&v77 objects:v88 count:16];
    v70 = v32;
  }

  while (v32);
LABEL_38:
  if ((*(*(*(a1 + 104) + 8) + 24) & 1) == 0)
  {
    *v62 = 1;
  }

  v33 = *(*(a1 + 40) + 48);
  v34 = [*(a1 + 32) objectID];
  if (v33)
  {
    v35 = [objc_msgSend(*(v33 + 40) objectForKey:{v34), "objectForKey:", v63}];
  }

  else
  {
    v35 = 0;
  }

  v36 = [v35 mutableCopy];
  [v36 minusSet:v67];
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v37 = [v36 countByEnumeratingWithState:&v73 objects:v81 count:16];
  if (v37)
  {
    v38 = *v74;
    do
    {
      v39 = 0;
      do
      {
        if (*v74 != v38)
        {
          objc_enumerationMutation(v36);
        }

        v40 = *(*(&v73 + 1) + 8 * v39);
        v41 = *(*(a1 + 40) + 48);
        v42 = [*(a1 + 56) zoneID];
        if (!v41 || (v41 = [objc_msgSend(v41[4] objectForKey:{v42), "objectForKey:", v40}]) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v43 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v83 = v40;
            _os_log_error_impl(&dword_18565F000, v43, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to look up cached mirrored relationship for mtmKey: %@\n", buf, 0xCu);
          }

          v44 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v83 = v40;
            _os_log_fault_impl(&dword_18565F000, v44, OS_LOG_TYPE_FAULT, "CoreData: Failed to look up cached mirrored relationship for mtmKey: %@", buf, 0xCu);
          }
        }

        [v41 setNeedsDeleteBool:1];
        [v41 setIsUploadedBool:0];
        [v41 setIsPendingBool:0];
        ++v39;
      }

      while (v37 != v39);
      v37 = [v36 countByEnumeratingWithState:&v73 objects:v81 count:16];
    }

    while (v37);
  }

  v45 = v67;
LABEL_69:

LABEL_70:
  v59 = *MEMORY[0x1E69E9840];
}

+ (uint64_t)mtmKeyForObjectWithRecordName:(uint64_t)a3 relatedToObjectWithRecordName:(uint64_t)a4 byRelationship:(uint64_t)a5 withInverse:
{
  v29[2] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v29[0] = a4;
  v29[1] = a5;
  v9 = [objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:{2), "sortedArrayUsingComparator:", &__block_literal_global_92}];
  v10 = MEMORY[0x1E696AEC0];
  v11 = [objc_msgSend(v9 objectAtIndexedSubscript:{0), "entity"}];
  if (v11)
  {
    if (atomic_load((v11 + 124)))
    {
      v13 = *(v11 + 72);
    }

    else
    {
      do
      {
        v13 = v11;
        v11 = [v11 superentity];
      }

      while (v11);
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = [v10 stringWithFormat:@"%@%@_%@", @"CD_M2M_", objc_msgSend(v13, "name"), objc_msgSend(objc_msgSend(v9, "objectAtIndexedSubscript:", 0), "name")];
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v9);
        }

        if (*(*(&v24 + 1) + 8 * i) == a4)
        {
          v20 = a2;
        }

        else
        {
          v20 = a3;
        }

        [v15 addObject:v20];
      }

      v17 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v17);
  }

  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", v14, objc_msgSend(v15, "componentsJoinedByString:", @":"];

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (uint64_t)applyUpdatedRecords:(uint64_t)a3 deletedRecordIDs:(uint64_t)a4 toStore:(void *)a5 inManagedObjectContext:(uint64_t)a6 onlyUpdatingAttributes:(uint64_t)a7 andRelationships:(uint64_t)a8 madeChanges:(void *)a9 error:
{
  v30 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 1;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3052000000;
    v19 = __Block_byref_object_copy__37;
    v20 = __Block_byref_object_dispose__37;
    v21 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __150__PFCloudKitSerializer_applyUpdatedRecords_deletedRecordIDs_toStore_inManagedObjectContext_onlyUpdatingAttributes_andRelationships_madeChanges_error___block_invoke;
    v15[3] = &unk_1E6EC4840;
    v15[4] = a5;
    v15[5] = a1;
    v15[6] = a4;
    v15[7] = a2;
    v15[8] = a3;
    v15[9] = a6;
    v15[10] = a7;
    v15[11] = &v16;
    v15[12] = &v22;
    v15[13] = a8;
    [a5 performBlockAndWait:v15];
    if ((v23[3] & 1) == 0)
    {
      v12 = v17[5];
      if (v12)
      {
        if (a9)
        {
          *a9 = v12;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v27 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitSerializer.m";
          v28 = 1024;
          v29 = 1225;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v14 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v27 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitSerializer.m";
          v28 = 1024;
          v29 = 1225;
          _os_log_fault_impl(&dword_18565F000, v14, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }
    }

    v17[5] = 0;
    v9 = *(v23 + 24);
    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9 & 1;
}

void __150__PFCloudKitSerializer_applyUpdatedRecords_deletedRecordIDs_toStore_inManagedObjectContext_onlyUpdatingAttributes_andRelationships_madeChanges_error___block_invoke(uint64_t a1)
{
  v338 = *MEMORY[0x1E69E9840];
  v257 = [objc_msgSend(*(a1 + 32) "persistentStoreCoordinator")];
  v263 = objc_alloc_init(MEMORY[0x1E695DF90]);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 32));
  v276 = a1;
  v2 = [v257 entitiesForConfiguration:{objc_msgSend(*(a1 + 48), "configurationName")}];
  v312[0] = MEMORY[0x1E69E9820];
  v312[1] = 3221225472;
  v312[2] = __150__PFCloudKitSerializer_applyUpdatedRecords_deletedRecordIDs_toStore_inManagedObjectContext_onlyUpdatingAttributes_andRelationships_madeChanges_error___block_invoke_2;
  v312[3] = &unk_1E6EC47A0;
  v312[4] = v263;
  [v2 enumerateObjectsUsingBlock:v312];
  v3 = -[PFCloudKitImportZoneContext initWithUpdatedRecords:deletedRecordTypeToRecordIDs:options:fileBackedFuturesDirectory:]([PFCloudKitImportZoneContext alloc], "initWithUpdatedRecords:deletedRecordTypeToRecordIDs:options:fileBackedFuturesDirectory:", *(v276 + 56), *(v276 + 64), *(*(v276 + 40) + 24), [*(v276 + 48) fileBackedFuturesDirectory]);
  v269 = v3;
  if ([(PFCloudKitImportZoneContext *)v3 initializeCachesWithManagedObjectContext:*(v276 + 48) andObservedStore:(*(*(v276 + 88) + 8) + 40) error:?])
  {
    v310 = 0u;
    v311 = 0u;
    v308 = 0u;
    v309 = 0u;
    v255 = v3;
    if (v3)
    {
      modifiedRecords = v3->_modifiedRecords;
    }

    else
    {
      modifiedRecords = 0;
    }

    obj = modifiedRecords;
    v260 = [(NSArray *)modifiedRecords countByEnumeratingWithState:&v308 objects:v327 count:16];
    if (v260)
    {
      v259 = *v309;
      v254 = *MEMORY[0x1E696A250];
      do
      {
        v266 = 0;
        do
        {
          if (*v309 != v259)
          {
            objc_enumerationMutation(obj);
          }

          v271 = *(*(&v308 + 1) + 8 * v266);
          context = objc_autoreleasePoolPush();
          v5 = [objc_msgSend(v271 "recordType")];
          v6 = *(v276 + 40);
          v7 = v6;
          v8 = @"entityName";
          if (v5)
          {
            objc_opt_self();
            v8 = [@"CD_" stringByAppendingString:@"entityName"];
            v7 = *(v276 + 40);
          }

          v9 = [*(v7 + 24) useDeviceToDeviceEncryption];
          if (!v6)
          {
            goto LABEL_16;
          }

          v10 = v9;
          v11 = v271;
          if (v10)
          {
            v12 = [(__CFString *)v8 hasSuffix:@"_ckAsset"];
            v11 = v271;
            if ((v12 & 1) == 0)
            {
              v11 = [v271 encryptedValues];
            }
          }

          v13 = [v11 objectForKey:v8];
          if (!v13)
          {
LABEL_16:
            v13 = [v271 recordType];
            objc_opt_self();
            if ([v13 hasPrefix:@"CD_"])
            {
              v13 = [v13 substringFromIndex:{objc_msgSend(@"CD_", "length")}];
            }
          }

          if (![v263 objectForKey:v13])
          {
            v18 = objc_autoreleasePoolPush();
            Stream = __PFCloudKitLoggingGetStream();
            v20 = Stream;
            if (__ckLoggingOverride == 17)
            {
              v21 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v21 = 16 * (__ckLoggingOverride == 16);
            }

            if (os_log_type_enabled(Stream, v21))
            {
              v22 = [v263 allKeys];
              *buf = 136316162;
              v330 = "[PFCloudKitSerializer applyUpdatedRecords:deletedRecordIDs:toStore:inManagedObjectContext:onlyUpdatingAttributes:andRelationships:madeChanges:error:]_block_invoke";
              v331 = 1024;
              *v332 = 801;
              *&v332[4] = 2112;
              *&v332[6] = v13;
              v333 = 2112;
              v334 = v271;
              v335 = 2112;
              v336 = v22;
              _os_log_impl(&dword_18565F000, v20, v21, "CoreData+CloudKit: %s(%d): Skipping record because its entity '%@' is no longer in the managed object model's configured entities: %@\n%@", buf, 0x30u);
            }

            objc_autoreleasePoolPop(v18);
            goto LABEL_299;
          }

          v14 = [NSCKRecordMetadata metadataForRecord:v271 inManagedObjectContext:*(v276 + 32) fromStore:*(v276 + 48) error:(*(*(v276 + 88) + 8) + 40)];
          v267 = v14;
          if (!v14)
          {
            *(*(*(v276 + 96) + 8) + 24) = 0;
            v23 = *(*(*(v276 + 88) + 8) + 40);
            goto LABEL_299;
          }

          if (![(NSManagedObject *)v14 recordZone])
          {
            v15 = *(*(v276 + 40) + 48);
            v16 = [objc_msgSend(v271 "recordID")];
            if (!v15 || (v17 = [*(v15 + 8) objectForKey:v16]) == 0)
            {
              v17 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, [objc_msgSend(v271 "recordID")], objc_msgSend(*(*(v276 + 40) + 24), "databaseScope"), *(v276 + 48), *(v276 + 32), *(*(v276 + 88) + 8) + 40);
              if (v17)
              {
                [(PFCloudKitMetadataCache *)*(*(v276 + 40) + 48) cacheZoneMetadata:v17];
              }

              else
              {
                *(*(*(v276 + 96) + 8) + 24) = 0;
                v24 = *(*(*(v276 + 88) + 8) + 40);
                v17 = 0;
              }
            }

            if (*(*(*(v276 + 96) + 8) + 24) == 1)
            {
              [(NSManagedObject *)v267 setRecordZone:v17];
            }
          }

          if (*(*(*(v276 + 96) + 8) + 24) != 1)
          {
            goto LABEL_281;
          }

          v25 = [v271 recordID];
          if (v269 && (v26 = [objc_msgSend(*(v269 + 64) objectForKey:{v13), "objectForKey:", v25}]) != 0)
          {
            v275 = [*(v276 + 32) objectWithID:v26];
            v27 = _sqlEntityForEntityDescription([*(v276 + 48) model], objc_msgSend(v26, "entity"));
            if (v27)
            {
              v28 = *(v27 + 184);
            }

            else
            {
              v28 = 0;
            }

            if ([-[NSManagedObject entityId](v267 "entityId")] != v28 || (v29 = objc_msgSend(v26, "_referenceData64"), v29 != objc_msgSend(-[NSManagedObject entityPK](v267, "entityPK"), "integerValue")))
            {
              LogStream = _PFLogGetLogStream(17);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v330 = v26;
                v331 = 2112;
                *v332 = v267;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Record metadata doesn't match row: %@\n%@\n", buf, 0x16u);
              }

              v31 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412546;
                v330 = v26;
                v331 = 2112;
                *v332 = v267;
                _os_log_fault_impl(&dword_18565F000, v31, OS_LOG_TYPE_FAULT, "CoreData: Record metadata doesn't match row: %@\n%@", buf, 0x16u);
              }
            }
          }

          else
          {
            v275 = [NSEntityDescription insertNewObjectForEntityForName:v13 inManagedObjectContext:*(v276 + 32)];
            [(PFCloudKitImportZoneContext *)v269 registerObject:v275 forInsertedRecord:v271 withMetadata:v267];
          }

          v32 = *(v276 + 72);
          if (v32)
          {
            v33 = [v32 objectForKey:{-[NSEntityDescription name](-[NSManagedObject entity](v275, "entity"), "name")}];
            if (v33)
            {
              v34 = v33;
            }

            else
            {
              v34 = MEMORY[0x1E695E0F0];
            }
          }

          else
          {
            v34 = 0;
          }

          v35 = *(v276 + 80);
          if (v35)
          {
            v36 = [v35 objectForKey:{-[NSEntityDescription name](-[NSManagedObject entity](v275, "entity"), "name")}];
            v37 = MEMORY[0x1E695E0F0];
            if (v36)
            {
              v37 = v36;
            }

            v272 = v37;
          }

          else
          {
            v272 = 0;
          }

          v274 = *(v276 + 40);
          if (!v274)
          {
            goto LABEL_280;
          }

          v38 = *(*(v276 + 88) + 8);
          v321 = 0;
          if (-[NSManagedObject isInserted](v275, "isInserted") && [*(v274 + 24) preserveLegacyRecordMetadataBehavior] && -[NSDictionary objectForKey:](-[NSEntityDescription attributesByName](-[NSManagedObject entity](v275, "entity"), "attributesByName"), "objectForKey:", @"ckRecordID") && !-[NSManagedObject valueForKey:](v275, "valueForKey:", @"ckRecordID"))
          {
            -[NSManagedObject setValue:forKey:](v275, "setValue:forKey:", [objc_msgSend(v271 "recordID")], @"ckRecordID");
          }

          v39 = *(v274 + 24);
          if (v39)
          {
            v40 = *(v39 + 136);
          }

          else
          {
            v40 = 0;
          }

          v41 = [(PFCloudKitArchivingUtilities *)v40 encodeRecord:v271 error:&v321];
          if (v41)
          {
            [(NSManagedObject *)v267 updateEncodedRecordWithData:v41];
            [(NSManagedObject *)v267 destroySystemFields];
          }

          v268 = [objc_msgSend(v271 "recordType")];
          if (!v41)
          {
            goto LABEL_274;
          }

          if (!v34)
          {
            v34 = [(NSDictionary *)[(NSEntityDescription *)[(NSManagedObject *)v275 entity] attributesByName] allValues];
          }

          v320 = 0u;
          v319 = 0u;
          v318 = 0u;
          v317 = 0u;
          v42 = [(NSArray *)v34 countByEnumeratingWithState:&v317 objects:v337 count:16];
          if (!v42)
          {
            goto LABEL_235;
          }

          v256 = v38;
          v43 = *v318;
          v262 = 1;
          v264 = v34;
LABEL_72:
          v44 = 0;
          while (1)
          {
            if (*v318 != v43)
            {
              objc_enumerationMutation(v34);
            }

            v45 = *(*(&v317 + 1) + 8 * v44);
            if (+[PFCloudKitSerializer isPrivateAttribute:](PFCloudKitSerializer, v45) & 1) != 0 || ([v45 isTransient] & 1) != 0 || (objc_msgSend(v45, "isReadOnly") & 1) != 0 || (objc_msgSend(objc_msgSend(objc_msgSend(v45, "userInfo"), "objectForKey:", @"NSCloudKitMirroringDelegateIgnoredPropertyKey"), "BOOLValue"))
            {
              goto LABEL_182;
            }

            v46 = [v45 name];
            v47 = v46;
            if (v268)
            {
              objc_opt_self();
              v47 = [@"CD_" stringByAppendingString:v46];
            }

            v48 = [(PFCloudKitSerializer *)v274 shouldEncryptValueForAttribute:v45];
            v49 = v271;
            if (v48)
            {
              v50 = [v47 hasSuffix:@"_ckAsset"];
              v49 = v271;
              if ((v50 & 1) == 0)
              {
                v49 = [v271 encryptedValues];
              }
            }

            v51 = [v49 objectForKey:v47];
            v52 = v51;
            if (!v51)
            {
              if (!+[PFCloudKitSerializer isVariableLengthAttributeType:](PFCloudKitSerializer, [v45 attributeType]))
              {
                goto LABEL_101;
              }

              v59 = v46;
              if (v268)
              {
                objc_opt_self();
                v59 = [@"CD_" stringByAppendingString:v46];
              }

              objc_opt_self();
              v51 = [v271 objectForKey:{objc_msgSend(v59, "stringByAppendingString:", @"_ckAsset"}];
              if (!v51)
              {
LABEL_101:
                if (([v45 isTransient] & 1) == 0)
                {
                  v60 = *(v274 + 48);
                  v61 = [(NSManagedObject *)v275 objectID];
                  if (v60 && ([objc_msgSend(*(v60 + 48) objectForKey:{v61), "containsObject:", v46}] & 1) != 0)
                  {
                    v62 = objc_autoreleasePoolPush();
                    v63 = __PFCloudKitLoggingGetStream();
                    v64 = v63;
                    v65 = __ckLoggingOverride;
                    if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
                    {
                      v65 = OS_LOG_TYPE_INFO;
                    }

                    if (os_log_type_enabled(v63, v65))
                    {
                      v66 = [(NSManagedObject *)v275 objectID];
                      *buf = 136315906;
                      v330 = "[PFCloudKitSerializer updateAttributes:andRelationships:onManagedObject:fromRecord:withRecordMetadata:importContext:error:]";
                      v331 = 1024;
                      *v332 = 1307;
                      *&v332[4] = 2112;
                      *&v332[6] = v46;
                      v333 = 2112;
                      v334 = v66;
                      _os_log_impl(&dword_18565F000, v64, v65, "CoreData+CloudKit: %s(%d): Importer is rejecting updated value for '%@' on '%@' because there are pending local edits that haven't been exported yet.", buf, 0x26u);
                    }

                    objc_autoreleasePoolPop(v62);
                  }

                  else
                  {
                    -[NSManagedObject setValue:forKey:](v275, "setValue:forKey:", [v45 defaultValue], v46);
                  }
                }

                v270 = 0;

                v87 = 1;
                v52 = 0;
                goto LABEL_180;
              }
            }

            v270 = objc_loadWeakRetained((v274 + 32));
            if ([v45 attributeType] == 1000 || objc_msgSend(v45, "attributeType") == 1800 || objc_msgSend(v45, "attributeType") == 2100)
            {
              if (![v45 isFileBackedFuture])
              {
                getCloudKitCKAssetClass();
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v67 = -[_PFEvanescentData initWithURL:]([_PFEvanescentData alloc], "initWithURL:", [v270 cloudKitSerializer:v274 safeSaveURLForAsset:v51]);
                  if (v67)
                  {

                    v52 = v67;
                  }

                  else
                  {

                    v88 = objc_autoreleasePoolPush();
                    v89 = __PFCloudKitLoggingGetStream();
                    v90 = v89;
                    if (__ckLoggingOverride == 17)
                    {
                      v91 = OS_LOG_TYPE_FAULT;
                    }

                    else
                    {
                      v91 = OS_LOG_TYPE_ERROR;
                    }

                    if (os_log_type_enabled(v89, v91))
                    {
                      *buf = 136315650;
                      v330 = "[PFCloudKitSerializer updateAttributes:andRelationships:onManagedObject:fromRecord:withRecordMetadata:importContext:error:]";
                      v331 = 1024;
                      *v332 = 1383;
                      *&v332[4] = 2112;
                      *&v332[6] = v51;
                      _os_log_impl(&dword_18565F000, v90, v91, "CoreData+CloudKit: %s(%d): Error attempting to read CKAsset file: %@", buf, 0x1Cu);
                    }

                    objc_autoreleasePoolPop(v88);
                    v52 = 0;
                  }
                }

                else
                {
                  getCloudKitCKEncryptedDataClass();
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {

                    v73 = [v51 data];
                    v74 = objc_autoreleasePoolPush();
                    v52 = v73;
                    v75 = __PFCloudKitLoggingGetStream();
                    v76 = v75;
                    if (__ckLoggingOverride == 17)
                    {
                      v77 = OS_LOG_TYPE_FAULT;
                    }

                    else
                    {
                      v77 = OS_LOG_TYPE_ERROR;
                    }

                    if (os_log_type_enabled(v75, v77))
                    {
                      *buf = 136316162;
                      v330 = "[PFCloudKitSerializer updateAttributes:andRelationships:onManagedObject:fromRecord:withRecordMetadata:importContext:error:]";
                      v331 = 1024;
                      *v332 = 1388;
                      *&v332[4] = 2112;
                      *&v332[6] = v274;
                      v333 = 2112;
                      v334 = v46;
                      v335 = 2112;
                      v336 = v271;
                      _os_log_impl(&dword_18565F000, v76, v77, "CoreData+CloudKit: %s(%d): %@ encountered CKEncryptedData blob on record (%@): %@", buf, 0x30u);
                    }

                    objc_autoreleasePoolPop(v74);
                  }

                  else if (([v51 isNSData] & 1) == 0)
                  {
                    v79 = objc_autoreleasePoolPush();
                    v80 = __PFCloudKitLoggingGetStream();
                    v81 = v80;
                    if (__ckLoggingOverride == 17)
                    {
                      v82 = OS_LOG_TYPE_FAULT;
                    }

                    else
                    {
                      v82 = OS_LOG_TYPE_ERROR;
                    }

                    if (os_log_type_enabled(v80, v82))
                    {
                      v83 = objc_opt_class();
                      *buf = 136315906;
                      v330 = "[PFCloudKitSerializer updateAttributes:andRelationships:onManagedObject:fromRecord:withRecordMetadata:importContext:error:]";
                      v331 = 1024;
                      *v332 = 1390;
                      *&v332[4] = 2112;
                      *&v332[6] = v83;
                      v333 = 2112;
                      v334 = v45;
                      _os_log_impl(&dword_18565F000, v81, v82, "CoreData+CloudKit: %s(%d): Unknown value class (%@) for attribute:\n%@", buf, 0x26u);
                    }

                    objc_autoreleasePoolPop(v79);

                    v52 = 0;
                  }
                }

                if ([v45 attributeType] == 1800 || objc_msgSend(v45, "attributeType") == 2100)
                {
                  v92 = [_PFRoutines retainedDecodeValue:v52 forTransformableAttribute:v45];

                  v52 = v92;
                }

                goto LABEL_167;
              }

              getCloudKitCKAssetClass();
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v53 = v51;
                v54 = v46;
                if (v268)
                {
                  objc_opt_self();
                  v54 = [@"CD_" stringByAppendingString:v46];
                }

                v55 = [(PFCloudKitSerializer *)v274 shouldEncryptValueForAttribute:v45];
                v56 = v271;
                if (v55)
                {
                  v57 = [v54 hasSuffix:@"_ckAsset"];
                  v56 = v271;
                  if ((v57 & 1) == 0)
                  {
                    v56 = [v271 encryptedValues];
                  }
                }

                v58 = [v56 objectForKey:v54];
                if (!v58)
                {
                  goto LABEL_166;
                }
              }

              else
              {
                v58 = v51;
                v68 = v46;
                if (v268)
                {
                  objc_opt_self();
                  v68 = [@"CD_" stringByAppendingString:v46];
                }

                objc_opt_self();
                v53 = [v271 objectForKey:{objc_msgSend(v68, "stringByAppendingString:", @"_ckAsset"}];
                if (!v58)
                {
                  goto LABEL_166;
                }
              }

              if (v53)
              {
                v69 = [v270 cloudKitSerializer:v274 safeSaveURLForAsset:v53];
                if (v69)
                {
                  v70 = [_NSCloudKitDataFileBackedFuture alloc];
                  if (v269)
                  {
                    v71 = *(v269 + 104);
                  }

                  else
                  {
                    v71 = 0;
                  }

                  v72 = [(_NSCloudKitDataFileBackedFuture *)v70 initWithStoreMetadata:v58 directory:v71 originalFileURL:v69];
                  goto LABEL_142;
                }

                v93 = _PFLogGetLogStream(17);
                if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v330 = v53;
                  _os_log_error_impl(&dword_18565F000, v93, OS_LOG_TYPE_ERROR, "CoreData: fault: Delegate didn't return a file url for asset: %@\n", buf, 0xCu);
                }

                v94 = _PFLogGetLogStream(17);
                if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412290;
                  v330 = v53;
                  _os_log_fault_impl(&dword_18565F000, v94, OS_LOG_TYPE_FAULT, "CoreData: Delegate didn't return a file url for asset: %@", buf, 0xCu);
                }

                v86 = 0;
              }

              else
              {
                v84 = [_NSCloudKitDataFileBackedFuture alloc];
                if (v269)
                {
                  v85 = *(v269 + 104);
                }

                else
                {
                  v85 = 0;
                }

                v72 = [(_NSDataFileBackedFuture *)v84 initWithStoreMetadata:v58 directory:v85];
LABEL_142:
                v86 = v72;
              }

              v95 = -[NSManagedObject valueForKey:](v275, "valueForKey:", [v45 name]);
              if ([v95 isEqual:v86] && (objc_msgSend(v95, "fileURL") || !v86 || !objc_getProperty(v86, v96, 16, 1)))
              {
              }

              else
              {

                v95 = v86;
              }

              v52 = v95;

LABEL_166:
              goto LABEL_167;
            }

            if ([v45 attributeType] == 1100)
            {

              v78 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v51];
              if (v78)
              {
                goto LABEL_131;
              }

              v111 = objc_autoreleasePoolPush();
              v112 = __PFCloudKitLoggingGetStream();
              v113 = v112;
              if (__ckLoggingOverride == 17)
              {
                v114 = OS_LOG_TYPE_FAULT;
              }

              else
              {
                v114 = OS_LOG_TYPE_ERROR;
              }

              if (os_log_type_enabled(v112, v114))
              {
                *buf = 136315906;
                v330 = "[PFCloudKitSerializer updateAttributes:andRelationships:onManagedObject:fromRecord:withRecordMetadata:importContext:error:]";
                v331 = 1024;
                *v332 = 1407;
                *&v332[4] = 2112;
                *&v332[6] = v51;
                v333 = 2112;
                v334 = v271;
                v115 = v114;
                v116 = v113;
                v117 = "CoreData+CloudKit: %s(%d): Failed to initialize NSUUID from CKRecord with value: %@\n%@";
                goto LABEL_200;
              }

              goto LABEL_201;
            }

            if ([v45 attributeType] != 700 && objc_msgSend(v45, "attributeType") != 1200)
            {
              goto LABEL_167;
            }

            getCloudKitCKAssetClass();
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v106 = [v270 cloudKitSerializer:v274 safeSaveURLForAsset:v51];
              if (!v106)
              {
                v107 = _PFLogGetLogStream(17);
                if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v330 = v51;
                  _os_log_error_impl(&dword_18565F000, v107, OS_LOG_TYPE_ERROR, "CoreData: fault: Delegate didn't return a file url for asset: %@\n", buf, 0xCu);
                }

                v108 = _PFLogGetLogStream(17);
                if (os_log_type_enabled(v108, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412290;
                  v330 = v51;
                  _os_log_fault_impl(&dword_18565F000, v108, OS_LOG_TYPE_FAULT, "CoreData: Delegate didn't return a file url for asset: %@", buf, 0xCu);
                }
              }

              v109 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithContentsOfURL:v106 encoding:4 error:&v321];
              if (v109)
              {
                if ([v45 attributeType] == 700)
                {

                  v110 = v109;
                  goto LABEL_217;
                }

                if ([v45 attributeType] == 1200)
                {

                  v110 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v109];
                  if (v110)
                  {
LABEL_217:
                    v52 = v110;
                  }

                  else
                  {
                    v125 = objc_autoreleasePoolPush();
                    v126 = __PFCloudKitLoggingGetStream();
                    v127 = v126;
                    if (__ckLoggingOverride == 17)
                    {
                      v128 = OS_LOG_TYPE_FAULT;
                    }

                    else
                    {
                      v128 = OS_LOG_TYPE_ERROR;
                    }

                    if (os_log_type_enabled(v126, v128))
                    {
                      *buf = 136315906;
                      v330 = "[PFCloudKitSerializer updateAttributes:andRelationships:onManagedObject:fromRecord:withRecordMetadata:importContext:error:]";
                      v331 = 1024;
                      *v332 = 1430;
                      *&v332[4] = 2112;
                      *&v332[6] = v51;
                      v333 = 2112;
                      v334 = v271;
                      _os_log_impl(&dword_18565F000, v127, v128, "CoreData+CloudKit: %s(%d): Failed to initialize NSURL from CKAsset with value: %@\n%@", buf, 0x26u);
                    }

                    v52 = 0;
                    objc_autoreleasePoolPop(v125);
                  }
                }
              }

              else
              {
                v121 = objc_autoreleasePoolPush();
                v253 = v106;
                v122 = __PFCloudKitLoggingGetStream();
                v123 = v122;
                if (__ckLoggingOverride == 17)
                {
                  v124 = OS_LOG_TYPE_FAULT;
                }

                else
                {
                  v124 = OS_LOG_TYPE_ERROR;
                }

                if (os_log_type_enabled(v122, v124))
                {
                  *buf = 136315906;
                  v330 = "[PFCloudKitSerializer updateAttributes:andRelationships:onManagedObject:fromRecord:withRecordMetadata:importContext:error:]";
                  v331 = 1024;
                  *v332 = 1434;
                  *&v332[4] = 2112;
                  *&v332[6] = v253;
                  v333 = 2112;
                  v334 = v321;
                  _os_log_impl(&dword_18565F000, v123, v124, "CoreData+CloudKit: %s(%d): Failed to read value from asset at URL: %@\n%@", buf, 0x26u);
                }

                objc_autoreleasePoolPop(v121);
                v262 = 0;
              }

              goto LABEL_167;
            }

            if ([v45 attributeType] == 1200)
            {

              v78 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v51];
              if (v78)
              {
LABEL_131:
                v52 = v78;
                goto LABEL_167;
              }

              v111 = objc_autoreleasePoolPush();
              v118 = __PFCloudKitLoggingGetStream();
              v119 = v118;
              if (__ckLoggingOverride == 17)
              {
                v120 = OS_LOG_TYPE_FAULT;
              }

              else
              {
                v120 = OS_LOG_TYPE_ERROR;
              }

              if (os_log_type_enabled(v118, v120))
              {
                *buf = 136315906;
                v330 = "[PFCloudKitSerializer updateAttributes:andRelationships:onManagedObject:fromRecord:withRecordMetadata:importContext:error:]";
                v331 = 1024;
                *v332 = 1442;
                *&v332[4] = 2112;
                *&v332[6] = v51;
                v333 = 2112;
                v334 = v271;
                v115 = v120;
                v116 = v119;
                v117 = "CoreData+CloudKit: %s(%d): Failed to initialize NSURL from CKRecord with value: %@\n%@";
LABEL_200:
                _os_log_impl(&dword_18565F000, v116, v115, v117, buf, 0x26u);
              }

LABEL_201:
              v52 = 0;
              objc_autoreleasePoolPop(v111);
            }

LABEL_167:
            v97 = *(v274 + 48);
            v98 = [(NSManagedObject *)v275 objectID:v253];
            if (v97 && ([objc_msgSend(*(v97 + 48) objectForKey:{v98), "containsObject:", v46}] & 1) != 0)
            {
              v99 = [v45 usesMergeableStorage];
              v100 = objc_autoreleasePoolPush();
              if (v99)
              {
                [v52 merge:{-[NSManagedObject valueForKey:](v275, "valueForKey:", v46)}];
                v101 = [v52 copy];

                [(NSManagedObject *)v275 setValue:v101 forKey:v46];
                objc_autoreleasePoolPop(v100);
                v87 = v262;
                v52 = v101;
                goto LABEL_180;
              }

              v102 = __PFCloudKitLoggingGetStream();
              v103 = v102;
              v104 = __ckLoggingOverride;
              if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
              {
                v104 = OS_LOG_TYPE_INFO;
              }

              if (os_log_type_enabled(v102, v104))
              {
                v105 = [(NSManagedObject *)v275 objectID];
                *buf = 136315906;
                v330 = "[PFCloudKitSerializer updateAttributes:andRelationships:onManagedObject:fromRecord:withRecordMetadata:importContext:error:]";
                v331 = 1024;
                *v332 = 1461;
                *&v332[4] = 2112;
                *&v332[6] = v46;
                v333 = 2112;
                v334 = v105;
                _os_log_impl(&dword_18565F000, v103, v104, "CoreData+CloudKit: %s(%d): Importer is rejecting updated value for '%@' on '%@' because there are pending local edits that haven't been exported yet.", buf, 0x26u);
              }

              objc_autoreleasePoolPop(v100);
            }

            else
            {
              [(NSManagedObject *)v275 setValue:v52 forKey:v46];
            }

            v87 = v262;
LABEL_180:

            if ((v87 & 1) == 0)
            {
              break;
            }

            v34 = v264;
LABEL_182:
            if (v42 == ++v44)
            {
              v129 = [(NSArray *)v34 countByEnumeratingWithState:&v317 objects:v337 count:16];
              v42 = v129;
              if (!v129)
              {
                v38 = v256;
                goto LABEL_234;
              }

              goto LABEL_72;
            }
          }

          v38 = v256;
          if (!v321)
          {
            v130 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
            {
              v176 = [objc_msgSend(v45 "entity")];
              v177 = [v45 name];
              *buf = 138412546;
              v330 = v176;
              v331 = 2112;
              *v332 = v177;
              _os_log_error_impl(&dword_18565F000, v130, OS_LOG_TYPE_ERROR, "CoreData: fault: Attribute serialization failed but did not set an error: %@.%@\n", buf, 0x16u);
            }

            v131 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v131, OS_LOG_TYPE_FAULT))
            {
              v178 = [objc_msgSend(v45 "entity")];
              v179 = [v45 name];
              *buf = 138412546;
              v330 = v178;
              v331 = 2112;
              *v332 = v179;
              _os_log_fault_impl(&dword_18565F000, v131, OS_LOG_TYPE_FAULT, "CoreData: Attribute serialization failed but did not set an error: %@.%@", buf, 0x16u);
            }
          }

LABEL_234:
          if ((v262 & 1) == 0)
          {
LABEL_274:
            if (v321)
            {
              *(v38 + 40) = v321;
            }

            else
            {
              v160 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v330 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitSerializer.m";
                v331 = 1024;
                *v332 = 1519;
                _os_log_error_impl(&dword_18565F000, v160, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
              }

              v161 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v161, OS_LOG_TYPE_FAULT))
              {
                *buf = 136315394;
                v330 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitSerializer.m";
                v331 = 1024;
                *v332 = 1519;
                _os_log_fault_impl(&dword_18565F000, v161, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
              }
            }

LABEL_280:
            *(*(*(v276 + 96) + 8) + 24) = 0;
            v162 = *(*(*(v276 + 88) + 8) + 40);
            goto LABEL_281;
          }

LABEL_235:
          v132 = v272;
          if (!v272)
          {
            v132 = [(NSDictionary *)[(NSEntityDescription *)[(NSManagedObject *)v275 entity] relationshipsByName] allValues];
          }

          v316 = 0u;
          v315 = 0u;
          v314 = 0u;
          v313 = 0u;
          v273 = v132;
          v133 = [(NSArray *)v132 countByEnumeratingWithState:&v313 objects:v328 count:16];
          if (v133)
          {
            v134 = *v314;
            do
            {
              for (i = 0; i != v133; ++i)
              {
                if (*v314 != v134)
                {
                  objc_enumerationMutation(v273);
                }

                v136 = *(*(&v313 + 1) + 8 * i);
                if ((![v136 isToMany] || (objc_msgSend(objc_msgSend(v136, "inverseRelationship"), "isToMany") & 1) == 0) && (objc_msgSend(v136, "isToMany") & 1) == 0)
                {
                  v137 = *(v274 + 48);
                  v138 = [v136 name];
                  v139 = [(NSManagedObject *)v275 objectID];
                  if (v137 && ([objc_msgSend(*(v137 + 48) objectForKey:{v139), "containsObject:", v138}] & 1) != 0)
                  {
                    v140 = objc_autoreleasePoolPush();
                    v141 = __PFCloudKitLoggingGetStream();
                    v142 = v141;
                    v143 = __ckLoggingOverride;
                    if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
                    {
                      v143 = OS_LOG_TYPE_INFO;
                    }

                    if (os_log_type_enabled(v141, v143))
                    {
                      v144 = [v136 name];
                      v145 = [(NSManagedObject *)v275 objectID];
                      *buf = 136315906;
                      v330 = "[PFCloudKitSerializer updateAttributes:andRelationships:onManagedObject:fromRecord:withRecordMetadata:importContext:error:]";
                      v331 = 1024;
                      *v332 = 1512;
                      *&v332[4] = 2112;
                      *&v332[6] = v144;
                      v333 = 2112;
                      v334 = v145;
                      _os_log_impl(&dword_18565F000, v142, v143, "CoreData+CloudKit: %s(%d): Importer is rejecting updated value for '%@' on '%@' because there are pending local edits that haven't been exported yet.", buf, 0x26u);
                    }

                    objc_autoreleasePoolPop(v140);
                    continue;
                  }

                  v146 = [v136 name];
                  v147 = v146;
                  if (v268)
                  {
                    objc_opt_self();
                    v147 = [@"CD_" stringByAppendingString:v146];
                  }

                  v148 = [*(v274 + 24) useDeviceToDeviceEncryption];
                  v149 = v271;
                  if (v148)
                  {
                    v150 = [v147 hasSuffix:@"_ckAsset"];
                    v149 = v271;
                    if ((v150 & 1) == 0)
                    {
                      v149 = [v271 encryptedValues];
                    }
                  }

                  v151 = [v149 objectForKey:v147];
                  if (v151)
                  {
                    v152 = [(NSCKRecordMetadata *)v267 createRecordID];
                    v153 = [objc_alloc(getCloudKitCKRecordIDClass[0]()) initWithRecordName:v151 zoneID:{objc_msgSend(v152, "zoneID")}];
                    v154 = objc_autoreleasePoolPush();
                    v155 = __PFCloudKitLoggingGetStream();
                    v156 = v155;
                    v157 = OS_LOG_TYPE_DEBUG;
                    if (__ckLoggingOverride > 0xFu)
                    {
                      if (__ckLoggingOverride != 16 && __ckLoggingOverride != 17)
                      {
                        goto LABEL_268;
                      }
                    }

                    else if (__ckLoggingOverride >= 2u)
                    {
                      goto LABEL_268;
                    }

                    v157 = __ckLoggingOverride;
LABEL_268:
                    if (os_log_type_enabled(v155, v157))
                    {
                      v158 = [v136 name];
                      *buf = 136316162;
                      v330 = "[PFCloudKitSerializer updateAttributes:andRelationships:onManagedObject:fromRecord:withRecordMetadata:importContext:error:]";
                      v331 = 1024;
                      *v332 = 1504;
                      *&v332[4] = 2112;
                      *&v332[6] = v152;
                      v333 = 2112;
                      v334 = v151;
                      v335 = 2112;
                      v336 = v158;
                      _os_log_impl(&dword_18565F000, v156, v157, "CoreData+CloudKit: %s(%d): Adding mirrored relationship to link for record %@ related to %@ by %@", buf, 0x30u);
                    }

                    objc_autoreleasePoolPop(v154);
                    v159 = [PFMirroredRelationship mirroredRelationshipWithManagedObject:v275 withRecordID:v152 relatedToObjectWithRecordID:v153 byRelationship:v136];
                    [(PFCloudKitImportZoneContext *)v269 addMirroredRelationshipToLink:v159];

                    continue;
                  }

                  if (([v136 isTransient] & 1) == 0)
                  {
                    [(NSManagedObject *)v275 setValue:0 forKey:v146];
                  }
                }
              }

              v133 = [(NSArray *)v273 countByEnumeratingWithState:&v313 objects:v328 count:16];
            }

            while (v133);
          }

LABEL_281:
          if (*(*(*(v276 + 96) + 8) + 24) == 1)
          {
            v163 = *(v276 + 40);
            if (v163)
            {
              v164 = v271;
              if ([*(v163 + 24) useDeviceToDeviceEncryption])
              {
                v164 = [v271 encryptedValueStore];
              }
            }

            else
            {
              v164 = 0;
            }

            objc_opt_self();
            v165 = [v164 objectForKey:{objc_msgSend(@"CD_", "stringByAppendingString:", @"moveReceipt"}];
            if (v165)
            {
LABEL_286:
              if (*(*(*(v276 + 96) + 8) + 24) == 1 && ([(NSManagedObject *)v267 mergeMoveReceiptsWithData:v165 error:*(*(v276 + 88) + 8) + 40]& 1) == 0)
              {
                *(*(*(v276 + 96) + 8) + 24) = 0;
                v166 = *(*(*(v276 + 88) + 8) + 40);
              }
            }

            else
            {
              objc_opt_self();
              v167 = [@"CD_" stringByAppendingString:@"moveReceipt"];
              objc_opt_self();
              v168 = [v271 objectForKey:{objc_msgSend(v167, "stringByAppendingString:", @"_ckAsset"}];
              if (v168)
              {
                v169 = [WeakRetained cloudKitSerializer:*(v276 + 40) safeSaveURLForAsset:v168];
                v165 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v169 options:0 error:*(*(v276 + 88) + 8) + 40];
                if (v165)
                {
                  goto LABEL_286;
                }

                v170 = objc_autoreleasePoolPush();
                v171 = __PFCloudKitLoggingGetStream();
                v172 = v171;
                if (__ckLoggingOverride == 17)
                {
                  v173 = OS_LOG_TYPE_FAULT;
                }

                else
                {
                  v173 = OS_LOG_TYPE_ERROR;
                }

                if (os_log_type_enabled(v171, v173))
                {
                  *buf = 136315650;
                  v330 = "[PFCloudKitSerializer applyUpdatedRecords:deletedRecordIDs:toStore:inManagedObjectContext:onlyUpdatingAttributes:andRelationships:madeChanges:error:]_block_invoke";
                  v331 = 1024;
                  *v332 = 778;
                  *&v332[4] = 2112;
                  *&v332[6] = v168;
                  _os_log_impl(&dword_18565F000, v172, v173, "CoreData+CloudKit: %s(%d): Error attempting to read move receipt CKAsset file: %@", buf, 0x1Cu);
                }

                objc_autoreleasePoolPop(v170);
                *(*(*(v276 + 96) + 8) + 24) = 0;
                v174 = *(*(*(v276 + 88) + 8) + 40);
              }

              v165 = 0;
            }
          }

LABEL_299:
          v175 = *(*(*(v276 + 96) + 8) + 24);
          objc_autoreleasePoolPop(context);
          if (!v175)
          {
            goto LABEL_306;
          }

          ++v266;
        }

        while (v266 != v260);
        v180 = [(NSArray *)obj countByEnumeratingWithState:&v308 objects:v327 count:16];
        v260 = v180;
      }

      while (v180);
    }

LABEL_306:
    v181 = v276;
    if (*(*(*(v276 + 96) + 8) + 24) == 1)
    {
      v182 = objc_autoreleasePoolPush();
      v306 = 0u;
      v307 = 0u;
      v304 = 0u;
      v305 = 0u;
      if (v255)
      {
        v183 = *(v269 + 24);
      }

      else
      {
        v183 = 0;
      }

      v184 = [v183 countByEnumeratingWithState:&v304 objects:v326 count:16];
      if (v184)
      {
        v185 = *v305;
        do
        {
          for (j = 0; j != v184; ++j)
          {
            if (*v305 != v185)
            {
              objc_enumerationMutation(v183);
            }

            [*(v276 + 32) deleteObject:{objc_msgSend(*(v276 + 32), "objectWithID:", *(*(&v304 + 1) + 8 * j))}];
          }

          v184 = [v183 countByEnumeratingWithState:&v304 objects:v326 count:16];
        }

        while (v184);
      }

      objc_autoreleasePoolPop(v182);
      v187 = v269 ? *(v269 + 24) : 0;
      v188 = +[NSCKRecordMetadata metadataForObjectIDs:inStore:withManagedObjectContext:error:](NSCKRecordMetadata, [v187 allObjects], *(v276 + 48), *(v276 + 32), (*(*(v276 + 88) + 8) + 40));
      v189 = v188;
      if (v188)
      {
        v302 = 0u;
        v303 = 0u;
        v300 = 0u;
        v301 = 0u;
        v190 = [v188 countByEnumeratingWithState:&v300 objects:v325 count:16];
        if (v190)
        {
          v191 = *v301;
          do
          {
            for (k = 0; k != v190; ++k)
            {
              if (*v301 != v191)
              {
                objc_enumerationMutation(v189);
              }

              [*(v276 + 32) deleteObject:*(*(&v300 + 1) + 8 * k)];
            }

            v190 = [v189 countByEnumeratingWithState:&v300 objects:v325 count:16];
          }

          while (v190);
        }
      }

      else
      {
        *(*(*(v276 + 96) + 8) + 24) = 0;
        v225 = *(*(*(v276 + 88) + 8) + 40);
      }

      v181 = v276;
      if (*(*(*(v276 + 96) + 8) + 24) == 1)
      {
        v298 = 0u;
        v299 = 0u;
        v296 = 0u;
        v297 = 0u;
        v226 = v269 ? *(v269 + 112) : 0;
        v227 = [v226 countByEnumeratingWithState:&v296 objects:v324 count:16];
        v181 = v276;
        if (v227)
        {
          v228 = *v297;
          while (2)
          {
            for (m = 0; m != v227; ++m)
            {
              if (*v297 != v228)
              {
                objc_enumerationMutation(v226);
              }

              v230 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, [*(*(&v296 + 1) + 8 * m) zoneID], objc_msgSend(*(*(v276 + 40) + 24), "databaseScope"), *(v276 + 48), *(v276 + 32), *(*(v276 + 88) + 8) + 40);
              if (!v230)
              {
                v181 = v276;
                *(*(*(v276 + 96) + 8) + 24) = 0;
                v231 = *(*(*(v276 + 88) + 8) + 40);
                goto LABEL_328;
              }

              [(NSManagedObject *)v230 destroyEncodedShareData];
            }

            v227 = [v226 countByEnumeratingWithState:&v296 objects:v324 count:16];
            v181 = v276;
            if (v227)
            {
              continue;
            }

            break;
          }
        }
      }
    }
  }

  else
  {
    v193 = *(*(*(v276 + 88) + 8) + 40);
    v181 = v276;
    *(*(*(v276 + 96) + 8) + 24) = 0;
  }

LABEL_328:
  v194 = *(v181 + 96);
  if (*(*(v194 + 8) + 24) != 1)
  {
    goto LABEL_335;
  }

  v195 = [(PFCloudKitImportZoneContext *)v269 linkInsertedObjectsAndMetadataInContext:(*(*(v276 + 88) + 8) + 40) error:?];
  v196 = v276;
  *(*(*(v276 + 96) + 8) + 24) = v195;
  if (*(*(*(v276 + 96) + 8) + 24) == 1)
  {
    if ([*(v276 + 32) hasChanges])
    {
      **(v276 + 104) = 1;
    }

    v197 = [*(v276 + 32) save:*(*(v276 + 88) + 8) + 40];
    v194 = *(v276 + 96);
    if (v197)
    {
      goto LABEL_335;
    }

    *(*(v194 + 8) + 24) = 0;
    v196 = v276;
  }

  v198 = *(*(*(v196 + 88) + 8) + 40);
  v194 = *(v276 + 96);
LABEL_335:
  if (*(*(v194 + 8) + 24) == 1)
  {
    v199 = v269 ? *(v269 + 48) : 0;
    v295[0] = MEMORY[0x1E69E9820];
    v295[1] = 3221225472;
    v295[2] = __150__PFCloudKitSerializer_applyUpdatedRecords_deletedRecordIDs_toStore_inManagedObjectContext_onlyUpdatingAttributes_andRelationships_madeChanges_error___block_invoke_47;
    v295[3] = &unk_1E6EC47C8;
    v200 = *(v276 + 32);
    v201 = *(v276 + 40);
    v295[4] = v269;
    v295[5] = v200;
    v295[6] = WeakRetained;
    v295[7] = v201;
    [v199 enumerateObjectsUsingBlock:v295];
    if (*(*(*(v276 + 96) + 8) + 24))
    {
      if (![(PFCloudKitImportZoneContext *)v269 populateUnresolvedIDsInStore:*(v276 + 32) withManagedObjectContext:(*(*(v276 + 88) + 8) + 40) error:?])
      {
        goto LABEL_431;
      }

      if (v269)
      {
        v202 = [*(v269 + 40) copy];
      }

      else
      {
        v202 = 0;
      }

      v289[0] = MEMORY[0x1E69E9820];
      v289[1] = 3221225472;
      v289[2] = __150__PFCloudKitSerializer_applyUpdatedRecords_deletedRecordIDs_toStore_inManagedObjectContext_onlyUpdatingAttributes_andRelationships_madeChanges_error___block_invoke_49;
      v289[3] = &unk_1E6EC47F0;
      v290 = *(v276 + 40);
      v203 = *(v276 + 32);
      v294 = vextq_s8(*(v276 + 88), *(v276 + 88), 8uLL);
      v291 = v203;
      v292 = v269;
      v293 = WeakRetained;
      [v202 enumerateObjectsUsingBlock:v289];
      if (*(*(*(v276 + 96) + 8) + 24) == 1)
      {
        if ([*(v276 + 32) hasChanges])
        {
          **(v276 + 104) = 1;
          if (([*(v276 + 32) save:*(*(v276 + 88) + 8) + 40] & 1) == 0)
          {
            *(*(*(v276 + 96) + 8) + 24) = 0;
            v204 = *(*(*(v276 + 88) + 8) + 40);
          }
        }
      }

      if (*(*(*(v276 + 96) + 8) + 24) == 1)
      {
        v205 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKImportPendingRelationship entityPath]);
        [(NSFetchRequest *)v205 setFetchBatchSize:200];
        [(NSFetchRequest *)v205 setReturnsObjectsAsFaults:0];
        v206 = *(v276 + 32);
        v286[0] = MEMORY[0x1E69E9820];
        v286[1] = 3221225472;
        v286[2] = __150__PFCloudKitSerializer_applyUpdatedRecords_deletedRecordIDs_toStore_inManagedObjectContext_onlyUpdatingAttributes_andRelationships_madeChanges_error___block_invoke_52;
        v286[3] = &unk_1E6EC4818;
        v286[4] = v206;
        v286[5] = v269;
        v207 = *(v276 + 48);
        v287 = vextq_s8(*(v276 + 88), *(v276 + 88), 8uLL);
        v286[6] = v207;
        v286[7] = v257;
        v288 = *(v276 + 104);
        [_PFRoutines efficientlyEnumerateManagedObjectsInFetchRequest:v205 usingManagedObjectContext:v206 andApplyBlock:v286];
        if (*(*(*(v276 + 96) + 8) + 24))
        {
          v208 = [NSCKMirroredRelationship fetchPendingMirroredRelationshipsInStore:*(v276 + 32) withManagedObjectContext:(*(*(v276 + 88) + 8) + 40) error:?];
          v209 = v208;
          if (v208)
          {
            v284 = 0u;
            v285 = 0u;
            v282 = 0u;
            v283 = 0u;
            v210 = [v208 countByEnumeratingWithState:&v282 objects:v323 count:16];
            if (v210)
            {
              v211 = *v283;
              do
              {
                v212 = 0;
                do
                {
                  if (*v283 != v211)
                  {
                    objc_enumerationMutation(v209);
                  }

                  v213 = *(*(&v282 + 1) + 8 * v212);
                  v214 = [(NSCKMirroredRelationship *)v213 createRecordIDForRecord];
                  v215 = [(NSCKMirroredRelationship *)v213 createRecordIDForRelatedRecord];
                  v216 = [v213 cdEntityName];
                  if (v269)
                  {
                    v217 = [objc_msgSend(*(v269 + 64) objectForKey:{v216), "objectForKey:", v214}];
                  }

                  else
                  {
                    v217 = 0;
                  }

                  v218 = [v213 relatedEntityName];
                  if (v269)
                  {
                    v219 = [objc_msgSend(*(v269 + 64) objectForKey:{v218), "objectForKey:", v215}];
                  }

                  else
                  {
                    v219 = 0;
                  }

                  if (v217 && v219)
                  {
                    v281 = 0;
                    if (-[NSCKMirroredRelationship updateRelationshipValueUsingImportContext:andManagedObjectContext:isDelete:error:](v213, v269, *(v276 + 32), [v213 needsDeleteBool], &v281))
                    {
                      goto LABEL_361;
                    }

                    v220 = objc_autoreleasePoolPush();
                    v221 = __PFCloudKitLoggingGetStream();
                    v222 = v221;
                    v223 = OS_LOG_TYPE_DEBUG;
                    if (__ckLoggingOverride > 0xFu)
                    {
                      if (__ckLoggingOverride != 16 && __ckLoggingOverride != 17)
                      {
                        goto LABEL_370;
                      }
                    }

                    else if (__ckLoggingOverride >= 2u)
                    {
                      goto LABEL_370;
                    }

                    v223 = __ckLoggingOverride;
LABEL_370:
                    if (os_log_type_enabled(v221, v223))
                    {
                      *buf = 136315906;
                      v330 = "[PFCloudKitSerializer applyUpdatedRecords:deletedRecordIDs:toStore:inManagedObjectContext:onlyUpdatingAttributes:andRelationships:madeChanges:error:]_block_invoke";
                      v331 = 1024;
                      *v332 = 1159;
                      *&v332[4] = 2112;
                      *&v332[6] = v213;
                      v333 = 2112;
                      v334 = v281;
                      _os_log_impl(&dword_18565F000, v222, v223, "CoreData+CloudKit: %s(%d): Failed to resolve pending relationship: %@\n%@", buf, 0x26u);
                    }

                    objc_autoreleasePoolPop(v220);
                    goto LABEL_373;
                  }

                  if ([v213 needsDeleteBool])
                  {
LABEL_361:
                    [v213 setIsPendingBool:0];
                  }

LABEL_373:
                  ++v212;
                }

                while (v210 != v212);
                v224 = [v209 countByEnumeratingWithState:&v282 objects:v323 count:16];
                v210 = v224;
              }

              while (v224);
            }
          }

          else
          {
            *(*(*(v276 + 96) + 8) + 24) = 0;
            v232 = *(*(*(v276 + 88) + 8) + 40);
          }
        }
      }

      if (*(*(*(v276 + 96) + 8) + 24) == 1)
      {
        v279 = 0u;
        v280 = 0u;
        v277 = 0u;
        v278 = 0u;
        v233 = v269 ? *(v269 + 48) : 0;
        v234 = [v233 countByEnumeratingWithState:&v277 objects:v322 count:16];
        if (v234)
        {
          v235 = *v278;
          v236 = *MEMORY[0x1E696A250];
          do
          {
            for (n = 0; n != v234; ++n)
            {
              if (*v278 != v235)
              {
                objc_enumerationMutation(v233);
              }

              v238 = *(*(&v277 + 1) + 8 * n);
              v239 = [NSCKMirroredRelationship mirroredRelationshipForManyToMany:v238 inStore:*(v276 + 48) withManagedObjectContext:*(v276 + 32) error:*(*(v276 + 88) + 8) + 40];
              v240 = v239;
              if (v239)
              {
                [v239 setNeedsDeleteBool:1];
                v281 = 0;
                if ([(NSCKMirroredRelationship *)v240 updateRelationshipValueUsingImportContext:v269 andManagedObjectContext:*(v276 + 32) isDelete:1 error:&v281])
                {
                  continue;
                }

                if ([objc_msgSend(v281 "domain")] && (objc_msgSend(v281, "code") == 134412 || objc_msgSend(v281, "code") == 134413))
                {
                  v241 = objc_autoreleasePoolPush();
                  v242 = __PFCloudKitLoggingGetStream();
                  v243 = v242;
                  v244 = OS_LOG_TYPE_DEBUG;
                  if (__ckLoggingOverride > 0xFu)
                  {
                    if (__ckLoggingOverride != 16 && __ckLoggingOverride != 17)
                    {
                      goto LABEL_422;
                    }
                  }

                  else if (__ckLoggingOverride >= 2u)
                  {
                    goto LABEL_422;
                  }

                  v244 = __ckLoggingOverride;
LABEL_422:
                  if (os_log_type_enabled(v242, v244))
                  {
                    *buf = 136315650;
                    v330 = "[PFCloudKitSerializer applyUpdatedRecords:deletedRecordIDs:toStore:inManagedObjectContext:onlyUpdatingAttributes:andRelationships:madeChanges:error:]_block_invoke";
                    v331 = 1024;
                    *v332 = 1184;
                    *&v332[4] = 2112;
                    *&v332[6] = v240;
                    _os_log_impl(&dword_18565F000, v243, v244, "CoreData+CloudKit: %s(%d): Marking deleted mirrored relationship fulfilled, one or more of the related objects is missing: %@", buf, 0x1Cu);
                  }

                  objc_autoreleasePoolPop(v241);
                  [v240 setNeedsDeleteBool:1];
                  [v240 setIsPendingBool:0];
                  continue;
                }

                [v240 setIsPendingBool:1];
                [WeakRetained cloudKitSerializer:*(v276 + 40) failedToUpdateRelationship:v238 withError:v281];
                v246 = objc_autoreleasePoolPush();
                v247 = __PFCloudKitLoggingGetStream();
                v248 = v247;
                v249 = __ckLoggingOverride;
                if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
                {
                  v249 = OS_LOG_TYPE_INFO;
                }

                if (os_log_type_enabled(v247, v249))
                {
                  *buf = 136315906;
                  v330 = "[PFCloudKitSerializer applyUpdatedRecords:deletedRecordIDs:toStore:inManagedObjectContext:onlyUpdatingAttributes:andRelationships:madeChanges:error:]_block_invoke";
                  v331 = 1024;
                  *v332 = 1192;
                  *&v332[4] = 2112;
                  *&v332[6] = v240;
                  v333 = 2112;
                  v334 = v281;
                  _os_log_impl(&dword_18565F000, v248, v249, "CoreData+CloudKit: %s(%d): Failed to update deleted mirrored relationship: %@\n%@", buf, 0x26u);
                }

                objc_autoreleasePoolPop(v246);
              }

              else if (*(*(*(v276 + 88) + 8) + 40))
              {
                *(*(*(v276 + 96) + 8) + 24) = 0;
                v245 = *(*(*(v276 + 88) + 8) + 40);
              }
            }

            v234 = [v233 countByEnumeratingWithState:&v277 objects:v322 count:16];
          }

          while (v234);
        }
      }

      if (*(*(*(v276 + 96) + 8) + 24) == 1)
      {
        v250 = v269 ? *(v269 + 56) : 0;
        if ((+[NSCKMirroredRelationship purgeMirroredRelationshipsWithRecordIDs:fromStore:withManagedObjectContext:error:](NSCKMirroredRelationship, [v250 allObjects], *(v276 + 48), *(v276 + 32), (*(*(v276 + 88) + 8) + 40)) & 1) == 0)
        {
LABEL_431:
          *(*(*(v276 + 96) + 8) + 24) = 0;
          v251 = *(*(*(v276 + 88) + 8) + 40);
        }
      }
    }
  }

  v252 = *MEMORY[0x1E69E9840];
}

uint64_t __150__PFCloudKitSerializer_applyUpdatedRecords_deletedRecordIDs_toStore_inManagedObjectContext_onlyUpdatingAttributes_andRelationships_madeChanges_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 name];

  return [v3 setObject:a2 forKey:v4];
}

void __150__PFCloudKitSerializer_applyUpdatedRecords_deletedRecordIDs_toStore_inManagedObjectContext_onlyUpdatingAttributes_andRelationships_madeChanges_error___block_invoke_47(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v19 = 0;
  if (([a2 updateRelationshipValueUsingImportContext:*(a1 + 32) andManagedObjectContext:*(a1 + 40) error:&v19] & 1) == 0)
  {
    v4 = [v19 domain];
    if ([v4 isEqualToString:*MEMORY[0x1E696A250]] && (objc_msgSend(v19, "code") == 134412 || objc_msgSend(v19, "code") == 134413))
    {
      v5 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v7 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v8 = 17;
      }

      else
      {
        v8 = 1;
      }

      if (__ckLoggingOverride == 16)
      {
        v8 = 16;
      }

      if (__ckLoggingOverride)
      {
        v9 = v8;
      }

      else
      {
        v9 = OS_LOG_TYPE_DEFAULT;
      }

      if (!os_log_type_enabled(Stream, v9))
      {
        goto LABEL_26;
      }

      *buf = 136315650;
      v21 = "[PFCloudKitSerializer applyUpdatedRecords:deletedRecordIDs:toStore:inManagedObjectContext:onlyUpdatingAttributes:andRelationships:madeChanges:error:]_block_invoke";
      v22 = 1024;
      v23 = 878;
      v24 = 2112;
      v25 = v19;
      v10 = "CoreData+CloudKit: %s(%d): Deleted relationship failed to update because one or more of the objects in it is already gone: %@";
      v11 = v7;
      v12 = v9;
      v13 = 28;
    }

    else
    {
      [*(a1 + 48) cloudKitSerializer:*(a1 + 56) failedToUpdateRelationship:a2 withError:v19];
      v5 = objc_autoreleasePoolPush();
      v14 = __PFCloudKitLoggingGetStream();
      v15 = v14;
      if (__ckLoggingOverride == 17)
      {
        v16 = 17;
      }

      else
      {
        v16 = 1;
      }

      if (__ckLoggingOverride == 16)
      {
        v16 = 16;
      }

      if (__ckLoggingOverride)
      {
        v17 = v16;
      }

      else
      {
        v17 = OS_LOG_TYPE_DEFAULT;
      }

      if (!os_log_type_enabled(v14, v17))
      {
        goto LABEL_26;
      }

      *buf = 136315906;
      v21 = "[PFCloudKitSerializer applyUpdatedRecords:deletedRecordIDs:toStore:inManagedObjectContext:onlyUpdatingAttributes:andRelationships:madeChanges:error:]_block_invoke";
      v22 = 1024;
      v23 = 883;
      v24 = 2112;
      v25 = a2;
      v26 = 2112;
      v27 = v19;
      v10 = "CoreData+CloudKit: %s(%d): Failed to update deleted mirrored relationship: %@\n%@";
      v11 = v15;
      v12 = v17;
      v13 = 38;
    }

    _os_log_impl(&dword_18565F000, v11, v12, v10, buf, v13);
LABEL_26:
    objc_autoreleasePoolPop(v5);
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __150__PFCloudKitSerializer_applyUpdatedRecords_deletedRecordIDs_toStore_inManagedObjectContext_onlyUpdatingAttributes_andRelationships_madeChanges_error___block_invoke_49(uint64_t a1, uint64_t a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v4 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v6 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v7 = 17;
  }

  else
  {
    v7 = 2;
  }

  if (__ckLoggingOverride == 16)
  {
    v7 = 16;
  }

  if (__ckLoggingOverride == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!__ckLoggingOverride)
  {
    v8 = 0;
  }

  if (__ckLoggingOverride <= 0xFu)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (os_log_type_enabled(Stream, v9))
  {
    *buf = 136315650;
    v33 = "[PFCloudKitSerializer applyUpdatedRecords:deletedRecordIDs:toStore:inManagedObjectContext:onlyUpdatingAttributes:andRelationships:madeChanges:error:]_block_invoke";
    v34 = 1024;
    v35 = 895;
    v36 = 2112;
    v37 = a2;
    _os_log_impl(&dword_18565F000, v6, v9, "CoreData+CloudKit: %s(%d): Updating relationship: %@", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v4);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a2)
    {
      v10 = +[PFCloudKitSerializer mtmKeyForObjectWithRecordName:relatedToObjectWithRecordName:byRelationship:withInverse:](PFCloudKitSerializer, [*(a2 + 48) recordName], objc_msgSend(*(a2 + 56), "recordName"), *(a2 + 16), *(a2 + 24));
      v11 = *(a2 + 32);
    }

    else
    {
      v10 = +[PFCloudKitSerializer mtmKeyForObjectWithRecordName:relatedToObjectWithRecordName:byRelationship:withInverse:](PFCloudKitSerializer, [0 recordName], objc_msgSend(0, "recordName"), 0, 0);
      v11 = 0;
    }

    v12 = *(*(a1 + 32) + 48);
    v13 = [v11 zoneID];
    if (!v12 || (v14 = [objc_msgSend(*(v12 + 32) objectForKey:{v13), "objectForKey:", v10}]) == 0)
    {
      v14 = [NSCKMirroredRelationship mirroredRelationshipForManyToMany:a2 inStore:*(a1 + 40) withManagedObjectContext:*(a1 + 48) error:&v31];
    }

    v15 = v31;
    if (v31)
    {
      *(*(*(a1 + 72) + 8) + 24) = 0;
      result = v15;
      *(*(*(a1 + 80) + 8) + 40) = result;
    }

    else
    {
      if (!v14)
      {
        v17 = *(*(a1 + 32) + 48);
        if (a2)
        {
          v18 = *(a2 + 48);
        }

        else
        {
          v18 = 0;
        }

        v19 = [v18 zoneID];
        if (!v17 || (v20 = [*(v17 + 8) objectForKey:v19]) == 0)
        {
          if (a2)
          {
            v21 = *(a2 + 48);
          }

          else
          {
            v21 = 0;
          }

          v22 = [v21 zoneID];
          v23 = *(a1 + 56);
          if (v23)
          {
            v24 = *(v23 + 96);
          }

          else
          {
            v24 = 0;
          }

          v25 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, v22, [v24 databaseScope], *(a1 + 40), *(a1 + 48), &v31);
          if (v25)
          {
            v20 = v25;
            [(PFCloudKitMetadataCache *)*(*(a1 + 32) + 48) cacheZoneMetadata:v25];
          }

          else
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v33 = v31;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Need to handle fetch errors here for the zone and abort serialization. %@\n", buf, 0xCu);
            }

            v27 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v33 = v31;
              _os_log_fault_impl(&dword_18565F000, v27, OS_LOG_TYPE_FAULT, "CoreData: Need to handle fetch errors here for the zone and abort serialization. %@", buf, 0xCu);
            }

            v20 = 0;
          }
        }

        v14 = [NSCKMirroredRelationship insertMirroredRelationshipForManyToMany:a2 inZoneWithMetadata:v20 inStore:*(a1 + 40) withManagedObjectContext:*(a1 + 48)];
      }

      if ([a2 updateRelationshipValueUsingImportContext:*(a1 + 56) andManagedObjectContext:*(a1 + 48) error:&v31])
      {
        v28 = v14;
        v29 = 0;
      }

      else
      {
        v28 = v14;
        v29 = 1;
      }

      [v28 setIsPendingBool:v29];
      [v14 setNeedsDeleteBool:0];
      result = [v14 setIsUploadedBool:1];
    }
  }

  else
  {
    result = [a2 updateRelationshipValueUsingImportContext:*(a1 + 56) andManagedObjectContext:*(a1 + 48) error:&v31];
    if ((result & 1) == 0)
    {
      result = [*(a1 + 64) cloudKitSerializer:*(a1 + 32) failedToUpdateRelationship:a2 withError:v31];
    }
  }

  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __150__PFCloudKitSerializer_applyUpdatedRecords_deletedRecordIDs_toStore_inManagedObjectContext_onlyUpdatingAttributes_andRelationships_madeChanges_error___block_invoke_52(uint64_t a1, void *a2, void *a3, _BYTE *a4, _BYTE *a5)
{
  v108 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    *a4 = 1;
    *(*(*(a1 + 64) + 8) + 24) = 0;
    result = a3;
    *(*(*(a1 + 72) + 8) + 40) = result;
    goto LABEL_115;
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v7 = [a2 countByEnumeratingWithState:&v94 objects:v107 count:16];
  if (!v7)
  {
    goto LABEL_110;
  }

  v8 = v7;
  v81 = *v95;
  v77 = *MEMORY[0x1E696A250];
  obj = a2;
  while (2)
  {
    v9 = 0;
    v78 = v8;
    do
    {
      if (*v95 != v81)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v94 + 1) + 8 * v9);
      v11 = objc_autoreleasePoolPush();
      v82 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 32) "persistentStoreCoordinator")];
      v12 = [objc_alloc(getCloudKitCKRecordZoneIDClass[0]()) initWithZoneName:objc_msgSend(v10 ownerName:{"recordZoneName"), objc_msgSend(v10, "recordZoneOwnerName")}];
      v13 = [objc_alloc(getCloudKitCKRecordIDClass[0]()) initWithRecordName:objc_msgSend(v10 zoneID:{"recordName"), v12}];
      v14 = [objc_alloc(getCloudKitCKRecordZoneIDClass[0]()) initWithZoneName:objc_msgSend(v10 ownerName:{"relatedRecordZoneName"), objc_msgSend(v10, "relatedRecordZoneOwnerName")}];
      v88 = [objc_alloc(getCloudKitCKRecordIDClass[0]()) initWithRecordName:objc_msgSend(v10 zoneID:{"relatedRecordName"), v14}];
      v86 = v12;
      v84 = v14;
      if (([v12 isEqual:v14] & 1) == 0)
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v101 = v10;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Import is attempting to link objects across zones: %@\n", buf, 0xCu);
        }

        v16 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v101 = v10;
          _os_log_fault_impl(&dword_18565F000, v16, OS_LOG_TYPE_FAULT, "CoreData: Import is attempting to link objects across zones: %@", buf, 0xCu);
        }
      }

      v83 = v9;
      context = v11;
      v17 = *(a1 + 40);
      v18 = [v10 cdEntityName];
      if (v17)
      {
        v19 = [objc_msgSend(*(v17 + 64) objectForKey:{v18), "objectForKey:", v13}];
      }

      else
      {
        v19 = 0;
      }

      v20 = *(a1 + 40);
      v21 = [v10 relatedEntityName];
      if (v20)
      {
        v22 = [objc_msgSend(*(v20 + 64) objectForKey:{v21), "objectForKey:", v88}];
        v23 = v22;
        if (v19 && v22)
        {
          goto LABEL_43;
        }

        v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v25 = v24;
        if (v19)
        {
          if (v23)
          {
            goto LABEL_22;
          }
        }

        else
        {
          [v24 addObject:v13];
          if (v23)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        v67 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v25 = v67;
        if (!v19)
        {
          [v67 addObject:v13];
        }
      }

      [v25 addObject:v88];
      v23 = 0;
LABEL_22:
      v93 = 0;
      v26 = [NSCKRecordMetadata metadataForRecordIDs:v25 fromStore:*(a1 + 48) inManagedObjectContext:*(a1 + 32) error:&v93];
      if (!v26)
      {
        v70 = objc_autoreleasePoolPush();
        Stream = __PFCloudKitLoggingGetStream();
        v72 = Stream;
        if (__ckLoggingOverride == 17)
        {
          v73 = OS_LOG_TYPE_FAULT;
        }

        else
        {
          v73 = OS_LOG_TYPE_ERROR;
        }

        if (os_log_type_enabled(Stream, v73))
        {
          *buf = 136316162;
          v101 = "[PFCloudKitSerializer applyUpdatedRecords:deletedRecordIDs:toStore:inManagedObjectContext:onlyUpdatingAttributes:andRelationships:madeChanges:error:]_block_invoke";
          v102 = 1024;
          *v103 = 1031;
          *&v103[4] = 2112;
          *&v103[6] = v13;
          *&v103[14] = 2112;
          *&v103[16] = v88;
          v104 = 2112;
          v105 = v93;
          _os_log_impl(&dword_18565F000, v72, v73, "CoreData+CloudKit: %s(%d): Pending relationship Fallback fetch failed (%@ / %@): %@", buf, 0x30u);
        }

        objc_autoreleasePoolPop(v70);
        *(*(*(a1 + 64) + 8) + 24) = 0;
        *(*(*(a1 + 72) + 8) + 40) = v93;
        *a4 = 1;

        objc_autoreleasePoolPop(context);
        goto LABEL_110;
      }

      v27 = v26;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v28 = [v26 countByEnumeratingWithState:&v89 objects:v106 count:16];
      if (v28)
      {
        v29 = v28;
        v80 = v25;
        v87 = v10;
        v30 = *v90;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v90 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v89 + 1) + 8 * i);
            v33 = [(NSCKRecordMetadata *)v32 createRecordID];
            if ([v33 isEqual:v13])
            {
              v19 = [(NSCKRecordMetadata *)v32 createObjectIDForLinkedRow];
              v34 = *(a1 + 40);
              if (v34)
              {
                [(PFCloudKitImportZoneContext *)v34 addObjectID:v19 toCache:*(v34 + 64) andRecordID:v33];
              }
            }

            else if ([v33 isEqual:v88])
            {
              v23 = [(NSCKRecordMetadata *)v32 createObjectIDForLinkedRow];
              v35 = *(a1 + 40);
              if (v35)
              {
                [(PFCloudKitImportZoneContext *)v35 addObjectID:v23 toCache:*(v35 + 64) andRecordID:v33];
              }
            }

            else
            {
              v36 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v101 = v33;
                v102 = 2112;
                *v103 = v27;
                *&v103[8] = 2112;
                *&v103[10] = v87;
                _os_log_error_impl(&dword_18565F000, v36, OS_LOG_TYPE_ERROR, "CoreData: fault: Unknown recordID returned as part of fetch for missing pending relationship objectIDs: %@ - %@ - %@\n", buf, 0x20u);
              }

              v37 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412802;
                v101 = v33;
                v102 = 2112;
                *v103 = v27;
                *&v103[8] = 2112;
                *&v103[10] = v87;
                _os_log_fault_impl(&dword_18565F000, v37, OS_LOG_TYPE_FAULT, "CoreData: Unknown recordID returned as part of fetch for missing pending relationship objectIDs: %@ - %@ - %@", buf, 0x20u);
              }
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v89 objects:v106 count:16];
        }

        while (v29);

        v8 = v78;
        v10 = v87;
LABEL_43:
        if (!v19)
        {
          goto LABEL_52;
        }

        goto LABEL_44;
      }

      v8 = v78;
      if (!v19)
      {
        goto LABEL_52;
      }

LABEL_44:
      if (v23)
      {
        if ([v82 isToMany] && objc_msgSend(objc_msgSend(v82, "inverseRelationship"), "isToMany"))
        {
          v99[0] = [v10 recordName];
          v99[1] = [v10 relatedRecordName];
          v38 = +[PFMirroredManyToManyRelationship ckRecordNameForOrderedRecordNames:](PFMirroredManyToManyRelationship, [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:2]);
          v98[0] = v82;
          v98[1] = [v82 inverseRelationship];
          v39 = +[PFMirroredManyToManyRelationship ckRecordTypeForOrderedRelationships:](PFMirroredManyToManyRelationship, [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:2]);
          v40 = [objc_alloc(getCloudKitCKRecordIDClass[0]()) initWithRecordName:v38 zoneID:v86];
          if ([v10 needsDeleteBool])
          {
            v41 = [PFMirroredRelationship mirroredRelationshipWithDeletedRecordType:v39 recordID:v40 andManagedObjectModel:*(a1 + 56)];
          }

          else
          {
            v41 = [[PFMirroredManyToManyRelationship alloc] initWithRecordID:v40 recordType:v39 managedObjectModel:*(a1 + 56) andType:0];
          }

          v43 = v41;
          v44 = context;
          v45 = v83;
        }

        else
        {
          v93 = 0;
          v42 = [*(a1 + 32) existingObjectWithID:v19 error:&v93];
          if (v42)
          {
            v43 = [PFMirroredRelationship mirroredRelationshipWithManagedObject:v42 withRecordID:v13 relatedToObjectWithRecordID:v88 byRelationship:v82];
            v44 = context;
            v45 = v83;
          }

          else
          {
            v53 = v10;
            if ([objc_msgSend(v93 "domain")] && objc_msgSend(v93, "code") == 133000)
            {
              v54 = objc_autoreleasePoolPush();
              v55 = __PFCloudKitLoggingGetStream();
              v56 = v55;
              if (__ckLoggingOverride == 17)
              {
                v57 = OS_LOG_TYPE_FAULT;
              }

              else
              {
                v57 = 16 * (__ckLoggingOverride == 16);
              }

              if (os_log_type_enabled(v55, v57))
              {
                *buf = 136315906;
                v101 = "[PFCloudKitSerializer applyUpdatedRecords:deletedRecordIDs:toStore:inManagedObjectContext:onlyUpdatingAttributes:andRelationships:madeChanges:error:]_block_invoke";
                v102 = 1024;
                *v103 = 1084;
                *&v103[4] = 2112;
                *&v103[6] = v19;
                *&v103[14] = 2112;
                *&v103[16] = v53;
                _os_log_impl(&dword_18565F000, v56, v57, "CoreData+CloudKit: %s(%d): Skipping pending relationship because it's destination object has gone missing: %@\n%@", buf, 0x26u);
              }

              objc_autoreleasePoolPop(v54);

              v43 = 0;
              v88 = 0;
              v13 = 0;
              v44 = context;
              v45 = v83;
            }

            else
            {
              v58 = objc_autoreleasePoolPush();
              v59 = __PFCloudKitLoggingGetStream();
              v60 = v59;
              if (__ckLoggingOverride == 17)
              {
                v61 = OS_LOG_TYPE_FAULT;
              }

              else
              {
                v61 = 16 * (__ckLoggingOverride == 16);
              }

              v44 = context;
              v45 = v83;
              if (os_log_type_enabled(v59, v61))
              {
                *buf = 136315906;
                v101 = "[PFCloudKitSerializer applyUpdatedRecords:deletedRecordIDs:toStore:inManagedObjectContext:onlyUpdatingAttributes:andRelationships:madeChanges:error:]_block_invoke";
                v102 = 1024;
                *v103 = 1088;
                *&v103[4] = 2112;
                *&v103[6] = v53;
                *&v103[14] = 2112;
                *&v103[16] = v93;
                _os_log_impl(&dword_18565F000, v60, v61, "CoreData+CloudKit: %s(%d): Skipping pending relationship because existingObjectWithID failed: %@\n%@", buf, 0x26u);
              }

              objc_autoreleasePoolPop(v58);
              v43 = 0;
            }

            v10 = v53;
          }
        }

        v93 = 0;
        if ([(PFMirroredOneToManyRelationship *)v43 updateRelationshipValueUsingImportContext:*(a1 + 40) andManagedObjectContext:*(a1 + 32) error:&v93])
        {
          [*(a1 + 32) deleteObject:v10];
        }

        else
        {
          v62 = objc_autoreleasePoolPush();
          v63 = __PFCloudKitLoggingGetStream();
          v64 = v63;
          v65 = __ckLoggingOverride;
          if (__ckLoggingOverride > 0xFu)
          {
            if (__ckLoggingOverride == 17)
            {
              v66 = 17;
            }

            else
            {
              v66 = 2;
            }

            if (__ckLoggingOverride == 16)
            {
              v65 = OS_LOG_TYPE_ERROR;
            }

            else
            {
              v65 = v66;
            }
          }

          else if (__ckLoggingOverride >= 2u)
          {
            v65 = OS_LOG_TYPE_DEBUG;
          }

          if (os_log_type_enabled(v63, v65))
          {
            *buf = 136315906;
            v101 = "[PFCloudKitSerializer applyUpdatedRecords:deletedRecordIDs:toStore:inManagedObjectContext:onlyUpdatingAttributes:andRelationships:madeChanges:error:]_block_invoke";
            v102 = 1024;
            *v103 = 1098;
            *&v103[4] = 2112;
            *&v103[6] = v43;
            *&v103[14] = 2112;
            *&v103[16] = v93;
            _os_log_impl(&dword_18565F000, v64, v65, "CoreData+CloudKit: %s(%d): Failed to resolve pending relationship: %@\n%@", buf, 0x26u);
          }

          objc_autoreleasePoolPop(v62);
        }

        goto LABEL_96;
      }

LABEL_52:
      v46 = v10;
      v47 = objc_autoreleasePoolPush();
      v48 = __PFCloudKitLoggingGetStream();
      v49 = v48;
      v50 = __ckLoggingOverride;
      if (__ckLoggingOverride > 0xFu)
      {
        if (__ckLoggingOverride == 17)
        {
          v51 = 17;
        }

        else
        {
          v51 = 2;
        }

        if (__ckLoggingOverride == 16)
        {
          v50 = OS_LOG_TYPE_ERROR;
        }

        else
        {
          v50 = v51;
        }

        v44 = context;
        v45 = v83;
      }

      else
      {
        v44 = context;
        v45 = v83;
        if (__ckLoggingOverride >= 2u)
        {
          v50 = OS_LOG_TYPE_DEBUG;
        }
      }

      if (os_log_type_enabled(v48, v50))
      {
        v52 = [v46 objectID];
        *buf = 136316162;
        v101 = "[PFCloudKitSerializer applyUpdatedRecords:deletedRecordIDs:toStore:inManagedObjectContext:onlyUpdatingAttributes:andRelationships:madeChanges:error:]_block_invoke";
        v102 = 1024;
        *v103 = 1047;
        *&v103[4] = 2112;
        *&v103[6] = v13;
        *&v103[14] = 2112;
        *&v103[16] = v88;
        v104 = 2112;
        v105 = v52;
        _os_log_impl(&dword_18565F000, v49, v50, "CoreData+CloudKit: %s(%d): Failed to find matching objectIDs for %@ / %@ in pending relationship: %@", buf, 0x30u);
      }

      objc_autoreleasePoolPop(v47);
LABEL_96:

      objc_autoreleasePoolPop(v44);
      v9 = v45 + 1;
    }

    while (v9 != v8);
    v68 = [obj countByEnumeratingWithState:&v94 objects:v107 count:16];
    v8 = v68;
    if (v68)
    {
      continue;
    }

    break;
  }

LABEL_110:
  if ([*(a1 + 32) hasChanges])
  {
    **(a1 + 80) = 1;
    if ([objc_msgSend(*(a1 + 32) "deletedObjects")])
    {
      *a5 = 1;
    }
  }

  result = [*(a1 + 32) save:*(*(a1 + 72) + 8) + 40];
  if ((result & 1) == 0)
  {
    *a4 = 1;
    *(*(*(a1 + 64) + 8) + 24) = 0;
    result = *(*(*(a1 + 72) + 8) + 40);
  }

LABEL_115:
  v74 = *MEMORY[0x1E69E9840];
  return result;
}

+ (uint64_t)isPrivateAttribute:(uint64_t)a1
{
  objc_opt_self();
  if ([objc_msgSend(a2 "name")])
  {
    return 1;
  }

  v4 = [a2 name];

  return [v4 isEqualToString:@"ckRecordID"];
}

+ (uint64_t)assetStorageDirectoryURLForStore:(uint64_t)a1
{
  objc_opt_self();
  if (+[_PFRoutines _isInMemoryStoreURL:](_PFRoutines, [a2 URL]))
  {
    v3 = MEMORY[0x1E695DFF8];
    v4 = -[NSString stringByAppendingPathComponent:](-[NSString stringByAppendingPathComponent:](NSTemporaryDirectory(), "stringByAppendingPathComponent:", [a2 identifier]), "stringByAppendingPathComponent:", @"inMemory_store_ckAssets");

    return [v3 fileURLWithPath:v4];
  }

  else
  {
    v6 = [a2 URL];
    v7 = [objc_msgSend(v6 "lastPathComponent")];
    v8 = [v6 URLByDeletingLastPathComponent];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_ckAssets", v7];

    return [v8 URLByAppendingPathComponent:v9];
  }
}

+ (uint64_t)oldAssetStorageDirectoryURLForStore:(uint64_t)a1
{
  objc_opt_self();
  if (+[_PFRoutines _isInMemoryStoreURL:](_PFRoutines, [a2 URL]))
  {
    v3 = MEMORY[0x1E695DFF8];
    v4 = -[NSString stringByAppendingPathComponent:](-[NSString stringByAppendingPathComponent:](NSTemporaryDirectory(), "stringByAppendingPathComponent:", [a2 identifier]), "stringByAppendingPathComponent:", @"ckAssetFiles");

    return [v3 fileURLWithPath:v4];
  }

  else
  {
    v6 = [objc_msgSend(a2 "URL")];

    return [v6 URLByAppendingPathComponent:@"ckAssetFiles" isDirectory:1];
  }
}

+ (uint64_t)isMirroredRelationshipRecordType:(uint64_t)a1
{
  objc_opt_self();
  if ([a2 hasPrefix:@"CD_M2M_"])
  {
    return 1;
  }

  return [a2 isEqualToString:@"CDMR"];
}

+ (id)assetsOnRecord:(uint64_t)a1 withOptions:(void *)a2
{
  v19 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [a2 allKeys];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 hasSuffix:@"_ckAsset"])
        {
          v10 = [a2 objectForKey:v9];
          if (v10)
          {
            [v3 addObject:v10];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];

  result = v11;
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

+ (uint64_t)estimateByteSizeOfRecordID:(uint64_t)a1
{
  objc_opt_self();
  v3 = [objc_msgSend(objc_msgSend(a2 "zoneID")];
  return v3 + [objc_msgSend(a2 "recordName")] + 24;
}

+ (id)newSetOfRecordKeysForEntitiesInConfiguration:(void *)a3 inManagedObjectModel:(int)a4 includeCKAssetsForFileBackedFutures:
{
  v54 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v7 = 0x1E695D000uLL;
  v35 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [a3 entitiesForConfiguration:a2];
  v36 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v36)
  {
    v33 = *v40;
    v34 = a4;
    do
    {
      v8 = 0;
      do
      {
        if (*v40 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v38 = v8;
        v9 = *(*(&v39 + 1) + 8 * v8);
        context = objc_autoreleasePoolPush();
        objc_opt_self();
        v10 = objc_alloc_init(*(v7 + 4008));
        objc_opt_self();
        [v10 addObject:{objc_msgSend(@"CD_", "stringByAppendingString:", @"entityName"}];
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v11 = [objc_msgSend(v9 "attributesByName")];
        v12 = [v11 countByEnumeratingWithState:&v47 objects:v53 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v48;
          do
          {
            v15 = 0;
            do
            {
              if (*v48 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v47 + 1) + 8 * v15);
              v17 = objc_autoreleasePoolPush();
              v18 = [PFCloudKitSerializer newSetOfRecordKeysForAttribute:v16 includeCKAssetsForFileBackedFutures:a4];
              [v10 unionSet:v18];

              objc_autoreleasePoolPop(v17);
              ++v15;
            }

            while (v13 != v15);
            v13 = [v11 countByEnumeratingWithState:&v47 objects:v53 count:16];
          }

          while (v13);
        }

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v19 = [objc_msgSend(v9 "relationshipsByName")];
        v20 = [v19 countByEnumeratingWithState:&v43 objects:v52 count:16];
        v7 = 0x1E695D000uLL;
        if (v20)
        {
          v21 = v20;
          v22 = *v44;
          do
          {
            v23 = 0;
            do
            {
              if (*v44 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v43 + 1) + 8 * v23);
              v25 = objc_autoreleasePoolPush();
              objc_opt_self();
              v26 = objc_alloc_init(*(v7 + 4008));
              if ([v24 isToMany])
              {
                if (![objc_msgSend(v24 "inverseRelationship")])
                {
                  goto LABEL_24;
                }

                [v26 addObject:@"CD_recordNames"];
                [v26 addObject:@"CD_relationships"];
                v27 = v26;
                v28 = @"CD_entityNames";
              }

              else
              {
                objc_opt_self();
                if (![PFCloudKitSerializer shouldTrackProperty:v24])
                {
                  goto LABEL_24;
                }

                v29 = [v24 name];
                v7 = 0x1E695D000;
                objc_opt_self();
                v28 = [@"CD_" stringByAppendingString:v29];
                v27 = v26;
              }

              [v27 addObject:v28];
LABEL_24:
              [v10 unionSet:v26];

              objc_autoreleasePoolPop(v25);
              ++v23;
            }

            while (v21 != v23);
            v21 = [v19 countByEnumeratingWithState:&v43 objects:v52 count:16];
          }

          while (v21);
        }

        objc_opt_self();
        [v10 addObject:{objc_msgSend(@"CD_", "stringByAppendingString:", @"moveReceipt"}];
        [v35 unionSet:v10];

        objc_autoreleasePoolPop(context);
        v8 = v38 + 1;
        a4 = v34;
      }

      while (v38 + 1 != v36);
      v36 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v36);
  }

  v30 = *MEMORY[0x1E69E9840];
  return v35;
}

+ (id)newSetOfRecordKeysForAttribute:(int)a3 includeCKAssetsForFileBackedFutures:
{
  objc_opt_self();
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if ([PFCloudKitSerializer shouldTrackAttribute:a2])
  {
    v6 = [a2 name];
    objc_opt_self();
    [v5 addObject:{objc_msgSend(@"CD_", "stringByAppendingString:", v6)}];
    if (+[PFCloudKitSerializer isVariableLengthAttributeType:](PFCloudKitSerializer, [a2 attributeType]))
    {
      if (![a2 isFileBackedFuture] || a3)
      {
        v7 = [a2 name];
        objc_opt_self();
        v8 = [@"CD_" stringByAppendingString:v7];
        objc_opt_self();
        [v5 addObject:{objc_msgSend(v8, "stringByAppendingString:", @"_ckAsset"}];
      }
    }
  }

  return v5;
}

uint64_t __111__PFCloudKitSerializer_mtmKeyForObjectWithRecordName_relatedToObjectWithRecordName_byRelationship_withInverse___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 entity];
  if (v5)
  {
    if (atomic_load((v5 + 124)))
    {
      v7 = *(v5 + 72);
    }

    else
    {
      do
      {
        v7 = v5;
        v5 = [v5 superentity];
      }

      while (v5);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 name];
  v9 = [a3 entity];
  if (v9)
  {
    if (atomic_load((v9 + 124)))
    {
      v11 = *(v9 + 72);
    }

    else
    {
      do
      {
        v11 = v9;
        v9 = [v9 superentity];
      }

      while (v9);
    }
  }

  else
  {
    v11 = 0;
  }

  result = [v8 compare:objc_msgSend(v11 options:{"name"), 1}];
  if (!result)
  {
    v13 = [a2 name];
    v14 = [a3 name];

    return [v13 compare:v14 options:1];
  }

  return result;
}

+ (id)createSetOfObjectIDsRelatedToObject:(uint64_t)a1
{
  v37 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{a2, 0}];
  v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{objc_msgSend(a2, "objectID"), 0}];
  do
  {
    v6 = [v4 objectAtIndex:0];
    [v4 removeObjectAtIndex:0];
    [v3 addObject:{objc_msgSend(v6, "objectID")}];
    context = objc_autoreleasePoolPush();
    v25 = v6;
    v7 = [v6 entity];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v24 = v7;
    obj = [v7 relationshipsByName];
    v26 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v26)
    {
      v23 = *v32;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v32 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v31 + 1) + 8 * i);
          v10 = objc_autoreleasePoolPush();
          v11 = [objc_msgSend(objc_msgSend(v24 "relationshipsByName")];
          v12 = [v25 valueForKey:v9];
          v13 = v12;
          if (v11)
          {
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            v14 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v28;
              do
              {
                for (j = 0; j != v15; ++j)
                {
                  if (*v28 != v16)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v18 = *(*(&v27 + 1) + 8 * j);
                  if (([v3 containsObject:{objc_msgSend(v18, "objectID")}] & 1) == 0 && (objc_msgSend(v5, "containsObject:", objc_msgSend(v18, "objectID")) & 1) == 0)
                  {
                    [v4 addObject:v18];
                    [v5 addObject:{objc_msgSend(v18, "objectID")}];
                  }
                }

                v15 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
              }

              while (v15);
            }
          }

          else if (v12 && ([v3 containsObject:{objc_msgSend(v12, "objectID")}] & 1) == 0 && (objc_msgSend(v5, "containsObject:", objc_msgSend(v13, "objectID")) & 1) == 0)
          {
            [v4 addObject:v13];
            [v5 addObject:{objc_msgSend(v13, "objectID")}];
          }

          objc_autoreleasePoolPop(v10);
        }

        v26 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v26);
    }

    objc_autoreleasePoolPop(context);
    [objc_msgSend(v25 "managedObjectContext")];
  }

  while ([v4 count]);

  v19 = *MEMORY[0x1E69E9840];
  return v3;
}

+ (id)defaultRecordZoneIDForDatabaseScope:(int64_t)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (_MergedGlobals_83 != -1)
  {
    dispatch_once(&_MergedGlobals_83, &__block_literal_global_103);
  }

  if (a3 == 1)
  {
    v4 = qword_1ED4BEAF8;
    goto LABEL_7;
  }

  if (a3 == 2)
  {
    v4 = qword_1ED4BEAF0;
LABEL_7:
    v5 = *MEMORY[0x1E69E9840];

    return v4;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = (softLinkCKDatabaseScopeString[0])(a3);
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unable to provide a default CKRecordZoneID for database scope: %@\n", &v11, 0xCu);
  }

  v8 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    v10 = (softLinkCKDatabaseScopeString[0])(a3);
    v11 = 138412290;
    v12 = v10;
    _os_log_fault_impl(&dword_18565F000, v8, OS_LOG_TYPE_FAULT, "CoreData: Unable to provide a default CKRecordZoneID for database scope: %@", &v11, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __60__PFCloudKitSerializer_defaultRecordZoneIDForDatabaseScope___block_invoke()
{
  v0 = objc_alloc(getCloudKitCKRecordZoneIDClass[0]());
  qword_1ED4BEAF0 = [v0 initWithZoneName:@"com.apple.coredata.cloudkit.zone" ownerName:getCloudKitCKCurrentUserDefaultName()];
  v1 = objc_alloc(getCloudKitCKRecordZoneIDClass[0]());
  v2 = getCloudKitCKRecordZoneDefaultName[0]();
  result = [v1 initWithZoneName:v2 ownerName:getCloudKitCKCurrentUserDefaultName()];
  qword_1ED4BEAF8 = result;
  return result;
}

+ (void)_invalidateStaticCaches
{
  qword_1ED4BEAF0 = 0;

  qword_1ED4BEAF8 = 0;
}

@end