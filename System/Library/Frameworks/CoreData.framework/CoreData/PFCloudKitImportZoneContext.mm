@interface PFCloudKitImportZoneContext
- (BOOL)linkInsertedObjectsAndMetadataInContext:(uint64_t *)a3 error:;
- (PFCloudKitImportZoneContext)initWithUpdatedRecords:(id)a3 deletedRecordTypeToRecordIDs:(id)a4 options:(id)a5 fileBackedFuturesDirectory:(id)a6;
- (uint64_t)addMirroredRelationshipToLink:(uint64_t)result;
- (uint64_t)addObjectID:(void *)a3 toCache:(uint64_t)a4 andRecordID:;
- (uint64_t)initializeCachesWithManagedObjectContext:(void *)a3 andObservedStore:(id *)a4 error:;
- (uint64_t)populateUnresolvedIDsInStore:(void *)a3 withManagedObjectContext:(void *)a4 error:;
- (void)addObjectID:(void *)a3 toCache:(uint64_t)a4 forRecordWithType:(uint64_t)a5 andUniqueIdentifier:;
- (void)addUnresolvedRecordID:(uint64_t)a1 forRecordType:(uint64_t)a2 toCache:(void *)a3;
- (void)dealloc;
- (void)registerObject:(void *)a3 forInsertedRecord:(void *)a4 withMetadata:;
@end

@implementation PFCloudKitImportZoneContext

- (PFCloudKitImportZoneContext)initWithUpdatedRecords:(id)a3 deletedRecordTypeToRecordIDs:(id)a4 options:(id)a5 fileBackedFuturesDirectory:(id)a6
{
  v12.receiver = self;
  v12.super_class = PFCloudKitImportZoneContext;
  v10 = [(PFCloudKitImportZoneContext *)&v12 init];
  if (v10)
  {
    v10->_updatedRecords = a3;
    v10->_deletedRecordTypeToRecordID = a4;
    v10->_recordTypeToUnresolvedRecordIDs = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10->_mirroringOptions = a5;
    if (a6 && [a6 length])
    {
      v10->_fileBackedFuturesDirectory = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:a6];
    }

    v10->_metadatasToLink = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v10;
}

- (void)dealloc
{
  self->_updatedRecords = 0;

  self->_deletedRecordTypeToRecordID = 0;
  self->_deletedObjectIDs = 0;

  self->_deletedMirroredRelationshipRecordIDs = 0;
  self->_modifiedRecords = 0;

  self->_updatedRelationships = 0;
  self->_deletedRelationships = 0;

  self->_recordTypeToRecordIDToObjectID = 0;
  self->_recordTypeToUnresolvedRecordIDs = 0;

  self->_importOperations = 0;
  self->_mirroringOptions = 0;

  self->_fileBackedFuturesDirectory = 0;
  self->_metadatasToLink = 0;
  v3.receiver = self;
  v3.super_class = PFCloudKitImportZoneContext;
  [(PFCloudKitImportZoneContext *)&v3 dealloc];
}

