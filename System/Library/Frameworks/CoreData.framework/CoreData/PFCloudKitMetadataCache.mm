@interface PFCloudKitMetadataCache
- (PFCloudKitMetadataCache)init;
- (uint64_t)cacheMetadataForObjectsWithIDs:(uint64_t)a3 andRecordsWithIDs:(void *)a4 inStore:(void *)a5 withManagedObjectContext:(uint64_t)a6 mirroringOptions:(void *)a7 error:;
- (uint64_t)recordMetadataForRecordID:(uint64_t)a1;
- (void)_addMirroredRelationshipMTMKey:(uint64_t)a3 forObjectWithID:(uint64_t)a4 andRelationshipName:;
- (void)cacheZoneMetadata:(uint64_t)a1;
- (void)dealloc;
- (void)registerRecordMetadata:(void *)a3 forObject:;
@end

@implementation PFCloudKitMetadataCache

- (PFCloudKitMetadataCache)init
{
  v4.receiver = self;
  v4.super_class = PFCloudKitMetadataCache;
  v2 = [(PFCloudKitMetadataCache *)&v4 init];
  if (v2)
  {
    v2->_recordZoneIDToZoneMetadata = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_objectIDToRecordMetadata = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_recordIDToMirroredRelationshipOrRecordMetadata = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_zoneIDToMtmKeyToMirroredRelationship = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_objectIDToRelationshipNameToExistingMTMKeys = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_objectIDToChangedPropertyKeys = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_invalidatedMTMKeys = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v2->_mutableZoneIDs = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  return v2;
}

- (void)dealloc
{
  self->_recordZoneIDToZoneMetadata = 0;

  self->_objectIDToRecordMetadata = 0;
  self->_recordIDToMirroredRelationshipOrRecordMetadata = 0;

  self->_zoneIDToMtmKeyToMirroredRelationship = 0;
  self->_objectIDToRelationshipNameToExistingMTMKeys = 0;

  self->_objectIDToChangedPropertyKeys = 0;
  self->_invalidatedMTMKeys = 0;

  self->_mutableZoneIDs = 0;
  v3.receiver = self;
  v3.super_class = PFCloudKitMetadataCache;
  [(PFCloudKitMetadataCache *)&v3 dealloc];
}

- (uint64_t)cacheMetadataForObjectsWithIDs:(uint64_t)a3 andRecordsWithIDs:(void *)a4 inStore:(void *)a5 withManagedObjectContext:(uint64_t)a6 mirroringOptions:(void *)a7 error:
{
  v230 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v151 = 0;
    goto LABEL_169;
  }

  v210 = 0;
  v141 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v160 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:a3];
  v144 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:a3];
  v159 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v161 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v162 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v163 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([a2 count])
  {
    v9 = [NSCKRecordMetadata createMapOfMetadataMatchingObjectIDs:a2 inStore:a4 inManagedObjectContext:a5 error:&v210];
    v10 = v9;
    v11 = v9 != 0;
    if (v9)
    {
      v209[0] = MEMORY[0x1E69E9820];
      v209[1] = 3221225472;
      v209[2] = __132__PFCloudKitMetadataCache_cacheMetadataForObjectsWithIDs_andRecordsWithIDs_inStore_withManagedObjectContext_mirroringOptions_error___block_invoke;
      v209[3] = &unk_1E6EC4890;
      v209[4] = a1;
      v209[5] = v161;
      v209[6] = v162;
      v209[7] = v163;
      v209[8] = v144;
      v209[9] = v160;
      [v9 enumerateKeysAndObjectsUsingBlock:v209];
    }

    else
    {
      v12 = v210;
    }

    v148 = v11;
  }

  else
  {
    v148 = 1;
  }

  if ([v144 count])
  {
    context = objc_autoreleasePoolPush();
    v13 = +[NSCKRecordMetadata metadataForRecordIDs:fromStore:inManagedObjectContext:error:](NSCKRecordMetadata, [v144 allObjects], a4, a5, &v210);
    v14 = v13;
    if (!v13)
    {
      v148 = 0;
      v26 = v210;
      goto LABEL_31;
    }

    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
    v15 = [v13 countByEnumeratingWithState:&v205 objects:v223 count:16];
    if (!v15)
    {
      goto LABEL_31;
    }

    v155 = *v206;
    while (1)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v206 != v155)
        {
          objc_enumerationMutation(v14);
        }

        v17 = *(*(&v205 + 1) + 8 * i);
        v18 = objc_autoreleasePoolPush();
        v19 = [(NSCKRecordMetadata *)v17 createObjectIDForLinkedRow];
        [a1[2] setObject:v17 forKey:v19];
        v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        [a1[6] setObject:v20 forKey:v19];
        v21 = [v161 objectForKey:{objc_msgSend(v17, "entityId")}];
        if (!v21)
        {
          v21 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          [v161 setObject:v21 forKey:{objc_msgSend(v17, "entityId")}];
        }

        [v21 addObject:{objc_msgSend(v17, "entityPK")}];

        v22 = [v17 lastExportedTransactionNumber];
        v23 = [v162 objectForKey:{objc_msgSend(v17, "entityId")}];
        v24 = [v163 objectForKey:v19];
        if (v22)
        {
          if ([v23 compare:v22] != 1)
          {
            [v162 setObject:v22 forKey:{objc_msgSend(v17, "entityId")}];
          }

          if ([v24 compare:v22] != 1)
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (!v23)
          {
            [v162 setObject:&unk_1EF435E48 forKey:{objc_msgSend(v17, "entityId")}];
          }

          if (!v24)
          {
            v22 = &unk_1EF435E48;
LABEL_26:
            [v163 setObject:v22 forKey:v19];
          }
        }

        v25 = [(NSCKRecordMetadata *)v17 createRecordID];
        [v160 addObject:v25];
        [a1[3] setObject:v17 forKey:v25];

        objc_autoreleasePoolPop(v18);
      }

      v15 = [v14 countByEnumeratingWithState:&v205 objects:v223 count:16];
      if (!v15)
      {
LABEL_31:
        objc_autoreleasePoolPop(context);
        break;
      }
    }
  }

  if (!v148)
  {
LABEL_159:
    v158 = 0;
    v151 = 0;
    goto LABEL_160;
  }

  v27 = [v160 allObjects];
  v28 = [NSCKMirroredRelationship fetchMirroredRelationshipsMatchingRelatingRecords:v27 andRelatingRecordIDs:a4 fromStore:a5 inManagedObjectContext:&v210 error:?];
  if (!v28)
  {
    v91 = v210;
LABEL_107:
    v158 = 0;
    v151 = 0;
    goto LABEL_160;
  }

  v156 = [objc_msgSend(a5 "persistentStoreCoordinator")];
  v203 = 0u;
  v204 = 0u;
  v201 = 0u;
  v202 = 0u;
  v29 = [v28 countByEnumeratingWithState:&v201 objects:v222 count:16];
  if (v29)
  {
    v30 = *v202;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v202 != v30)
        {
          objc_enumerationMutation(v28);
        }

        v32 = *(*(&v201 + 1) + 8 * j);
        v33 = objc_autoreleasePoolPush();
        v34 = [objc_msgSend(objc_msgSend(objc_msgSend(v156 "entitiesByName")];
        if (v34)
        {
          v35 = +[PFCloudKitSerializer mtmKeyForObjectWithRecordName:relatedToObjectWithRecordName:byRelationship:withInverse:](PFCloudKitSerializer, [v32 recordName], objc_msgSend(v32, "relatedRecordName"), v34, objc_msgSend(v34, "inverseRelationship"));
          v36 = -[NSCKRecordZoneMetadata createRecordZoneID]([v32 recordZone]);
          if ([objc_msgSend(a1[4] objectForKey:{v36), "objectForKey:", v35}])
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              v43 = [objc_msgSend(a1[4] objectForKey:{v36), "objectForKey:", v35}];
              *buf = 138412802;
              v225 = v35;
              v226 = 2112;
              v227 = v32;
              v228 = 2112;
              v229 = v43;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Already have a mirrored relationship registered for this key: %@\n%@\n%@\n", buf, 0x20u);
            }

            v38 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
            {
              v44 = [objc_msgSend(a1[4] objectForKey:{v36), "objectForKey:", v35}];
              *buf = 138412802;
              v225 = v35;
              v226 = 2112;
              v227 = v32;
              v228 = 2112;
              v229 = v44;
              _os_log_fault_impl(&dword_18565F000, v38, OS_LOG_TYPE_FAULT, "CoreData: Already have a mirrored relationship registered for this key: %@\n%@\n%@", buf, 0x20u);
            }
          }

          v39 = [a1[4] objectForKey:v36];
          if (!v39)
          {
            v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
            [a1[4] setObject:v39 forKey:v36];
          }

          [v39 setObject:v32 forKey:v35];

          v40 = [(NSCKMirroredRelationship *)v32 createRecordID];
          [a1[3] setObject:v32 forKey:v40];

          v41 = [(NSCKMirroredRelationship *)v32 createRecordIDForRecord];
          [v159 addObject:v41];

          v42 = [(NSCKMirroredRelationship *)v32 createRecordIDForRelatedRecord];
          [v159 addObject:v42];
        }

        objc_autoreleasePoolPop(v33);
      }

      v29 = [v28 countByEnumeratingWithState:&v201 objects:v222 count:16];
    }

    while (v29);
  }

  [v159 minusSet:v160];
  v45 = +[NSCKRecordMetadata metadataForRecordIDs:fromStore:inManagedObjectContext:error:](NSCKRecordMetadata, [v159 allObjects], a4, a5, &v210);
  v46 = v45;
  if (!v45)
  {
    v92 = v210;
    goto LABEL_107;
  }

  v199 = 0u;
  v200 = 0u;
  v197 = 0u;
  v198 = 0u;
  v47 = [v45 countByEnumeratingWithState:&v197 objects:v221 count:16];
  if (v47)
  {
    v48 = *v198;
    do
    {
      for (k = 0; k != v47; ++k)
      {
        if (*v198 != v48)
        {
          objc_enumerationMutation(v46);
        }

        v50 = *(*(&v197 + 1) + 8 * k);
        v51 = objc_autoreleasePoolPush();
        v52 = [(NSCKRecordMetadata *)v50 createObjectIDForLinkedRow];
        [a1[2] setObject:v50 forKey:v52];

        v53 = [(NSCKRecordMetadata *)v50 createRecordID];
        [a1[3] setObject:v50 forKey:v53];

        objc_autoreleasePoolPop(v51);
      }

      v47 = [v46 countByEnumeratingWithState:&v197 objects:v221 count:16];
    }

    while (v47);
  }

  v54 = [objc_msgSend(a4 "_persistentStoreCoordinator")];
  v195 = 0u;
  v196 = 0u;
  v193 = 0u;
  v194 = 0u;
  obj = a1[4];
  v55 = [obj countByEnumeratingWithState:&v193 objects:v220 count:16];
  if (v55)
  {
    v147 = *v194;
    do
    {
      v56 = 0;
      v149 = v55;
      do
      {
        if (*v194 != v147)
        {
          objc_enumerationMutation(obj);
        }

        v57 = *(*(&v193 + 1) + 8 * v56);
        v58 = objc_autoreleasePoolPush();
        v59 = [a1[4] objectForKey:v57];
        contexta = v58;
        v157 = v56;
        v191 = 0u;
        v192 = 0u;
        v189 = 0u;
        v190 = 0u;
        v60 = [v59 countByEnumeratingWithState:&v189 objects:v219 count:16];
        if (v60)
        {
          v61 = *v190;
          do
          {
            for (m = 0; m != v60; ++m)
            {
              if (*v190 != v61)
              {
                objc_enumerationMutation(v59);
              }

              v63 = *(*(&v189 + 1) + 8 * m);
              v64 = [v59 objectForKey:v63];
              v65 = [objc_msgSend(objc_msgSend(objc_msgSend(v54 "entitiesByName")];
              v66 = [(NSCKMirroredRelationship *)v64 createRecordIDForRecord];
              v67 = [(PFCloudKitMetadataCache *)a1 recordMetadataForRecordID:v66];
              if (v67)
              {
                v68 = [(NSCKRecordMetadata *)v67 createObjectIDForLinkedRow];
                -[PFCloudKitMetadataCache _addMirroredRelationshipMTMKey:forObjectWithID:andRelationshipName:](a1, v63, v68, [v65 name]);
              }

              else
              {
                [a1[7] addObject:v63];
              }

              v69 = [(NSCKMirroredRelationship *)v64 createRecordIDForRelatedRecord];
              v70 = [(PFCloudKitMetadataCache *)a1 recordMetadataForRecordID:v69];
              if (v70)
              {
                v71 = [(NSCKRecordMetadata *)v70 createObjectIDForLinkedRow];
                -[PFCloudKitMetadataCache _addMirroredRelationshipMTMKey:forObjectWithID:andRelationshipName:](a1, v63, v71, [objc_msgSend(v65 "inverseRelationship")]);
              }

              else
              {
                [a1[7] addObject:v63];
              }
            }

            v60 = [v59 countByEnumeratingWithState:&v189 objects:v219 count:16];
          }

          while (v60);
        }

        objc_autoreleasePoolPop(contexta);
        v56 = v157 + 1;
      }

      while (v157 + 1 != v149);
      v55 = [obj countByEnumeratingWithState:&v193 objects:v220 count:16];
    }

    while (v55);
  }

  v72 = objc_autoreleasePoolPush();
  v73 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneMetadata entityPath]);
  v218 = a4;
  -[NSFetchRequest setAffectedStores:](v73, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v218 count:1]);
  v74 = [a5 executeFetchRequest:v73 error:&v210];
  v75 = v74;
  if (!v74)
  {
    v150 = 0;
    v93 = v210;
    goto LABEL_110;
  }

  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  v76 = [v74 countByEnumeratingWithState:&v185 objects:v217 count:16];
  if (!v76)
  {
    v150 = 1;
    goto LABEL_110;
  }

  v77 = *v186;
  v150 = 1;
  do
  {
    v78 = 0;
    do
    {
      if (*v186 != v77)
      {
        objc_enumerationMutation(v75);
      }

      v79 = *(*(&v185 + 1) + 8 * v78);
      v80 = objc_autoreleasePoolPush();
      v81 = [(NSCKRecordZoneMetadata *)v79 createRecordZoneID];
      [a1[1] setObject:v79 forKey:v81];
      if (![v79 encodedShareAsset])
      {
        [a1[8] addObject:v81];
LABEL_96:

        v88 = 1;
        goto LABEL_98;
      }

      if (a6)
      {
        v82 = *(a6 + 136);
      }

      else
      {
        v82 = 0;
      }

      v83 = [v79 encodedShareAsset];
      v84 = v83;
      if (v83)
      {
        if ([objc_msgSend(v83 "binaryData")])
        {
          v85 = [v84 binaryData];
        }

        else
        {
          v85 = [v84 externalBinaryData];
        }
      }

      else
      {
        v85 = 0;
      }

      v86 = [(PFCloudKitArchivingUtilities *)v82 shareFromEncodedData:v85 inZoneWithID:v81 error:&v210];
      v87 = v86;
      if (v86)
      {
        if ([objc_msgSend(v86 "currentUserParticipant")] != 2)
        {
          [a1[8] addObject:v81];
        }

        v81 = 0;
        goto LABEL_96;
      }

      v89 = v210;
      v150 = 0;

      v88 = 0;
LABEL_98:
      objc_autoreleasePoolPop(v80);
      if (!v88)
      {
        goto LABEL_110;
      }

      ++v78;
    }

    while (v76 != v78);
    v90 = [v75 countByEnumeratingWithState:&v185 objects:v217 count:16];
    v76 = v90;
  }

  while (v90);
