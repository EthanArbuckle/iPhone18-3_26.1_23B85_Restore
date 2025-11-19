@interface _NSSQLiteStoreMigrator
- (BOOL)clearTombstoneColumnsForRange:(uint64_t)a3;
- (uint64_t)_addEntityMigration:(void *)a3 toTableMigrationForRootEntity:(int)a4 tableMigrationType:;
- (uint64_t)_countNullsInColumn:(uint64_t)a3 forEntity:;
- (uint64_t)_countUnreferencedPrimaryKeysForEntity:(uint64_t)a3 inForeignKeyColumnName:(uint64_t)a4 fromTable:;
- (uint64_t)deleteStatementsForHistory;
- (uint64_t)enforceCloudKitConstraintsForEntity:(uint64_t)result;
- (uint64_t)entityMigrationDescriptionForEntity:(uint64_t)result;
- (uint64_t)performMigration:(uint64_t)a1;
- (uint64_t)shiftTombstones;
- (uint64_t)tableMigrationDescriptionForEntity:(uint64_t)result;
- (uint64_t)updateStatementsForHistoryChanges;
- (void)_determineAttributeTriggerToMigrateForAttributeNamed:(uint64_t)a3 withSourceEntity:(uint64_t)a4 andDestinationEntity:;
- (void)_determineRTreeExtensionsToMigrateForAttributeNamed:(void *)a3 withSourceEntity:(void *)a4 andDestinationEntity:;
- (void)_disconnect;
- (void)_originalRootsForAddedEntity:(uint64_t)a1;
- (void)createEntityMigrationStatements;
- (void)dealloc;
- (void)initWithStore:(void *)a3 destinationModel:(void *)a4 mappingModel:;
@end

@implementation _NSSQLiteStoreMigrator

- (void)initWithStore:(void *)a3 destinationModel:(void *)a4 mappingModel:
{
  if (!a1)
  {
    return 0;
  }

  v15.receiver = a1;
  v15.super_class = _NSSQLiteStoreMigrator;
  v7 = objc_msgSendSuper2(&v15, sel_init);
  if (v7)
  {
    v7[1] = a2;
    v7[2] = a3;
    v7[3] = [a2 model];
    v7[6] = [(NSSQLCore *)a2 connectionForMigration];
    v7[4] = [a2 adapter];
    v7[5] = a4;
    v8 = v7[6];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __70___NSSQLiteStoreMigrator_initWithStore_destinationModel_mappingModel___block_invoke;
    v14[3] = &unk_1E6EC16F0;
    v14[4] = v7;
    [(NSSQLiteConnection *)v8 performAndWait:v14];
    v9 = [objc_msgSend(a4 "entityMappings")];
    v7[12] = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v9];
    v7[15] = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v9];
    v7[13] = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v9];
    v7[14] = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v9];
    v7[9] = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v9];
    v7[10] = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v9];
    v7[11] = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v9];
    v7[16] = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v9];
    v10 = objc_alloc(MEMORY[0x1E695DF90]);
    v11 = [MEMORY[0x1E695DF70] array];
    v12 = [MEMORY[0x1E695DF70] array];
    v7[19] = [v10 initWithObjectsAndKeys:{v11, @"inserted", v12, @"updated", objc_msgSend(MEMORY[0x1E695DF70], "array"), @"deleted", 0}];
    v7[23] = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7[24] = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7[20] = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7[21] = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7[25] = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7[26] = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(v7 + 108) = 0;
  }

  return v7;
}

- (void)dealloc
{
  self->_adapter = 0;

  self->_connection = 0;
  self->_dstModel = 0;

  self->_srcModel = 0;
  self->_store = 0;

  self->_mappingModel = 0;
  self->_existingTableNames = 0;

  self->_tableGenerationSQL = 0;
  self->_addedEntityMigrations = 0;

  self->_removedEntityMigrations = 0;
  self->_transformedEntityMigrations = 0;

  self->_copiedEntityMigrations = 0;
  self->_reindexedEntities = 0;

  self->_reindexedPropertiesByEntity = 0;
  self->_sourceToDestinationEntityMap = 0;

  self->_tableMigrationDescriptionsByEntity = 0;
  self->_pkTableUpdateStatements = 0;

  self->_attributeExtensionsToUpdate = 0;
  self->_derivationsToDrop = 0;

  self->_derivationsToRun = 0;
  self->_defaultValueStatements = 0;

  self->_indexesToCreate = 0;
  self->_indexesToDrop = 0;

  self->_historyMigrationPropertyDataForEntityCache = 0;
  self->_cloudKitUpdateStatements = 0;

  self->_destinationConfigurationForCloudKitValidation = 0;
  self->_stageLabel = 0;
  v3.receiver = self;
  v3.super_class = _NSSQLiteStoreMigrator;
  [(_NSSQLiteStoreMigrator *)&v3 dealloc];
}

- (void)_disconnect
{
  if (a1)
  {
    v1 = *(a1 + 48);
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __37___NSSQLiteStoreMigrator__disconnect__block_invoke;
    v2[3] = &unk_1E6EC16F0;
    v2[4] = a1;
    [(NSSQLiteConnection *)v1 performAndWait:v2];
  }
}