- (uint64_t)initializeCachesWithManagedObjectContext:(void *)a3 andObservedStore:(id *)a4 error:
{
  v245 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v144 = 0;
    goto LABEL_263;
  }

  v225 = 0;
  v159 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v184 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v181 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v158 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v157 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v169 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v171 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v183 = [objc_msgSend(a2 "persistentStoreCoordinator")];
  v185 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if ([a3 configurationName])
  {
    v6 = [v183 entitiesForConfiguration:{objc_msgSend(a3, "configurationName")}];
  }

  else
  {
    v6 = [objc_msgSend(v183 "entitiesByName")];
  }

  v7 = v6;
  v173 = a3;
  v175 = a2;
  v224 = 0u;
  v222 = 0u;
  v223 = 0u;
  v221 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v221 objects:v244 count:16];
  if (v8)
  {
    v9 = *v222;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v222 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [v185 addObject:{objc_msgSend(*(*(&v221 + 1) + 8 * i), "name")}];
      }

      v8 = [v7 countByEnumeratingWithState:&v221 objects:v244 count:16];
    }

    while (v8);
  }

  v219 = 0u;
  v220 = 0u;
  v217 = 0u;
  v218 = 0u;
  obj = *(a1 + 8);
  v11 = [obj countByEnumeratingWithState:&v217 objects:v243 count:16];
  if (v11)
  {
    v12 = *v218;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v218 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v217 + 1) + 8 * j);
        v15 = objc_autoreleasePoolPush();
        v16 = [v14 recordType];
        v17 = [v14 recordType];
        if ([v17 hasPrefix:@"CD_"])
        {
          v17 = [v17 substringFromIndex:{objc_msgSend(@"CD_", "length")}];
        }

        if (([v16 hasPrefix:@"CD_M2M_"] & 1) != 0 || objc_msgSend(v16, "isEqualToString:", @"CDMR"))
        {
          v18 = objc_autoreleasePoolPush();
          Stream = __PFCloudKitLoggingGetStream();
          v20 = Stream;
          v21 = __ckLoggingOverride;
          if (__ckLoggingOverride > 0xFu)
          {
            if (__ckLoggingOverride == 17)
            {
              v22 = 17;
            }

            else
            {
              v22 = 2;
            }

            if (__ckLoggingOverride == 16)
            {
              v21 = OS_LOG_TYPE_ERROR;
            }

            else
            {
              v21 = v22;
            }
          }

          else if (__ckLoggingOverride >= 2u)
          {
            v21 = OS_LOG_TYPE_DEBUG;
          }

          if (os_log_type_enabled(Stream, v21))
          {
            *buf = 136315650;
            v234 = "[PFCloudKitImportZoneContext initializeCachesWithManagedObjectContext:andObservedStore:error:]";
            v235 = 1024;
            v236 = 131;
            v237 = 2112;
            v238 = v14;
            _os_log_impl(&dword_18565F000, v20, v21, "CoreData+CloudKit: %s(%d): Updating relationship described by record: %@", buf, 0x1Cu);
          }

          objc_autoreleasePoolPop(v18);
          v23 = v14;
          if ([*(a1 + 96) useDeviceToDeviceEncryption])
          {
            v23 = [v14 encryptedValues];
          }

          if ([PFMirroredRelationship isValidMirroredRelationshipRecord:v14 values:v23])
          {
            v24 = [PFMirroredRelationship mirroredRelationshipWithManyToManyRecord:v14 values:v23 andManagedObjectModel:v183];
            v25 = v24;
            if (v24)
            {
              if (v24->super._relationshipDescription && v24->super._inverseRelationshipDescription)
              {
                [v158 addObject:v24];
                v26 = [(PFMirroredManyToManyRelationship *)v25 recordTypeToRecordID];
                v216[0] = MEMORY[0x1E69E9820];
                v216[1] = 3221225472;
                v216[2] = __95__PFCloudKitImportZoneContext_initializeCachesWithManagedObjectContext_andObservedStore_error___block_invoke;
                v216[3] = &unk_1E6EC1888;
                v216[4] = v185;
                v216[5] = v184;
                v216[6] = a1;
                v216[7] = v14;
                [v26 enumerateKeysAndObjectsUsingBlock:v216];
                goto LABEL_68;
              }

              v27 = objc_autoreleasePoolPush();
              v32 = __PFCloudKitLoggingGetStream();
              v33 = v32;
              v34 = __ckLoggingOverride;
              if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
              {
                v34 = OS_LOG_TYPE_INFO;
              }

              if (os_log_type_enabled(v32, v34))
              {
                *buf = 136315906;
                v234 = "[PFCloudKitImportZoneContext initializeCachesWithManagedObjectContext:andObservedStore:error:]";
                v235 = 1024;
                v236 = 160;
                v237 = 2112;
                v238 = a1;
                v239 = 2112;
                v240 = v14;
                v35 = v33;
                v36 = v34;
                v37 = "CoreData+CloudKit: %s(%d): %@ - Skipping mirrored relationship for unknown relationships: %@";
                goto LABEL_60;
              }
            }

            else
            {
              v27 = objc_autoreleasePoolPush();
              v38 = __PFCloudKitLoggingGetStream();
              v39 = v38;
              if (__ckLoggingOverride == 17)
              {
                v40 = OS_LOG_TYPE_FAULT;
              }

              else
              {
                v40 = OS_LOG_TYPE_ERROR;
              }

              if (os_log_type_enabled(v38, v40))
              {
                *buf = 136315906;
                v234 = "[PFCloudKitImportZoneContext initializeCachesWithManagedObjectContext:andObservedStore:error:]";
                v235 = 1024;
                v236 = 163;
                v237 = 2112;
                v238 = a1;
                v239 = 2112;
                v240 = v14;
                v36 = v40;
                v35 = v39;
                v37 = "CoreData+CloudKit: %s(%d): %@: Failed to serialize many to many relationship from record: %@";
LABEL_60:
                _os_log_impl(&dword_18565F000, v35, v36, v37, buf, 0x26u);
              }
            }
          }

          else
          {
            v27 = objc_autoreleasePoolPush();
            v28 = __PFCloudKitLoggingGetStream();
            v29 = v28;
            if (__ckLoggingOverride == 17)
            {
              v30 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v30 = 16 * (__ckLoggingOverride == 16);
            }

            if (os_log_type_enabled(v28, v30))
            {
              *buf = 136315906;
              v234 = "[PFCloudKitImportZoneContext initializeCachesWithManagedObjectContext:andObservedStore:error:]";
              v235 = 1024;
              v236 = 166;
              v237 = 2112;
              v238 = a1;
              v239 = 2112;
              v240 = v14;
              _os_log_impl(&dword_18565F000, v29, v30, "CoreData+CloudKit: %s(%d): %@: Skipping invalid mirrored relationship record: %@", buf, 0x26u);
            }
          }

LABEL_67:
          objc_autoreleasePoolPop(v27);
          goto LABEL_68;
        }

        if (![v185 containsObject:v17])
        {
          v27 = objc_autoreleasePoolPush();
          v41 = __PFCloudKitLoggingGetStream();
          v42 = v41;
          if (__ckLoggingOverride == 17)
          {
            v43 = OS_LOG_TYPE_FAULT;
          }

          else
          {
            v43 = 16 * (__ckLoggingOverride == 16);
          }

          if (os_log_type_enabled(v41, v43))
          {
            *buf = 136316162;
            v234 = "[PFCloudKitImportZoneContext initializeCachesWithManagedObjectContext:andObservedStore:error:]";
            v235 = 1024;
            v236 = 180;
            v237 = 2112;
            v238 = a1;
            v239 = 2112;
            v240 = v14;
            v241 = 2112;
            v242 = v185;
            _os_log_impl(&dword_18565F000, v42, v43, "CoreData+CloudKit: %s(%d): %@ - Skipping unknown updated record: %@\nIt is not a part of: %@", buf, 0x30u);
          }

          goto LABEL_67;
        }

        v31 = [v184 objectForKey:v16];
        if (!v31)
        {
          v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [v184 setObject:v31 forKey:v16];
        }

        [v159 addObject:v14];
        [v31 addObject:{objc_msgSend(v14, "recordID")}];