LABEL_110:
  objc_autoreleasePoolPop(v72);
  if ((v150 & 1) == 0)
  {
    goto LABEL_159;
  }

  v158 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v183 = 0u;
  v184 = 0u;
  v181 = 0u;
  v182 = 0u;
  v94 = [v161 countByEnumeratingWithState:&v181 objects:v216 count:16];
  if (v94)
  {
    v95 = *v182;
    do
    {
      for (n = 0; n != v94; ++n)
      {
        if (*v182 != v95)
        {
          objc_enumerationMutation(v161);
        }

        v97 = *(*(&v181 + 1) + 8 * n);
        v98 = objc_autoreleasePoolPush();
        v99 = [v162 objectForKey:v97];
        [v158 addObject:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithFormat:", @"TRANSACTIONID > %@ AND ENTITY = %@ AND ENTITYPK IN %@", v99, v97, objc_msgSend(v161, "objectForKey:", v97))}];
        objc_autoreleasePoolPop(v98);
      }

      v94 = [v161 countByEnumeratingWithState:&v181 objects:v216 count:16];
    }

    while (v94);
  }

  v179 = 0u;
  v180 = 0u;
  v177 = 0u;
  v178 = 0u;
  v100 = [v158 countByEnumeratingWithState:&v177 objects:v215 count:16];
  if (v100)
  {
    v132 = *v178;
    v151 = 1;
LABEL_120:
    v135 = 0;
    v131 = v100;
    while (1)
    {
      if (*v178 != v132)
      {
        objc_enumerationMutation(v158);
      }

      v101 = *(*(&v177 + 1) + 8 * v135);
      v133 = objc_autoreleasePoolPush();
      v102 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", [(NSEntityDescription *)+[NSPersistentHistoryChange name] entityDescription];
      [(NSFetchRequest *)v102 setPredicate:v101];
      v103 = [NSPersistentHistoryChangeRequest fetchHistoryWithFetchRequest:v102];
      [(NSPersistentHistoryChangeRequest *)v103 setResultType:5];
      [(NSPersistentHistoryChangeRequest *)v103 setUseQueryGenerationToken:1];
      v214 = a4;
      -[NSPersistentStoreRequest setAffectedStores:](v103, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v214 count:1]);
      v104 = [a5 executeRequest:v103 error:&v210];
      v105 = v104;
      if (v104)
      {
        v106 = [v104 result];
        v175 = 0u;
        v176 = 0u;
        v173 = 0u;
        v174 = 0u;
        v107 = [v106 countByEnumeratingWithState:&v173 objects:v213 count:16];
        if (v107)
        {
          v134 = v106;
          v130 = v105;
          v137 = *v174;
          do
          {
            obja = 0;
            v136 = v107;
            do
            {
              if (*v174 != v137)
              {
                objc_enumerationMutation(v134);
              }

              v108 = *(*(&v173 + 1) + 8 * obja);
              v140 = objc_autoreleasePoolPush();
              if (![PFCloudKitHistoryAnalyzer isPrivateTransaction:v108])
              {
                v171 = 0u;
                v172 = 0u;
                v169 = 0u;
                v170 = 0u;
                v109 = [v108 changes];
                v110 = [v109 countByEnumeratingWithState:&v169 objects:v212 count:16];
                if (v110)
                {
                  v111 = *v170;
                  contextb = v109;
                  do
                  {
                    for (ii = 0; ii != v110; ++ii)
                    {
                      if (*v170 != v111)
                      {
                        objc_enumerationMutation(contextb);
                      }

                      v113 = *(*(&v169 + 1) + 8 * ii);
                      v114 = objc_autoreleasePoolPush();
                      v115 = [v163 objectForKey:{objc_msgSend(v113, "changedObjectID")}];
                      if (!v115)
                      {
                        v116 = _PFLogGetLogStream(17);
                        if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412290;
                          v225 = v113;
                          _os_log_error_impl(&dword_18565F000, v116, OS_LOG_TYPE_ERROR, "CoreData: fault: Didn't get a minimum transaction number for change: %@\n", buf, 0xCu);
                        }

                        v117 = _PFLogGetLogStream(17);
                        v115 = &unk_1EF435E48;
                        if (os_log_type_enabled(v117, OS_LOG_TYPE_FAULT))
                        {
                          *buf = 138412290;
                          v225 = v113;
                          _os_log_fault_impl(&dword_18565F000, v117, OS_LOG_TYPE_FAULT, "CoreData: Didn't get a minimum transaction number for change: %@", buf, 0xCu);
                        }
                      }

                      v118 = [v108 transactionNumber];
                      if (v118 >= [v115 integerValue])
                      {
                        v119 = [a1[6] objectForKey:{objc_msgSend(v113, "changedObjectID")}];
                        if (v119)
                        {
                          v167 = 0u;
                          v168 = 0u;
                          v165 = 0u;
                          v166 = 0u;
                          v120 = [v113 updatedProperties];
                          v121 = [v120 countByEnumeratingWithState:&v165 objects:v211 count:16];
                          if (v121)
                          {
                            v122 = *v166;
                            do
                            {
                              for (jj = 0; jj != v121; ++jj)
                              {
                                if (*v166 != v122)
                                {
                                  objc_enumerationMutation(v120);
                                }

                                [v119 addObject:{objc_msgSend(*(*(&v165 + 1) + 8 * jj), "name")}];
                              }

                              v121 = [v120 countByEnumeratingWithState:&v165 objects:v211 count:16];
                            }

                            while (v121);
                          }
                        }
                      }

                      objc_autoreleasePoolPop(v114);
                    }

                    v110 = [contextb countByEnumeratingWithState:&v169 objects:v212 count:16];
                  }

                  while (v110);
                }
              }

              objc_autoreleasePoolPop(v140);
              obja = obja + 1;
            }

            while (obja != v136);
            v107 = [v134 countByEnumeratingWithState:&v173 objects:v213 count:16];
          }

          while (v107);
          v105 = v130;
        }
      }

      else
      {
        v151 = 0;
        v124 = v210;
      }

      objc_autoreleasePoolPop(v133);
      if (!v105)
      {
        break;
      }

      if (++v135 == v131)
      {
        v100 = [v158 countByEnumeratingWithState:&v177 objects:v215 count:16];
        if (v100)
        {
          goto LABEL_120;
        }

        break;
      }
    }
  }

  else
  {
    v151 = 1;
  }

