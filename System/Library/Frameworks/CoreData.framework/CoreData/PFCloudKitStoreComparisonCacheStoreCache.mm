@interface PFCloudKitStoreComparisonCacheStoreCache
- (PFCloudKitStoreComparisonCacheStoreCache)init;
- (uint64_t)createRecordIDForRecordName:(uint64_t)name inZoneWithName:(uint64_t)withName ownerName:(uint64_t)ownerName inStore:(void *)store;
- (uint64_t)createRecordZoneIDForZoneName:(uint64_t)name ownerName:(uint64_t)ownerName inStore:(void *)store;
- (uint64_t)populateForStore:(void *)store inContext:(void *)context error:;
- (void)dealloc;
@end

@implementation PFCloudKitStoreComparisonCacheStoreCache

- (uint64_t)populateForStore:(void *)store inContext:(void *)context error:
{
  v144 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    v81 = 0;
    goto LABEL_106;
  }

  selfCopy4 = self;
  v133 = 0;
  if (*(self + 120) == 1)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [NSCKMetadataEntry entryForKey:a2 fromStore:store inManagedObjectContext:&v133 error:?];
    if (v7)
    {
      *(selfCopy4 + 128) = [v7 stringValue];
    }

    else
    {
      v38 = v133;
      if (v133)
      {
        goto LABEL_95;
      }
    }

    v8 = [store executeFetchRequest:+[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest error:{"fetchRequestWithEntityName:", +[NSCKDatabaseMetadata entityPath](NSCKDatabaseMetadata, "entityPath")), &v133}];
    if (v8)
    {
      v9 = v8;
      if ([v8 count] >= 2)
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v135 = v9;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Metadata corruption found, store appears to have been used with multiple CloudKit databases: %@\n", buf, 0xCu);
        }

        v11 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v135 = v9;
          _os_log_fault_impl(&dword_18565F000, v11, OS_LOG_TYPE_FAULT, "CoreData: Metadata corruption found, store appears to have been used with multiple CloudKit databases: %@", buf, 0xCu);
        }
      }

      lastObject = [v9 lastObject];
      if (lastObject)
      {
        *(selfCopy4 + 136) = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:{objc_msgSend(lastObject, "databaseScope")}];
      }

      objc_autoreleasePoolPop(v6);
      v6 = objc_autoreleasePoolPush();
      v13 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordMetadata entityPath]);
      [(NSFetchRequest *)v13 setFetchBatchSize:50];
      v14 = [store executeFetchRequest:v13 error:&v133];
      if (v14)
      {
        v100 = v6;
        obj = v14;
        v89 = a2;
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v108 = [v14 countByEnumeratingWithState:&v129 objects:v143 count:16];
        if (v108)
        {
          v105 = *v130;
          do
          {
            for (i = 0; i != v108; ++i)
            {
              if (*v130 != v105)
              {
                objc_enumerationMutation(obj);
              }

              v16 = *(*(&v129 + 1) + 8 * i);
              context = objc_autoreleasePoolPush();
              v17 = [objc_msgSend(v16 "objectID")];
              identifier = [v17 identifier];
              _persistentStoreCoordinator = [v17 _persistentStoreCoordinator];
              ckRecordName = [v16 ckRecordName];
              v21 = [objc_msgSend(v16 "recordZone")];
              v22 = [objc_msgSend(v16 "recordZone")];
              [objc_msgSend(v16 "objectID")];
              v23 = [PFCloudKitStoreComparisonCacheStoreCache createRecordIDForRecordName:self inZoneWithName:ckRecordName ownerName:v21 inStore:v22];
              v24 = [objc_msgSend(v17 "model")];
              v25 = [_persistentStoreCoordinator managedObjectIDForURIRepresentation:{objc_msgSend(MEMORY[0x1E695DFF8], "URLWithString:", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"x-coredata://%@/%@/p%@", identifier, objc_msgSend(objc_msgSend(v24, "entityDescription"), "name"), objc_msgSend(v16, "entityPK")))}];
              [*(self + 64) setObject:v16 forKey:v25];
              [*(self + 88) setObject:v23 forKey:v25];
              [*(self + 56) setObject:v16 forKey:v23];
              v26 = [*(self + 112) objectForKey:{objc_msgSend(v23, "zoneID")}];
              if (!v26)
              {
                v26 = objc_alloc_init(MEMORY[0x1E695DFA8]);
                [*(self + 112) setObject:v26 forKey:{objc_msgSend(v23, "zoneID")}];
              }

              [v26 addObject:v23];

              [*(self + 72) addObject:v23];
              [*(self + 80) setObject:v25 forKey:v23];

              objc_autoreleasePoolPop(context);
            }

            v108 = [obj countByEnumeratingWithState:&v129 objects:v143 count:16];
          }

          while (v108);
        }

        objc_autoreleasePoolPop(v100);
        v6 = objc_autoreleasePoolPush();
        v27 = [store executeFetchRequest:+[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest error:{"fetchRequestWithEntityName:", +[NSCKRecordZoneMetadata entityPath](NSCKRecordZoneMetadata, "entityPath")), &v133}];
        if (v27)
        {
          v28 = v27;
          v127 = 0u;
          v128 = 0u;
          v125 = 0u;
          v126 = 0u;
          v29 = [v27 countByEnumeratingWithState:&v125 objects:v142 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v126;
            do
            {
              for (j = 0; j != v30; ++j)
              {
                if (*v126 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                v33 = *(*(&v125 + 1) + 8 * j);
                v34 = [objc_msgSend(v33 "objectID")];
                v35 = -[PFCloudKitStoreComparisonCacheStoreCache createRecordZoneIDForZoneName:ownerName:inStore:](self, [v33 ckRecordZoneName], objc_msgSend(v33, "ckOwnerName"));
                [*(self + 96) addObject:v35];
                if ([v33 encodedShareAsset])
                {
                  [*(self + 104) addObject:v35];
                }
              }

              v30 = [v28 countByEnumeratingWithState:&v125 objects:v142 count:16];
            }

            while (v30);
          }

          objc_autoreleasePoolPop(v6);
          selfCopy4 = self;
          a2 = v89;
          goto LABEL_34;
        }
      }
    }

    v38 = v133;