- (void)_originalRootsForAddedEntity:(uint64_t)a1
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  if (a2)
  {
    a2 = a2[19];
  }

  v5 = [a2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(a2);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([*(a1 + 96) objectForKey:{objc_msgSend(v9, "name", v12)}])
        {
          [v4 addObjectsFromArray:{-[_NSSQLiteStoreMigrator _originalRootsForAddedEntity:](a1, v9)}];
        }

        else
        {
          [v4 addObject:{objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 112), "valueForKey:", objc_msgSend(v9, "name")), "sourceEntity"), "rootEntity")}];
        }
      }

      v6 = [a2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

- (uint64_t)performMigration:(uint64_t)a1
{
  if (a1)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3052000000;
    v20 = __Block_byref_object_copy__36;
    v21 = __Block_byref_object_dispose__36;
    v22 = 0;
    v4 = +[NSMappingModel migrationDebugLevel]> 0;
    v5 = getprogname();
    if (v5)
    {
      v6 = !strncmp("assetsd", v5, 7uLL) || !strncmp("photolibraryd", v5, 0xDuLL);
      v7 = strncmp("homed", v5, 5uLL) == 0;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    v8 = *(a1 + 48);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __43___NSSQLiteStoreMigrator_performMigration___block_invoke;
    v13[3] = &unk_1E6EC4670;
    v14 = v4;
    v15 = v6;
    v13[4] = a1;
    v13[5] = &v17;
    v13[6] = &v23;
    v13[7] = a2;
    v16 = v7;
    [(NSSQLiteConnection *)v8 performAndWait:v13];
    v9 = v18[5];
    if (v9)
    {
      v10 = v9;
      if (a2)
      {
        *a2 = v18[5];
      }
    }

    v11 = *(v24 + 24);
    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (void)createEntityMigrationStatements
{
  v357 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v145 = 0;
    goto LABEL_326;
  }

  v232 = objc_autoreleasePoolPush();
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(v2 + 32);
  }

  else
  {
    v3 = 0;
  }

  v241 = [MEMORY[0x1E695DF70] arrayWithArray:v3];
  v311 = 0u;
  v312 = 0u;
  v313 = 0u;
  v314 = 0u;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(v4 + 32);
  }

  else
  {
    v5 = 0;
  }

  obj = v5;
  v235 = [v5 countByEnumeratingWithState:&v311 objects:v341 count:16];
  if (v235)
  {
    v234 = *v312;
    do
    {
      v6 = 0;
      do
      {
        if (*v312 != v234)
        {
          v7 = v6;
          objc_enumerationMutation(obj);
          v6 = v7;
        }

        v236 = v6;
        v8 = *(*(&v311 + 1) + 8 * v6);
        context = objc_autoreleasePoolPush();
        v239 = [v8 entityDescription];
        v9 = -[NSSQLModel _sqlEntityWithRenamingIdentifier:](*(a1 + 24), [v239 renamingIdentifier]);
        v238 = [(NSSQLEntity_DerivedAttributesExtension *)v9 entityDescription];
        if (v9)
        {
          v10 = v8 ? *(v8 + 184) : 0;
          if (LODWORD(v9[4]._triggerSQL) != v10)
          {
            [*(a1 + 72) setObject:v8 forKey:{-[NSSQLEntity_DerivedAttributesExtension name](v9, "name")}];
            *(a1 + 136) = 1;
            v336 = 0u;
            v337 = 0u;
            v338 = 0u;
            v339 = 0u;
            v257 = [v8 toManyRelationships];
            v11 = [v257 countByEnumeratingWithState:&v336 objects:&buf count:16];
            if (v11)
            {
              v12 = *v337;
              do
              {
                for (i = 0; i != v11; ++i)
                {
                  if (*v337 != v12)
                  {
                    objc_enumerationMutation(v257);
                  }

                  v14 = *(*(&v336 + 1) + 8 * i);
                  if (v14)
                  {
                    v15 = *(v14 + 56);
                    if (v15)
                    {
                      if (v15[88] == 1)
                      {
                        v16 = [v15 entity];
                        v17 = [*(a1 + 80) objectForKey:{objc_msgSend(v16, "name")}];
                        if (v17)
                        {
                          [v17 addObject:v15];
                        }

                        else
                        {
                          v18 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v15, 0}];
                          [*(a1 + 80) setObject:v18 forKey:{objc_msgSend(v16, "name")}];
                        }
                      }
                    }
                  }
                }

                v11 = [v257 countByEnumeratingWithState:&v336 objects:&buf count:16];
              }

              while (v11);
            }

            if (v8)
            {
              v19 = *(v8 + 152);
              if (v19)
              {
                if ([v19 count])
                {
                  v326 = 0u;
                  v325 = 0u;
                  v324 = 0u;
                  v323 = 0u;
                  v20 = [v8 model];
                  if (v20)
                  {
                    v20 = v20[4];
                  }

                  v245 = v20;
                  v253 = [v20 countByEnumeratingWithState:&v323 objects:v350 count:16];
                  if (v253)
                  {
                    v249 = *v324;
                    do
                    {
                      v21 = 0;
                      do
                      {
                        if (*v324 != v249)
                        {
                          v22 = v21;
                          objc_enumerationMutation(v245);
                          v21 = v22;
                        }

                        v258 = v21;
                        v23 = *(*(&v323 + 1) + 8 * v21);
                        v319 = 0u;
                        v320 = 0u;
                        v321 = 0u;
                        v322 = 0u;
                        v24 = [v23 foreignEntityKeyColumns];
                        v25 = [v24 countByEnumeratingWithState:&v319 objects:&v346 count:16];
                        if (v25)
                        {
                          v26 = *v320;
                          do
                          {
                            for (j = 0; j != v25; ++j)
                            {
                              if (*v320 != v26)
                              {
                                objc_enumerationMutation(v24);
                              }

                              v28 = *(*(&v319 + 1) + 8 * j);
                              if ([objc_msgSend(objc_msgSend(objc_msgSend(v28 "foreignKey")])
                              {
                                v29 = [*(a1 + 80) objectForKey:{objc_msgSend(v23, "name")}];
                                if (v29)
                                {
                                  [v29 addObject:v28];
                                }

                                else
                                {
                                  v30 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v28, 0}];
                                  [*(a1 + 80) setObject:v30 forKey:{objc_msgSend(v23, "name")}];
                                }
                              }
                            }

                            v25 = [v24 countByEnumeratingWithState:&v319 objects:&v346 count:16];
                          }

                          while (v25);
                        }

                        v21 = v258 + 1;
                      }

                      while (v258 + 1 != v253);
                      v253 = [v245 countByEnumeratingWithState:&v323 objects:v350 count:16];
                    }

                    while (v253);
                  }
                }
              }
            }

            v318 = 0u;
            v317 = 0u;
            v315 = 0u;
            v316 = 0u;
            v31 = [v8 manyToManyRelationships];
            v32 = [v31 countByEnumeratingWithState:&v315 objects:&v342 count:16];
            if (v32)
            {
              v33 = *v316;
              do
              {
                for (k = 0; k != v32; ++k)
                {
                  if (*v316 != v33)
                  {
                    objc_enumerationMutation(v31);
                  }

                  v35 = *(*(&v315 + 1) + 8 * k);
                  v36 = [*(a1 + 80) objectForKey:{objc_msgSend(v8, "name")}];
                  if (v36)
                  {
                    [v36 addObject:v35];
                  }

                  else
                  {
                    v37 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v35, 0}];
                    [*(a1 + 80) setObject:v37 forKey:{objc_msgSend(v8, "name")}];
                  }
                }

                v32 = [v31 countByEnumeratingWithState:&v315 objects:&v342 count:16];
              }

              while (v32);
            }
          }
        }

        v38 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        [v38 addObjectsFromArray:{objc_msgSend(v238, "attributeKeys")}];
        [v38 addObjectsFromArray:{objc_msgSend(v239, "attributeKeys")}];
        v309 = 0u;
        v310 = 0u;
        v307 = 0u;
        v308 = 0u;
        v39 = [v38 countByEnumeratingWithState:&v307 objects:v340 count:16];
        if (v39)
        {
          v40 = *v308;
          do
          {
            for (m = 0; m != v39; ++m)
            {
              if (*v308 != v40)
              {
                objc_enumerationMutation(v38);
              }

              v42 = *(*(&v307 + 1) + 8 * m);
              [(_NSSQLiteStoreMigrator *)a1 _determineAttributeTriggerToMigrateForAttributeNamed:v42 withSourceEntity:v9 andDestinationEntity:v8];
              [(_NSSQLiteStoreMigrator *)a1 _determineRTreeExtensionsToMigrateForAttributeNamed:v42 withSourceEntity:v9 andDestinationEntity:v8];
            }

            v39 = [v38 countByEnumeratingWithState:&v307 objects:v340 count:16];
          }

          while (v39);
        }

        v43 = [-[NSSQLEntity_DerivedAttributesExtension entityDescription](v9 "entityDescription")];
        v44 = [objc_msgSend(v8 "entityDescription")];
        v45 = [v43 sortedArrayUsingComparator:&__block_literal_global_499];
        v46 = [v44 sortedArrayUsingComparator:&__block_literal_global_501];
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v352 = __83___NSSQLiteStoreMigrator__indexMigrationBlockForSourceEntity_andDestinationEntity___block_invoke;
        v353 = &unk_1E6EC46B8;
        v354 = a1;
        v355 = v8;
        v356 = v9;
        v47 = [&buf copy];
        v47[2](v47, v45, v46);

        v48 = [-[NSSQLEntity_DerivedAttributesExtension entityDescription](v9 "entityDescription")];
        v49 = [objc_msgSend(v8 "entityDescription")];
        v50 = [v48 sortedArrayUsingComparator:&__block_literal_global_503];
        v51 = [v49 sortedArrayUsingComparator:&__block_literal_global_505];
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v352 = __83___NSSQLiteStoreMigrator__indexMigrationBlockForSourceEntity_andDestinationEntity___block_invoke;
        v353 = &unk_1E6EC46B8;
        v354 = a1;
        v355 = v8;
        v356 = v9;
        v52 = [&buf copy];
        v52[2](v52, v50, v51);

        v53 = [(NSSQLEntity *)v9 derivedAttributesExtension];
        if (v53)
        {
          [*(a1 + 184) addObject:v53];
        }

        v54 = [(NSSQLEntity *)v8 derivedAttributesExtension];
        if (v54)
        {
          [*(a1 + 192) addObject:v54];
        }

        if (v9)
        {
          [v241 removeObject:v9];
        }

        objc_autoreleasePoolPop(context);
        v6 = v236 + 1;
      }

      while (v236 + 1 != v235);
      v55 = [obj countByEnumeratingWithState:&v311 objects:v341 count:16];
      v235 = v55;
    }

    while (v55);
  }

  v349 = 0u;
  v348 = 0u;
  v347 = 0u;
  v346 = 0u;
  v56 = [v241 countByEnumeratingWithState:&v346 objects:&buf count:16];
  if (v56)
  {
    v259 = *v347;
    do
    {
      for (n = 0; n != v56; ++n)
      {
        if (*v347 != v259)
        {
          objc_enumerationMutation(v241);
        }

        v58 = *(*(&v346 + 1) + 8 * n);
        v59 = objc_autoreleasePoolPush();
        v345 = 0u;
        v344 = 0u;
        v343 = 0u;
        v342 = 0u;
        v60 = [objc_msgSend(v58 "entityDescription")];
        v61 = [v60 countByEnumeratingWithState:&v342 objects:v350 count:16];
        if (v61)
        {
          v62 = *v343;
          do
          {
            for (ii = 0; ii != v61; ++ii)
            {
              if (*v343 != v62)
              {
                objc_enumerationMutation(v60);
              }

              v64 = *(*(&v342 + 1) + 8 * ii);
              [(_NSSQLiteStoreMigrator *)a1 _determineAttributeTriggerToMigrateForAttributeNamed:v64 withSourceEntity:v58 andDestinationEntity:0];
              [(_NSSQLiteStoreMigrator *)a1 _determineRTreeExtensionsToMigrateForAttributeNamed:v64 withSourceEntity:v58 andDestinationEntity:0];
            }

            v61 = [v60 countByEnumeratingWithState:&v342 objects:v350 count:16];
          }

          while (v61);
        }

        objc_autoreleasePoolPop(v59);
      }

      v56 = [v241 countByEnumeratingWithState:&v346 objects:&buf count:16];
    }

    while (v56);
  }

  v342 = 0u;
  v343 = 0u;
  v344 = 0u;
  v345 = 0u;
  v240 = [*(a1 + 40) entityMappings];
  v246 = [v240 countByEnumeratingWithState:&v342 objects:v350 count:16];
  if (v246)
  {
    v242 = *v343;
    do
    {
      v65 = 0;
      do
      {
        if (*v343 != v242)
        {
          v66 = v65;
          objc_enumerationMutation(v240);
          v65 = v66;
        }

        v250 = v65;
        v67 = *(*(&v342 + 1) + 8 * v65);
        v254 = objc_autoreleasePoolPush();
        v68 = [*(a1 + 16) entityNamed:{objc_msgSend(v67, "destinationEntityName")}];
        v69 = [*(a1 + 24) entityNamed:{objc_msgSend(v67, "sourceEntityName")}];
        v260 = [[_NSSQLEntityMigrationDescription alloc] initWithEntityMapping:v67 sourceEntity:v69 destinationEntity:v68];
        if (v69)
        {
          v70 = v68 == 0;
        }

        else
        {
          v70 = 1;
        }

        if (!v70)
        {
          [*(a1 + 88) setObject:v68 forKey:{objc_msgSend(v69, "name")}];
        }

        if ([v67 mappingType] != 3 && !objc_msgSend(objc_msgSend(v68, "name"), "length"))
        {
          v220 = MEMORY[0x1E695DF20];
          v221 = [v67 name];
          v222 = [v220 dictionaryWithObjectsAndKeys:{v221, @"entityMapping", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", objc_msgSend(v67, "mappingType")), @"mappingType", 0}];
          v223 = [_NSCoreDataException exceptionWithName:134110 code:@"Unsupported entity mapping type with empty entity name" reason:v222 userInfo:?];
          objc_exception_throw(v223);
        }

        v71 = [v68 name];
        v72 = [v67 mappingType];
        if (v72 > 3)
        {
          if (v72 == 5)
          {
            if (!v67 || (v67[120] & 2) == 0)
            {
              if (!v71)
              {
                goto LABEL_150;
              }

LABEL_125:
              [*(a1 + 112) setObject:v260 forKey:v71];
              goto LABEL_150;
            }

            if (!*(a1 + 56))
            {
              *(a1 + 56) = [(NSSQLiteConnection *)*(a1 + 48) fetchTableCreationSQL];
            }

            v81 = [objc_msgSend(v69 "rootEntity")];
            v349 = 0u;
            v348 = 0u;
            v347 = 0u;
            v346 = 0u;
            v82 = *(a1 + 56);
            v83 = [v82 countByEnumeratingWithState:&v346 objects:&buf count:16];
            if (v83)
            {
              v84 = *v347;
LABEL_131:
              v85 = 0;
              while (1)
              {
                if (*v347 != v84)
                {
                  objc_enumerationMutation(v82);
                }

                v86 = *(*(&v346 + 1) + 8 * v85);
                v87 = [v86 firstObject];
                v88 = [v86 lastObject];
                if ([v81 isEqual:v87])
                {
                  break;
                }

                if (v83 == ++v85)
                {
                  v83 = [v82 countByEnumeratingWithState:&v346 objects:&buf count:16];
                  if (v83)
                  {
                    goto LABEL_131;
                  }

                  goto LABEL_141;
                }
              }

              if ([v88 rangeOfString:@" UNIQUE"] != 0x7FFFFFFFFFFFFFFFLL)
              {
                goto LABEL_141;
              }

              if (v71)
              {
                goto LABEL_125;
              }
            }

            else
            {
LABEL_141:
              if (v260)
              {
                *(v260 + 96) = 1;
                [v67 setMappingType:4];
                [v67 setName:{objc_msgSend(objc_msgSend(v67, "name"), "stringByAppendingString:", @"_AsCopy"}];
                *(v260 + 12) = 2;
              }

              else
              {
                [v67 setMappingType:4];
                [v67 setName:{objc_msgSend(objc_msgSend(v67, "name"), "stringByAppendingString:", @"_AsCopy"}];
              }

              if (v71)
              {
                goto LABEL_119;
              }
            }
          }

          else
          {
            if (v72 != 4)
            {
LABEL_328:
              v224 = MEMORY[0x1E695DF20];
              v225 = [v67 name];
              v226 = [v224 dictionaryWithObjectsAndKeys:{v225, @"entityMapping", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", objc_msgSend(v67, "mappingType")), @"mappingType", 0}];
              v227 = [_NSCoreDataException exceptionWithName:134110 code:@"Unsupported entity mapping type" reason:v226 userInfo:?];
              objc_exception_throw(v227);
            }

            if (v71)
            {
LABEL_119:
              [*(a1 + 120) setObject:v260 forKey:v71];
            }
          }
        }

        else
        {
          if (v72 != 2)
          {
            if (v72 != 3)
            {
              goto LABEL_328;
            }

            *(a1 + 136) = 1;
            if (![objc_msgSend(v69 "name")])
            {
              v228 = MEMORY[0x1E695DF20];
              v229 = [v67 name];
              v230 = [v228 dictionaryWithObjectsAndKeys:{v229, @"entityMapping", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", objc_msgSend(v67, "mappingType")), @"mappingType", 0}];
              v231 = [_NSCoreDataException exceptionWithName:134110 code:@"Unsupported entity mapping type with empty entity name" reason:v230 userInfo:?];
              objc_exception_throw(v231);
            }

            v73 = [v69 name];
            v74 = [*(a1 + 16) entityNamed:v73];
            v75 = v74;
            if (!v74 || (v76 = [objc_msgSend(objc_msgSend(v74 "entityDescription")]) == 0 || !objc_msgSend(v76, "isEqualToString:", v73))
            {
              [*(a1 + 104) setObject:v260 forKey:v73];
              goto LABEL_150;
            }

            v77 = objc_autoreleasePoolPush();
            _pflogInitialize(2);
            if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
            {
              if (_pflogging_catastrophic_mode)
              {
                LogStream = _PFLogGetLogStream(1);
                if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(buf) = 138412290;
                  *(&buf + 4) = v73;
                  v79 = LogStream;
                  v80 = "CoreData: error: Collapsing Entity Hierarchy for: %@\n";
                  goto LABEL_153;
                }
              }

              else
              {
                v89 = _PFLogGetLogStream(2);
                if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(buf) = 138412290;
                  *(&buf + 4) = v73;
                  v79 = v89;
                  v80 = "CoreData: warning: Collapsing Entity Hierarchy for: %@\n";
LABEL_153:
                  _os_log_error_impl(&dword_18565F000, v79, OS_LOG_TYPE_ERROR, v80, &buf, 0xCu);
                }
              }
            }

            if (_pflogging_catastrophic_mode)
            {
              v90 = 1;
            }

            else
            {
              v90 = 2;
            }

            _NSCoreDataLog_console(v90, "Collapsing Entity Hierarchy for: %@", v73);
            objc_autoreleasePoolPop(v77);
            [*(a1 + 72) setObject:v75 forKey:{objc_msgSend(v69, "name")}];
            goto LABEL_150;
          }

          *(a1 + 136) = 1;
          if (v71)
          {
            [*(a1 + 96) setObject:v260 forKey:v71];
          }
        }

LABEL_150:

        objc_autoreleasePoolPop(v254);
        v65 = v250 + 1;
      }

      while ((v250 + 1) != v246);
      v91 = [v240 countByEnumeratingWithState:&v342 objects:v350 count:16];
      v246 = v91;
    }

    while (v91);
  }

  v323 = 0u;
  v324 = 0u;
  v325 = 0u;
  v326 = 0u;
  v92 = *(a1 + 112);
  v93 = [v92 countByEnumeratingWithState:&v323 objects:&buf count:16];
  if (v93)
  {
    v94 = *v324;
    do
    {
      for (jj = 0; jj != v93; ++jj)
      {
        if (*v324 != v94)
        {
          objc_enumerationMutation(v92);
        }

        v96 = *(*(&v323 + 1) + 8 * jj);
        v97 = objc_autoreleasePoolPush();
        -[_NSSQLiteStoreMigrator _addEntityMigration:toTableMigrationForRootEntity:tableMigrationType:](a1, [*(a1 + 112) objectForKey:v96], objc_msgSend(objc_msgSend(*(a1 + 16), "entityNamed:", v96), "rootEntity"), 3);
        objc_autoreleasePoolPop(v97);
      }

      v93 = [v92 countByEnumeratingWithState:&v323 objects:&buf count:16];
    }

    while (v93);
  }

  v98 = objc_alloc(MEMORY[0x1E695DFA8]);
  v99 = *(a1 + 16);
  if (v99)
  {
    v100 = *(v99 + 32);
  }

  else
  {
    v100 = 0;
  }

  v101 = [v98 initWithCapacity:{objc_msgSend(v100, "count")}];
  v322 = 0u;
  v321 = 0u;
  v320 = 0u;
  v319 = 0u;
  v102 = *(a1 + 120);
  v103 = [v102 countByEnumeratingWithState:&v319 objects:v350 count:16];
  if (v103)
  {
    v104 = *v320;
    do
    {
      for (kk = 0; kk != v103; ++kk)
      {
        if (*v320 != v104)
        {
          objc_enumerationMutation(v102);
        }

        [v101 addObject:{objc_msgSend(objc_msgSend(*(a1 + 16), "entityNamed:", *(*(&v319 + 1) + 8 * kk)), "rootEntity")}];
      }

      v103 = [v102 countByEnumeratingWithState:&v319 objects:v350 count:16];
    }

    while (v103);
  }

  v318 = 0u;
  v317 = 0u;
  v315 = 0u;
  v316 = 0u;
  v106 = *(a1 + 112);
  v107 = [v106 countByEnumeratingWithState:&v315 objects:&v346 count:16];
  if (v107)
  {
    v108 = *v316;
    do
    {
      for (mm = 0; mm != v107; ++mm)
      {
        if (*v316 != v108)
        {
          objc_enumerationMutation(v106);
        }

        [v101 addObject:{objc_msgSend(objc_msgSend(*(a1 + 16), "entityNamed:", *(*(&v315 + 1) + 8 * mm)), "rootEntity")}];
      }

      v107 = [v106 countByEnumeratingWithState:&v315 objects:&v346 count:16];
    }

    while (v107);
  }

  v313 = 0u;
  v314 = 0u;
  v311 = 0u;
  v312 = 0u;
  v110 = *(a1 + 96);
  v111 = [v110 countByEnumeratingWithState:&v311 objects:&v342 count:16];
  if (v111)
  {
    v112 = *v312;
    do
    {
      for (nn = 0; nn != v111; ++nn)
      {
        if (*v312 != v112)
        {
          objc_enumerationMutation(v110);
        }

        v114 = *(*(&v311 + 1) + 8 * nn);
        v115 = objc_autoreleasePoolPush();
        v116 = [objc_msgSend(*(a1 + 16) entityNamed:{v114), "rootEntity"}];
        v117 = [*(a1 + 96) objectForKey:v114];
        if ([v101 containsObject:v116])
        {
          v118 = 3;
        }

        else
        {
          v118 = 0;
        }

        [(_NSSQLiteStoreMigrator *)a1 _addEntityMigration:v117 toTableMigrationForRootEntity:v116 tableMigrationType:v118];
        objc_autoreleasePoolPop(v115);
      }

      v111 = [v110 countByEnumeratingWithState:&v311 objects:&v342 count:16];
    }

    while (v111);
  }

  v309 = 0u;
  v310 = 0u;
  v307 = 0u;
  v308 = 0u;
  v261 = *(a1 + 104);
  v119 = [v261 countByEnumeratingWithState:&v307 objects:v341 count:16];
  if (v119)
  {
    v120 = *v308;
    do
    {
      for (i1 = 0; i1 != v119; ++i1)
      {
        if (*v308 != v120)
        {
          objc_enumerationMutation(v261);
        }

        v122 = *(*(&v307 + 1) + 8 * i1);
        v123 = objc_autoreleasePoolPush();
        v124 = [*(a1 + 24) entityNamed:v122];
        v125 = [v124 rootEntity];
        v126 = [*(a1 + 104) objectForKey:v122];
        if (v124 && !v124[20] || [*(a1 + 104) objectForKey:{objc_msgSend(v125, "name")}])
        {
          [(_NSSQLiteStoreMigrator *)a1 _addEntityMigration:v126 toTableMigrationForRootEntity:v125 tableMigrationType:1];
        }

        else
        {
          -[_NSSQLiteStoreMigrator _addEntityMigration:toTableMigrationForRootEntity:tableMigrationType:](a1, v126, [objc_msgSend(*(a1 + 88) objectForKey:{objc_msgSend(v125, "name")), "rootEntity"}], 3);
        }

        objc_autoreleasePoolPop(v123);
      }

      v119 = [v261 countByEnumeratingWithState:&v307 objects:v341 count:16];
    }

    while (v119);
  }

  v305 = 0u;
  v306 = 0u;
  v303 = 0u;
  v304 = 0u;
  v127 = *(a1 + 80);
  v128 = [v127 countByEnumeratingWithState:&v303 objects:v340 count:16];
  if (v128)
  {
    v129 = *v304;
    do
    {
      for (i2 = 0; i2 != v128; ++i2)
      {
        if (*v304 != v129)
        {
          objc_enumerationMutation(v127);
        }

        v131 = *(*(&v303 + 1) + 8 * i2);
        v132 = objc_autoreleasePoolPush();
        v133 = [*(a1 + 16) entityNamed:v131];
        v134 = [*(a1 + 120) objectForKey:{objc_msgSend(v133, "name")}];
        if (v134)
        {
          -[_NSSQLiteStoreMigrator _addEntityMigration:toTableMigrationForRootEntity:tableMigrationType:](a1, v134, [v133 rootEntity], 3);
        }

        objc_autoreleasePoolPop(v132);
      }

      v128 = [v127 countByEnumeratingWithState:&v303 objects:v340 count:16];
    }

    while (v128);
  }

  v301 = 0u;
  v302 = 0u;
  v299 = 0u;
  v300 = 0u;
  v135 = *(a1 + 120);
  v136 = [v135 countByEnumeratingWithState:&v299 objects:&v336 count:16];
  if (v136)
  {
    v137 = *v300;
    do
    {
      for (i3 = 0; i3 != v136; ++i3)
      {
        if (*v300 != v137)
        {
          objc_enumerationMutation(v135);
        }

        v139 = *(*(&v299 + 1) + 8 * i3);
        v140 = objc_autoreleasePoolPush();
        v141 = [*(a1 + 16) entityNamed:v139];
        if (![*(a1 + 80) objectForKey:v139])
        {
          v142 = [v141 rootEntity];
          v143 = [*(a1 + 128) objectForKey:{objc_msgSend(v142, "name")}];
          if (v143 && *(v143 + 24) != 2)
          {
            v144 = 3;
          }

          else
          {
            v144 = 2;
          }

          -[_NSSQLiteStoreMigrator _addEntityMigration:toTableMigrationForRootEntity:tableMigrationType:](a1, [*(a1 + 120) objectForKey:v139], v142, v144);
        }

        objc_autoreleasePoolPop(v140);
      }

      v136 = [v135 countByEnumeratingWithState:&v299 objects:&v336 count:16];
    }

    while (v136);
  }

  v145 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{4 * objc_msgSend(*(a1 + 128), "count")}];
  v262 = [objc_msgSend(*(a1 + 128) "allValues")];
  v146 = *(a1 + 48);
  if (!v146)
  {
    v251 = 0;
    goto LABEL_335;
  }

  v251 = [(NSSQLiteConnection *)v146 _hasTableWithName:0 isTemp:?];
  v147 = *(a1 + 48);
  if (!v147)
  {
LABEL_335:
    v247 = 0;
    goto LABEL_226;
  }

  v247 = [(NSSQLiteConnection *)v147 _hasTableWithName:0 isTemp:?];
LABEL_226:
  *(a1 + 216) = (v251 | v247) & 1;
  v243 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v297 = 0u;
  v298 = 0u;
  v295 = 0u;
  v296 = 0u;
  v148 = [v262 countByEnumeratingWithState:&v295 objects:v335 count:16];
  if (!v148)
  {
    LOBYTE(v255) = 0;
    goto LABEL_249;
  }

  v255 = 0;
  v149 = *v296;
  do
  {
    v150 = 0;
    do
    {
      if (*v296 != v149)
      {
        objc_enumerationMutation(v262);
      }

      v151 = *(*(&v295 + 1) + 8 * v150);
      v152 = objc_autoreleasePoolPush();
      [(_NSSQLTableMigrationDescription *)v151 appendStatementsToRenameTables:v145 migrationContext:a1];
      if (-[_NSSQLiteStoreMigrator enforceCloudKitConstraintsForEntity:](a1, [v151 rootEntity]))
      {
        if (v151)
        {
          v153 = v151[6];
          if ((v153 - 1) > 2)
          {
            v255 |= v153 == 0;
            goto LABEL_243;
          }

          v154 = v153 == 3;
          v155 = [(_NSSQLTableMigrationDescription *)v151 newCloudKitMetadataUpdateStatements:v243];
          if (v155)
          {
            [*(a1 + 208) addObjectsFromArray:v155];
          }

          else
          {
            v156 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v151;
              _os_log_error_impl(&dword_18565F000, v156, OS_LOG_TYPE_ERROR, "CoreData: fault: tableMigration returned nil cloudkit update statements: %@\n", &buf, 0xCu);
            }

            v157 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v157, OS_LOG_TYPE_FAULT))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v151;
              _os_log_fault_impl(&dword_18565F000, v157, OS_LOG_TYPE_FAULT, "CoreData: tableMigration returned nil cloudkit update statements: %@", &buf, 0xCu);
            }
          }

          v158 = v154 | v255;
        }

        else
        {
          v158 = 1;
        }

        v255 = v158;
      }

LABEL_243:
      objc_autoreleasePoolPop(v152);
      ++v150;
    }

    while (v148 != v150);
    v159 = [v262 countByEnumeratingWithState:&v295 objects:v335 count:16];
    v148 = v159;
  }

  while (v159);
LABEL_249:
  if ([v243 count])
  {
    [v243 sortUsingComparator:&__block_literal_global_441];
    v293 = 0u;
    v294 = 0u;
    v291 = 0u;
    v292 = 0u;
    v160 = [v243 countByEnumeratingWithState:&v291 objects:v334 count:16];
    if (v160)
    {
      v161 = *v292;
      do
      {
        for (i4 = 0; i4 != v160; ++i4)
        {
          if (*v292 != v161)
          {
            objc_enumerationMutation(v243);
          }

          v163 = *(*(&v291 + 1) + 8 * i4);
          v164 = objc_autoreleasePoolPush();
          if (v251)
          {
            v165 = [NSSQLiteStatement alloc];
            v166 = -[NSSQLiteStatement initWithEntity:sqlString:](v165, "initWithEntity:sqlString:", 0, [MEMORY[0x1E696AEC0] stringWithFormat:@"UPDATE ANSCKRECORDMETADATA SET ZENTITYID = %@ WHERE ZENTITYID = %@", objc_msgSend(v163, "objectAtIndexedSubscript:", 1), objc_msgSend(v163, "objectAtIndexedSubscript:", 0)]);
            [*(a1 + 208) addObject:v166];
          }

          if (v247)
          {
            v167 = [NSSQLiteStatement alloc];
            v168 = -[NSSQLiteStatement initWithEntity:sqlString:](v167, "initWithEntity:sqlString:", 0, [MEMORY[0x1E696AEC0] stringWithFormat:@"UPDATE ANSCKHISTORYANALYZERSTATE SET ZENTITYID = %@ WHERE ZENTITYID = %@", objc_msgSend(v163, "objectAtIndexedSubscript:", 1), objc_msgSend(v163, "objectAtIndexedSubscript:", 0)]);
            [*(a1 + 208) addObject:v168];
          }

          objc_autoreleasePoolPop(v164);
        }

        v160 = [v243 countByEnumeratingWithState:&v291 objects:v334 count:16];
      }

      while (v160);
    }
  }

  if (([*(a1 + 208) count] != 0) | v255 & 1)
  {
    v169 = [objc_msgSend(*(a1 + 8) "metadata")];
    [v169 setObject:MEMORY[0x1E695E0F8] forKey:@"PFCloudKitMetadataNeedsZoneFetchAfterClientMigrationKey"];
    v170 = *(a1 + 8);
    if (v170)
    {
      [(NSSQLCore *)v170 _setMetadata:v169 clean:0];
    }
  }

  v171 = [MEMORY[0x1E695DF70] array];
  v289 = 0u;
  v290 = 0u;
  v287 = 0u;
  v288 = 0u;
  v172 = [v145 countByEnumeratingWithState:&v287 objects:v333 count:16];
  if (v172)
  {
    v173 = *v288;
    do
    {
      for (i5 = 0; i5 != v172; ++i5)
      {
        if (*v288 != v173)
        {
          objc_enumerationMutation(v145);
        }

        v175 = *(*(&v287 + 1) + 8 * i5);
        if ([objc_msgSend(v175 "sqlString")])
        {
          [v171 addObject:v175];
        }
      }

      v172 = [v145 countByEnumeratingWithState:&v287 objects:v333 count:16];
    }

    while (v172);
  }

  if ([v171 count])
  {
    v244 = objc_autoreleasePoolPush();
    v256 = [MEMORY[0x1E695DF70] array];
    v252 = [MEMORY[0x1E695DF70] array];
    v285 = 0u;
    v286 = 0u;
    v283 = 0u;
    v284 = 0u;
    v176 = [v171 countByEnumeratingWithState:&v283 objects:v332 count:16];
    if (v176)
    {
      v177 = *v284;
      do
      {
        for (i6 = 0; i6 != v176; ++i6)
        {
          if (*v284 != v177)
          {
            objc_enumerationMutation(v171);
          }

          v179 = *(*(&v283 + 1) + 8 * i6);
          v180 = objc_autoreleasePoolPush();
          v181 = [objc_msgSend(v179 "sqlString")];
          if ([v181 count] == 6)
          {
            [v256 addObject:{objc_msgSend(v181, "objectAtIndexedSubscript:", 2)}];
            [v252 addObject:{objc_msgSend(v181, "lastObject")}];
          }

          objc_autoreleasePoolPop(v180);
        }

        v176 = [v171 countByEnumeratingWithState:&v283 objects:v332 count:16];
      }

      while (v176);
    }

    v182 = [MEMORY[0x1E695DF70] array];
    v248 = [MEMORY[0x1E695DF70] array];
    for (i7 = 0; [v256 count] > i7; ++i7)
    {
      v184 = objc_autoreleasePoolPush();
      v185 = [v256 objectAtIndexedSubscript:i7];
      v186 = [v252 objectAtIndexedSubscript:i7];
      v187 = [v185 stringByAppendingString:@"TEMP"];
      v188 = [(NSSQLiteAdapter *)*(a1 + 32) newRenameTableStatementFrom:v185 to:v187];
      [v182 addObject:v188];
      v189 = [(NSSQLiteAdapter *)*(a1 + 32) newRenameTableStatementFrom:v187 to:v186];
      [v248 addObject:v189];

      objc_autoreleasePoolPop(v184);
    }

    [v145 removeObjectsInArray:v171];
    [v145 insertObjects:v248 atIndexes:{objc_msgSend(MEMORY[0x1E696AC90], "indexSetWithIndexesInRange:", 0, objc_msgSend(v248, "count"))}];
    [v145 insertObjects:v182 atIndexes:{objc_msgSend(MEMORY[0x1E696AC90], "indexSetWithIndexesInRange:", 0, objc_msgSend(v182, "count"))}];
    objc_autoreleasePoolPop(v244);
  }

  v281 = 0u;
  v282 = 0u;
  v279 = 0u;
  v280 = 0u;
  v190 = [v262 countByEnumeratingWithState:&v279 objects:v331 count:16];
  if (v190)
  {
    v191 = *v280;
    do
    {
      for (i8 = 0; i8 != v190; ++i8)
      {
        if (*v280 != v191)
        {
          objc_enumerationMutation(v262);
        }

        v193 = *(*(&v279 + 1) + 8 * i8);
        v194 = objc_autoreleasePoolPush();
        [(_NSSQLTableMigrationDescription *)v193 appendStatementsToCreateOrDropTables:v145 migrationContext:a1];
        objc_autoreleasePoolPop(v194);
      }

      v190 = [v262 countByEnumeratingWithState:&v279 objects:v331 count:16];
    }

    while (v190);
  }

  v277 = 0u;
  v278 = 0u;
  v275 = 0u;
  v276 = 0u;
  v195 = [v262 countByEnumeratingWithState:&v275 objects:v330 count:16];
  if (v195)
  {
    v196 = *v276;
    do
    {
      for (i9 = 0; i9 != v195; ++i9)
      {
        if (*v276 != v196)
        {
          objc_enumerationMutation(v262);
        }

        v198 = *(*(&v275 + 1) + 8 * i9);
        v199 = objc_autoreleasePoolPush();
        [(_NSSQLTableMigrationDescription *)v198 appendStatementsToPerformMigration:v145 migrationContext:a1];
        objc_autoreleasePoolPop(v199);
      }

      v195 = [v262 countByEnumeratingWithState:&v275 objects:v330 count:16];
    }

    while (v195);
  }

  v273 = 0u;
  v274 = 0u;
  v271 = 0u;
  v272 = 0u;
  v200 = [v262 countByEnumeratingWithState:&v271 objects:v329 count:16];
  if (v200)
  {
    v201 = *v272;
    do
    {
      for (i10 = 0; i10 != v200; ++i10)
      {
        if (*v272 != v201)
        {
          objc_enumerationMutation(v262);
        }

        v203 = *(*(&v271 + 1) + 8 * i10);
        v204 = objc_autoreleasePoolPush();
        [(_NSSQLTableMigrationDescription *)v203 appendStatementsToCompleteMigration:v145 migrationContext:a1];
        objc_autoreleasePoolPop(v204);
      }

      v200 = [v262 countByEnumeratingWithState:&v271 objects:v329 count:16];
    }

    while (v200);
  }

  *(a1 + 176) = objc_alloc_init(MEMORY[0x1E695DF70]);
  v267 = 0u;
  v268 = 0u;
  v269 = 0u;
  v270 = 0u;
  v205 = [v262 countByEnumeratingWithState:&v267 objects:v328 count:16];
  if (v205)
  {
    v206 = *v268;
    do
    {
      for (i11 = 0; i11 != v205; ++i11)
      {
        if (*v268 != v206)
        {
          objc_enumerationMutation(v262);
        }

        v208 = *(*(&v267 + 1) + 8 * i11);
        v209 = objc_autoreleasePoolPush();
        [(_NSSQLTableMigrationDescription *)v208 appendDefaultValueStatementsToCompleteMigration:a1 migrationContext:?];
        objc_autoreleasePoolPop(v209);
      }

      v205 = [v262 countByEnumeratingWithState:&v267 objects:v328 count:16];
    }

    while (v205);
  }

  v265 = 0u;
  v266 = 0u;
  v263 = 0u;
  v264 = 0u;
  v210 = *(a1 + 16);
  if (v210)
  {
    v211 = *(v210 + 32);
  }

  else
  {
    v211 = 0;
  }

  v212 = [v211 countByEnumeratingWithState:&v263 objects:v327 count:16];
  if (v212)
  {
    v213 = *v264;
    do
    {
      for (i12 = 0; i12 != v212; ++i12)
      {
        if (*v264 != v213)
        {
          objc_enumerationMutation(v211);
        }

        v215 = *(*(&v263 + 1) + 8 * i12);
        v216 = objc_autoreleasePoolPush();
        v217 = [(NSSQLiteAdapter *)*(a1 + 32) newCreateIndexStatementsForEntity:v215 defaultIndicesOnly:0];
        [v145 addObjectsFromArray:v217];

        objc_autoreleasePoolPop(v216);
      }

      v212 = [v211 countByEnumeratingWithState:&v263 objects:v327 count:16];
    }

    while (v212);
  }

  objc_autoreleasePoolPop(v232);
LABEL_326:
  v218 = *MEMORY[0x1E69E9840];
  return v145;
}

- (uint64_t)deleteStatementsForHistory
{
  v151 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v104 = 0;
    goto LABEL_204;
  }

  v1 = a1;
  context = objc_autoreleasePoolPush();
  v135 = +[NSMappingModel migrationDebugLevel];
  if ([*(v1 + 104) count])
  {
    v2 = *(v1 + 16);
    [*(v1 + 8) options];
    v3 = [_PFPersistentHistoryModel newPersistentHistorySQLModelForSQLModel:v2 options:?];
    v4 = [v3 entityNamed:@"CHANGE"];
    v5 = [v3 entityNamed:@"TRANSACTION"];
    v134 = v4;
    if (v4)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      goto LABEL_195;
    }

    v130 = v5;
    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    v136 = v1;
    v7 = *(v1 + 104);
    v8 = 0;
    v9 = [v7 countByEnumeratingWithState:&v141 objects:v150 count:16];
    if (v9)
    {
      v10 = *v142;
      do
      {
        v11 = 0;
        do
        {
          if (*v142 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v141 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          v14 = [*(v1 + 104) objectForKey:v12];
          v15 = v14;
          if (v8)
          {
            v16 = [v14 sourceEntity];
            if (v16)
            {
              v17 = *(v16 + 184);
            }

            else
            {
              v17 = 0;
            }

            [v8 appendFormat:@", %u", v17];
          }

          else
          {
            v18 = objc_alloc(MEMORY[0x1E696AD60]);
            v19 = [v15 sourceEntity];
            if (v19)
            {
              v20 = *(v19 + 184);
            }

            else
            {
              v20 = 0;
            }

            v8 = [v18 initWithFormat:@"%u", v20];
          }

          objc_autoreleasePoolPop(v13);
          ++v11;
        }

        while (v9 != v11);
        v21 = [v7 countByEnumeratingWithState:&v141 objects:v150 count:16];
        v9 = v21;
      }

      while (v21);
    }

    v22 = [objc_msgSend(v134[5] objectForKey:{@"ENTITY", "columnName"}];
    v23 = [objc_msgSend(v134[5] objectForKey:{@"TRANSACTIONID", "columnName"}];
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT MAX(%@) FROM %@ WHERE %@ IN (%@)", v23, objc_msgSend(v134, "tableName"), v22, v8];
    v25 = [[NSSQLiteStatement alloc] initWithEntity:v134 sqlString:v24];
    [(NSSQLiteConnection *)*(v1 + 48) prepareSQLStatement:v25];
    [*(v1 + 48) execute];
    v26 = [(NSSQLiteConnection *)*(v1 + 48) newFetchedArray];
    v27 = v26;
    if (v26)
    {
      if ([v26 count] < 2)
      {
        v30 = 0;
      }

      else
      {
        v28 = [v27 objectAtIndex:0];
        if (v28 == NSKeyValueCoding_NullValue)
        {
          v29 = 0;
        }

        else
        {
          v29 = [v27 objectAtIndex:0];
        }

        v30 = v29;
      }

      v132 = v30;
    }

    else
    {
      v132 = 0;
    }

    [(NSSQLiteConnection *)*(v136 + 48) endFetchAndRecycleStatement:?];

    v31 = v132;
    if (!v132)
    {
      goto LABEL_120;
    }

    v32 = [v132 longLongValue] < 1;
    v31 = v132;
    if (v32)
    {
      goto LABEL_120;
    }

    v33 = [objc_msgSend(*(v136 + 8) "options")];
    if ([v33 isNSDictionary] && objc_msgSend(objc_msgSend(v33, "valueForKey:", @"NSPersistentHistoryAllowPartialHistoryMigration"), "BOOLValue"))
    {
      v34 = objc_autoreleasePoolPush();
      _pflogInitialize(2);
      if (!_NSCoreDataIsLogEnabled(2) || _pflogging_enable_oslog < 1)
      {
        goto LABEL_206;
      }

      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          v36 = [*(v136 + 104) allKeys];
          *buf = 138412290;
          v147 = v36;
          v37 = "CoreData: error: Warning: Persistent History will be removing entries that tracked the following entities being removed: %@\n";
LABEL_237:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, v37, buf, 0xCu);
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(2);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          v124 = [*(v136 + 104) allKeys];
          *buf = 138412290;
          v147 = v124;
          v37 = "CoreData: warning: Warning: Persistent History will be removing entries that tracked the following entities being removed: %@\n";
          goto LABEL_237;
        }
      }

LABEL_206:
      v109 = _pflogging_catastrophic_mode == 0;
      v110 = [*(v136 + 104) allKeys];
      v111 = 1;
      if (v109)
      {
        v111 = 2;
      }

      _NSCoreDataLog_console(v111, "Warning: Persistent History will be removing entries that tracked the following entities being removed: %@", v110);
      objc_autoreleasePoolPop(v34);
      v128 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DELETE FROM %@ WHERE %@ IN (%@)", objc_msgSend(v134, "tableName"), v22, v8];
      v129 = [(NSSQLiteAdapter *)*(v136 + 32) newStatementWithSQLString:v128];
      if (v135 <= 0)
      {
        [(NSSQLiteConnection *)*(v136 + 48) prepareAndExecuteSQLStatement:v129];
      }

      else
      {
        v112 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(4))
        {
          if (_pflogging_catastrophic_mode)
          {
            v113 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v147 = v129;
              _os_log_error_impl(&dword_18565F000, v113, OS_LOG_TYPE_ERROR, "CoreData: error: Begin executing mass delete of removed entries from history statement: %@\n", buf, 0xCu);
            }
          }

          else
          {
            v114 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v147 = v129;
              _os_log_impl(&dword_18565F000, v114, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Begin executing mass delete of removed entries from history statement: %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v115 = 1;
        }

        else
        {
          v115 = 4;
        }

        _NSCoreDataLog_console(v115, "Begin executing mass delete of removed entries from history statement: %@", v129);
        objc_autoreleasePoolPop(v112);
        [(NSSQLiteConnection *)*(v136 + 48) prepareAndExecuteSQLStatement:v129];
        v116 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(4))
        {
          if (_pflogging_catastrophic_mode)
          {
            v117 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v117, OS_LOG_TYPE_ERROR, "CoreData: error: Completed execution mass delete of removed entries from history statement.\n", buf, 2u);
            }
          }

          else
          {
            v118 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v118, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Completed execution mass delete of removed entries from history statement.\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v119 = 1;
        }

        else
        {
          v119 = 4;
        }

        _NSCoreDataLog_console(v119, "Completed execution mass delete of removed entries from history statement.");
        objc_autoreleasePoolPop(v116);
      }