LABEL_160:
  [v141 drain];

  if ((v151 & 1) == 0)
  {
    v125 = v210;
    if (v125)
    {
      if (a7)
      {
        *a7 = v125;
      }
    }

    else
    {
      v126 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v225 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataCache.m";
        v226 = 1024;
        LODWORD(v227) = 419;
        _os_log_error_impl(&dword_18565F000, v126, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v127 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v127, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v225 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataCache.m";
        v226 = 1024;
        LODWORD(v227) = 419;
        _os_log_fault_impl(&dword_18565F000, v127, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

LABEL_169:
  v128 = *MEMORY[0x1E69E9840];
  return v151 & 1;
}

void __132__PFCloudKitMetadataCache_cacheMetadataForObjectsWithIDs_andRecordsWithIDs_inStore_withManagedObjectContext_mirroringOptions_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  [*(*(a1 + 32) + 16) setObject:a3 forKey:a2];
  v12 = [(NSCKRecordMetadata *)a3 createRecordID];
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [*(*(a1 + 32) + 48) setObject:v6 forKey:a2];

  v7 = [*(a1 + 40) objectForKey:{objc_msgSend(a3, "entityId")}];
  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [*(a1 + 40) setObject:v7 forKey:{objc_msgSend(a3, "entityId")}];
  }

  [v7 addObject:{objc_msgSend(a3, "entityPK")}];

  v8 = [a3 lastExportedTransactionNumber];
  v9 = [*(a1 + 48) objectForKey:{objc_msgSend(a3, "entityId")}];
  v10 = [*(a1 + 56) objectForKey:a2];
  v11 = v10;
  if (!v8)
  {
    if (v9)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      [*(a1 + 48) setObject:&unk_1EF435E48 forKey:{objc_msgSend(a3, "entityId")}];
      if (v11)
      {
        goto LABEL_14;
      }
    }

    v8 = &unk_1EF435E48;
    goto LABEL_13;
  }

  if ([v9 compare:v8] != 1)
  {
    [*(a1 + 48) setObject:v8 forKey:{objc_msgSend(a3, "entityId")}];
  }

  if ([v11 compare:v8] != 1)
  {
LABEL_13:
    [*(a1 + 56) setObject:v8 forKey:a2];
  }

LABEL_14:
  [*(a1 + 64) removeObject:v12];
  [*(a1 + 72) addObject:v12];
  [*(*(a1 + 32) + 24) setObject:a3 forKey:v12];
}