LABEL_68:
        objc_autoreleasePoolPop(v15);
      }

      v11 = [obj countByEnumeratingWithState:&v217 objects:v243 count:16];
    }

    while (v11);
  }

  v214 = 0u;
  v215 = 0u;
  v212 = 0u;
  v213 = 0u;
  v160 = *(a1 + 16);
  v44 = [v160 countByEnumeratingWithState:&v212 objects:v232 count:16];
  if (!v44)
  {
    goto LABEL_164;
  }

  v161 = 1;
  v162 = *v213;
  do
  {
    v45 = 0;
    v163 = v44;
    do
    {
      if (*v213 != v162)
      {
        objc_enumerationMutation(v160);
      }

      v166 = v45;
      v46 = *(*(&v212 + 1) + 8 * v45);
      context = objc_autoreleasePoolPush();
      obja = [*(a1 + 16) objectForKey:v46];
      v174 = v46;
      if ([v46 hasPrefix:@"CD_"])
      {
        v174 = [v46 substringFromIndex:{objc_msgSend(@"CD_", "length")}];
      }

      v210 = 0u;
      v211 = 0u;
      v208 = 0u;
      v209 = 0u;
      v47 = [obja countByEnumeratingWithState:&v208 objects:v231 count:16];
      if (!v47)
      {
        goto LABEL_161;
      }

      v48 = *v209;
      while (2)
      {
        v49 = 0;
        do
        {
          if (*v209 != v48)
          {
            objc_enumerationMutation(obja);
          }

          v50 = *(*(&v208 + 1) + 8 * v49);
          v51 = objc_autoreleasePoolPush();
          v52 = __PFCloudKitLoggingGetStream();
          v53 = v52;
          v54 = __ckLoggingOverride;
          if (__ckLoggingOverride > 0xFu)
          {
            if (__ckLoggingOverride == 17)
            {
              v55 = 17;
            }

            else
            {
              v55 = 2;
            }

            if (__ckLoggingOverride == 16)
            {
              v54 = OS_LOG_TYPE_ERROR;
            }

            else
            {
              v54 = v55;
            }
          }

          else if (__ckLoggingOverride >= 2u)
          {
            v54 = OS_LOG_TYPE_DEBUG;
          }

          if (os_log_type_enabled(v52, v54))
          {
            *buf = 136315906;
            v234 = "[PFCloudKitImportZoneContext initializeCachesWithManagedObjectContext:andObservedStore:error:]";
            v235 = 1024;
            v236 = 191;
            v237 = 2112;
            v238 = v46;
            v239 = 2112;
            v240 = v50;
            _os_log_impl(&dword_18565F000, v53, v54, "CoreData+CloudKit: %s(%d): Deleting record with id (%@): %@", buf, 0x26u);
          }

          objc_autoreleasePoolPop(v51);
          if ([v46 hasPrefix:@"CD_M2M_"])
          {
            v56 = [PFMirroredRelationship mirroredRelationshipWithDeletedRecordType:v46 recordID:v50 andManagedObjectModel:v183];
            [v181 addObject:v56];
            v57 = [(PFMirroredManyToManyRelationship *)v56 recordTypeToRecordID];
            v207[0] = MEMORY[0x1E69E9820];
            v207[1] = 3221225472;
            v207[2] = __95__PFCloudKitImportZoneContext_initializeCachesWithManagedObjectContext_andObservedStore_error___block_invoke_11;
            v207[3] = &unk_1E6EC1888;
            v207[4] = v185;
            v207[5] = v184;
            v207[6] = a1;
            v207[7] = v50;
            [v57 enumerateKeysAndObjectsUsingBlock:v207];
            goto LABEL_145;
          }

          if ([v46 isEqualToString:@"CDMR"])
          {
            v58 = +[NSCKMirroredRelationship fetchMirroredRelationshipsMatchingPredicate:fromStore:inManagedObjectContext:error:](NSCKMirroredRelationship, [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"ckRecordID", objc_msgSend(v50, "recordName")], v173, v175, &v225);
            if (!v58)
            {
              v90 = objc_autoreleasePoolPush();
              v91 = __PFCloudKitLoggingGetStream();
              v92 = v91;
              if (__ckLoggingOverride == 17)
              {
                v93 = OS_LOG_TYPE_FAULT;
              }

              else
              {
                v93 = OS_LOG_TYPE_ERROR;
              }

              if (os_log_type_enabled(v91, v93))
              {
                *buf = 136315650;
                v234 = "[PFCloudKitImportZoneContext initializeCachesWithManagedObjectContext:andObservedStore:error:]";
                v235 = 1024;
                v236 = 264;
                v237 = 2112;
                v238 = v225;
                _os_log_impl(&dword_18565F000, v92, v93, "CoreData+CloudKit: %s(%d): Import context failed to fetch mirrored relationships during import: %@", buf, 0x1Cu);
              }

              objc_autoreleasePoolPop(v90);
              v161 = 0;
              v94 = v225;
              goto LABEL_161;
            }

            v59 = [v58 lastObject];
            v60 = v59;
            if (!v59)
            {
              v75 = objc_autoreleasePoolPush();
              v76 = __PFCloudKitLoggingGetStream();
              v77 = v76;
              v78 = OS_LOG_TYPE_DEBUG;
              if (__ckLoggingOverride <= 0xFu)
              {
                if (__ckLoggingOverride >= 2u)
                {
                  goto LABEL_141;
                }

LABEL_140:
                v78 = __ckLoggingOverride;
                goto LABEL_141;
              }

              if (__ckLoggingOverride == 16 || __ckLoggingOverride == 17)
              {
                goto LABEL_140;
              }

LABEL_141:
              if (os_log_type_enabled(v76, v78))
              {
                *buf = 136315650;
                v234 = "[PFCloudKitImportZoneContext initializeCachesWithManagedObjectContext:andObservedStore:error:]";
                v235 = 1024;
                v236 = 261;
                v237 = 2112;
                v238 = v50;
                v82 = v77;
                v83 = v78;
                v84 = "CoreData+CloudKit: %s(%d): Skipping mirrored relationship with record id (not found locally): %@";
                v85 = 28;
LABEL_143:
                _os_log_impl(&dword_18565F000, v82, v83, v84, buf, v85);
              }

LABEL_144:
              objc_autoreleasePoolPop(v75);
              goto LABEL_145;
            }

            [v59 setNeedsDeleteBool:1];
            [v60 setIsUploadedBool:1];
            if (![v185 containsObject:{objc_msgSend(v60, "cdEntityName")}])
            {
              v75 = objc_autoreleasePoolPush();
              v79 = __PFCloudKitLoggingGetStream();
              v80 = v79;
              if (__ckLoggingOverride == 17)
              {
                v81 = OS_LOG_TYPE_FAULT;
              }

              else
              {
                v81 = 16 * (__ckLoggingOverride == 16);
              }

              if (os_log_type_enabled(v79, v81))
              {
                *buf = 136316162;
                v234 = "[PFCloudKitImportZoneContext initializeCachesWithManagedObjectContext:andObservedStore:error:]";
                v235 = 1024;
                v236 = 258;
                v237 = 2112;
                v238 = a1;
                v239 = 2112;
                v240 = v60;
                v241 = 2112;
                v242 = v50;
                v82 = v80;
                v83 = v81;
                v84 = "CoreData+CloudKit: %s(%d): %@ - Skipping unknown deleted relationship recordID: %@ - %@";
                v85 = 48;
                goto LABEL_143;
              }

              goto LABEL_144;
            }

            v61 = [objc_msgSend(objc_msgSend(objc_msgSend(v183 "entitiesByName")];
            v62 = [(NSCKMirroredRelationship *)v60 createRecordIDForRecord];
            v63 = [(NSCKMirroredRelationship *)v60 createRecordIDForRelatedRecord];
            v64 = -[PFMirroredManyToManyRelationshipV2 initWithRecordID:forRecordWithID:relatedToRecordWithID:byRelationship:withInverse:andType:]([PFMirroredManyToManyRelationshipV2 alloc], "initWithRecordID:forRecordWithID:relatedToRecordWithID:byRelationship:withInverse:andType:", v50, v62, v63, v61, [v61 inverseRelationship], 1);
            [v181 addObject:v64];
            if (v64)
            {
              relationshipDescription = v64->super._relationshipDescription;
            }

            else
            {
              relationshipDescription = 0;
            }

            v66 = [v184 objectForKey:{-[NSEntityDescription name](-[NSPropertyDescription entity](relationshipDescription, "entity"), "name")}];
            if (!v66)
            {
              v66 = objc_alloc_init(MEMORY[0x1E695DF70]);
              if (v64)
              {
                v67 = v64->super._relationshipDescription;
              }

              else
              {
                v67 = 0;
              }

              [v184 setObject:v66 forKey:{-[NSEntityDescription name](-[NSPropertyDescription entity](v67, "entity"), "name")}];
            }

            if (v64)
            {
              ckRecordID = v64->super._ckRecordID;
            }

            else
            {
              ckRecordID = 0;
            }

            [v66 addObject:ckRecordID];

            if (v64)
            {
              inverseRelationshipDescription = v64->super._inverseRelationshipDescription;
            }

            else
            {
              inverseRelationshipDescription = 0;
            }

            v70 = [v184 objectForKey:{-[NSEntityDescription name](-[NSPropertyDescription entity](inverseRelationshipDescription, "entity"), "name")}];
            if (!v70)
            {
              v70 = objc_alloc_init(MEMORY[0x1E695DF70]);
              if (v64)
              {
                v71 = v64->super._inverseRelationshipDescription;
              }

              else
              {
                v71 = 0;
              }

              [v184 setObject:v70 forKey:{-[NSEntityDescription name](-[NSPropertyDescription entity](v71, "entity"), "name")}];
            }

            if (v64)
            {
              relatedCKRecordID = v64->super._relatedCKRecordID;
            }

            else
            {
              relatedCKRecordID = 0;
            }

            [v70 addObject:relatedCKRecordID];
          }

          else
          {
            if (![v185 containsObject:v174])
            {
              if ([v46 isEqualToString:getCloudKitCKRecordTypeShare()])
              {
                [v169 addObject:v50];
                goto LABEL_145;
              }

              v75 = objc_autoreleasePoolPush();
              v86 = __PFCloudKitLoggingGetStream();
              v87 = v86;
              if (__ckLoggingOverride == 17)
              {
                v88 = OS_LOG_TYPE_FAULT;
              }

              else
              {
                v88 = 16 * (__ckLoggingOverride == 16);
              }

              if (os_log_type_enabled(v86, v88))
              {
                *buf = 136316162;
                v234 = "[PFCloudKitImportZoneContext initializeCachesWithManagedObjectContext:andObservedStore:error:]";
                v235 = 1024;
                v236 = 291;
                v237 = 2112;
                v238 = a1;
                v239 = 2112;
                v240 = v46;
                v241 = 2112;
                v242 = v50;
                _os_log_impl(&dword_18565F000, v87, v88, "CoreData+CloudKit: %s(%d): %@ - Skipping unknown deleted record: %@ - %@", buf, 0x30u);
              }

              goto LABEL_144;
            }

            v73 = [v184 objectForKey:v46];
            if (!v73)
            {
              v73 = objc_alloc_init(MEMORY[0x1E695DF70]);
              [v184 setObject:v73 forKey:v46];
            }

            [v73 addObject:v50];

            v74 = [v171 objectForKey:v46];
            if (!v74)
            {
              v74 = objc_alloc_init(MEMORY[0x1E695DFA8]);
              [v171 setObject:v74 forKey:v46];
            }

            [v74 addObject:v50];
          }

LABEL_145:
          ++v49;
        }

        while (v47 != v49);
        v89 = [obja countByEnumeratingWithState:&v208 objects:v231 count:16];
        v47 = v89;
        if (v89)
        {
          continue;
        }

        break;
      }

LABEL_161:
      objc_autoreleasePoolPop(context);
      v45 = v166 + 1;
    }

    while (v166 + 1 != v163);
    v44 = [v160 countByEnumeratingWithState:&v212 objects:v232 count:16];
  }

  while (v44);
  if ((v161 & 1) == 0)
  {
    v148 = v225;
    v145 = v225;
    if (!v225)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v234 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitImportZoneContext.m";
        v235 = 1024;
        v236 = 448;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v147 = _PFLogGetLogStream(17);
      if (!os_log_type_enabled(v147, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_248;
      }

      *buf = 136315394;
      v234 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitImportZoneContext.m";
      v235 = 1024;
      v236 = 448;
      goto LABEL_259;
    }

LABEL_243:
    if (a4)
    {
      v172 = 0;
      v144 = 0;
      *a4 = v145;

      goto LABEL_262;
    }

    goto LABEL_248;
  }

LABEL_164:
  v95 = [NSCKMirroredRelationship fetchMirroredRelationshipsMatchingRelatingRecords:MEMORY[0x1E695E0F0] andRelatingRecordIDs:v173 fromStore:v175 inManagedObjectContext:&v225 error:?];
  v96 = v95;
  if (!v95)
  {
    v145 = v225;
    if (!v225)
    {
      v146 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v234 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitImportZoneContext.m";
        v235 = 1024;
        v236 = 444;
        _os_log_error_impl(&dword_18565F000, v146, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v147 = _PFLogGetLogStream(17);
      if (!os_log_type_enabled(v147, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_248;
      }

      *buf = 136315394;
      v234 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitImportZoneContext.m";
      v235 = 1024;
      v236 = 444;
LABEL_259:
      _os_log_fault_impl(&dword_18565F000, v147, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
LABEL_248:
      v172 = 0;
      v144 = 0;

      goto LABEL_262;
    }

    goto LABEL_243;
  }

  v205 = 0u;
  v206 = 0u;
  v203 = 0u;
  v204 = 0u;
  v97 = [v95 countByEnumeratingWithState:&v203 objects:v230 count:16];
  if (v97)
  {
    v98 = *v204;
    do
    {
      for (k = 0; k != v97; ++k)
      {
        if (*v204 != v98)
        {
          objc_enumerationMutation(v96);
        }

        v100 = *(*(&v203 + 1) + 8 * k);
        v101 = objc_autoreleasePoolPush();
        v102 = [(NSCKMirroredRelationship *)v100 createRecordIDForRecord];
        v103 = [(NSCKMirroredRelationship *)v100 createRecordIDForRelatedRecord];
        v104 = [v184 objectForKey:{objc_msgSend(v100, "cdEntityName")}];
        if (!v104)
        {
          v104 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [v184 setObject:v104 forKey:{objc_msgSend(v100, "cdEntityName")}];
        }

        [v104 addObject:v102];

        v105 = [v184 objectForKey:{objc_msgSend(v100, "relatedEntityName")}];
        if (!v105)
        {
          v105 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [v184 setObject:v105 forKey:{objc_msgSend(v100, "relatedEntityName")}];
        }

        [v105 addObject:v103];

        objc_autoreleasePoolPop(v101);
      }

      v97 = [v96 countByEnumeratingWithState:&v203 objects:v230 count:16];
    }

    while (v97);
  }

  v176 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v201 = 0u;
  v202 = 0u;
  v199 = 0u;
  v200 = 0u;
  v172 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:{objc_msgSend(v184, "allKeys")}];
  v106 = [v172 countByEnumeratingWithState:&v199 objects:v229 count:16];
  if (v106)
  {
    objb = *v200;
LABEL_178:
    v107 = 0;
    while (1)
    {
      if (*v200 != objb)
      {
        objc_enumerationMutation(v172);
      }

      v108 = [v184 objectForKey:*(*(&v199 + 1) + 8 * v107)];
      v109 = [NSCKRecordMetadata createMapOfMetadataMatchingRecords:v108 andRecordIDs:v173 inStore:v175 withManagedObjectContext:&v225 error:?];
      if (v109)
      {
        v197 = 0u;
        v198 = 0u;
        v195 = 0u;
        v196 = 0u;
        v110 = [v108 countByEnumeratingWithState:&v195 objects:v228 count:16];
        if (v110)
        {
          v111 = *v196;
          do
          {
            for (m = 0; m != v110; ++m)
            {
              if (*v196 != v111)
              {
                objc_enumerationMutation(v108);
              }

              v113 = *(*(&v195 + 1) + 8 * m);
              v114 = [v109 objectForKey:v113];
              if (v114)
              {
                v115 = [(NSCKRecordMetadata *)v114 createObjectIDForLinkedRow];
                [(PFCloudKitImportZoneContext *)a1 addObjectID:v115 toCache:v176 andRecordID:v113];
              }
            }

            v110 = [v108 countByEnumeratingWithState:&v195 objects:v228 count:16];
          }

          while (v110);
        }
      }

      else
      {
        v116 = v225;
      }

      if (!v109)
      {
        break;
      }

      if (++v107 == v106)
      {
        v106 = [v172 countByEnumeratingWithState:&v199 objects:v229 count:16];
        if (v106)
        {
          goto LABEL_178;
        }

        goto LABEL_196;
      }
    }

LABEL_250:
    if (v225)
    {
      if (a4)
      {
        *a4 = v225;
      }
    }

    else
    {
      v151 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v234 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitImportZoneContext.m";
        v235 = 1024;
        v236 = 439;
        _os_log_error_impl(&dword_18565F000, v151, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v152 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v152, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v234 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitImportZoneContext.m";
        v235 = 1024;
        v236 = 439;
        _os_log_fault_impl(&dword_18565F000, v152, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    v144 = 0;
    v153 = v225;
  }

  else
  {
LABEL_196:
    v117 = [NSCKImportOperation fetchUnfinishedImportOperationsInStore:v173 withManagedObjectContext:v175 error:&v225];
    *(a1 + 88) = v117;
    if (!v117)
    {
      v150 = v225;
      goto LABEL_250;
    }

    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    contexta = v117;
    v118 = [v117 countByEnumeratingWithState:&v191 objects:v227 count:16];
    if (v118)
    {
      v167 = *v192;
      do
      {
        v119 = 0;
        v168 = v118;
        do
        {
          if (*v192 != v167)
          {
            objc_enumerationMutation(contexta);
          }

          v170 = v119;
          v120 = *(*(&v191 + 1) + 8 * v119);
          v187 = 0u;
          v188 = 0u;
          v189 = 0u;
          v190 = 0u;
          v121 = [v120 pendingRelationships];
          v122 = [v121 countByEnumeratingWithState:&v187 objects:v226 count:16];
          if (v122)
          {
            objc = *v188;
            do
            {
              for (n = 0; n != v122; ++n)
              {
                if (*v188 != objc)
                {
                  objc_enumerationMutation(v121);
                }

                v124 = *(*(&v187 + 1) + 8 * n);
                v125 = [objc_msgSend(v183 "entitiesByName")];
                v126 = [objc_msgSend(v183 "entitiesByName")];
                if (v125)
                {
                  v127 = v126 == 0;
                }

                else
                {
                  v127 = 1;
                }

                if (v127)
                {
                  v128 = objc_autoreleasePoolPush();
                  v129 = __PFCloudKitLoggingGetStream();
                  v130 = v129;
                  if (__ckLoggingOverride == 17)
                  {
                    v131 = 17;
                  }

                  else
                  {
                    v131 = 1;
                  }

                  if (__ckLoggingOverride == 16)
                  {
                    v131 = 16;
                  }

                  if (__ckLoggingOverride)
                  {
                    v132 = v131;
                  }

                  else
                  {
                    v132 = OS_LOG_TYPE_DEFAULT;
                  }

                  if (os_log_type_enabled(v129, v132))
                  {
                    *buf = 136315650;
                    v234 = "[PFCloudKitImportZoneContext initializeCachesWithManagedObjectContext:andObservedStore:error:]";
                    v235 = 1024;
                    v236 = 403;
                    v237 = 2112;
                    v238 = v124;
                    _os_log_impl(&dword_18565F000, v130, v132, "CoreData+CloudKit: %s(%d): Deleting pending relationship because it's entities are no longer in the model: %@", buf, 0x1Cu);
                  }

                  objc_autoreleasePoolPop(v128);
                  [v175 deleteObject:v124];
                }

                else
                {
                  v133 = [PFCloudKitSerializer recordTypeForEntity:v125];
                  v134 = [objc_alloc(getCloudKitCKRecordZoneIDClass[0]()) initWithZoneName:objc_msgSend(v124 ownerName:{"recordZoneName"), objc_msgSend(v124, "recordZoneOwnerName")}];
                  v135 = [objc_alloc(getCloudKitCKRecordIDClass[0]()) initWithRecordName:objc_msgSend(v124 zoneID:{"recordName"), v134}];
                  v136 = [objc_alloc(getCloudKitCKRecordZoneIDClass[0]()) initWithZoneName:objc_msgSend(v124 ownerName:{"relatedRecordZoneName"), objc_msgSend(v124, "relatedRecordZoneOwnerName")}];
                  v137 = [objc_alloc(getCloudKitCKRecordIDClass[0]()) initWithRecordName:objc_msgSend(v124 zoneID:{"relatedRecordName"), v136}];
                  v138 = [v134 isEqual:v136];
                  if ((v138 & 1) == 0)
                  {
                    v139 = _PFLogGetLogStream(17);
                    if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v234 = v124;
                      _os_log_error_impl(&dword_18565F000, v139, OS_LOG_TYPE_ERROR, "CoreData: fault: Import is attempting to link objects across zones: %@\n", buf, 0xCu);
                    }

                    v140 = _PFLogGetLogStream(17);
                    if (os_log_type_enabled(v140, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 138412290;
                      v234 = v124;
                      _os_log_fault_impl(&dword_18565F000, v140, OS_LOG_TYPE_FAULT, "CoreData: Import is attempting to link objects across zones: %@", buf, 0xCu);
                    }
                  }

                  [PFCloudKitImportZoneContext addUnresolvedRecordID:v135 forRecordType:v133 toCache:*(a1 + 72)];
                  v141 = +[PFCloudKitSerializer recordTypeForEntity:](PFCloudKitSerializer, [objc_msgSend(v183 "entitiesByName")]);
                  [PFCloudKitImportZoneContext addUnresolvedRecordID:v137 forRecordType:v141 toCache:*(a1 + 72)];
                  if (([objc_msgSend(v171 objectForKey:{v133), "containsObject:", v135}] & 1) != 0 || objc_msgSend(objc_msgSend(v171, "objectForKey:", v141), "containsObject:", v137))
                  {
                    [v175 deleteObject:v124];
                  }
                }
              }

              v122 = [v121 countByEnumeratingWithState:&v187 objects:v226 count:16];
            }

            while (v122);
          }

          v119 = v170 + 1;
        }

        while (v170 + 1 != v168);
        v118 = [contexta countByEnumeratingWithState:&v191 objects:v227 count:16];
      }

      while (v118);
    }

    *(a1 + 64) = v176;
    *(a1 + 32) = [v159 copy];
    *(a1 + 48) = [v181 copy];
    *(a1 + 56) = [v157 copy];
    *(a1 + 40) = v158;
    *(a1 + 112) = [v169 copy];
    v142 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v143 = *(a1 + 16);
    v186[0] = MEMORY[0x1E69E9820];
    v186[1] = 3221225472;
    v186[2] = __95__PFCloudKitImportZoneContext_initializeCachesWithManagedObjectContext_andObservedStore_error___block_invoke_21;
    v186[3] = &unk_1E6EC18B0;
    v186[4] = a1;
    v186[5] = v142;
    [v143 enumerateKeysAndObjectsUsingBlock:v186];
    *(a1 + 24) = [v142 copy];

    v144 = 1;
  }

LABEL_262:
LABEL_263:
  v154 = *MEMORY[0x1E69E9840];
  return v144 & 1;
}

void __95__PFCloudKitImportZoneContext_initializeCachesWithManagedObjectContext_andObservedStore_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) containsObject:a2])
  {
    v6 = [*(a1 + 40) objectForKey:a2];
    if (!v6)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [*(a1 + 40) setObject:v15 forKey:a2];
      v6 = v15;
    }

    v16 = v6;
    [v6 addObjectsFromArray:a3];
    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v10 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v11 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v11 = 16 * (__ckLoggingOverride == 16);
    }

    if (os_log_type_enabled(Stream, v11))
    {
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      *buf = 136315906;
      v18 = "[PFCloudKitImportZoneContext initializeCachesWithManagedObjectContext:andObservedStore:error:]_block_invoke";
      v19 = 1024;
      v20 = 156;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_18565F000, v10, v11, "CoreData+CloudKit: %s(%d): %@ - Skipping unknown updated relationship record: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v8);
    v14 = *MEMORY[0x1E69E9840];
  }
}

void __95__PFCloudKitImportZoneContext_initializeCachesWithManagedObjectContext_andObservedStore_error___block_invoke_11(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) containsObject:a2])
  {
    v6 = [*(a1 + 40) objectForKey:a2];
    if (!v6)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [*(a1 + 40) setObject:v15 forKey:a2];
      v6 = v15;
    }

    v16 = v6;
    [v6 addObjectsFromArray:a3];
    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v10 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v11 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v11 = 16 * (__ckLoggingOverride == 16);
    }

    if (os_log_type_enabled(Stream, v11))
    {
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      *buf = 136316162;
      v18 = "[PFCloudKitImportZoneContext initializeCachesWithManagedObjectContext:andObservedStore:error:]_block_invoke";
      v19 = 1024;
      v20 = 210;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = a2;
      v25 = 2112;
      v26 = v13;
      _os_log_impl(&dword_18565F000, v10, v11, "CoreData+CloudKit: %s(%d): %@ - Skipping unknown deleted relationship recordID: %@ - %@", buf, 0x30u);
    }

    objc_autoreleasePoolPop(v8);
    v14 = *MEMORY[0x1E69E9840];
  }
}