LABEL_119:

      v31 = v132;
LABEL_120:

      v1 = v136;
      goto LABEL_121;
    }

    v38 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v39 = _pflogging_catastrophic_mode == 0;
      v40 = _PFLogGetLogStream(1);
      v41 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
      if (v39)
      {
        if (v41)
        {
LABEL_229:
          v120 = [v132 longLongValue];
          v121 = [*(v136 + 104) allKeys];
          *buf = 134218242;
          v147 = v120;
          v148 = 2112;
          v149 = v121;
          _os_log_error_impl(&dword_18565F000, v40, OS_LOG_TYPE_ERROR, "CoreData: error: Error: Persistent History (%lld) has to be truncated due to the following entities being removed: %@\n", buf, 0x16u);
        }
      }

      else if (v41)
      {
        goto LABEL_229;
      }
    }

    _NSCoreDataLog_console(1, "Error: Persistent History (%lld) has to be truncated due to the following entities being removed: %@", [v132 longLongValue], objc_msgSend(*(v136 + 104), "allKeys"));
    objc_autoreleasePoolPop(v38);
    v129 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DELETE FROM %@ WHERE Z_PK <= %lld", objc_msgSend(v130, "tableName"), objc_msgSend(v132, "longLongValue")];
    v127 = [(NSSQLiteAdapter *)*(v136 + 32) newStatementWithSQLString:v129];
    v128 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DELETE FROM %@ WHERE %@ <= %lld", objc_msgSend(v134, "tableName"), v23, objc_msgSend(v132, "longLongValue")];
    v126 = [(NSSQLiteAdapter *)*(v136 + 32) newStatementWithSQLString:v128];
    v42 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    if (!_NSCoreDataIsLogEnabled(2) || _pflogging_enable_oslog < 1)
    {
      goto LABEL_53;
    }

    if (_pflogging_catastrophic_mode)
    {
      v43 = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      *buf = 0;
      v44 = "CoreData: error: Warning: Dropping Indexes for Persistent History\n";
    }

    else
    {
      v43 = _PFLogGetLogStream(2);
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      *buf = 0;
      v44 = "CoreData: warning: Warning: Dropping Indexes for Persistent History\n";
    }

    _os_log_error_impl(&dword_18565F000, v43, OS_LOG_TYPE_ERROR, v44, buf, 2u);