LABEL_95:
    v82 = v38;
    objc_autoreleasePoolPop(v6);
    goto LABEL_96;
  }

LABEL_34:
  v36 = [objc_msgSend(a2 "persistentStoreCoordinator")];
  if ([objc_msgSend(a2 "configurationName")])
  {
    entities = [v36 entitiesForConfiguration:{objc_msgSend(a2, "configurationName")}];
  }

  else
  {
    entities = [v36 entities];
  }

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v92 = entities;
  v94 = [entities countByEnumeratingWithState:&v121 objects:v141 count:16];
  if (v94)
  {
    v101 = v36;
    v90 = a2;
    v93 = *v122;
    while (2)
    {
      v39 = 0;
      do
      {
        if (*v122 != v93)
        {
          objc_enumerationMutation(v92);
        }

        v40 = *(*(&v121 + 1) + 8 * v39);
        v41 = objc_autoreleasePoolPush();
        v42 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", [v40 name]);
        v43 = [objc_msgSend(v40 "propertiesByName")];
        if (v43)
        {
          v140 = @"ckRecordID";
          -[NSFetchRequest setPropertiesToFetch:](v42, "setPropertiesToFetch:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v140 count:1]);
          if ([objc_msgSend(v40 "propertiesByName")])
          {
            [(NSFetchRequest *)v42 setPropertiesToFetch:[(NSArray *)[(NSFetchRequest *)v42 propertiesToFetch] arrayByAddingObject:@"ckRecordSystemFields"]];
          }
        }

        v44 = [store executeFetchRequest:v42 error:&v133];
        if (!v44)
        {
          v59 = v133;
          objc_autoreleasePoolPop(v41);
          v97 = 0;
          goto LABEL_69;
        }

        v45 = v44;
        v96 = v41;
        v98 = v39;
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v46 = [v44 countByEnumeratingWithState:&v117 objects:v139 count:16];
        if (v46)
        {
          v47 = v46;
          v48 = *v118;
          v106 = v45;
          do
          {
            for (k = 0; k != v47; ++k)
            {
              if (*v118 != v48)
              {
                objc_enumerationMutation(v106);
              }

              v50 = *(*(&v117 + 1) + 8 * k);
              v51 = objc_autoreleasePoolPush();
              objectID = [v50 objectID];
              v53 = objectID;
              if (v43)
              {
                v54 = [v50 valueForKey:@"ckRecordID"];
                if (!v54)
                {
                  uRIRepresentation = [v53 URIRepresentation];
                  selfCopy4 = self;
                  v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", objc_msgSend(objc_msgSend(uRIRepresentation, "URLByDeletingLastPathComponent"), "lastPathComponent"), objc_msgSend(uRIRepresentation, "lastPathComponent")];
                }

                if ([objc_msgSend(objc_msgSend(v50 "entity")] && objc_msgSend(v50, "valueForKey:", @"ckRecordSystemFields"))
                {
                  v56 = _PFLogGetLogStream(17);
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v135 = v50;
                    _os_log_error_impl(&dword_18565F000, v56, OS_LOG_TYPE_ERROR, "CoreData: fault: System fields shouldn't be set anymore: %@\n", buf, 0xCu);
                  }

                  v57 = _PFLogGetLogStream(17);
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 138412290;
                    v135 = v50;
                    _os_log_fault_impl(&dword_18565F000, v57, OS_LOG_TYPE_FAULT, "CoreData: System fields shouldn't be set anymore: %@", buf, 0xCu);
                  }
                }
              }

              else
              {
                uRIRepresentation2 = [objectID URIRepresentation];
                selfCopy4 = self;
                v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", objc_msgSend(objc_msgSend(uRIRepresentation2, "URLByDeletingLastPathComponent"), "lastPathComponent"), objc_msgSend(uRIRepresentation2, "lastPathComponent")];
              }

              [*(selfCopy4 + 16) setObject:v53 forKey:v54];
              [*(selfCopy4 + 8) addObject:v54];
              objc_autoreleasePoolPop(v51);
            }

            v47 = [v106 countByEnumeratingWithState:&v117 objects:v139 count:16];
          }

          while (v47);
        }

        objc_autoreleasePoolPop(v96);
        v39 = v98 + 1;
      }

      while (v98 + 1 != v94);
      v94 = [v92 countByEnumeratingWithState:&v121 objects:v141 count:16];
      if (v94)
      {
        continue;
      }

      break;
    }

    v97 = 1;
LABEL_69:
    a2 = v90;
    v36 = v101;
  }

  else
  {
    v97 = 1;
  }

  if (*(selfCopy4 + 120) == 1)
  {
    v60 = [NSCKMirroredRelationship fetchMirroredRelationshipsMatchingPredicate:a2 fromStore:store inManagedObjectContext:&v133 error:?];
    if (v60)
    {
      v61 = v60;
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v107 = [v60 countByEnumeratingWithState:&v113 objects:v138 count:16];
      if (v107)
      {
        v102 = v36;
        obja = *v114;
        v99 = v61;
        do
        {
          for (m = 0; m != v107; m = m + 1)
          {
            if (*v114 != obja)
            {
              objc_enumerationMutation(v99);
            }

            v63 = *(*(&v113 + 1) + 8 * m);
            v64 = objc_autoreleasePoolPush();
            v65 = [objc_msgSend(objc_msgSend(objc_msgSend(v36 "entitiesByName")];
            if (v65)
            {
              v66 = v65;
              v67 = +[PFCloudKitSerializer mtmKeyForObjectWithRecordName:relatedToObjectWithRecordName:byRelationship:withInverse:](PFCloudKitSerializer, [v63 recordName], objc_msgSend(v63, "relatedRecordName"), v66, objc_msgSend(v66, "inverseRelationship"));
              [*(self + 24) setObject:v63 forKey:v67];
              v109 = v67;
              [*(self + 32) addObject:v67];
              recordName = [v63 recordName];
              v69 = [objc_msgSend(v63 "recordZone")];
              v70 = [objc_msgSend(v63 "recordZone")];
              [objc_msgSend(v63 "objectID")];
              v71 = [PFCloudKitStoreComparisonCacheStoreCache createRecordIDForRecordName:self inZoneWithName:recordName ownerName:v69 inStore:v70];
              v72 = [*(self + 48) objectForKey:v71];
              if (!v72)
              {
                v72 = objc_alloc_init(MEMORY[0x1E695DF90]);
                [*(self + 48) setObject:v72 forKey:v71];
              }

              contexta = v64;
              v73 = [v72 objectForKey:{objc_msgSend(v66, "name")}];
              if (!v73)
              {
                v73 = objc_alloc_init(MEMORY[0x1E695DFA8]);
                [v72 setObject:v73 forKey:{objc_msgSend(v66, "name")}];
              }

              relatedRecordName = [v63 relatedRecordName];
              v75 = [objc_msgSend(v63 "recordZone")];
              v76 = [objc_msgSend(v63 "recordZone")];
              [objc_msgSend(v63 "objectID")];
              v77 = [PFCloudKitStoreComparisonCacheStoreCache createRecordIDForRecordName:self inZoneWithName:relatedRecordName ownerName:v75 inStore:v76];
              [v73 addObject:v77];

              v78 = [*(self + 48) objectForKey:v77];
              if (!v78)
              {
                v78 = objc_alloc_init(MEMORY[0x1E695DF90]);
                [*(self + 48) setObject:v78 forKey:v77];
              }

              v79 = [v78 objectForKey:{objc_msgSend(objc_msgSend(v66, "inverseRelationship"), "name")}];
              v36 = v102;
              v64 = contexta;
              if (!v79)
              {
                v79 = objc_alloc_init(MEMORY[0x1E695DFA8]);
                [v78 setObject:v79 forKey:{objc_msgSend(objc_msgSend(v66, "inverseRelationship"), "name")}];
              }

              v80 = [*(self + 40) objectForKey:{objc_msgSend(v71, "zoneID")}];
              if (!v80)
              {
                v80 = objc_alloc_init(MEMORY[0x1E695DFA8]);
                [*(self + 40) setObject:v80 forKey:{objc_msgSend(v71, "zoneID")}];
              }

              [v80 addObject:v109];

              [v79 addObject:v71];
            }

            objc_autoreleasePoolPop(v64);
          }

          v107 = [v99 countByEnumeratingWithState:&v113 objects:v138 count:16];
        }

        while (v107);
      }

      goto LABEL_92;
    }

LABEL_96:
    v83 = v133;
LABEL_97:
    v84 = v133;
    if (v84)
    {
      if (context)
      {
        v81 = 0;
        *context = v84;
        goto LABEL_105;
      }
    }

    else
    {
      v85 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v135 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparisonCache.m";
        v136 = 1024;
        v137 = 491;
        _os_log_error_impl(&dword_18565F000, v85, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v86 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v86, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v135 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparisonCache.m";
        v136 = 1024;
        v137 = 491;
        _os_log_fault_impl(&dword_18565F000, v86, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    v81 = 0;
    goto LABEL_105;
  }

LABEL_92:
  if ((v97 & 1) == 0)
  {
    goto LABEL_97;
  }

  v81 = 1;
LABEL_105:

LABEL_106:
  v87 = *MEMORY[0x1E69E9840];
  return v81;
}

- (PFCloudKitStoreComparisonCacheStoreCache)init
{
  v4.receiver = self;
  v4.super_class = PFCloudKitStoreComparisonCacheStoreCache;
  v2 = [(PFCloudKitStoreComparisonCacheStoreCache *)&v4 init];
  if (v2)
  {
    v2->_identifiers = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v2->_identifierToObjectID = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_mtmKeyToMirroredRelationship = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_mtmKeys = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v2->_recordIDToRelationshipNameToRelatedRecordIDs = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_recordIDToMetadata = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_objectIDToRecordMetadata = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_recordIDs = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v2->_recordIDToObjectID = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_objectIDToRecordID = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_recordZones = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v2->_sharedRecordZones = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v2->_recordZoneIDToRecordIDs = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_zoneIDToMTMKeys = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_checkCloudKitMetadata = 0;
  }

  return v2;
}

- (void)dealloc
{
  self->_identifiers = 0;

  self->_identifierToObjectID = 0;
  self->_mtmKeyToMirroredRelationship = 0;

  self->_mtmKeys = 0;
  self->_recordIDToRelationshipNameToRelatedRecordIDs = 0;

  self->_recordIDToMetadata = 0;
  self->_objectIDToRecordMetadata = 0;

  self->_recordIDs = 0;
  self->_recordIDToObjectID = 0;

  self->_objectIDToRecordID = 0;
  self->_recordZones = 0;

  self->_sharedRecordZones = 0;
  self->_recordZoneIDToRecordIDs = 0;

  self->_zoneIDToMTMKeys = 0;
  self->_identityRecordName = 0;

  self->_databaseScopeNumber = 0;
  v3.receiver = self;
  v3.super_class = PFCloudKitStoreComparisonCacheStoreCache;
  [(PFCloudKitStoreComparisonCacheStoreCache *)&v3 dealloc];
}

- (uint64_t)createRecordZoneIDForZoneName:(uint64_t)name ownerName:(uint64_t)ownerName inStore:(void *)store
{
  storeCopy = store;
  if ([store isEqualToString:getCloudKitCKCurrentUserDefaultName()] && *(name + 128))
  {
    storeCopy = *(name + 128);
  }

  v6 = objc_alloc(getCloudKitCKRecordZoneIDClass[0]());

  return [v6 initWithZoneName:ownerName ownerName:storeCopy];
}

- (uint64_t)createRecordIDForRecordName:(uint64_t)name inZoneWithName:(uint64_t)withName ownerName:(uint64_t)ownerName inStore:(void *)store
{
  v5 = [PFCloudKitStoreComparisonCacheStoreCache createRecordZoneIDForZoneName:name ownerName:ownerName inStore:store];
  v6 = [objc_alloc(getCloudKitCKRecordIDClass[0]()) initWithRecordName:withName zoneID:v5];

  return v6;
}

@end