- (uint64_t)addObjectID:(void *)a3 toCache:(uint64_t)a4 andRecordID:
{
  if (result)
  {
    v7 = result;
    v8 = [a2 entity];
    v9 = [v8 name];
    do
    {
      [(PFCloudKitImportZoneContext *)v7 addObjectID:a2 toCache:a3 forRecordWithType:v9 andUniqueIdentifier:a4];
      v8 = [v8 superentity];
      result = [v8 name];
      v9 = result;
    }

    while (result);
  }

  return result;
}

- (void)addUnresolvedRecordID:(uint64_t)a1 forRecordType:(uint64_t)a2 toCache:(void *)a3
{
  v6 = [a3 objectForKey:a2];
  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [a3 setObject:v7 forKey:a2];
    v6 = v7;
  }

  v8 = v6;
  [v6 addObject:a1];
}

uint64_t __95__PFCloudKitImportZoneContext_initializeCachesWithManagedObjectContext_andObservedStore_error___block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v17 = *MEMORY[0x1E69E9840];
  if ([a2 hasPrefix:@"CD_"])
  {
    v4 = [v4 substringFromIndex:{objc_msgSend(@"CD_", "length")}];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  result = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = [objc_msgSend(*(*(a1 + 32) + 64) objectForKey:{v4), "objectForKey:", *(*(&v12 + 1) + 8 * v9)}];
        if (v10)
        {
          [*(a1 + 40) addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      result = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v7 = result;
    }

    while (result);
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)registerObject:(void *)a3 forInsertedRecord:(void *)a4 withMetadata:
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    -[PFCloudKitImportZoneContext addObjectID:toCache:andRecordID:](a1, [a2 objectID], *(a1 + 64), objc_msgSend(a3, "recordID"));
    v7 = [_PFCKInsertedMetadataLink alloc];
    if (v7)
    {
      *v17 = v7;
      *&v17[8] = _PFCKInsertedMetadataLink;
      v8 = objc_msgSendSuper2(v17, sel_init);
      if (v8)
      {
        v8[2] = a2;
        v8[1] = a4;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v11 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v12 = 17;
    }

    else
    {
      v12 = 2;
    }

    if (__ckLoggingOverride == 16)
    {
      v12 = 16;
    }

    if (__ckLoggingOverride == 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (!__ckLoggingOverride)
    {
      v13 = 0;
    }

    if (__ckLoggingOverride <= 0xFu)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    if (os_log_type_enabled(Stream, v14))
    {
      v15 = [a2 objectID];
      *v17 = 136315906;
      *&v17[4] = "[PFCloudKitImportZoneContext registerObject:forInsertedRecord:withMetadata:]";
      *&v17[12] = 1024;
      *&v17[14] = 497;
      v18 = 2112;
      v19 = v15;
      v20 = 2112;
      v21 = a4;
      _os_log_impl(&dword_18565F000, v11, v14, "CoreData+CloudKit: %s(%d): Linking %@ to %@", v17, 0x26u);
    }

    objc_autoreleasePoolPop(v9);
    [*(a1 + 80) addObject:v8];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (uint64_t)addMirroredRelationshipToLink:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    [*(result + 40) addObject:a2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [(PFMirroredOneToManyRelationship *)a2 recordTypesToRecordIDs];
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __61__PFCloudKitImportZoneContext_addMirroredRelationshipToLink___block_invoke;
      v14 = &unk_1E6EC18D8;
      v15 = v3;
      v5 = &v11;
    }

    else
    {
      objc_opt_class();
      result = objc_opt_isKindOfClass();
      if ((result & 1) == 0)
      {
        return result;
      }

      v4 = [(PFMirroredManyToManyRelationship *)a2 recordTypeToRecordID];
      v6 = MEMORY[0x1E69E9820];
      v7 = 3221225472;
      v8 = __61__PFCloudKitImportZoneContext_addMirroredRelationshipToLink___block_invoke_2;
      v9 = &unk_1E6EC18D8;
      v10 = v3;
      v5 = &v6;
    }

    return [v4 enumerateKeysAndObjectsUsingBlock:{v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15}];
  }

  return result;
}

uint64_t __61__PFCloudKitImportZoneContext_addMirroredRelationshipToLink___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  result = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if (![objc_msgSend(*(*(a1 + 32) + 64) objectForKey:{a2), "objectForKey:", v10}])
        {
          v11 = [*(*(a1 + 32) + 72) objectForKey:a2];
          if (!v11)
          {
            v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [*(*(a1 + 32) + 72) setObject:v11 forKey:a2];
          }

          [v11 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      result = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v7 = result;
    }

    while (result);
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __61__PFCloudKitImportZoneContext_addMirroredRelationshipToLink___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  result = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if (![objc_msgSend(*(*(a1 + 32) + 64) objectForKey:{a2), "objectForKey:", v10}])
        {
          v11 = [*(*(a1 + 32) + 72) objectForKey:a2];
          if (!v11)
          {
            v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [*(*(a1 + 32) + 72) setObject:v11 forKey:a2];
          }

          [v11 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      result = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v7 = result;
    }

    while (result);
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)populateUnresolvedIDsInStore:(void *)a3 withManagedObjectContext:(void *)a4 error:
{
  v26 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 1;
    v12 = 0;
    v13 = &v12;
    v14 = 0x3052000000;
    v15 = __Block_byref_object_copy__5;
    v16 = __Block_byref_object_dispose__5;
    v17 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __91__PFCloudKitImportZoneContext_populateUnresolvedIDsInStore_withManagedObjectContext_error___block_invoke;
    v11[3] = &unk_1E6EC1900;
    v11[4] = a1;
    v11[5] = a2;
    v11[6] = a3;
    v11[7] = &v12;
    v11[8] = &v18;
    [a3 performBlockAndWait:v11];
    if ((v19[3] & 1) == 0)
    {
      v8 = v13[5];
      if (v8)
      {
        if (a4)
        {
          *a4 = v8;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v23 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitImportZoneContext.m";
          v24 = 1024;
          v25 = 590;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v10 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v23 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitImportZoneContext.m";
          v24 = 1024;
          v25 = 590;
          _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }
    }

    v13[5] = 0;
    v5 = *(v19 + 24);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5 & 1;
}

void __91__PFCloudKitImportZoneContext_populateUnresolvedIDsInStore_withManagedObjectContext_error___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v4 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v5 = 17;
  }

  else
  {
    v5 = 2;
  }

  if (__ckLoggingOverride == 16)
  {
    v5 = 16;
  }

  if (__ckLoggingOverride == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!__ckLoggingOverride)
  {
    v6 = 0;
  }

  if (__ckLoggingOverride <= 0xFu)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (os_log_type_enabled(Stream, v7))
  {
    v8 = *(*(a1 + 32) + 72);
    *buf = 136315650;
    v39 = "[PFCloudKitImportZoneContext populateUnresolvedIDsInStore:withManagedObjectContext:error:]_block_invoke";
    v40 = 1024;
    v41 = 551;
    v42 = 2112;
    v43 = v8;
    _os_log_impl(&dword_18565F000, v4, v7, "CoreData+CloudKit: %s(%d): Populating unresolved relationships:\n%@", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v2);
  obj = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:{objc_msgSend(*(*(a1 + 32) + 72), "allKeys")}];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v9)
  {
    v27 = *v33;
LABEL_18:
    v10 = 0;
    v26 = v9;
    while (1)
    {
      if (*v33 != v27)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v32 + 1) + 8 * v10);
      v12 = objc_autoreleasePoolPush();
      v13 = [*(*(a1 + 32) + 72) objectForKey:v11];
      v14 = [NSCKRecordMetadata createMapOfMetadataMatchingRecords:v13 andRecordIDs:*(a1 + 40) inStore:*(a1 + 48) withManagedObjectContext:(*(*(a1 + 56) + 8) + 40) error:?];
      if (v14)
      {
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v15 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v15)
        {
          v16 = *v29;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v29 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v28 + 1) + 8 * i);
              v19 = [v14 objectForKey:v18];
              v20 = v19;
              if (v19 && ([v19 isInserted] & 1) == 0)
              {
                v21 = [(NSCKRecordMetadata *)v20 createObjectIDForLinkedRow];
                [(PFCloudKitImportZoneContext *)*(a1 + 32) addObjectID:v21 toCache:*(*(a1 + 32) + 64) andRecordID:v18];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v15);
        }
      }

      else
      {
        *(*(*(a1 + 64) + 8) + 24) = 0;
        v22 = *(*(*(a1 + 56) + 8) + 40);
      }

      v23 = *(*(*(a1 + 64) + 8) + 24);
      objc_autoreleasePoolPop(v12);
      if (!v23)
      {
        break;
      }

      if (++v10 == v26)
      {
        v9 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v9)
        {
          goto LABEL_18;
        }

        break;
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)addObjectID:(void *)a3 toCache:(uint64_t)a4 forRecordWithType:(uint64_t)a5 andUniqueIdentifier:
{
  if (a1)
  {
    v9 = [a3 objectForKey:a4];
    if (!v9)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [a3 setObject:v10 forKey:a4];
      v9 = v10;
    }

    v11 = v9;
    [v9 setObject:a2 forKey:a5];
  }
}