LABEL_53:
    if (_pflogging_catastrophic_mode)
    {
      v45 = 1;
    }

    else
    {
      v45 = 2;
    }

    _NSCoreDataLog_console(v45, "Warning: Dropping Indexes for Persistent History");
    objc_autoreleasePoolPop(v42);
    v46 = *(v136 + 32);
    if (v46)
    {
      v131 = [(NSSQLiteAdapter *)v46 newDropIndexStatementsForEntity:v130 defaultIndicesOnly:0];
      v47 = *(v136 + 32);
      if (v47)
      {
        v125 = [(NSSQLiteAdapter *)v47 newDropIndexStatementsForEntity:v134 defaultIndicesOnly:0];
        goto LABEL_59;
      }
    }

    else
    {
      v131 = 0;
    }

    v125 = 0;
LABEL_59:
    v139 = 0u;
    v140 = 0u;
    v137 = 0u;
    v138 = 0u;
    v48 = [v131 arrayByAddingObjectsFromArray:v125];
    v49 = [v48 countByEnumeratingWithState:&v137 objects:v145 count:16];
    if (v49)
    {
      v50 = *v138;
      do
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v138 != v50)
          {
            objc_enumerationMutation(v48);
          }

          v52 = *(*(&v137 + 1) + 8 * i);
          if (v135 >= 1)
          {
            v53 = objc_autoreleasePoolPush();
            _pflogInitialize(4);
            if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
            {
              if (_pflogging_catastrophic_mode)
              {
                v54 = _PFLogGetLogStream(1);
                if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v147 = v52;
                  _os_log_error_impl(&dword_18565F000, v54, OS_LOG_TYPE_ERROR, "CoreData: error: Executing drop index from history statement: %@\n", buf, 0xCu);
                }
              }

              else
              {
                v55 = _PFLogGetLogStream(4);
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v147 = v52;
                  _os_log_impl(&dword_18565F000, v55, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing drop index from history statement: %@\n", buf, 0xCu);
                }
              }
            }

            if (_pflogging_catastrophic_mode)
            {
              v56 = 1;
            }

            else
            {
              v56 = 4;
            }

            _NSCoreDataLog_console(v56, "Executing drop index from history statement: %@", v52);
            objc_autoreleasePoolPop(v53);
          }

          [(NSSQLiteConnection *)*(v136 + 48) prepareAndExecuteSQLStatement:v52];
        }

        v49 = [v48 countByEnumeratingWithState:&v137 objects:v145 count:16];
      }

      while (v49);
    }

    v57 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v58 = _PFLogGetLogStream(1);
        if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_84;
        }

        v59 = [v132 longLongValue];
        *buf = 134217984;
        v147 = v59;
        v60 = "CoreData: error: Warning: Dropping Transactions prior to %lld for Persistent History\n";
      }

      else
      {
        v58 = _PFLogGetLogStream(2);
        if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_84;
        }

        v122 = [v132 longLongValue];
        *buf = 134217984;
        v147 = v122;
        v60 = "CoreData: warning: Warning: Dropping Transactions prior to %lld for Persistent History\n";
      }

      _os_log_error_impl(&dword_18565F000, v58, OS_LOG_TYPE_ERROR, v60, buf, 0xCu);
    }