- (uint64_t)recordMetadataForRecordID:(uint64_t)a1
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = [*(a1 + 24) objectForKey:a2];
    if (v3)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          v8 = 138412546;
          v9 = a2;
          v10 = 2112;
          v11 = v3;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Expected to get an instance of NSCKRecordMetadata for this recordID: %@ but got: %@\n", &v8, 0x16u);
        }

        v5 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
          v8 = 138412546;
          v9 = a2;
          v10 = 2112;
          v11 = v3;
          _os_log_fault_impl(&dword_18565F000, v5, OS_LOG_TYPE_FAULT, "CoreData: Expected to get an instance of NSCKRecordMetadata for this recordID: %@ but got: %@", &v8, 0x16u);
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)_addMirroredRelationshipMTMKey:(uint64_t)a3 forObjectWithID:(uint64_t)a4 andRelationshipName:
{
  v8 = [objc_msgSend(*(a1 + 40) "objectForKey:{"objectForKey:", a4}")];
  if (!v8)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v9 = [*(a1 + 40) objectForKey:a3];
    if (!v9)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [*(a1 + 40) setObject:v9 forKey:a3];
    }

    [v9 setObject:v10 forKey:a4];

    v8 = v10;
  }

  v11 = v8;
  [v8 addObject:a2];
}

- (void)registerRecordMetadata:(void *)a3 forObject:
{
  if (a1)
  {
    [*(a1 + 16) setObject:a2 forKey:{objc_msgSend(a3, "objectID")}];
    v5 = [(NSCKRecordMetadata *)a2 createRecordID];
    [*(a1 + 24) setObject:a2 forKey:v5];
  }
}

- (void)cacheZoneMetadata:(uint64_t)a1
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = [(NSCKRecordZoneMetadata *)a2 createRecordZoneID];
    if ([*(a1 + 8) objectForKey:v4])
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 8);
        v10 = 138412546;
        v11 = a2;
        v12 = 2112;
        v13 = v8;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Attempting to cache zone metadata but already have one: %@\n%@\n", &v10, 0x16u);
      }

      v6 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v9 = *(a1 + 8);
        v10 = 138412546;
        v11 = a2;
        v12 = 2112;
        v13 = v9;
        _os_log_fault_impl(&dword_18565F000, v6, OS_LOG_TYPE_FAULT, "CoreData: Attempting to cache zone metadata but already have one: %@\n%@", &v10, 0x16u);
      }
    }

    [*(a1 + 8) setObject:a2 forKey:v4];
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end