- (BOOL)linkInsertedObjectsAndMetadataInContext:(uint64_t *)a3 error:
{
  v50 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_41;
  }

  v5 = result;
  v38 = 0;
  if ([a2 obtainPermanentIDsForObjects:objc_msgSend(objc_msgSend(a2 error:{"insertedObjects"), "allObjects"), &v38}])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = *(v5 + 80);
    v6 = [obj countByEnumeratingWithState:&v34 objects:v49 count:16];
    if (v6)
    {
      v7 = v6;
      v30 = a3;
      v8 = *v35;
      v32 = *MEMORY[0x1E696A250];
      v31 = *MEMORY[0x1E696A588];
      v9 = 1;
      do
      {
        v10 = 0;
        do
        {
          if (*v35 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v34 + 1) + 8 * v10);
          if (v11)
          {
            v12 = *(v11 + 16);
          }

          else
          {
            v12 = 0;
          }

          v13 = [v12 objectID];
          if ([v13 isTemporaryID])
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              v24 = [a2 insertedObjects];
              *buf = 138413058;
              v42 = v13;
              v43 = 2112;
              v44 = v11;
              v45 = 2112;
              v46 = v24;
              v47 = 2112;
              v48 = v38;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Found temporary objectID for metadata link: %@\n%@\n%@\n%@\n", buf, 0x2Au);
            }

            v15 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
            {
              v25 = [a2 insertedObjects];
              *buf = 138413058;
              v42 = v13;
              v43 = 2112;
              v44 = v11;
              v45 = 2112;
              v46 = v25;
              v47 = 2112;
              v48 = v38;
              _os_log_fault_impl(&dword_18565F000, v15, OS_LOG_TYPE_FAULT, "CoreData: Found temporary objectID for metadata link: %@\n%@\n%@\n%@", buf, 0x2Au);
            }

            v16 = MEMORY[0x1E696ABC0];
            v39 = v31;
            v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Found temporary objectID for metadata link: %@\n%@\n%@", v13, v11, objc_msgSend(a2, "insertedObjects")];
            v9 = 0;
            v38 = [v16 errorWithDomain:v32 code:134410 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v40, &v39, 1)}];
          }

          else
          {
            v17 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v13, "_referenceData64")}];
            if (v11)
            {
              v18 = *(v11 + 8);
            }

            else
            {
              v18 = 0;
            }

            [v18 setEntityPK:v17];
            v19 = _sqlEntityForEntityDescription([objc_msgSend(v13 "persistentStore")], objc_msgSend(v13, "entity"));
            if (v19)
            {
              v20 = *(v19 + 184);
            }

            else
            {
              v20 = 0;
            }

            v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v20];
            if (v11)
            {
              [*(v11 + 8) setEntityId:v21];
              v22 = *(v11 + 8);
            }

            else
            {
              [0 setEntityId:v21];
              v22 = 0;
            }

            v23 = [(NSCKRecordMetadata *)v22 createRecordID];
            [(PFCloudKitImportZoneContext *)v5 addObjectID:v13 toCache:*(v5 + 64) andRecordID:v23];
          }

          ++v10;
        }

        while (v7 != v10);
        v26 = [obj countByEnumeratingWithState:&v34 objects:v49 count:16];
        v7 = v26;
      }

      while (v26);

      *(v5 + 80) = 0;
      a3 = v30;
      if ((v9 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {

      *(v5 + 80) = 0;
    }

    result = 1;
    goto LABEL_41;
  }

LABEL_31:
  if (v38)
  {
    if (a3)
    {
      result = 0;
      *a3 = v38;
      goto LABEL_41;
    }

LABEL_38:
    result = 0;
    goto LABEL_41;
  }

  v27 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v42 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitImportZoneContext.m";
    v43 = 1024;
    LODWORD(v44) = 674;
    _os_log_error_impl(&dword_18565F000, v27, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v28 = _PFLogGetLogStream(17);
  result = os_log_type_enabled(v28, OS_LOG_TYPE_FAULT);
  if (result)
  {
    *buf = 136315394;
    v42 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitImportZoneContext.m";
    v43 = 1024;
    LODWORD(v44) = 674;
    _os_log_fault_impl(&dword_18565F000, v28, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_38;
  }

LABEL_41:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

@end