LABEL_84:
    v61 = _pflogging_catastrophic_mode == 0;
    v62 = [v132 longLongValue];
    v63 = 1;
    if (v61)
    {
      v63 = 2;
    }

    _NSCoreDataLog_console(v63, "Warning: Dropping Transactions prior to %lld for Persistent History", v62);
    objc_autoreleasePoolPop(v57);
    if (v135 > 0)
    {
      v64 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v65 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v147 = v127;
            _os_log_error_impl(&dword_18565F000, v65, OS_LOG_TYPE_ERROR, "CoreData: error: Executing mass delete of transactions from history statement: %@\n", buf, 0xCu);
          }
        }

        else
        {
          v66 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v147 = v127;
            _os_log_impl(&dword_18565F000, v66, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing mass delete of transactions from history statement: %@\n", buf, 0xCu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v67 = 1;
      }

      else
      {
        v67 = 4;
      }

      _NSCoreDataLog_console(v67, "Executing mass delete of transactions from history statement: %@", v127);
      objc_autoreleasePoolPop(v64);
    }

    [(NSSQLiteConnection *)*(v136 + 48) prepareAndExecuteSQLStatement:v127];
    v68 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    if (!_NSCoreDataIsLogEnabled(2) || _pflogging_enable_oslog < 1)
    {
      goto LABEL_104;
    }

    if (_pflogging_catastrophic_mode)
    {
      v69 = _PFLogGetLogStream(1);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        v70 = [v132 longLongValue];
        *buf = 134217984;
        v147 = v70;
        v71 = "CoreData: error: Warning: Dropping Changes prior to TransactionID %lld for Persistent History\n";
LABEL_235:
        _os_log_error_impl(&dword_18565F000, v69, OS_LOG_TYPE_ERROR, v71, buf, 0xCu);
      }
    }

    else
    {
      v69 = _PFLogGetLogStream(2);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        v123 = [v132 longLongValue];
        *buf = 134217984;
        v147 = v123;
        v71 = "CoreData: warning: Warning: Dropping Changes prior to TransactionID %lld for Persistent History\n";
        goto LABEL_235;
      }
    }

LABEL_104:
    v72 = _pflogging_catastrophic_mode == 0;
    v73 = [v132 longLongValue];
    v74 = 1;
    if (v72)
    {
      v74 = 2;
    }

    _NSCoreDataLog_console(v74, "Warning: Dropping Changes prior to TransactionID %lld for Persistent History", v73);
    objc_autoreleasePoolPop(v68);
    if (v135 > 0)
    {
      v75 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v76 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v147 = v126;
            _os_log_error_impl(&dword_18565F000, v76, OS_LOG_TYPE_ERROR, "CoreData: error: Executing mass delete of changes from history statement: %@\n", buf, 0xCu);
          }
        }

        else
        {
          v77 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v147 = v126;
            _os_log_impl(&dword_18565F000, v77, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing mass delete of changes from history statement: %@\n", buf, 0xCu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v78 = 1;
      }

      else
      {
        v78 = 4;
      }

      _NSCoreDataLog_console(v78, "Executing mass delete of changes from history statement: %@", v126);
      objc_autoreleasePoolPop(v75);
    }

    [(NSSQLiteConnection *)*(v136 + 48) prepareAndExecuteSQLStatement:v126];

    goto LABEL_119;
  }

LABEL_121:
  v79 = [(NSSQLiteConnection *)*(v1 + 48) numberOfTombstones];
  v80 = [_PFPersistentHistoryModel _maxCountOfTombstonesInModel:?];
  v81 = v80;
  if (v79 >= v80)
  {
    if (!v80)
    {
      goto LABEL_175;
    }

    if (v135 >= 1)
    {
LABEL_153:
      v90 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v91 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v91, OS_LOG_TYPE_ERROR, "CoreData: error: Beginning remapping of shifted tombstone columns\n", buf, 2u);
          }
        }

        else
        {
          v92 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18565F000, v92, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Beginning remapping of shifted tombstone columns\n", buf, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v93 = 1;
      }

      else
      {
        v93 = 4;
      }

      _NSCoreDataLog_console(v93, "Beginning remapping of shifted tombstone columns");
      objc_autoreleasePoolPop(v90);
      if (([(_NSSQLiteStoreMigrator *)v1 shiftTombstones]& 1) == 0)
      {
        goto LABEL_195;
      }

      v94 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v95 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v95, OS_LOG_TYPE_ERROR, "CoreData: error: Finished remapping of shifted tombstone columns\n", buf, 2u);
          }
        }

        else
        {
          v96 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18565F000, v96, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished remapping of shifted tombstone columns\n", buf, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v97 = 1;
      }

      else
      {
        v97 = 4;
      }

      _NSCoreDataLog_console(v97, "Finished remapping of shifted tombstone columns");
      objc_autoreleasePoolPop(v94);
      goto LABEL_175;
    }
  }

  else
  {
    if (v135 >= 1)
    {
      v82 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v83 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v83, OS_LOG_TYPE_ERROR, "CoreData: error: Beginning adding new tombstone columns\n", buf, 2u);
          }
        }

        else
        {
          v84 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18565F000, v84, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Beginning adding new tombstone columns\n", buf, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v85 = 1;
      }

      else
      {
        v85 = 4;
      }

      _NSCoreDataLog_console(v85, "Beginning adding new tombstone columns");
      objc_autoreleasePoolPop(v82);
    }

    if (![(NSSQLiteConnection *)*(v1 + 48) addTombstoneColumnsForRange:v79, v81])
    {
      goto LABEL_195;
    }

    if (v135 >= 1)
    {
      v86 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v87 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v87, OS_LOG_TYPE_ERROR, "CoreData: error: Finished adding new tombstone columns\n", buf, 2u);
          }
        }

        else
        {
          v88 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18565F000, v88, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished adding new tombstone columns\n", buf, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v89 = 1;
      }

      else
      {
        v89 = 4;
      }

      _NSCoreDataLog_console(v89, "Finished adding new tombstone columns");
      objc_autoreleasePoolPop(v86);
      if (!v79)
      {
        goto LABEL_175;
      }

      goto LABEL_153;
    }

    if (!v79)
    {
      goto LABEL_175;
    }
  }

  if (([(_NSSQLiteStoreMigrator *)v1 shiftTombstones]& 1) == 0)
  {
    goto LABEL_195;
  }

LABEL_175:
  if (v79 <= v81)
  {
    goto LABEL_202;
  }

  if (v135 < 1)
  {
    if (![(_NSSQLiteStoreMigrator *)v1 clearTombstoneColumnsForRange:v79, v81])
    {
      goto LABEL_195;
    }

LABEL_202:
    v104 = 1;
    goto LABEL_203;
  }

  v98 = objc_autoreleasePoolPush();
  _pflogInitialize(4);
  if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
  {
    if (_pflogging_catastrophic_mode)
    {
      v99 = _PFLogGetLogStream(1);
      if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18565F000, v99, OS_LOG_TYPE_ERROR, "CoreData: error: Beginning clearing contents from removed tombstone columns\n", buf, 2u);
      }
    }

    else
    {
      v100 = _PFLogGetLogStream(4);
      if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18565F000, v100, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Beginning clearing contents from removed tombstone columns\n", buf, 2u);
      }
    }
  }

  if (_pflogging_catastrophic_mode)
  {
    v101 = 1;
  }

  else
  {
    v101 = 4;
  }

  _NSCoreDataLog_console(v101, "Beginning clearing contents from removed tombstone columns");
  objc_autoreleasePoolPop(v98);
  if ([(_NSSQLiteStoreMigrator *)v1 clearTombstoneColumnsForRange:v79, v81])
  {
    v102 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v103 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, v103, OS_LOG_TYPE_ERROR, "CoreData: error: Finished clearing contents from removed tombstone columns\n", buf, 2u);
        }
      }

      else
      {
        v105 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_18565F000, v105, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished clearing contents from removed tombstone columns\n", buf, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v106 = 1;
    }

    else
    {
      v106 = 4;
    }

    _NSCoreDataLog_console(v106, "Finished clearing contents from removed tombstone columns");
    objc_autoreleasePoolPop(v102);
    goto LABEL_202;
  }

LABEL_195:
  v104 = 0;
LABEL_203:
  objc_autoreleasePoolPop(context);
LABEL_204:
  v107 = *MEMORY[0x1E69E9840];
  return v104;
}

- (uint64_t)updateStatementsForHistoryChanges
{
  v115 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = objc_autoreleasePoolPush();
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v4 = v1[2];
    [v1[1] options];
    v74 = [_PFPersistentHistoryModel newPersistentHistorySQLModelForSQLModel:v4 options:?];
    v5 = [v74 entityNamed:@"CHANGE"];
    if (v5)
    {
      v6 = v5;
      v75 = v2;
      v76 = v5;
      v84 = v1;
      v78 = v3;
      if ([v1[9] count])
      {
        v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v1[9], "count")}];
        v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        v105 = 0u;
        obj = v1[9];
        v8 = [obj countByEnumeratingWithState:&v102 objects:v113 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = 0;
          v88 = *v103;
          do
          {
            v11 = 0;
            do
            {
              if (*v103 != v88)
              {
                objc_enumerationMutation(obj);
              }

              v12 = *(*(&v102 + 1) + 8 * v11);
              v13 = objc_autoreleasePoolPush();
              v14 = [v1[3] entityNamed:v12];
              v15 = [v1[9] objectForKey:v12];
              if (v15)
              {
                v16 = *(v15 + 184);
              }

              else
              {
                v16 = 0;
              }

              v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v16];
              if (v14)
              {
                v18 = *(v14 + 184);
              }

              else
              {
                v18 = 0;
              }

              [v7 setObject:v17 forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v18)}];
              if (v10)
              {
                v1 = v84;
                if (v14)
                {
                  v19 = *(v14 + 184);
                }

                else
                {
                  v19 = 0;
                }

                [v10 appendFormat:@", %u", v19];
              }

              else
              {
                v20 = objc_alloc(MEMORY[0x1E696AD60]);
                v1 = v84;
                if (v14)
                {
                  v21 = *(v14 + 184);
                }

                else
                {
                  v21 = 0;
                }

                v10 = [v20 initWithFormat:@"%u", v21];
              }

              objc_autoreleasePoolPop(v13);
              ++v11;
            }

            while (v9 != v11);
            v22 = [obj countByEnumeratingWithState:&v102 objects:v113 count:16];
            v9 = v22;
          }

          while (v22);
        }

        else
        {
          v10 = 0;
        }

        v23 = [objc_msgSend(v76[5] objectForKey:{@"ENTITY", "columnName"}];
        v24 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"UPDATE OR FAIL "];
        [v24 appendString:{objc_msgSend(v76, "tableName")}];
        [v24 appendString:@" SET "];
        [v24 appendString:v23];
        objc_msgSend(v24, "appendString:", @" =(CASE");
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v25 = [v7 countByEnumeratingWithState:&v98 objects:v112 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v99;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v99 != v27)
              {
                objc_enumerationMutation(v7);
              }

              v29 = *(*(&v98 + 1) + 8 * i);
              v30 = [v7 objectForKey:v29];
              [v24 appendString:@" WHEN "];
              [v24 appendString:v23];
              [v24 appendFormat:@" = %d THEN %d", objc_msgSend(v29, "intValue"), objc_msgSend(v30, "intValue")];
            }

            v26 = [v7 countByEnumeratingWithState:&v98 objects:v112 count:16];
          }

          while (v26);
        }

        [v24 appendString:@" ELSE "];
        [v24 appendString:v23];
        [v24 appendString:@" END WHERE "]);
        [v24 appendString:v23];
        objc_msgSend(v24, "appendString:", @" IN (");
        [v24 appendString:v10];
        [v24 appendString:@""]);
        v1 = v84;
        v31 = [(NSSQLiteAdapter *)v84[4] newStatementWithSQLString:v24];
        v3 = v78;
        [v78 addObject:v31];

        v2 = v75;
        v6 = v76;
      }

      if ([v1[14] count])
      {
        [(NSSQLiteConnection *)v1[6] registerMigrationUpdateFunctionWithMigrator:v1];
        v82 = [objc_msgSend(v6[5] objectForKey:{@"ENTITY", "columnName"}];
        v81 = [objc_msgSend(v6[5] objectForKey:{@"COLUMNS", "columnName"}];
        v80 = [objc_msgSend(v6[5] objectForKey:{@"CHANGETYPE", "columnName"}];
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v79 = v1[14];
        v83 = [v79 countByEnumeratingWithState:&v94 objects:v111 count:16];
        if (v83)
        {
          v32 = *v95;
          v77 = *v95;
          do
          {
            v33 = 0;
            do
            {
              if (*v95 != v32)
              {
                objc_enumerationMutation(v79);
              }

              v34 = *(*(&v94 + 1) + 8 * v33);
              v35 = objc_autoreleasePoolPush();
              v36 = [v1[14] objectForKey:v34];
              context = v35;
              obja = v33;
              if (v36)
              {
                v37 = v36[4];
              }

              else
              {
                v37 = 0;
              }

              v38 = [v36 sourceEntity];
              v39 = [-[NSSQLEntity properties](v38) count];
              if (v39 != [-[NSSQLEntity properties](v37) count])
              {
                goto LABEL_63;
              }

              v40 = [MEMORY[0x1E695DF70] array];
              v106 = 0u;
              v107 = 0u;
              v108 = 0u;
              v109 = 0u;
              v89 = [v37 entityDescription];
              v41 = [v89 countByEnumeratingWithState:&v106 objects:v114 count:16];
              if (v41)
              {
                v42 = v41;
                v43 = *v107;
                while (2)
                {
                  for (j = 0; j != v42; ++j)
                  {
                    if (*v107 != v43)
                    {
                      objc_enumerationMutation(v89);
                    }

                    v45 = *(*(&v106 + 1) + 8 * j);
                    v46 = objc_autoreleasePoolPush();
                    v47 = [v38 entityDescription];
                    v48 = [v45 name];
                    if (!v47 || (v49 = [objc_msgSend(v47 "propertiesByName")]) == 0 || (v50 = v49, objc_msgSend(v40, "addObject:", v49), (objc_msgSend(v50, "_isSchemaEqual:", v45) & 1) == 0) && (!objc_msgSend(v50, "_isRelationship") || (v51 = objc_msgSend(v45, "destinationEntity")) == 0 || !objc_msgSend(objc_msgSend(v51, "userInfo"), "valueForKey:", @"NSEntityRenamingShouldRebaseKey")))
                    {
                      objc_autoreleasePoolPop(v46);
                      v2 = v75;
                      v6 = v76;
                      v1 = v84;
                      v32 = v77;
                      v3 = v78;
                      goto LABEL_63;
                    }

                    objc_autoreleasePoolPop(v46);
                  }

                  v42 = [v89 countByEnumeratingWithState:&v106 objects:v114 count:16];
                  v2 = v75;
                  v6 = v76;
                  v1 = v84;
                  if (v42)
                  {
                    continue;
                  }

                  break;
                }
              }

              v52 = [objc_msgSend(objc_msgSend(v38 "entityDescription")];
              v53 = [v40 count];
              v32 = v77;
              v3 = v78;
              if (v52 != v53)
              {
LABEL_63:
                v54 = objc_alloc(MEMORY[0x1E696AEC0]);
                v55 = [v6 tableName];
                if (v37)
                {
                  v56 = 0x1EA8C5000uLL;
                  v57 = v37[46];
                  if (v38)
                  {
                    goto LABEL_65;
                  }

LABEL_72:
                  v58 = 0;
                  if (!v37)
                  {
                    goto LABEL_73;
                  }

LABEL_66:
                  v59 = *(v37 + *(v56 + 3424));
                }

                else
                {
                  v57 = 0;
                  v56 = 0x1EA8C5000;
                  if (!v38)
                  {
                    goto LABEL_72;
                  }

LABEL_65:
                  v58 = *&v38[*(v56 + 3424)];
                  if (v37)
                  {
                    goto LABEL_66;
                  }

LABEL_73:
                  v59 = 0;
                }

                v60 = [v54 initWithFormat:@"UPDATE OR FAIL %@ SET %@ = NSPersistentHistoryMigrateUpdates(3, %d, %d, %@) WHERE %@ == %d AND %@ == %ld;", v55, v81, v57, v58, v81, v82, v59, v80, 1];
                v61 = [(NSSQLiteAdapter *)v1[4] newStatementWithSQLString:v60];
                [v3 addObject:v61];
              }

              objc_autoreleasePoolPop(context);
              v33 = obja + 1;
            }

            while (obja + 1 != v83);
            v62 = [v79 countByEnumeratingWithState:&v94 objects:v111 count:16];
            v83 = v62;
          }

          while (v62);
        }
      }

      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      if (v74)
      {
        v63 = v74[4];
      }

      else
      {
        v63 = 0;
      }

      v64 = [v63 countByEnumeratingWithState:&v90 objects:v110 count:16];
      if (v64)
      {
        v65 = v64;
        v66 = *v91;
        do
        {
          v67 = 0;
          do
          {
            if (*v91 != v66)
            {
              objc_enumerationMutation(v63);
            }

            v68 = *(*(&v90 + 1) + 8 * v67);
            v69 = objc_autoreleasePoolPush();
            v70 = v1[4];
            if (v70)
            {
              v71 = [(NSSQLiteAdapter *)v70 newCreateIndexStatementsForEntity:v68 defaultIndicesOnly:0];
            }

            else
            {
              v71 = 0;
            }

            [v3 addObjectsFromArray:v71];

            objc_autoreleasePoolPop(v69);
            ++v67;
          }

          while (v65 != v67);
          v72 = [v63 countByEnumeratingWithState:&v90 objects:v110 count:16];
          v65 = v72;
        }

        while (v72);
      }

      objc_autoreleasePoolPop(v2);
      result = v3;
    }

    else
    {

      objc_autoreleasePoolPop(v2);
      result = 0;
    }
  }

  v73 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_countNullsInColumn:(uint64_t)a3 forEntity:
{
  v6 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"SELECT count(*) FROM "];
  [v6 appendString:{objc_msgSend(a3, "tableName")}];
  [v6 appendString:@" WHERE "];
  [v6 appendString:{objc_msgSend(a2, "columnName")}];
  [v6 appendString:@" is NULL"];
  if (!a3)
  {
    [v6 appendString:@" AND "];
    [v6 appendString:@"Z_ENT"];
    v8 = 0;
    goto LABEL_6;
  }

  v7 = *(a3 + 152);
  if (v7 && [v7 count] || *(a3 + 160))
  {
    [v6 appendString:@" AND "];
    [v6 appendString:@"Z_ENT"];
    v8 = *(a3 + 184);
LABEL_6:
    [v6 appendFormat:@" = %d", v8];
  }

  v9 = [(NSSQLiteConnection *)*(a1 + 48) copyRawIntegerRowsForSQL:v6];
  v10 = v9;
  if (v9)
  {
    if (CFArrayGetCount(v9) >= 1 && *CFArrayGetValueAtIndex(v10, 0))
    {
      v11 = *CFArrayGetValueAtIndex(v10, 1);
    }

    else
    {
      v11 = -1;
    }

    CFRelease(v10);
  }

  else
  {
    v11 = -1;
  }

  return v11;
}

- (uint64_t)_countUnreferencedPrimaryKeysForEntity:(uint64_t)a3 inForeignKeyColumnName:(uint64_t)a4 fromTable:
{
  v8 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"SELECT count(*) FROM "];
  [v8 appendString:{objc_msgSend(a2, "tableName")}];
  [v8 appendString:@" WHERE "];
  [v8 appendString:@"Z_PK"];
  objc_msgSend(v8, "appendString:", @" NOT IN (SELECT ");
  [v8 appendString:a3];
  [v8 appendString:@" FROM "];
  [v8 appendString:a4];
  [v8 appendString:@" WHERE "];
  [v8 appendString:a3];
  [v8 appendString:@" IS NOT NULL"]);
  if (!a2)
  {
    [v8 appendString:@" AND "];
    [v8 appendString:@"Z_ENT"];
    v10 = 0;
    goto LABEL_6;
  }

  v9 = *(a2 + 152);
  if (v9 && [v9 count] || *(a2 + 160))
  {
    [v8 appendString:@" AND "];
    [v8 appendString:@"Z_ENT"];
    v10 = *(a2 + 184);
LABEL_6:
    [v8 appendFormat:@" = %d", v10];
  }

  v11 = [(NSSQLiteConnection *)*(a1 + 48) copyRawIntegerRowsForSQL:v8];
  v12 = v11;
  if (v11)
  {
    if (CFArrayGetCount(v11) >= 1 && *CFArrayGetValueAtIndex(v12, 0))
    {
      v13 = *CFArrayGetValueAtIndex(v12, 1);
    }

    else
    {
      v13 = -1;
    }

    CFRelease(v12);
  }

  else
  {
    v13 = -1;
  }

  return v13;
}

- (uint64_t)enforceCloudKitConstraintsForEntity:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    if (*(result + 216) == 1)
    {
      if ([objc_msgSend(result "destinationConfigurationForCloudKitValidation")] && objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(a2, "entityDescription"), "managedObjectModel"), "configurations"), "containsObject:", objc_msgSend(v2, "destinationConfigurationForCloudKitValidation")))
      {
        v4 = [objc_msgSend(objc_msgSend(a2 "entityDescription")];
        v5 = [a2 entityDescription];

        return [v4 containsObject:v5];
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)_determineAttributeTriggerToMigrateForAttributeNamed:(uint64_t)a3 withSourceEntity:(uint64_t)a4 andDestinationEntity:
{
  if (!a3)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_21:
    v8 = 0;
    goto LABEL_4;
  }

  v7 = [*(a3 + 40) objectForKey:a2];
  if (!a4)
  {
    goto LABEL_21;
  }

LABEL_3:
  v8 = [*(a4 + 40) objectForKey:a2];
LABEL_4:
  v9 = [objc_msgSend(objc_msgSend(v7 "propertyDescription")];
  v10 = [objc_msgSend(objc_msgSend(v8 "propertyDescription")];
  v11 = v10;
  if (!v9 && v10)
  {
    v15 = [NSSQLAttributeExtensionFactory createUnvalidatedTriggerForString:v10 onAttribute:v8];
    v12 = *(a1 + 152);
    v13 = &NSInsertedObjectsKey;
LABEL_10:
    [objc_msgSend(v12 objectForKey:{*v13), "addObject:", v15}];
    goto LABEL_11;
  }

  if (v9 && !v10)
  {
    v15 = [NSSQLAttributeExtensionFactory createUnvalidatedTriggerForString:v9 onAttribute:v7];
    v12 = *(a1 + 152);
    v13 = &NSDeletedObjectsKey;
    goto LABEL_10;
  }

  if (!v9 || !v10)
  {
    return;
  }

  v14 = [NSSQLAttributeExtensionFactory createUnvalidatedTriggerForString:v9 onAttribute:v7];
  v15 = [NSSQLAttributeExtensionFactory createUnvalidatedTriggerForString:v11 onAttribute:v8];
  if (([v15 isEqualToExtension:v14] & 1) == 0)
  {
    [objc_msgSend(*(a1 + 152) objectForKey:{@"deleted", "addObject:", v14}];
    [objc_msgSend(*(a1 + 152) objectForKey:{@"inserted", "addObject:", v15}];
  }

LABEL_11:
}

- (void)_determineRTreeExtensionsToMigrateForAttributeNamed:(void *)a3 withSourceEntity:(void *)a4 andDestinationEntity:
{
  v8 = [objc_msgSend(-[NSEntityDescription _attributeNamed:](objc_msgSend(a3 "entityDescription")];
  v9 = [objc_msgSend(-[NSEntityDescription _attributeNamed:](objc_msgSend(a4 "entityDescription")];
  v10 = v9;
  if (!v8 && v9)
  {
    v14 = [[NSSQLLocationAttributeRTreeExtension alloc] initWithObjectFromUserInfo:v9 onAttributeNamed:a2 onEntity:a4];
    v11 = *(a1 + 152);
    v12 = &NSInsertedObjectsKey;
LABEL_7:
    [objc_msgSend(v11 objectForKey:{*v12), "addObject:", v14}];
    goto LABEL_8;
  }

  if (v8 && !v9)
  {
    v14 = [[NSSQLLocationAttributeRTreeExtension alloc] initWithObjectFromUserInfo:v8 onAttributeNamed:a2 onEntity:a3];
    v11 = *(a1 + 152);
    v12 = &NSDeletedObjectsKey;
    goto LABEL_7;
  }

  if (!v8 || !v9)
  {
    return;
  }

  v13 = [[NSSQLLocationAttributeRTreeExtension alloc] initWithObjectFromUserInfo:v8 onAttributeNamed:a2 onEntity:a3];
  v14 = [[NSSQLLocationAttributeRTreeExtension alloc] initWithObjectFromUserInfo:v10 onAttributeNamed:a2 onEntity:a4];
  if (![(NSSQLLocationAttributeRTreeExtension *)v14 isEqualToExtension:v13])
  {
    [objc_msgSend(*(a1 + 152) objectForKey:{@"deleted", "addObject:", v13}];
    [objc_msgSend(*(a1 + 152) objectForKey:{@"inserted", "addObject:", v14}];
  }

LABEL_8:
}

- (uint64_t)entityMigrationDescriptionForEntity:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = a2;
    if ([a2 model] == *(result + 24))
    {
      result = [v3[13] objectForKey:{objc_msgSend(a2, "name")}];
      if (result)
      {
        return result;
      }

      v4 = [v3[11] objectForKey:{objc_msgSend(a2, "name")}];
    }

    result = [v3[14] objectForKey:{objc_msgSend(v4, "name")}];
    if (!result)
    {
      result = [v3[15] objectForKey:{objc_msgSend(v4, "name")}];
      if (!result)
      {
        result = [v3[12] objectForKey:{objc_msgSend(v4, "name")}];
        if (!result)
        {
          v5 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, *MEMORY[0x1E695D930], 134110, @"Can't find entity migration description for entity", [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{a2, @"entity", 0}]);
          objc_exception_throw(v5);
        }
      }
    }
  }

  return result;
}

- (uint64_t)tableMigrationDescriptionForEntity:(uint64_t)result
{
  if (result)
  {
    v2 = a2;
    v3 = result;
    if ([a2 model] == *(result + 24))
    {
      result = [*(v3 + 128) objectForKey:{objc_msgSend(objc_msgSend(v2, "rootEntity"), "name")}];
      if (result)
      {
        return result;
      }

      v2 = [*(v3 + 88) objectForKey:{objc_msgSend(v2, "name")}];
    }

    v4 = *(v3 + 128);
    v5 = [objc_msgSend(v2 "rootEntity")];

    return [v4 objectForKey:v5];
  }

  return result;
}

- (uint64_t)_addEntityMigration:(void *)a3 toTableMigrationForRootEntity:(int)a4 tableMigrationType:
{
  v8 = [*(a1 + 128) objectForKey:{objc_msgSend(a3, "name")}];
  if (!v8)
  {
    v8 = [[_NSSQLTableMigrationDescription alloc] initWithRootEntity:a3 migrationType:a4];
    [*(a1 + 128) setObject:v8 forKey:{objc_msgSend(a3, "name")}];
  }

  return [(_NSSQLTableMigrationDescription *)v8 addEntityMigrationDescription:a2];
}

- (BOOL)clearTombstoneColumnsForRange:(uint64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  [*(a1 + 8) options];
  v17 = [_PFPersistentHistoryModel newPersistentHistorySQLModelForSQLModel:v6 options:?];
  v7 = [v17 entityNamed:@"CHANGE"];
  if (v7)
  {
    for (i = a2 - 1; i >= a3; --i)
    {
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UPDATE %@ SET Z%@%lu = NULL", objc_msgSend(v7, "tableName"), @"TOMBSTONE", i];
      v10 = [(NSSQLiteAdapter *)*(a1 + 32) newStatementWithSQLString:v9];
      if (+[NSMappingModel migrationDebugLevel]>= 1)
      {
        v11 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v19 = v10;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Executing clearing tombstone column statement: %@\n", buf, 0xCu);
            }
          }

          else
          {
            v13 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v19 = v10;
              _os_log_impl(&dword_18565F000, v13, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing clearing tombstone column statement: %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v14 = 1;
        }

        else
        {
          v14 = 4;
        }

        _NSCoreDataLog_console(v14, "Executing clearing tombstone column statement: %@", v10);
        objc_autoreleasePoolPop(v11);
      }

      [(NSSQLiteConnection *)*(a1 + 48) prepareAndExecuteSQLStatement:v10];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v7 != 0;
}

- (uint64_t)shiftTombstones
{
  v70 = *MEMORY[0x1E69E9840];
  v50 = [MEMORY[0x1E695DF90] dictionary];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v2 = [a1[5] entityMappings];
  v3 = [v2 countByEnumeratingWithState:&v60 objects:v69 count:16];
  v51 = a1;
  if (v3)
  {
    v4 = v3;
    v5 = *v61;
    v48 = v2;
    v52 = *v61;
    do
    {
      v6 = 0;
      v54 = v4;
      do
      {
        if (*v61 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v60 + 1) + 8 * v6);
        v8 = [a1[3] entityNamed:{objc_msgSend(v7, "sourceEntityName")}];
        v9 = [a1[2] entityNamed:{objc_msgSend(v7, "destinationEntityName")}];
        if ((v8 != 0) == (v9 != 0))
        {
          v10 = v9;
          v11 = [_PFPersistentHistoryModel _retainedTombstonesForEntity:v8];
          v12 = [_PFPersistentHistoryModel _retainedTombstonesForEntity:v10];
          if (([v11 isEqualToArray:v12] & 1) == 0)
          {
            if ([v11 count])
            {
              v13 = [MEMORY[0x1E695DF70] array];
              if ([v12 count])
              {
                v14 = 0;
                v15 = 0;
                do
                {
                  v16 = [v11 indexOfObject:{objc_msgSend(v12, "objectAtIndex:", v15)}];
                  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v67 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
                    v17 = MEMORY[0x1E695DEC8];
                    v18 = &v67;
                    v19 = 1;
                  }

                  else
                  {
                    v20 = v16;
                    v14 |= v15 != v16;
                    v68[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
                    v68[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v20];
                    v17 = MEMORY[0x1E695DEC8];
                    v18 = v68;
                    v19 = 2;
                  }

                  [v13 addObject:{objc_msgSend(v17, "arrayWithObjects:count:", v18, v19)}];
                  ++v15;
                }

                while (v15 < [v12 count]);
                a1 = v51;
                v2 = v48;
                if (v14)
                {
                  if (v8)
                  {
                    v21 = *(v8 + 184);
                  }

                  else
                  {
                    v21 = 0;
                  }

                  [v50 setObject:v13 forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v21)}];
                }
              }
            }
          }

          v5 = v52;
          v4 = v54;
        }

        ++v6;
      }

      while (v6 != v4);
      v22 = [v2 countByEnumeratingWithState:&v60 objects:v69 count:16];
      v4 = v22;
    }

    while (v22);
  }

  if ([v50 count])
  {
    v23 = a1[2];
    [a1[1] options];
    result = [+[_PFPersistentHistoryModel newPersistentHistorySQLModelForSQLModel:options:](_PFPersistentHistoryModel v23)];
    if (result)
    {
      v25 = result;
      v47 = [objc_msgSend(*(result + 40) objectForKey:{@"ENTITY", "columnName"}];
      v46 = [objc_msgSend(v25[5] objectForKey:{@"CHANGETYPE", "columnName"}];
      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", 2];
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      obj = [v50 allKeys];
      v49 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
      if (!v49)
      {
        goto LABEL_57;
      }

      v43 = *v57;
      v44 = v25;
      while (1)
      {
        v26 = 0;
        do
        {
          if (*v57 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v53 = *(*(&v56 + 1) + 8 * v26);
          v55 = v26;
          v27 = [v50 objectForKey:?];
          v28 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"UPDATE "];
          [v28 appendString:{objc_msgSend(v25, "tableName")}];
          [v28 appendString:@" SET "];
          if ([v27 count])
          {
            v29 = 0;
            v30 = 1;
            while (1)
            {
              v31 = [v27 objectAtIndex:v29];
              v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Z%@%lu", @"TOMBSTONE", v29];
              if ([v31 count] == 1)
              {
                break;
              }

              if (([objc_msgSend(v31 objectAtIndexedSubscript:{0), "isEqualToValue:", objc_msgSend(v31, "objectAtIndexedSubscript:", 1)}] & 1) == 0)
              {
                if ((v30 & 1) == 0)
                {
                  [v28 appendString:{@", "}];
                }

                v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Z%@%lu", @"TOMBSTONE", objc_msgSend(objc_msgSend(v31, "objectAtIndexedSubscript:", 1), "unsignedIntegerValue")];
                [v28 appendString:v32];
                [v28 appendString:@" = "];
                v33 = v28;
                v34 = v35;
                goto LABEL_41;
              }

LABEL_42:
              if (++v29 >= [v27 count])
              {
                goto LABEL_43;
              }
            }

            if ((v30 & 1) == 0)
            {
              [v28 appendString:{@", "}];
            }

            [v28 appendString:v32];
            v33 = v28;
            v34 = @" = NULL";
LABEL_41:
            [v33 appendString:v34];
            v30 = 0;
            goto LABEL_42;
          }

LABEL_43:
          [v28 appendString:@" WHERE "];
          [v28 appendString:v47];
          [v28 appendString:@" == "];
          [v28 appendFormat:@"%@", v53];
          [v28 appendString:@" AND "];
          [v28 appendString:v46];
          [v28 appendString:@" == "];
          [v28 appendString:v45];
          v36 = [(NSSQLiteAdapter *)v51[4] newStatementWithSQLString:v28];
          if (+[NSMappingModel migrationDebugLevel]> 0)
          {
            v37 = objc_autoreleasePoolPush();
            _pflogInitialize(4);
            if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
            {
              if (_pflogging_catastrophic_mode)
              {
                LogStream = _PFLogGetLogStream(1);
                if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v65 = v36;
                  _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Executing shift tombstone column statement: %@\n", buf, 0xCu);
                }
              }

              else
              {
                v39 = _PFLogGetLogStream(4);
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v65 = v36;
                  _os_log_impl(&dword_18565F000, v39, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing shift tombstone column statement: %@\n", buf, 0xCu);
                }
              }
            }

            if (_pflogging_catastrophic_mode)
            {
              v40 = 1;
            }

            else
            {
              v40 = 4;
            }

            _NSCoreDataLog_console(v40, "Executing shift tombstone column statement: %@", v36);
            objc_autoreleasePoolPop(v37);
          }

          [(NSSQLiteConnection *)v51[6] prepareAndExecuteSQLStatement:v36];

          v26 = v55 + 1;
          v25 = v44;
        }

        while (v55 + 1 != v49);
        v49 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
        if (!v49)
        {
          goto LABEL_57;
        }
      }
    }
  }

  else
  {
LABEL_57:
    result = 1;
  }

  v41 = *MEMORY[0x1E69E9840];
  return result;
}

@end