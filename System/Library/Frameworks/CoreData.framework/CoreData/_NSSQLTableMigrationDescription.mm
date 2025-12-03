@interface _NSSQLTableMigrationDescription
- (id)_sourceRootEntity;
- (id)createDefaultValuePopulationStatementsForAddedColumnsEntityMigration:(uint64_t)migration migrationContext:;
- (id)createFEKUpdateStatementsForEntityMigration:(uint64_t)migration migrationContext:(uint64_t)context;
- (id)description;
- (uint64_t)_doAttributesHaveChangesRequiringCopyForMigration:(uint64_t)migration withContext:;
- (uint64_t)_doRelationshipsHaveChangesRequiringCopyForMigration:(uint64_t)migration inContext:;
- (uint64_t)_ownSourceRootTableNeedsRenameInMigrationContext:(uint64_t)context;
- (uint64_t)_transformedManyToManys;
- (uint64_t)addEntityMigrationDescription:(uint64_t)result;
- (uint64_t)appendStatementsToCompleteMigration:(uint64_t)migration migrationContext:;
- (uint64_t)appendStatementsToCreateOrDropTables:(uint64_t)tables migrationContext:;
- (uint64_t)appendStatementsToRenameTables:(uint64_t)tables migrationContext:;
- (uint64_t)createUpdateStatementForEntityMigration:(uint64_t)migration migrationContext:(uint64_t)context;
- (uint64_t)newCloudKitMetadataUpdateStatements:(uint64_t)statements;
- (uint64_t)newCopyAndInsertStatementForToOne:(void *)one toManyToMany:(__CFString *)many fromTableName:(uint64_t)name invertColumns:(int)columns migrationContext:(uint64_t)context;
- (void)_determineSchemaTransformationComplexityInMigrationContext:(id *)context;
- (void)_retainedRemovedSubEntitiesOfEntity:(uint64_t)entity;
- (void)_sourceRootTableNameInMigrationContext:(uint64_t)context;
- (void)_tempNameForTableName:(uint64_t)name;
- (void)appendDefaultValueStatementsToCompleteMigration:(uint64_t)migration migrationContext:;
- (void)appendStatementsToPerformMigration:(uint64_t)migration migrationContext:;
- (void)createInsertStatementForEntityMigration:(uint64_t)migration migrationContext:;
- (void)dealloc;
- (void)initWithRootEntity:(int)entity migrationType:;
@end

@implementation _NSSQLTableMigrationDescription

- (void)initWithRootEntity:(int)entity migrationType:
{
  if (!self)
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = _NSSQLTableMigrationDescription;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  if (v5)
  {
    v5[1] = a2;
    *(v5 + 6) = entity;
    v5[8] = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:8];
    v5[12] = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
    v5[14] = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5[15] = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5[16] = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5[17] = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5[22] = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  return v5;
}

- (void)dealloc
{
  self->_rootEntity = 0;

  self->_sourceRootEntity = 0;
  self->_migrationByEntity = 0;

  self->_addedEntityMigrations = 0;
  self->_removedEntityMigrations = 0;

  self->_copiedEntityMigrations = 0;
  self->_transformedEntityMigrations = 0;

  self->_addedManyToManys = 0;
  self->_removedManyToManys = 0;

  self->_transformedManyToManys = 0;
  self->_tempTableNames = 0;

  self->_hasComplexSchemaTransformations = 0;
  self->_addedColumnSet = 0;

  self->_renamedTableSet = 0;
  self->_renamedColumnSet = 0;

  self->_renamedMTMSet = 0;
  self->_delayedDropColumnSet = 0;

  self->_raisedColumnSet = 0;
  self->_droppedEntitySet = 0;

  self->_collapsedEntitySet = 0;
  self->_columnsUpgradedToMandatory = 0;
  v3.receiver = self;
  v3.super_class = _NSSQLTableMigrationDescription;
  [(_NSSQLTableMigrationDescription *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v6.receiver = self;
  v6.super_class = _NSSQLTableMigrationDescription;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ : %@ ", -[_NSSQLTableMigrationDescription description](&v6, sel_description), -[NSSQLEntity name](self->_rootEntity, "name")];
  objc_autoreleasePoolPop(v3);
  return v4;
}

- (uint64_t)addEntityMigrationDescription:(uint64_t)result
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (a2)
  {
    if (*(a2 + 48) == 1)
    {
      sourceEntity = [a2 sourceEntity];
    }

    else
    {
      sourceEntity = *(a2 + 32);
    }

    [*(v3 + 64) setObject:a2 forKey:{objc_msgSend(sourceEntity, "name")}];
    if (*(a2 + 96) == 1 && !*(v3 + 104))
    {
      *(v3 + 104) = [MEMORY[0x1E696AD98] numberWithBool:1];
    }

    v5 = *(a2 + 48);
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v10 = *(v3 + 48);
        v7 = (v3 + 48);
        v6 = v10;
        if (!v10)
        {
          goto LABEL_23;
        }

        goto LABEL_24;
      }

      if (v5 == 3)
      {
        v9 = *(v3 + 56);
        v7 = (v3 + 56);
        v6 = v9;
        if (!v9)
        {
          goto LABEL_23;
        }

        goto LABEL_24;
      }

      goto LABEL_27;
    }

    if (v5)
    {
      if (v5 == 1)
      {
        v8 = *(v3 + 40);
        v7 = (v3 + 40);
        v6 = v8;
        if (!v8)
        {
          goto LABEL_23;
        }

        goto LABEL_24;
      }

LABEL_27:
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Unrecognized entity migration type" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", a2, @"entityMigration"}]);
    }
  }

  else
  {
    [*(result + 64) setObject:0 forKey:{objc_msgSend(0, "name")}];
  }

  v11 = *(v3 + 32);
  v7 = (v3 + 32);
  v6 = v11;
  if (!v11)
  {
LABEL_23:
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:8];
    *v7 = v6;
  }

LABEL_24:

  return [v6 addObject:a2];
}

- (uint64_t)_doAttributesHaveChangesRequiringCopyForMigration:(uint64_t)migration withContext:
{
  v39 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = a2[4];
  }

  else
  {
    v4 = 0;
  }

  sourceEntity = [a2 sourceEntity];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  if (v4)
  {
    v4 = [(NSSQLEntity *)v4 entitySpecificPropertiesPassing:?];
  }

  v6 = [v4 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (!v6)
  {
    result = 0;
    goto LABEL_53;
  }

  v7 = *v34;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v34 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v33 + 1) + 8 * i);
      v10 = [objc_msgSend(v9 "propertyDescription")];
      if ([objc_msgSend(v9 "propertyDescription")])
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", objc_msgSend(objc_msgSend(v9, "propertyDescription"), "_namespace"), v10];
      }

      v11 = [(NSSQLEntity *)sourceEntity _sqlPropertyWithRenamingIdentifier:v10];
      if (v11)
      {
        v12 = v9;
LABEL_18:
        propertyType = [v11 propertyType];
        if (propertyType != [v12 propertyType] || objc_msgSend(v11, "propertyType") == 1 && objc_msgSend(v12, "propertyType") == 1 && objc_msgSend(objc_msgSend(v11, "attributeDescription"), "attributeType") == 1800 && objc_msgSend(objc_msgSend(v12, "attributeDescription"), "attributeType") == 2200)
        {
          goto LABEL_52;
        }

        v15 = [objc_msgSend(v11 "columnName")];
        if ((v15 & 1) == 0)
        {
          if (!v12)
          {
            goto LABEL_52;
          }

          result = 1;
          if (!v11 || v12[24] != 1 || v11[24] != 1)
          {
            goto LABEL_53;
          }

          if (![objc_msgSend(objc_msgSend(v12 "propertyDescription")])
          {
            goto LABEL_52;
          }

          v17 = *(self + 128);
          v37[0] = v11;
          v37[1] = v12;
          [v17 addObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v37, 2)}];
        }

        if ([objc_msgSend(objc_msgSend(v12 "propertyDescription")])
        {
          v18 = 0;
        }

        else
        {
          v18 = v15;
        }

        if (v18 == 1 && ![objc_msgSend(v11 "propertyDescription")])
        {
          goto LABEL_52;
        }

        if (v15 && [objc_msgSend(v11 "propertyDescription")] && (objc_msgSend(objc_msgSend(v12, "propertyDescription"), "isOptional") & 1) == 0)
        {
          v19 = *(self + 168);
          if (!v19)
          {
            v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            *(self + 168) = v19;
          }

          [v19 addObject:v12];
        }

        continue;
      }

      v12 = [(NSSQLEntity *)sourceEntity subhierarchyColumnMatching:v9];
      if (v12)
      {
        v13 = *(self + 144);
        if (!v13)
        {
          v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          *(self + 144) = v13;
        }

        [v13 addObject:v12];
        goto LABEL_18;
      }

      if (migration)
      {
        v20 = *(migration + 48);
        if (v20)
        {
          v27 = 0;
          v28 = &v27;
          v29 = 0x3052000000;
          v30 = __Block_byref_object_copy__35;
          v31 = __Block_byref_object_dispose__35;
          v32 = 0;
          fetchTableCreationSQL = [(NSSQLiteConnection *)v20 fetchTableCreationSQL];
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __97___NSSQLTableMigrationDescription__doAttributesHaveChangesRequiringCopyForMigration_withContext___block_invoke;
          v26[3] = &unk_1E6EC4608;
          v26[4] = sourceEntity;
          v26[5] = &v27;
          [fetchTableCreationSQL enumerateObjectsUsingBlock:v26];
          v22 = v28[5];
          {
            _Block_object_dispose(&v27, 8);
LABEL_52:
            result = 1;
            goto LABEL_53;
          }

          _Block_object_dispose(&v27, 8);
        }
      }

      [*(self + 112) addObject:v9];
    }

    v6 = [v4 countByEnumeratingWithState:&v33 objects:v38 count:16];
    result = 0;
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_53:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_doRelationshipsHaveChangesRequiringCopyForMigration:(uint64_t)migration inContext:
{
  v72 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = a2[4];
  }

  else
  {
    v4 = 0;
  }

  sourceEntity = [a2 sourceEntity];
  if (migration)
  {
    v6 = *(migration + 32);
  }

  else
  {
    v6 = 0;
  }

  v58 = [objc_msgSend(objc_msgSend(objc_msgSend(v6 "sqlCore")];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  if (v4)
  {
    v7 = [(NSSQLEntity *)v4 entitySpecificPropertiesPassing:?];
  }

  else
  {
    v7 = 0;
  }

  result = [v7 countByEnumeratingWithState:&v62 objects:v71 count:16];
  selfCopy5 = self;
  if (result)
  {
    v10 = result;
    migrationCopy = migration;
    v61 = *v63;
    v59 = v7;
    do
    {
      v11 = 0;
      do
      {
        if (*v63 != v61)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v62 + 1) + 8 * v11);
        v13 = -[NSSQLEntity _sqlPropertyWithRenamingIdentifier:](sourceEntity, [objc_msgSend(v12 "propertyDescription")]);
        if (!v13)
        {
          if ([v12 propertyType] != 7)
          {
            if (!v12)
            {
              goto LABEL_79;
            }

            goto LABEL_38;
          }

          if (!v12)
          {
            goto LABEL_79;
          }

          if (*(v12 + 88) != 1)
          {
            goto LABEL_38;
          }

          name = [v12 name];
          if (!sourceEntity || (v13 = [*(sourceEntity + 40) objectForKey:name]) == 0)
          {
            v33 = *(v12 + 56);
            v34 = [-[_NSSQLiteStoreMigrator entityMigrationDescriptionForEntity:](migrationCopy objc_msgSend(v33];
            v35 = [objc_msgSend(v33 "propertyDescription")];
            v36 = v34;
            v7 = v59;
            v37 = [(NSSQLEntity *)v36 _sqlPropertyWithRenamingIdentifier:v35];
            if (v37 && *(v37 + 56))
            {
              goto LABEL_84;
            }

LABEL_38:
            if (*(v12 + 24) == 7)
            {
              [*(selfCopy5 + 112) addObject:{objc_msgSend(v12, "foreignKey")}];
              if (*(v12 + 72))
              {
                [*(selfCopy5 + 112) addObject:?];
              }

              if (*(v12 + 80))
              {
                [*(selfCopy5 + 112) addObject:?];
              }
            }

            goto LABEL_79;
          }
        }

        v14 = v13;
        propertyType = [v13 propertyType];
        if (propertyType != [v12 propertyType])
        {
          goto LABEL_84;
        }

        destinationEntity = [v12 destinationEntity];
        destinationEntity2 = [v14 destinationEntity];
        if (propertyType == 7)
        {
          v18 = destinationEntity2;
          if ([objc_msgSend(v14 "propertyDescription")] && !objc_msgSend(objc_msgSend(v12, "propertyDescription"), "isOptional"))
          {
            goto LABEL_84;
          }

          foreignKey = [v14 foreignKey];
          foreignKey2 = [v12 foreignKey];
          if (foreignKey)
          {
            v21 = foreignKey2;
            if (foreignKey2)
            {
              columnName = [foreignKey columnName];
              columnName2 = [v21 columnName];
              v24 = columnName;
              selfCopy5 = self;
              if (([v24 isEqual:columnName2] & 1) == 0)
              {
                v25 = *(self + 128);
                v70[0] = foreignKey;
                v70[1] = v21;
                v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:2];
                v27 = v25;
                selfCopy5 = self;
                [v27 addObject:v26];
              }
            }
          }

          if (destinationEntity && *(destinationEntity + 188) != *(destinationEntity + 184))
          {
            if (v18)
            {
              v38 = *(v18 + 152);
            }

            else
            {
              v38 = 0;
            }

            if (![v38 count])
            {
              if (v12)
              {
                v30 = *(v12 + 72);
              }

              else
              {
                v30 = 0;
              }

              v31 = *(selfCopy5 + 112);
              goto LABEL_55;
            }

            if (v12)
            {
              v39 = v14[9];
              if (v39)
              {
                v40 = *(v12 + 72);
                if (v40)
                {
                  columnName3 = [v14[9] columnName];
                  columnName4 = [v40 columnName];
                  v43 = columnName3;
                  selfCopy5 = self;
                  if (([v43 isEqual:columnName4] & 1) == 0)
                  {
                    v44 = *(self + 128);
                    v68[0] = v39;
                    v68[1] = v40;
                    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
                    v46 = v44;
                    selfCopy5 = self;
                    [v46 addObject:v45];
                  }
                }
              }

              v47 = v14[10];
              goto LABEL_57;
            }

            v50 = 0;
            v49 = 0;
            v47 = v14[10];
          }

          else
          {
            if (v18 && *(v18 + 188) != *(v18 + 184))
            {
              v28 = v58;
              if (!v14[9])
              {
                v28 = 0;
              }

              if (v28 != 1)
              {
LABEL_84:
                result = 1;
                goto LABEL_85;
              }

              v29 = *(selfCopy5 + 176);
              v69 = v14[9];
              v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v69 count:1];
              v31 = v29;
LABEL_55:
              [v31 addObject:v30];
            }

            v47 = v14[10];
            if (v12)
            {
LABEL_57:
              v48 = 0;
              v49 = *(v12 + 80);
              v50 = v49 != 0;
              if (!v47 && v49)
              {
                [*(selfCopy5 + 112) addObject:v49];
LABEL_75:
                if (*(v12 + 88) == 1)
                {
                  v7 = v59;
                  if ((v14[11] & 1) == 0)
                  {
                    goto LABEL_84;
                  }

                  goto LABEL_79;
                }

LABEL_78:
                v7 = v59;
                if (v14[11])
                {
                  goto LABEL_84;
                }

                goto LABEL_79;
              }

LABEL_64:
              if (!v47 || v49)
              {
                v55 = !v50;
                if (!v47)
                {
                  v55 = 1;
                }

                if ((v55 & 1) == 0 && ([objc_msgSend(v47 "columnName")] & 1) == 0)
                {
                  v51 = *(selfCopy5 + 128);
                  v66[0] = v47;
                  v66[1] = v49;
                  v52 = MEMORY[0x1E695DEC8];
                  v53 = v66;
                  v54 = 2;
                  goto LABEL_73;
                }
              }

              else
              {
                if (!v58)
                {
                  goto LABEL_84;
                }

                v51 = *(selfCopy5 + 176);
                v67 = v47;
                v52 = MEMORY[0x1E695DEC8];
                v53 = &v67;
                v54 = 1;
LABEL_73:
                [v51 addObject:{objc_msgSend(v52, "arrayWithObjects:count:", v53, v54)}];
              }

              if ((v48 & 1) == 0)
              {
                goto LABEL_75;
              }

              goto LABEL_78;
            }

            v50 = 0;
            v49 = 0;
          }

          v48 = 1;
          goto LABEL_64;
        }

LABEL_79:
        ++v11;
      }

      while (v10 != v11);
      result = [v7 countByEnumeratingWithState:&v62 objects:v71 count:16];
      v10 = result;
    }

    while (result);
  }

LABEL_85:
  v56 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_determineSchemaTransformationComplexityInMigrationContext:(id *)context
{
  v93 = *MEMORY[0x1E69E9840];
  if (context[13])
  {
    goto LABEL_114;
  }

  if (([objc_msgSend(context[1] "tableName")] & 1) == 0)
  {
    if (![objc_msgSend(objc_msgSend(context[1] "entityDescription")])
    {
      v51 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:1];
      goto LABEL_100;
    }

    v3 = context[15];
    v92 = vextq_s8(*(context + 1), *(context + 1), 8uLL);
    [v3 addObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v92, 2)}];
  }

  if (![context[5] count] || objc_msgSend(context[4], "count") || objc_msgSend(context[7], "count") || objc_msgSend(context[6], "count"))
  {
    context[19] = objc_alloc_init(MEMORY[0x1E695DFA8]);
    context[20] = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v4 = context[5];
    v5 = [v4 countByEnumeratingWithState:&v81 objects:v91 count:16];
    if (v5)
    {
      v6 = *v82;
LABEL_11:
      v7 = 0;
      while (1)
      {
        if (*v82 != v6)
        {
          objc_enumerationMutation(v4);
        }

        sourceEntity = [*(*(&v81 + 1) + 8 * v7) sourceEntity];
        v9 = sourceEntity;
        v10 = sourceEntity ? [(NSSQLEntity *)sourceEntity entitySpecificPropertiesPassing:?]: 0;
        if ([v10 count])
        {
          break;
        }

        v11 = [objc_msgSend(objc_msgSend(v9 "entityDescription")];
        if (!v11 || (v12 = [objc_msgSend(v9 "name")], v13 = context + 20, (v12 & 1) == 0))
        {
          v13 = context + 19;
        }

        [*v13 addObject:v9];
        if (v5 == ++v7)
        {
          v14 = [v4 countByEnumeratingWithState:&v81 objects:v91 count:16];
          v5 = v14;
          if (v14)
          {
            goto LABEL_11;
          }

          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_24:
      if (![context[4] count] || objc_msgSend(context[5], "count") || objc_msgSend(context[7], "count") || objc_msgSend(context[6], "count"))
      {
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        obj = context[4];
        v15 = [obj countByEnumeratingWithState:&v77 objects:v90 count:16];
        if (v15)
        {
          v58 = *v78;
          do
          {
            v16 = 0;
            v60 = v15;
            do
            {
              if (*v78 != v58)
              {
                objc_enumerationMutation(obj);
              }

              v17 = *(*(&v77 + 1) + 8 * v16);
              if (v17)
              {
                v18 = *(v17 + 32);
                v73 = 0u;
                v74 = 0u;
                v75 = 0u;
                v76 = 0u;
                if (v18)
                {
                  v19 = [(NSSQLEntity *)v18 entitySpecificPropertiesPassing:?];
                }

                else
                {
                  v19 = 0;
                }
              }

              else
              {
                v19 = 0;
                v75 = 0u;
                v76 = 0u;
                v73 = 0u;
                v74 = 0u;
              }

              v20 = [v19 countByEnumeratingWithState:&v73 objects:v89 count:16];
              if (v20)
              {
                v21 = *v74;
                do
                {
                  for (i = 0; i != v20; ++i)
                  {
                    if (*v74 != v21)
                    {
                      objc_enumerationMutation(v19);
                    }

                    v23 = *(*(&v73 + 1) + 8 * i);
                    if (v23)
                    {
                      v24 = *(v23 + 24);
                      if (v24 == 1)
                      {
                        goto LABEL_47;
                      }

                      if (v24 == 7)
                      {
                        [context[14] addObject:{objc_msgSend(*(*(&v73 + 1) + 8 * i), "foreignKey")}];
                        if (*(v23 + 72))
                        {
                          [context[14] addObject:?];
                        }

                        v23 = *(v23 + 80);
                        if (v23)
                        {
LABEL_47:
                          [context[14] addObject:v23];
                        }
                      }
                    }
                  }

                  v20 = [v19 countByEnumeratingWithState:&v73 objects:v89 count:16];
                }

                while (v20);
              }

              ++v16;
            }

            while (v16 != v60);
            v25 = [obj countByEnumeratingWithState:&v77 objects:v90 count:16];
            v15 = v25;
          }

          while (v25);
        }

        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v26 = context[6];
        v27 = [v26 countByEnumeratingWithState:&v69 objects:v88 count:16];
        if (v27)
        {
          v28 = *v70;
          while (2)
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v70 != v28)
              {
                objc_enumerationMutation(v26);
              }

              v30 = *(*(&v69 + 1) + 8 * j);
              if ([(_NSSQLTableMigrationDescription *)context _doAttributesHaveChangesRequiringCopyForMigration:v30 withContext:a2]|| [(_NSSQLTableMigrationDescription *)context _doRelationshipsHaveChangesRequiringCopyForMigration:v30 inContext:a2])
              {
                v51 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:1];
                goto LABEL_100;
              }
            }

            v27 = [v26 countByEnumeratingWithState:&v69 objects:v88 count:16];
            if (v27)
            {
              continue;
            }

            break;
          }
        }

        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v31 = context[7];
        v32 = [v31 countByEnumeratingWithState:&v65 objects:v87 count:16];
        if (v32)
        {
          v54 = v32;
          v33 = *v66;
          v34 = &__block_literal_global_14;
          obja = *v66;
          do
          {
            v35 = 0;
            do
            {
              if (*v66 != v33)
              {
                objc_enumerationMutation(v31);
              }

              v36 = *(*(&v65 + 1) + 8 * v35);
              if (v36)
              {
                v37 = v36[4];
              }

              else
              {
                v37 = 0;
              }

              sourceEntity2 = [*(*(&v65 + 1) + 8 * v35) sourceEntity];
              v63 = 0u;
              v64 = 0u;
              v61 = 0u;
              v62 = 0u;
              v59 = v35;
              v39 = v34;
              if (sourceEntity2)
              {
                v40 = [(NSSQLEntity *)sourceEntity2 entitySpecificPropertiesPassing:v34];
              }

              else
              {
                v40 = 0;
              }

              v41 = [v40 countByEnumeratingWithState:&v61 objects:v86 count:16];
              if (v41)
              {
                v42 = *v62;
                v53 = v31;
                do
                {
                  v43 = 0;
                  do
                  {
                    if (*v62 != v42)
                    {
                      objc_enumerationMutation(v40);
                    }

                    v44 = *(*(&v61 + 1) + 8 * v43);
                    if (!-[NSSQLEntity _sqlPropertyWithRenamingIdentifier:](v37, [objc_msgSend(v44 propertyDescription]))
                    {
                      if (a2)
                      {
                        v45 = *(a2 + 32);
                      }

                      else
                      {
                        v45 = 0;
                      }

                      v46 = [objc_msgSend(objc_msgSend(objc_msgSend(v45 "sqlCore")] ^ 1;
                      if (!v44)
                      {
                        LOBYTE(v46) = 1;
                      }

                      if ((v46 & 1) != 0 || v44[24] != 1)
                      {
                        goto LABEL_121;
                      }

                      v47 = context[22];
                      v85 = v44;
                      [v47 addObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v85, 1)}];
                    }

                    ++v43;
                  }

                  while (v41 != v43);
                  v48 = [v40 countByEnumeratingWithState:&v61 objects:v86 count:16];
                  v41 = v48;
                  v31 = v53;
                }

                while (v48);
              }

              v34 = v39;
              v33 = obja;
              if ([(_NSSQLTableMigrationDescription *)context _doAttributesHaveChangesRequiringCopyForMigration:v36 withContext:a2]|| [(_NSSQLTableMigrationDescription *)context _doRelationshipsHaveChangesRequiringCopyForMigration:v36 inContext:a2])
              {
LABEL_121:
                v51 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:1];
                goto LABEL_100;
              }

              v35 = v59 + 1;
            }

            while (v59 + 1 != v54);
            v49 = [v31 countByEnumeratingWithState:&v65 objects:v87 count:16];
            v50 = 1;
            v54 = v49;
          }

          while (v49);
        }

        else
        {
          v50 = 1;
        }

        goto LABEL_101;
      }
    }

    v51 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:1];
  }

  else
  {
    v51 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:1];
  }

LABEL_100:
  v50 = 0;
  context[13] = v51;
LABEL_101:
  if (([context[13] BOOLValue] & 1) != 0 || !objc_msgSend(context[19], "count") && !objc_msgSend(context[14], "count") && !objc_msgSend(context[15], "count") && !objc_msgSend(context[16], "count") && !objc_msgSend(context[21], "count") && !objc_msgSend(context[18], "count") && !objc_msgSend(context[20], "count") && !objc_msgSend(context[22], "count"))
  {

    context[19] = 0;
    context[14] = 0;

    context[15] = 0;
    context[16] = 0;

    context[21] = 0;
    context[18] = 0;

    context[20] = 0;
    context[22] = 0;
  }

  if ((v50 & 1) != 0 && !context[13])
  {
    context[13] = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:0];
  }

LABEL_114:
  v52 = *MEMORY[0x1E69E9840];
}

- (id)_sourceRootEntity
{
  v14 = *MEMORY[0x1E69E9840];
  result = *(self + 16);
  if (!result)
  {
    v3 = [objc_msgSend(*(self + 64) objectForKey:{objc_msgSend(*(self + 8), "name")), "sourceEntity"}];
    if (!v3)
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v5 = *(self + 64);
      v3 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        v6 = v3;
        v7 = *v10;
LABEL_7:
        v8 = 0;
        while (1)
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v3 = [objc_msgSend(*(self + 64) objectForKey:{*(*(&v9 + 1) + 8 * v8)), "sourceEntity"}];
          if (v3)
          {
            break;
          }

          if (v6 == ++v8)
          {
            v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
            v3 = 0;
            if (v6)
            {
              goto LABEL_7;
            }

            break;
          }
        }
      }
    }

    result = [v3 rootEntity];
    *(self + 16) = result;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_ownSourceRootTableNeedsRenameInMigrationContext:(uint64_t)context
{
  if (*(context + 24) < 2u)
  {
    return 0;
  }

  v5 = *(context + 104);
  if (!v5)
  {
    [(_NSSQLTableMigrationDescription *)context _determineSchemaTransformationComplexityInMigrationContext:a2];
    v5 = *(context + 104);
  }

  return [v5 BOOLValue];
}

- (void)_sourceRootTableNameInMigrationContext:(uint64_t)context
{
  do
  {
    if (!context)
    {
      return 0;
    }

    contextCopy = context;
    _sourceRootEntity = [(_NSSQLTableMigrationDescription *)context _sourceRootEntity];
    context = [(_NSSQLiteStoreMigrator *)a2 tableMigrationDescriptionForEntity:_sourceRootEntity];
  }

  while (context != contextCopy);
  tableName = [_sourceRootEntity tableName];
  if (![(_NSSQLTableMigrationDescription *)contextCopy _ownSourceRootTableNeedsRenameInMigrationContext:a2])
  {
    return tableName;
  }

  return [(_NSSQLTableMigrationDescription *)contextCopy _tempNameForTableName:tableName];
}

- (void)_tempNameForTableName:(uint64_t)name
{
  v4 = [*(name + 96) objectForKey:a2];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"_T_%@", a2];
    [*(name + 96) setObject:v4 forKey:a2];
  }

  return v4;
}

- (uint64_t)appendStatementsToRenameTables:(uint64_t)tables migrationContext:
{
  v154 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    if (tables)
    {
      v108 = *(tables + 32);
    }

    else
    {
      v108 = 0;
    }

    _sourceRootEntity = [(_NSSQLTableMigrationDescription *)result _sourceRootEntity];
    v104 = v5;
    if ([(_NSSQLiteStoreMigrator *)tables tableMigrationDescriptionForEntity:_sourceRootEntity]== v5)
    {
      if ([(_NSSQLTableMigrationDescription *)v5 _ownSourceRootTableNeedsRenameInMigrationContext:tables])
      {
        tableName = [-[_NSSQLTableMigrationDescription _sourceRootEntity](v5) tableName];
        v53 = [(_NSSQLTableMigrationDescription *)v5 _tempNameForTableName:tableName];
        v54 = [(NSSQLiteAdapter *)v108 newRenameTableStatementFrom:tableName to:v53];
        [a2 addObject:v54];

        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        v55 = *(v5 + 56);
        v56 = [v55 countByEnumeratingWithState:&v137 objects:v153 count:16];
        if (v56)
        {
          v57 = v56;
          v58 = *v138;
          do
          {
            for (i = 0; i != v57; ++i)
            {
              if (*v138 != v58)
              {
                objc_enumerationMutation(v55);
              }

              v60 = [objc_msgSend(*(*(&v137 + 1) + 8 * i) "sourceEntity")];
              if (([v60 isEqual:-[_NSSQLTableMigrationDescription _sourceRootEntity](v5)] & 1) == 0)
              {
                v100 = *MEMORY[0x1E695D930];
                v101 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Cannot merge multiple root entity source tables into one destination entity root table", @"message", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", objc_msgSend(objc_msgSend(v60, "entityDescription"), "name"), objc_msgSend(objc_msgSend(-[_NSSQLTableMigrationDescription _sourceRootEntity](v5), "entityDescription"), "name"), 0), @"sourceRootEntities", objc_msgSend(objc_msgSend(*(v5 + 8), "entityDescription"), "name"), @"destinationRootEntity", 0}];
                v102 = [_NSCoreDataException exceptionWithName:v100 code:134190 reason:@"Cannot merge multiple root entity source tables into one destination entity root table" userInfo:v101];
                objc_exception_throw(v102);
              }
            }

            v57 = [v55 countByEnumeratingWithState:&v137 objects:v153 count:16];
          }

          while (v57);
        }
      }

      else
      {
        if ([*(v5 + 176) count])
        {
          tablesCopy = tables;
          v61 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
          _sourceRootEntity2 = [(_NSSQLTableMigrationDescription *)v5 _sourceRootEntity];
          tableName2 = [_sourceRootEntity2 tableName];
          v133 = 0u;
          v134 = 0u;
          v135 = 0u;
          v136 = 0u;
          obja = *(v5 + 176);
          v64 = [obja countByEnumeratingWithState:&v133 objects:v152 count:16];
          if (v64)
          {
            v65 = v64;
            v66 = *v134;
            do
            {
              for (j = 0; j != v65; ++j)
              {
                if (*v134 != v66)
                {
                  objc_enumerationMutation(obja);
                }

                v68 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"ALTER TABLE %@ RENAME COLUMN %@ TO _DEFERRED_%@__%@", tableName2, objc_msgSend(objc_msgSend(*(*(&v133 + 1) + 8 * j), "firstObject"), "columnName"), v61, objc_msgSend(objc_msgSend(*(*(&v133 + 1) + 8 * j), "firstObject"), "columnName")];
                v69 = [[NSSQLiteStatement alloc] initWithEntity:_sourceRootEntity2 sqlString:v68];

                [a2 addObject:v69];
              }

              v65 = [obja countByEnumeratingWithState:&v133 objects:v152 count:16];
            }

            while (v65);
          }

          v5 = v104;
          if (tablesCopy)
          {
            *(tablesCopy + 217) = 1;
          }
        }

        v70 = *(v5 + 120);
        if (v70)
        {
          if ([v70 count])
          {
            v131 = 0u;
            v132 = 0u;
            v129 = 0u;
            v130 = 0u;
            v71 = *(v5 + 120);
            v72 = [v71 countByEnumeratingWithState:&v129 objects:v151 count:16];
            if (v72)
            {
              v73 = v72;
              v74 = *v130;
              do
              {
                for (k = 0; k != v73; ++k)
                {
                  if (*v130 != v74)
                  {
                    objc_enumerationMutation(v71);
                  }

                  v76 = -[NSSQLiteAdapter newRenameTableStatementFrom:to:](v108, [objc_msgSend(*(*(&v129 + 1) + 8 * k) objectAtIndexedSubscript:{0), "tableName"}], objc_msgSend(objc_msgSend(*(*(&v129 + 1) + 8 * k), "objectAtIndexedSubscript:", 1), "tableName"));
                  [a2 addObject:v76];
                }

                v73 = [v71 countByEnumeratingWithState:&v129 objects:v151 count:16];
              }

              while (v73);
            }
          }
        }

        v77 = *(v5 + 128);
        if (v77)
        {
          if ([v77 count])
          {
            rootEntity = [v104 rootEntity];
            tableName3 = [rootEntity tableName];
            v80 = [objc_msgSend(*(v104 + 128) sortedArrayUsingDescriptors:{MEMORY[0x1E695E0F0]), "sortedArrayUsingComparator:", &__block_literal_global_20}];
            v125 = 0u;
            v126 = 0u;
            v127 = 0u;
            v128 = 0u;
            objb = v80;
            v81 = [v80 countByEnumeratingWithState:&v125 objects:v150 count:16];
            if (v81)
            {
              v82 = v81;
              v83 = *v126;
              do
              {
                for (m = 0; m != v82; ++m)
                {
                  if (*v126 != v83)
                  {
                    objc_enumerationMutation(objb);
                  }

                  v85 = *(*(&v125 + 1) + 8 * m);
                  firstObject = [v85 firstObject];
                  lastObject = [v85 lastObject];
                  if ([firstObject propertyType] == 3)
                  {
                    v88 = [(NSSQLiteAdapter *)v108 newDropIndexStatementForColumn:firstObject];
                    [a2 addObject:v88];
                  }

                  v89 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"ALTER TABLE %@ RENAME COLUMN %@ TO %@", tableName3, objc_msgSend(firstObject, "columnName"), objc_msgSend(lastObject, "columnName")];
                  v90 = [[NSSQLiteStatement alloc] initWithEntity:rootEntity sqlString:v89];

                  [a2 addObject:v90];
                }

                v82 = [objb countByEnumeratingWithState:&v125 objects:v150 count:16];
              }

              while (v82);
            }
          }
        }

        v5 = v104;
        v91 = *(v104 + 112);
        if (v91)
        {
          if ([v91 count])
          {
            rootEntity2 = [v104 rootEntity];
            tableName4 = [rootEntity2 tableName];
            v121 = 0u;
            v122 = 0u;
            v123 = 0u;
            v124 = 0u;
            objc = *(v104 + 112);
            v94 = [objc countByEnumeratingWithState:&v121 objects:v149 count:16];
            if (v94)
            {
              v95 = v94;
              v96 = *v122;
              do
              {
                for (n = 0; n != v95; ++n)
                {
                  if (*v122 != v96)
                  {
                    objc_enumerationMutation(objc);
                  }

                  v98 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"ALTER TABLE %@ ADD COLUMN %@ %@", tableName4, objc_msgSend(*(*(&v121 + 1) + 8 * n), "columnName"), NSSQLiteAdapter_typeStringForSQLType(objc_msgSend(*(*(&v121 + 1) + 8 * n), "sqlType"))];
                  v99 = [[NSSQLiteStatement alloc] initWithEntity:rootEntity2 sqlString:v98];

                  [a2 addObject:v99];
                }

                v95 = [objc countByEnumeratingWithState:&v121 objects:v149 count:16];
                v5 = v104;
              }

              while (v95);
            }
          }
        }
      }
    }

    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    _transformedManyToManys = [(_NSSQLTableMigrationDescription *)v5 _transformedManyToManys];
    result = [_transformedManyToManys countByEnumeratingWithState:&v117 objects:v148 count:16];
    if (result)
    {
      v8 = result;
      v9 = 0x1EA8C5000uLL;
      v10 = &OBJC_IVAR____PFFetchPlanHeader_sql_model;
      v11 = *v118;
      v106 = *v118;
      v103 = _transformedManyToManys;
      do
      {
        v12 = 0;
        v105 = v8;
        do
        {
          if (*v118 != v11)
          {
            objc_enumerationMutation(_transformedManyToManys);
          }

          v13 = *(*(&v117 + 1) + 8 * v12);
          if (v13 && *(&v13->isa + *(v9 + 3944)))
          {
            obj = v12;
            v14 = -[NSSQLEntity _sqlPropertyWithRenamingIdentifier:]([objc_msgSend(*(v5 + 64) objectForKey:{objc_msgSend(-[__CFString entity](v13, "entity"), "name")), "sourceEntity"}], objc_msgSend(-[__CFString propertyDescription](v13, "propertyDescription"), "renamingIdentifier"));
            v15 = v14;
            if (v14)
            {
              if (v14[24] == 9)
              {
                v16 = [-[__CFString propertyDescription](v13 "propertyDescription")];
                if (v16 == [objc_msgSend(v15 "propertyDescription")])
                {
                  v17 = 0;
                }

                else if ([-[__CFString propertyDescription](v13 "propertyDescription")])
                {
                  v17 = [objc_msgSend(v15 "propertyDescription")];
                }

                else
                {
                  v17 = 1;
                }

                v18 = v10[36];
                v19 = *(&v13->isa + v18);
                if (v19)
                {
                  v20 = v10;
                  v21 = [objc_msgSend(v19 "propertyDescription")];
                  v22 = v21;
                  v23 = v20[36];
                  v24 = *&v15[v23];
                  if (v24)
                  {
                    goto LABEL_24;
                  }

                  if ((v21 & 1) == 0)
                  {
LABEL_35:
                    LODWORD(v19) = 0;
                    goto LABEL_36;
                  }

LABEL_26:
                  v25 = *(&v13->isa + v23);
                  if (v25 && [objc_msgSend(v25 "propertyDescription")])
                  {
                    v19 = *(v15 + 7);
                    if (v19)
                    {
                      LODWORD(v19) = [objc_msgSend(v19 "propertyDescription")];
                    }

                    goto LABEL_36;
                  }

                  goto LABEL_37;
                }

                v22 = 0;
                v24 = *&v15[v18];
                if (v24)
                {
LABEL_24:
                  if (v22 == [objc_msgSend(v24 "propertyDescription")])
                  {
                    goto LABEL_35;
                  }

                  v23 = 56;
                  goto LABEL_26;
                }

LABEL_36:
                if ((v17 | v19))
                {
LABEL_37:
                  v26 = -[_NSSQLTableMigrationDescription _tempNameForTableName:](v5, [v15 correlationTableName]);
                  v27 = -[NSSQLiteAdapter newRenameTableStatementFrom:to:](v108, [v15 correlationTableName], v26);
                  [a2 addObject:v27];
                }

                else
                {
                  if (([objc_msgSend(v15 "correlationTableName")] & 1) == 0)
                  {
                    v28 = -[NSSQLiteAdapter newRenameTableStatementFrom:to:](v108, [v15 correlationTableName], -[__CFString correlationTableName](v13, "correlationTableName"));
                    [a2 addObject:v28];
                  }

                  v29 = [objc_msgSend(objc_msgSend(v15 "propertyDescription")];
                  v30 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
                  v147[0] = [(__CFString *)v13 columnName];
                  if (v29)
                  {
                    columnName = [v15 columnName];
                  }

                  else
                  {
                    columnName = [(NSSQLManyToMany *)v15 inverseColumnName];
                  }

                  v147[1] = columnName;
                  [v30 addObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v147, 2)}];
                  v146[0] = [(NSSQLManyToMany *)v13 inverseColumnName];
                  if (v29)
                  {
                    inverseColumnName = [(NSSQLManyToMany *)v15 inverseColumnName];
                  }

                  else
                  {
                    inverseColumnName = [v15 columnName];
                  }

                  v146[1] = inverseColumnName;
                  [v30 addObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v146, 2)}];
                  if (v13[2].data)
                  {
                    if (*(v15 + 10))
                    {
                      v145[0] = v13[2].data;
                      if (v29)
                      {
                        columnName2 = *(v15 + 10);
                        if (!columnName2)
                        {
                          columnName2 = [v15 columnName];
                        }
                      }

                      else
                      {
                        columnName2 = [(NSSQLManyToMany *)v15 inverseOrderColumnName];
                        if (!columnName2)
                        {
                          columnName2 = [(NSSQLManyToMany *)v15 inverseColumnName];
                        }
                      }

                      v145[1] = columnName2;
                      v34 = v145;
                    }

                    else
                    {
                      v144[0] = v13[2].data;
                      v144[1] = &stru_1EF3F1768;
                      v34 = v144;
                    }

                    [v30 addObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v34, 2)}];
                  }

                  inverseOrderColumnName = [(NSSQLManyToMany *)v13 inverseOrderColumnName];
                  if (inverseOrderColumnName)
                  {
                    v36 = inverseOrderColumnName;
                    if ([(NSSQLManyToMany *)v15 inverseOrderColumnName])
                    {
                      v143[0] = v36;
                      if (v29)
                      {
                        inverseOrderColumnName2 = [(NSSQLManyToMany *)v15 inverseOrderColumnName];
                        if (!inverseOrderColumnName2)
                        {
                          inverseOrderColumnName2 = [(NSSQLManyToMany *)v15 inverseColumnName];
                        }
                      }

                      else
                      {
                        inverseOrderColumnName2 = *(v15 + 10);
                        if (!inverseOrderColumnName2)
                        {
                          inverseOrderColumnName2 = [v15 columnName];
                        }
                      }

                      v143[1] = inverseOrderColumnName2;
                      v38 = v143;
                    }

                    else
                    {
                      v142[0] = v36;
                      v142[1] = &stru_1EF3F1768;
                      v38 = v142;
                    }

                    [v30 addObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v38, 2)}];
                  }

                  v39 = [v30 sortedArrayUsingComparator:&__block_literal_global_63];
                  v113 = 0u;
                  v114 = 0u;
                  v115 = 0u;
                  v116 = 0u;
                  v40 = [v39 countByEnumeratingWithState:&v113 objects:v141 count:16];
                  if (v40)
                  {
                    v41 = v40;
                    v42 = *v114;
                    do
                    {
                      for (ii = 0; ii != v41; ++ii)
                      {
                        if (*v114 != v42)
                        {
                          objc_enumerationMutation(v39);
                        }

                        v44 = *(*(&v113 + 1) + 8 * ii);
                        if (([objc_msgSend(v44 "lastObject")] & 1) == 0)
                        {
                          v45 = [objc_msgSend(v44 "lastObject")];
                          v46 = objc_alloc(MEMORY[0x1E696AEC0]);
                          correlationTableName = [(__CFString *)v13 correlationTableName];
                          if (v45)
                          {
                            v48 = [v46 initWithFormat:@"ALTER TABLE %@ RENAME COLUMN %@ TO %@", correlationTableName, objc_msgSend(v44, "lastObject"), objc_msgSend(v44, "firstObject")];
                          }

                          else
                          {
                            v48 = [v46 initWithFormat:@"ALTER TABLE %@ ADD COLUMN %@ %@", correlationTableName, objc_msgSend(v44, "firstObject"), @"INTEGER"];
                          }

                          v49 = v48;
                          v50 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:v48];

                          [a2 addObject:v50];
                        }
                      }

                      v41 = [v39 countByEnumeratingWithState:&v113 objects:v141 count:16];
                    }

                    while (v41);
                  }

                  v5 = v104;
                  [*(v104 + 136) addObject:v13];
                  _transformedManyToManys = v103;
                  v8 = v105;
                  v9 = 0x1EA8C5000;
                }

                v10 = &OBJC_IVAR____PFFetchPlanHeader_sql_model;
                v11 = v106;
                v12 = obj;
                goto LABEL_80;
              }

              if (([v14 isToMany] & 1) == 0 && v15[24] != 7)
              {
LABEL_134:
                objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Unrecognized source property type for many-to-many migration" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", v15, @"sourceRelationship"}]);
              }
            }

            else if (([0 isToMany] & 1) == 0)
            {
              goto LABEL_134;
            }
          }

LABEL_80:
          v12 = v12 + 1;
        }

        while (v12 != v8);
        result = [_transformedManyToManys countByEnumeratingWithState:&v117 objects:v148 count:16];
        v8 = result;
      }

      while (result);
    }
  }

  v51 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_transformedManyToManys
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(self + 24) >= 2u)
  {
    if (!*(self + 88))
    {
      *(self + 88) = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:8];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v3 = *(self + 48);
      v4 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v19;
        do
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v19 != v6)
            {
              objc_enumerationMutation(v3);
            }

            [*(self + 88) addObjectsFromArray:-[_NSSQLEntityMigrationDescription transformedManyToManys](*(*(&v18 + 1) + 8 * i))];
          }

          v5 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v5);
      }

      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v8 = *(self + 56);
      v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v15;
        do
        {
          for (j = 0; j != v10; ++j)
          {
            if (*v15 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [*(self + 88) addObjectsFromArray:-[_NSSQLEntityMigrationDescription transformedManyToManys](*(*(&v14 + 1) + 8 * j))];
          }

          v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
        }

        while (v10);
      }
    }

    result = *(self + 88);
  }

  else
  {
    result = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)appendStatementsToCreateOrDropTables:(uint64_t)tables migrationContext:
{
  v100 = *MEMORY[0x1E69E9840];
  if (result)
  {
    tablesCopy2 = tables;
    v4 = a2;
    v5 = result;
    if (tables)
    {
      v6 = *(tables + 32);
    }

    else
    {
      v6 = 0;
    }

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    if (*(result + 24))
    {
      if (!*(result + 80))
      {
        *(result + 80) = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:8];
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        obj = *(v5 + 40);
        v68 = [obj countByEnumeratingWithState:&v90 objects:v99 count:16];
        if (v68)
        {
          v66 = *v91;
          do
          {
            for (i = 0; i != v68; ++i)
            {
              if (*v91 != v66)
              {
                objc_enumerationMutation(obj);
              }

              sourceEntity = [*(*(&v90 + 1) + 8 * i) sourceEntity];
              v86 = 0u;
              v87 = 0u;
              v88 = 0u;
              v89 = 0u;
              manyToManyRelationships = [sourceEntity manyToManyRelationships];
              v10 = [manyToManyRelationships countByEnumeratingWithState:&v86 objects:v98 count:16];
              if (v10)
              {
                v11 = v10;
                v12 = *v87;
                do
                {
                  for (j = 0; j != v11; ++j)
                  {
                    if (*v87 != v12)
                    {
                      objc_enumerationMutation(manyToManyRelationships);
                    }

                    v14 = *(*(&v86 + 1) + 8 * j);
                    if (v14 && *(v14 + 64) && [*(*(&v86 + 1) + 8 * j) entity] == sourceEntity)
                    {
                      [*(v5 + 80) addObject:v14];
                    }
                  }

                  v11 = [manyToManyRelationships countByEnumeratingWithState:&v86 objects:v98 count:16];
                }

                while (v11);
              }
            }

            v68 = [obj countByEnumeratingWithState:&v90 objects:v99 count:16];
          }

          while (v68);
        }

        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v15 = *(v5 + 56);
        v16 = [v15 countByEnumeratingWithState:&v82 objects:v97 count:16];
        v4 = a2;
        if (v16)
        {
          v17 = v16;
          v18 = *v83;
          do
          {
            for (k = 0; k != v17; ++k)
            {
              if (*v83 != v18)
              {
                objc_enumerationMutation(v15);
              }

              [*(v5 + 80) addObjectsFromArray:-[_NSSQLEntityMigrationDescription removedManyToManys](*(*(&v82 + 1) + 8 * k))];
            }

            v17 = [v15 countByEnumeratingWithState:&v82 objects:v97 count:16];
          }

          while (v17);
        }
      }

      v20 = *(v5 + 80);
      tablesCopy2 = tables;
    }

    else
    {
      v20 = 0;
    }

    v21 = [v20 countByEnumeratingWithState:&v78 objects:v96 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v79;
      do
      {
        for (m = 0; m != v22; ++m)
        {
          if (*v79 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v78 + 1) + 8 * m);
          if (v25 && v25[8])
          {
            v26 = -[NSSQLiteAdapter newDropTableStatementOrFailForTableNamed:](v6, [v25 correlationTableName]);
            [v4 addObject:v26];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v78 objects:v96 count:16];
      }

      while (v22);
    }

    v27 = *(v5 + 104);
    if (!v27)
    {
      [(_NSSQLTableMigrationDescription *)v5 _determineSchemaTransformationComplexityInMigrationContext:tablesCopy2];
      v27 = *(v5 + 104);
    }

    bOOLValue = [v27 BOOLValue];
    v29 = *(v5 + 24);
    if (v29 == 1)
    {
      v30 = 0;
    }

    else
    {
      v30 = bOOLValue;
    }

    if (!v29 || v30)
    {
      v31 = [(NSSQLiteAdapter *)v6 newCreateTableStatementForEntity:?];
      [v4 addObject:v31];

      v29 = *(v5 + 24);
    }

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    if (v29 == 1)
    {
      v32 = 0;
    }

    else
    {
      if (!*(v5 + 72))
      {
        v62 = v4;
        *(v5 + 72) = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:8];
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        obja = *(v5 + 32);
        v69 = [obja countByEnumeratingWithState:&v90 objects:v99 count:16];
        if (v69)
        {
          v67 = *v91;
          do
          {
            v33 = 0;
            do
            {
              if (*v91 != v67)
              {
                objc_enumerationMutation(obja);
              }

              v34 = *(*(&v90 + 1) + 8 * v33);
              if (v34)
              {
                v35 = *(v34 + 32);
              }

              else
              {
                v35 = 0;
              }

              v88 = 0u;
              v89 = 0u;
              v86 = 0u;
              v87 = 0u;
              manyToManyRelationships2 = [v35 manyToManyRelationships];
              v37 = [manyToManyRelationships2 countByEnumeratingWithState:&v86 objects:v98 count:16];
              if (v37)
              {
                v38 = v37;
                v39 = *v87;
                do
                {
                  for (n = 0; n != v38; ++n)
                  {
                    if (*v87 != v39)
                    {
                      objc_enumerationMutation(manyToManyRelationships2);
                    }

                    v41 = *(*(&v86 + 1) + 8 * n);
                    if (v41 && *(v41 + 64) && [*(*(&v86 + 1) + 8 * n) entity] == v35)
                    {
                      [*(v5 + 72) addObject:v41];
                    }
                  }

                  v38 = [manyToManyRelationships2 countByEnumeratingWithState:&v86 objects:v98 count:16];
                }

                while (v38);
              }

              ++v33;
            }

            while (v33 != v69);
            v42 = [obja countByEnumeratingWithState:&v90 objects:v99 count:16];
            v69 = v42;
          }

          while (v42);
        }

        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v43 = *(v5 + 56);
        v44 = [v43 countByEnumeratingWithState:&v82 objects:v97 count:16];
        v4 = v62;
        if (v44)
        {
          v45 = v44;
          v46 = *v83;
          do
          {
            for (ii = 0; ii != v45; ++ii)
            {
              if (*v83 != v46)
              {
                objc_enumerationMutation(v43);
              }

              [*(v5 + 72) addObjectsFromArray:-[_NSSQLEntityMigrationDescription addedManyToManys](*(*(&v82 + 1) + 8 * ii))];
            }

            v45 = [v43 countByEnumeratingWithState:&v82 objects:v97 count:16];
          }

          while (v45);
        }
      }

      v32 = *(v5 + 72);
    }

    v48 = [v32 countByEnumeratingWithState:&v74 objects:v95 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v75;
      do
      {
        for (jj = 0; jj != v49; ++jj)
        {
          if (*v75 != v50)
          {
            objc_enumerationMutation(v32);
          }

          v52 = *(*(&v74 + 1) + 8 * jj);
          if (v52 && v52[2].isa)
          {
            v53 = [(NSSQLiteAdapter *)v6 newCreateTableStatementForManyToMany:v52];
            [v4 addObject:v53];
          }
        }

        v49 = [v32 countByEnumeratingWithState:&v74 objects:v95 count:16];
      }

      while (v49);
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    _transformedManyToManys = [(_NSSQLTableMigrationDescription *)v5 _transformedManyToManys];
    result = [_transformedManyToManys countByEnumeratingWithState:&v70 objects:v94 count:16];
    if (result)
    {
      v55 = result;
      v56 = *v71;
      do
      {
        v57 = 0;
        do
        {
          if (*v71 != v56)
          {
            objc_enumerationMutation(_transformedManyToManys);
          }

          v58 = *(*(&v70 + 1) + 8 * v57);
          if (v58 && v58[2].isa && ([*(v5 + 136) containsObject:*(*(&v70 + 1) + 8 * v57)] & 1) == 0)
          {
            v59 = [(NSSQLiteAdapter *)v6 newCreateTableStatementForManyToMany:v58];
            [v4 addObject:v59];
          }

          ++v57;
        }

        while (v55 != v57);
        result = [_transformedManyToManys countByEnumeratingWithState:&v70 objects:v94 count:16];
        v55 = result;
      }

      while (result);
    }
  }

  v60 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)appendStatementsToPerformMigration:(uint64_t)migration migrationContext:
{
  v101 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    goto LABEL_98;
  }

  v3 = *(self + 24);
  if (!v3)
  {
    goto LABEL_98;
  }

  migrationCopy = migration;
  if (v3 != 1)
  {
    v66 = objc_alloc_init(MEMORY[0x1E695DF70]);
    obj = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v65 = a2;
    if ([*(self + 40) count])
    {
      v8 = *(self + 40);
      v9 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"DELETE FROM "];
      [v9 appendString:{objc_msgSend(*(self + 8), "tableName")}];
      [v9 appendString:@" WHERE "];
      [v9 appendString:@"Z_ENT"];
      objc_msgSend(v9, "appendString:", @" IN (");
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v10 = [v8 countByEnumeratingWithState:&v91 objects:v100 count:16];
      if (v10)
      {
        v11 = *v92;
        v12 = @"%d";
        do
        {
          v13 = 0;
          do
          {
            if (*v92 != v11)
            {
              objc_enumerationMutation(v8);
            }

            sourceEntity = [*(*(&v91 + 1) + 8 * v13) sourceEntity];
            if (sourceEntity)
            {
              v15 = *(sourceEntity + 184);
            }

            else
            {
              v15 = 0;
            }

            [v9 appendFormat:v12, v15];
            ++v13;
            v12 = @",%d";
          }

          while (v10 != v13);
          v16 = [v8 countByEnumeratingWithState:&v91 objects:v100 count:16];
          v10 = v16;
          v12 = @",%d";
        }

        while (v16);
      }

      a2 = v65;
      [v9 appendString:@""]);
      if (migrationCopy)
      {
        sqlString = migrationCopy->_sqlString;
      }

      else
      {
        sqlString = 0;
      }

      v18 = [(NSSQLiteAdapter *)sqlString newStatementWithSQLString:v9];

      [v66 addObject:v18];
    }

    v19 = *(self + 104);
    if (!v19)
    {
      [(_NSSQLTableMigrationDescription *)self _determineSchemaTransformationComplexityInMigrationContext:migrationCopy];
      v19 = *(self + 104);
    }

    if ([v19 BOOLValue])
    {
      if ([*(self + 56) count])
      {
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v20 = *(self + 56);
        v21 = [v20 countByEnumeratingWithState:&v87 objects:v99 count:16];
        if (v21)
        {
          v22 = *v88;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v88 != v22)
              {
                objc_enumerationMutation(v20);
              }

              v24 = *(*(&v87 + 1) + 8 * i);
              v25 = [(_NSSQLTableMigrationDescription *)self createInsertStatementForEntityMigration:v24 migrationContext:migrationCopy];
              [v66 addObject:v25];

              v26 = [_NSSQLTableMigrationDescription createFEKUpdateStatementsForEntityMigration:v24 migrationContext:migrationCopy];
              if (v26)
              {
                [obj addObjectsFromArray:v26];
              }

              while (1)
              {
                v27 = [_NSSQLTableMigrationDescription createUpdateStatementForEntityMigration:v24 migrationContext:migrationCopy];
                if (!v27)
                {
                  break;
                }

                [v7 addObject:v27];
              }
            }

            v21 = [v20 countByEnumeratingWithState:&v87 objects:v99 count:16];
          }

          while (v21);
        }
      }

      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v28 = *(self + 48);
      v29 = [v28 countByEnumeratingWithState:&v83 objects:v98 count:16];
      if (v29)
      {
        v30 = *v84;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v84 != v30)
            {
              objc_enumerationMutation(v28);
            }

            v32 = [(_NSSQLTableMigrationDescription *)self createInsertStatementForEntityMigration:migrationCopy migrationContext:?];
            [v66 addObject:v32];
          }

          v29 = [v28 countByEnumeratingWithState:&v83 objects:v98 count:16];
          a2 = v65;
        }

        while (v29);
      }
    }

    else
    {
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v33 = *(self + 48);
      v34 = [v33 countByEnumeratingWithState:&v79 objects:v97 count:16];
      if (v34)
      {
        v35 = *v80;
        do
        {
          for (k = 0; k != v34; ++k)
          {
            if (*v80 != v35)
            {
              objc_enumerationMutation(v33);
            }

            v37 = *(*(&v79 + 1) + 8 * k);
            if (v37 && !*(v37 + 16))
            {
              [(_NSSQLEntityMigrationDescription *)*(*(&v79 + 1) + 8 * k) _generateSQLValueMappingsWithMigrationContext:migrationCopy];
            }

            v38 = [_NSSQLTableMigrationDescription createFEKUpdateStatementsForEntityMigration:v37 migrationContext:migrationCopy];
            if (v38)
            {
              [obj addObjectsFromArray:v38];
            }
          }

          v34 = [v33 countByEnumeratingWithState:&v79 objects:v97 count:16];
        }

        while (v34);
      }

      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v39 = *(self + 56);
      v40 = [v39 countByEnumeratingWithState:&v75 objects:v96 count:16];
      if (v40)
      {
        v41 = *v76;
        do
        {
          for (m = 0; m != v40; ++m)
          {
            if (*v76 != v41)
            {
              objc_enumerationMutation(v39);
            }

            v43 = *(*(&v75 + 1) + 8 * m);
            if (v43 && !*(v43 + 16))
            {
              [(_NSSQLEntityMigrationDescription *)*(*(&v75 + 1) + 8 * m) _generateSQLValueMappingsWithMigrationContext:migrationCopy];
            }

            v44 = [_NSSQLTableMigrationDescription createFEKUpdateStatementsForEntityMigration:v43 migrationContext:migrationCopy];
            if (v44)
            {
              [obj addObjectsFromArray:v44];
            }

            while (1)
            {
              v45 = [_NSSQLTableMigrationDescription createUpdateStatementForEntityMigration:v43 migrationContext:migrationCopy];
              if (!v45)
              {
                break;
              }

              [v7 addObject:v45];
            }
          }

          v40 = [v39 countByEnumeratingWithState:&v75 objects:v96 count:16];
        }

        while (v40);
      }
    }

    [a2 addObjectsFromArray:v66];
    [a2 addObjectsFromArray:obj];
    [a2 addObjectsFromArray:v7];

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    obja = [(_NSSQLTableMigrationDescription *)self _transformedManyToManys];
    v46 = [obja countByEnumeratingWithState:&v71 objects:v95 count:16];
    if (v46)
    {
      v47 = *v72;
      do
      {
        v48 = 0;
        do
        {
          if (*v72 != v47)
          {
            objc_enumerationMutation(obja);
          }

          v49 = *(*(&v71 + 1) + 8 * v48);
          if (v49 && v49[2].isa)
          {
            v50 = -[NSSQLEntity _sqlPropertyWithRenamingIdentifier:]([objc_msgSend(*(self + 64) objectForKey:{objc_msgSend(objc_msgSend(*(*(&v71 + 1) + 8 * v48), "entity"), "name")), "sourceEntity"}], objc_msgSend(-[__CFString propertyDescription](v49, "propertyDescription"), "renamingIdentifier"));
            v51 = v50;
            if (v50)
            {
              if (LOBYTE(v50->length) == 9)
              {
                if ([*(self + 136) containsObject:v49])
                {
                  goto LABEL_92;
                }

                v52 = [(_NSSQLTableMigrationDescription *)self _tempNameForTableName:?];
                v53 = [objc_msgSend(-[__CFString propertyDescription](v51 "propertyDescription")];
                if (migrationCopy)
                {
                  v54 = migrationCopy->_sqlString;
                }

                else
                {
                  v54 = 0;
                }

                v55 = [(NSSQLiteAdapter *)v54 newCopyAndInsertStatementForManyToMany:v51 toManyToMany:v49 intermediateTableName:v52 invertColumns:v53 ^ 1u];
                goto LABEL_91;
              }

              if ([(__CFString *)v50 isToMany])
              {
                length = v51[1].length;
                goto LABEL_88;
              }

              if (LOBYTE(v51->length) != 7)
              {
                goto LABEL_99;
              }

              v59 = [(_NSSQLTableMigrationDescription *)self _sourceRootTableNameInMigrationContext:migrationCopy];
              v55 = [_NSSQLTableMigrationDescription newCopyAndInsertStatementForToOne:v51 toManyToMany:v49 fromTableName:v59 invertColumns:0 migrationContext:migrationCopy];
            }

            else
            {
              if (([0 isToMany] & 1) == 0)
              {
LABEL_99:
                v63 = MEMORY[0x1E695DF30];
                v64 = [MEMORY[0x1E695DF20] dictionaryWithObject:v51 forKey:@"sourceRelationship"];
                objc_exception_throw([v63 exceptionWithName:*MEMORY[0x1E695D930] reason:@"Unrecognized source property type for many-to-many migration" userInfo:v64]);
              }

              length = 0;
LABEL_88:
              v57 = -[_NSSQLiteStoreMigrator tableMigrationDescriptionForEntity:](migrationCopy, [length entity]);
              v58 = [(_NSSQLTableMigrationDescription *)v57 _sourceRootTableNameInMigrationContext:migrationCopy];
              v55 = [_NSSQLTableMigrationDescription newCopyAndInsertStatementForToOne:v49 toManyToMany:v58 fromTableName:1 invertColumns:migrationCopy migrationContext:?];
            }

LABEL_91:
            v60 = v55;
            [v65 addObject:v55];
          }

LABEL_92:
          ++v48;
        }

        while (v46 != v48);
        v61 = [obja countByEnumeratingWithState:&v71 objects:v95 count:16];
        v46 = v61;
      }

      while (v61);
    }

LABEL_98:
    v62 = *MEMORY[0x1E69E9840];
    return;
  }

  if (migration)
  {
    migrationCopy = *(migration + 32);
  }

  v70 = -[NSSQLiteAdapter newDropTableStatementOrFailForTableNamed:](migrationCopy, [*(self + 8) tableName]);
  [a2 addObject:?];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)createInsertStatementForEntityMigration:(uint64_t)migration migrationContext:
{
  v79 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v68 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (a2)
  {
    v8 = a2[4];
  }

  else
  {
    v8 = 0;
  }

  sourceEntity = [a2 sourceEntity];
  v10 = *(self + 8);
  selfCopy = self;
  migrationCopy = migration;
  v66 = a2;
  if (v10)
  {
    while (v10)
    {
      v11 = v10;
      v10 = *(v10 + 168);
      if (v10 == v11)
      {
        v12 = *(v11 + 72);
        goto LABEL_7;
      }
    }
  }

  v12 = 0;
LABEL_7:
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v13 = [v12 sortedArrayUsingFunction:sortColumnsByType context:0];
  v14 = [v13 countByEnumeratingWithState:&v73 objects:v78 count:16];
  if (!v14)
  {
    goto LABEL_43;
  }

  v15 = *v74;
  while (2)
  {
    v16 = 0;
    do
    {
      if (*v74 != v15)
      {
        objc_enumerationMutation(v13);
      }

      v17 = *(*(&v73 + 1) + 8 * v16);
      if (!v17)
      {
LABEL_18:
        entity = [*(*(&v73 + 1) + 8 * v16) entity];
        if (v8)
        {
          v21 = v8[46];
          if (entity)
          {
            if (v21 < *(entity + 184))
            {
              goto LABEL_23;
            }

            v22 = *(entity + 188);
          }

          else
          {
            v22 = 0;
          }

          if (v21 <= v22)
          {
            columnName = [v17 columnName];
            if (!v66)
            {
              goto LABEL_42;
            }

            v27 = columnName;
            v28 = *(v66 + 16);
            if (!v28)
            {
              [(_NSSQLEntityMigrationDescription *)v66 _generateSQLValueMappingsWithMigrationContext:migrationCopy];
              v28 = *(v66 + 16);
            }

            v24 = [v28 objectForKey:v27];
            if (!v24)
            {
LABEL_42:
              v30 = MEMORY[0x1E695DF30];
              v31 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v8, @"entity", objc_msgSend(v17, "columnName"), @"column", 0}];
              v32 = [v30 exceptionWithName:*MEMORY[0x1E695D930] reason:@"Unrecognized column in entity" userInfo:v31];
              if (v32)
              {
                goto LABEL_52;
              }

              goto LABEL_43;
            }

            [v6 addObject:{objc_msgSend(v17, "columnName")}];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_25;
            }

            [v68 addObject:v24];
LABEL_24:
            v24 = @"?";
LABEL_25:
            [v7 addObject:v24];
            goto LABEL_29;
          }
        }

LABEL_23:
        [v6 addObject:{objc_msgSend(v17, "columnName")}];
        v23 = -[NSSQLBindVariable initWithValue:sqlType:propertyDescription:]([NSSQLBindVariable alloc], "initWithValue:sqlType:propertyDescription:", 0, [v17 sqlType], 0);
        [v68 addObject:v23];

        goto LABEL_24;
      }

      v18 = v17[24];
      switch(v18)
      {
        case 6:
          [v6 addObject:{objc_msgSend(*(*(&v73 + 1) + 8 * v16), "columnName")}];
          v19 = &OBJC_IVAR___NSSQLEntity__optLockKey;
          if (!sourceEntity)
          {
            goto LABEL_32;
          }

          break;
        case 5:
          [v6 addObject:{objc_msgSend(*(*(&v73 + 1) + 8 * v16), "columnName")}];
          v19 = &OBJC_IVAR___NSSQLEntity__entityKey;
          if (!sourceEntity)
          {
            goto LABEL_32;
          }

          break;
        case 2:
          [v6 addObject:{objc_msgSend(*(*(&v73 + 1) + 8 * v16), "columnName")}];
          v19 = &OBJC_IVAR___NSSQLEntity__primaryKey;
          if (!sourceEntity)
          {
LABEL_32:
            v25 = 0;
            goto LABEL_28;
          }

          break;
        default:
          goto LABEL_18;
      }

      v25 = *(sourceEntity + *v19);
LABEL_28:
      [v7 addObject:{objc_msgSend(v25, "columnName")}];
LABEL_29:
      ++v16;
    }

    while (v14 != v16);
    v29 = [v13 countByEnumeratingWithState:&v73 objects:v78 count:16];
    v14 = v29;
    if (v29)
    {
      continue;
    }

    break;
  }

LABEL_43:
  v33 = v8;
  v35 = selfCopy;
  v34 = migrationCopy;
  while (v33)
  {
    v36 = v33;
    v33 = *(v33 + 21);
    if (v33 == v36)
    {
      v37 = *(v36 + 9);
      goto LABEL_47;
    }
  }

  v37 = 0;
LABEL_47:
  v38 = [v37 count];
  if (v38 == [v6 count])
  {
    v39 = [v6 count];
    if (v39 != [v7 count])
    {
      v40 = MEMORY[0x1E695DF30];
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObject:v8 forKey:@"entity"];
      v42 = *MEMORY[0x1E695D930];
      v43 = @"Mismatched columns and values in migration insert statement";
      goto LABEL_51;
    }

    goto LABEL_53;
  }

  v40 = MEMORY[0x1E695DF30];
  v41 = [MEMORY[0x1E695DF20] dictionaryWithObject:v8 forKey:@"entity"];
  v42 = *MEMORY[0x1E695D930];
  v43 = @"Wrong number of columns in migration insert statement";
LABEL_51:
  v32 = [v40 exceptionWithName:v42 reason:v43 userInfo:v41];
  if (v32)
  {
LABEL_52:
    v44 = 0;
  }

  else
  {
LABEL_53:
    v63 = [v6 componentsJoinedByString:{@", "}];
    v67 = [(_NSSQLTableMigrationDescription *)selfCopy _sourceRootTableNameInMigrationContext:migrationCopy];
    v45 = 0x1E696A000uLL;
    if (sourceEntity && (*(sourceEntity + 160) || (v56 = *(sourceEntity + 152)) != 0 && [v56 count]))
    {
      v46 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@" WHERE "];
      [v46 appendString:v67];
      [v46 appendString:@"."];
      [v46 appendString:@"Z_ENT"];
      [v46 appendString:@" = "];
      v47 = [objc_msgSend(objc_msgSend(v8 "entityDescription")];
      if (!v47)
      {
        goto LABEL_71;
      }

      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v48 = *(sourceEntity + 152);
      v49 = [v48 countByEnumeratingWithState:&v69 objects:v77 count:16];
      if (!v49)
      {
        goto LABEL_71;
      }

      v50 = 0;
      v51 = *v70;
      do
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v70 != v51)
          {
            objc_enumerationMutation(v48);
          }

          if (!v50)
          {
            v53 = *(*(&v69 + 1) + 8 * i);
            v54 = [objc_msgSend(v53 "name")];
            if (v53)
            {
              v55 = v54;
            }

            else
            {
              v55 = 0;
            }

            if (v55 == 1)
            {
              v50 = v53[46];
            }

            else
            {
              v50 = 0;
            }
          }
        }

        v49 = [v48 countByEnumeratingWithState:&v69 objects:v77 count:16];
      }

      while (v49);
      v45 = 0x1E696A000;
      if (!v50)
      {
LABEL_71:
        v50 = *(sourceEntity + 184);
      }

      [v46 appendFormat:@"%d", v50];
      v35 = selfCopy;
      v34 = migrationCopy;
    }

    else
    {
      v46 = 0;
    }

    v57 = [v7 componentsJoinedByString:{@", "}];
    v58 = v67;
    v59 = [objc_alloc(*(v45 + 3424)) initWithString:@"INSERT INTO "];
    [v59 appendString:{objc_msgSend(*(v35 + 8), "tableName")}];
    objc_msgSend(v59, "appendString:", @" (");
    [v59 appendString:v63];
    [v59 appendString:@" SELECT "]);
    [v59 appendString:v57];
    [v59 appendString:@" FROM "];
    [v59 appendString:v58];
    if (v46)
    {
      [v59 appendString:v46];
    }

    if (v34)
    {
      v60 = *(v34 + 32);
    }

    else
    {
      v60 = 0;
    }

    v44 = [(NSSQLiteAdapter *)v60 newStatementWithSQLString:v59];
    [(NSSQLiteAdapter *)v44 _useModel:v68];

    v32 = 0;
  }

  if (v32)
  {

    objc_exception_throw(v32);
  }

  v61 = *MEMORY[0x1E69E9840];
  return v44;
}

- (id)createFEKUpdateStatementsForEntityMigration:(uint64_t)migration migrationContext:(uint64_t)context
{
  v34 = *MEMORY[0x1E69E9840];
  if (migration)
  {
    v4 = *(migration + 24);
  }

  else
  {
    v4 = 0;
  }

  if (![v4 count])
  {
    v28 = 0;
    goto LABEL_29;
  }

  v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (migration)
  {
    v5 = *(migration + 32);
    if (v5)
    {
      v27 = v5[5];
      goto LABEL_7;
    }
  }

  else
  {
    v5 = 0;
  }

  v27 = 0;
LABEL_7:
  tableName = [v5 tableName];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [v4 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v26 = *v30;
    do
    {
      v9 = 0;
      do
      {
        if (*v30 != v26)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v29 + 1) + 8 * v9);
        v11 = [v4 objectForKey:v10];
        v12 = [v27 objectForKey:v10];
        foreignKey = [v12 foreignKey];
        if (v12)
        {
          v14 = v12[9];
        }

        else
        {
          v14 = 0;
        }

        v15 = [(_NSSQLiteStoreMigrator *)context tableMigrationDescriptionForEntity:v11];
        if (!v15)
        {
          goto LABEL_19;
        }

        v16 = v15;
        v17 = *(v15 + 104);
        if (!v17)
        {
          [(_NSSQLTableMigrationDescription *)v16 _determineSchemaTransformationComplexityInMigrationContext:context];
          v17 = *(v16 + 104);
        }

        if ([v17 BOOLValue])
        {
          v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"_T_%@", objc_msgSend(v11, "tableName")];
        }

        else
        {
LABEL_19:
          v18 = [objc_msgSend(v12 "destinationEntity")];
        }

        v19 = v18;
        v20 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"UPDATE OR FAIL "];
        [v20 appendString:tableName];
        [v20 appendString:@" SET "];
        [v20 appendString:{objc_msgSend(v14, "columnName")}];
        objc_msgSend(v20, "appendString:", @" = (SELECT _EKT.");
        [v20 appendString:@"Z_ENT"];
        [v20 appendString:@" FROM "];
        [v20 appendString:v19];
        [v20 appendString:@" _EKT WHERE "];
        [v20 appendString:tableName];
        [v20 appendString:@"."];
        [v20 appendString:{objc_msgSend(foreignKey, "columnName")}];
        [v20 appendString:@" = _EKT."];
        [v20 appendString:@"Z_PK"];
        [v20 appendString:@""]);
        if (context)
        {
          v21 = *(context + 32);
        }

        else
        {
          v21 = 0;
        }

        v22 = [(NSSQLiteAdapter *)v21 newStatementWithSQLString:v20];

        [v28 addObject:v22];
        ++v9;
      }

      while (v8 != v9);
      v23 = [v4 countByEnumeratingWithState:&v29 objects:v33 count:16];
      v8 = v23;
    }

    while (v23);
  }

LABEL_29:
  v24 = *MEMORY[0x1E69E9840];
  return v28;
}

- (uint64_t)createUpdateStatementForEntityMigration:(uint64_t)migration migrationContext:(uint64_t)context
{
  migrationCopy = migration;
  nextPropertyTransform = [(_NSSQLEntityMigrationDescription *)migration nextPropertyTransform];
  if (!nextPropertyTransform)
  {
    return 0;
  }

  v5 = nextPropertyTransform;
  if (migrationCopy)
  {
    v6 = migrationCopy[4];
    sourceEntity = [migrationCopy sourceEntity];
    if (v6)
    {
      migrationCopy = [*(v6 + 40) objectForKey:*(v5 + 16)];
      v8 = 0;
      goto LABEL_5;
    }

    migrationCopy = 0;
  }

  else
  {
    sourceEntity = [0 sourceEntity];
    v6 = 0;
  }

  v8 = 1;
LABEL_5:
  v9 = *(v5 + 8);
  expressionType = [v9 expressionType];
  if (expressionType != 3)
  {
    if (!expressionType)
    {
      v11 = -[NSSQLBindVariable initWithValue:sqlType:propertyDescription:]([NSSQLBindVariable alloc], "initWithValue:sqlType:propertyDescription:", [v9 constantValue], objc_msgSend(migrationCopy, "sqlType"), 0);
      columnName = @"?";
      goto LABEL_12;
    }

    return 0;
  }

  keyPath = [v9 keyPath];
  if (v8)
  {
    v15 = 0;
  }

  else
  {
    v15 = [*(v6 + 40) objectForKey:keyPath];
  }

  columnName = [v15 columnName];
  v11 = 0;
LABEL_12:
  if (*(v5 + 32) == 1)
  {
    v16 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@" WHERE %@ is NULL", objc_msgSend(migrationCopy, "columnName"), 0];
    if (v8)
    {
      goto LABEL_23;
    }

    if (!*(v6 + 160))
    {
      v22 = *(v6 + 152);
      if (!v22 || ![v22 count])
      {
        goto LABEL_23;
      }
    }

    if (v16)
    {
      [v16 appendString:@" AND "];
LABEL_20:
      [v16 appendString:@"Z_ENT"];
      [v16 appendString:@" = "];
      if (sourceEntity)
      {
        v17 = *(sourceEntity + 184);
      }

      else
      {
        v17 = 0;
      }

      [v16 appendFormat:@"%d", v17];
      goto LABEL_23;
    }

LABEL_19:
    v16 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@" WHERE "];
    goto LABEL_20;
  }

  if ((v8 & 1) == 0)
  {
    if (*(v6 + 160))
    {
      goto LABEL_19;
    }

    v23 = *(v6 + 152);
    if (v23)
    {
      if ([v23 count])
      {
        goto LABEL_19;
      }
    }
  }

  v16 = 0;
LABEL_23:
  v18 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"UPDATE OR FAIL "];
  [v18 appendString:{objc_msgSend(v6, "tableName")}];
  [v18 appendString:@" SET "];
  [v18 appendString:{objc_msgSend(migrationCopy, "columnName")}];
  [v18 appendString:@" = "];
  [v18 appendString:columnName];
  if (v16)
  {
    [v18 appendString:v16];
  }

  if (context)
  {
    v19 = *(context + 32);
  }

  else
  {
    v19 = 0;
  }

  v20 = [(NSSQLiteAdapter *)v19 newStatementWithSQLString:v18];
  v13 = v20;
  if (v11)
  {
    [(NSSQLiteStatement *)v20 addBindVariable:v11];
  }

  if (v16)
  {
  }

  return v13;
}

- (uint64_t)newCopyAndInsertStatementForToOne:(void *)one toManyToMany:(__CFString *)many fromTableName:(uint64_t)name invertColumns:(int)columns migrationContext:(uint64_t)context
{
  v60 = *MEMORY[0x1E69E9840];
  v10 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"INSERT INTO "];
  [v10 appendString:{-[__CFString correlationTableName](many, "correlationTableName")}];
  objc_msgSend(v10, "appendString:", @" (");
  if (many)
  {
    data = many[2].data;
  }

  else
  {
    data = 0;
  }

  inverseOrderColumnName = [(NSSQLManyToMany *)many inverseOrderColumnName];
  if (columns)
  {
    [v10 appendString:-[NSSQLManyToMany inverseColumnName](many)];
    [v10 appendString:{@", "}];
    [v10 appendString:{-[__CFString columnName](many, "columnName")}];
    if (inverseOrderColumnName)
    {
      [v10 appendString:{@", "}];
      [v10 appendString:inverseOrderColumnName];
    }

    v13 = data;
    if (!data)
    {
      goto LABEL_12;
    }

LABEL_11:
    [v10 appendString:{@", "}];
    [v10 appendString:v13];
    goto LABEL_12;
  }

  [v10 appendString:{-[__CFString columnName](many, "columnName")}];
  [v10 appendString:{@", "}];
  [v10 appendString:-[NSSQLManyToMany inverseColumnName](many)];
  if (data)
  {
    [v10 appendString:{@", "}];
    [v10 appendString:data];
  }

  v13 = inverseOrderColumnName;
  if (inverseOrderColumnName)
  {
    goto LABEL_11;
  }

LABEL_12:
  entity = [one entity];
  if (entity)
  {
    entity = entity[16];
  }

  columnName = [entity columnName];
  [v10 appendString:@" SELECT "]);
  [v10 appendString:columnName];
  [v10 appendString:{@", "}];
  v16 = [objc_msgSend(one "foreignKey")];
  [v10 appendString:v16];
  if (one)
  {
    v17 = one[10];
  }

  else
  {
    v17 = 0;
  }

  columnName2 = [v17 columnName];
  if (data)
  {
    v19 = columnName2;
    [v10 appendString:{@", "}];
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = columnName;
    }

    [v10 appendString:v20];
  }

  if (inverseOrderColumnName)
  {
    [v10 appendString:{@", 2000"}];
  }

  [v10 appendString:@" FROM "];
  [v10 appendString:name];
  [v10 appendString:@" WHERE "];
  [v10 appendString:v16];
  [v10 appendString:@" IS NOT NULL"];
  v21 = -[_NSSQLiteStoreMigrator tableMigrationDescriptionForEntity:](context, [one entity]);
  v22 = -[_NSSQLTableMigrationDescription _retainedRemovedSubEntitiesOfEntity:](v21, [one entity]);
  contextCopy = context;
  if ([v22 count])
  {
    entity2 = [one entity];
    oneCopy = one;
    if (entity2)
    {
      entity2 = entity2[17];
    }

    columnName3 = [entity2 columnName];
    [v10 appendString:@" AND "];
    [v10 appendString:columnName3];
    objc_msgSend(v10, "appendString:", @" NOT IN (");
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v25 = [v22 countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = 0;
      v28 = *v55;
      do
      {
        v29 = 0;
        do
        {
          if (*v55 != v28)
          {
            objc_enumerationMutation(v22);
          }

          v30 = *(*(&v54 + 1) + 8 * v29);
          if (v27)
          {
            [v10 appendString:{@", "}];
          }

          if (v30)
          {
            v31 = *(v30 + 184);
          }

          else
          {
            v31 = 0;
          }

          [v10 appendFormat:@"%d", v31];
          ++v29;
          v27 = 1;
        }

        while (v26 != v29);
        v32 = [v22 countByEnumeratingWithState:&v54 objects:v59 count:16];
        v26 = v32;
      }

      while (v32);
    }

    [v10 appendString:@""]);
    one = oneCopy;
    context = contextCopy;
  }

  if (one)
  {
    v33 = one[9];
    if (v33)
    {
      v34 = -[_NSSQLiteStoreMigrator tableMigrationDescriptionForEntity:](context, [one destinationEntity]);
      v35 = -[_NSSQLTableMigrationDescription _retainedRemovedSubEntitiesOfEntity:](v34, [one destinationEntity]);
      if ([v35 count])
      {
        [v10 appendString:@" AND "];
        [v10 appendString:{objc_msgSend(v33, "columnName")}];
        objc_msgSend(v10, "appendString:", @" NOT IN (");
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v36 = [v35 countByEnumeratingWithState:&v50 objects:v58 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = 0;
          v39 = *v51;
          do
          {
            v40 = 0;
            do
            {
              if (*v51 != v39)
              {
                objc_enumerationMutation(v35);
              }

              v41 = *(*(&v50 + 1) + 8 * v40);
              if (v38)
              {
                [v10 appendString:{@", "}];
              }

              if (v41)
              {
                v42 = *(v41 + 184);
              }

              else
              {
                v42 = 0;
              }

              [v10 appendFormat:@"%d", v42];
              ++v40;
              v38 = 1;
            }

            while (v37 != v40);
            v43 = [v35 countByEnumeratingWithState:&v50 objects:v58 count:16];
            v37 = v43;
          }

          while (v43);
        }

        [v10 appendString:@""]);
        context = contextCopy;
      }
    }
  }

  if (context)
  {
    v44 = *(context + 32);
  }

  else
  {
    v44 = 0;
  }

  v45 = [(NSSQLiteAdapter *)v44 newStatementWithSQLString:v10];

  v46 = *MEMORY[0x1E69E9840];
  return v45;
}

- (uint64_t)appendStatementsToCompleteMigration:(uint64_t)migration migrationContext:
{
  v17 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    allValues = [*(result + 96) allValues];
    result = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (result)
    {
      v6 = result;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(allValues);
          }

          if (migration)
          {
            v9 = *(migration + 32);
          }

          else
          {
            v9 = 0;
          }

          v10 = [(NSSQLiteAdapter *)v9 newDropTableStatementOrFailForTableNamed:?];
          [a2 addObject:v10];

          ++v8;
        }

        while (v6 != v8);
        result = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
        v6 = result;
      }

      while (result);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)appendDefaultValueStatementsToCompleteMigration:(uint64_t)migration migrationContext:
{
  v32 = *MEMORY[0x1E69E9840];
  if (self && *(self + 24) >= 2u)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = *(self + 104);
    if (!v7)
    {
      [(_NSSQLTableMigrationDescription *)self _determineSchemaTransformationComplexityInMigrationContext:migration];
      v7 = *(self + 104);
    }

    if (([v7 BOOLValue] & 1) == 0)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v8 = *(self + 56);
      v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v9)
      {
        v10 = *v27;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v27 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = [(_NSSQLTableMigrationDescription *)self createDefaultValuePopulationStatementsForAddedColumnsEntityMigration:migration migrationContext:?];
            v13 = v12;
            if (v12)
            {
              if ([v12 count])
              {
                [v6 addObjectsFromArray:v13];
              }
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v9);
      }

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v14 = *(self + 112);
      v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v15)
      {
        v16 = *v23;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v23 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v22 + 1) + 8 * j);
            if (v18)
            {
              if (v18[24] == 10)
              {
                v19 = -[_NSSQLTableMigrationDescription createDefaultValuePopulationStatementsForAddedColumnsEntityMigration:migrationContext:](self, [*(self + 64) objectForKey:{objc_msgSend(objc_msgSend(v18, "entity"), "name")}], migration);
                v20 = v19;
                if (v19)
                {
                  if ([v19 count])
                  {
                    [v6 addObjectsFromArray:v20];
                  }
                }
              }
            }
          }

          v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
        }

        while (v15);
      }

      [a2 addObjectsFromArray:v6];
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (id)createDefaultValuePopulationStatementsForAddedColumnsEntityMigration:(uint64_t)migration migrationContext:
{
  v59 = *MEMORY[0x1E69E9840];
  v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  selfCopy = self;
  v6 = *(self + 112);
  if (v6)
  {
    v7 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v6, "count")}];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v8 = *(self + 112);
    v9 = [*(selfCopy + 112) countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v54;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v54 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v53 + 1) + 8 * i);
          if (!v13 || *(v13 + 24) != 1 || [objc_msgSend(*(*(&v53 + 1) + 8 * i) "attributeDescription")])
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v10);
    }

    if ([v7 count])
    {
      [v5 addObjectsFromArray:{objc_msgSend(v7, "allObjects")}];
    }
  }

  v14 = *(selfCopy + 168);
  if (v14)
  {
    [v5 addObjectsFromArray:{objc_msgSend(v14, "allObjects")}];
  }

  v15 = *(selfCopy + 144);
  if (v15)
  {
    [v5 addObjectsFromArray:{objc_msgSend(v15, "allObjects")}];
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v16 = [v5 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v50;
    v45 = v5;
    v46 = *v50;
    do
    {
      v19 = 0;
      v43 = v17;
      do
      {
        if (*v50 != v18)
        {
          objc_enumerationMutation(v5);
        }

        v20 = *(*(&v49 + 1) + 8 * v19);
        if (v20)
        {
          v21 = v20[24];
          if (v21 == 10 || v21 == 1)
          {
            columnName = [*(*(&v49 + 1) + 8 * v19) columnName];
            if (a2)
            {
              v24 = columnName;
              v25 = *(a2 + 16);
              if (!v25)
              {
                [(_NSSQLEntityMigrationDescription *)a2 _generateSQLValueMappingsWithMigrationContext:migration];
                v25 = *(a2 + 16);
              }

              v26 = [v25 objectForKey:v24];
              if (v26)
              {
                v27 = v26;
                v28 = [objc_msgSend(v20 "entity")];
                tableName = [v28 tableName];
                v30 = [MEMORY[0x1E696AD60] stringWithFormat:@"UPDATE %@ SET ", tableName];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();
                columnName2 = [v20 columnName];
                if (isKindOfClass)
                {
                  [v30 appendFormat:@"%@ = ?", columnName2];
                  v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v27, 0}];
                }

                else
                {
                  [v30 appendFormat:@"%@ = %@", columnName2, v27];
                  v33 = 0;
                }

                if (!v28)
                {
                  goto LABEL_49;
                }

                if (*(v28 + 160) || (v37 = *(v28 + 152)) != 0 && [v37 count])
                {
                  v34 = *(v28 + 152);
                  if (!v34 || ![v34 count])
                  {
                    v35 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@" WHERE "];
                    [v35 appendString:tableName];
                    [v35 appendString:@"."];
                    [v35 appendString:@"Z_ENT"];
                    [v35 appendString:@" = "];
                    v36 = &OBJC_IVAR___NSSQLEntity__entityID;
                    goto LABEL_48;
                  }
                }

                if (*(v28 + 160) && (v38 = *(v28 + 152)) != 0 && [v38 count])
                {
                  v35 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@" WHERE "];
                  [v35 appendFormat:@"%d", *(v28 + 184)];
                  [v35 appendString:@" <= "];
                  [v35 appendString:tableName];
                  [v35 appendString:@"."];
                  [v35 appendString:@"Z_ENT"];
                  [v35 appendString:@" AND "];
                  [v35 appendString:tableName];
                  [v35 appendString:@"."];
                  v17 = v43;
                  [v35 appendString:@"Z_ENT"];
                  [v35 appendString:@" <= "];
                  v36 = &OBJC_IVAR___NSSQLEntity__subentityMaxID;
LABEL_48:
                  [v35 appendFormat:@"%d", *(v28 + *v36)];
                }

                else
                {
LABEL_49:
                  v35 = 0;
                }

                if ([*(selfCopy + 168) containsObject:v20])
                {
                  if (v35)
                  {
                    [v35 appendString:@" AND "];
                  }

                  else
                  {
                    v35 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@" WHERE "];
                  }

                  [v35 appendFormat:@"%@ IS NULL", objc_msgSend(v20, "columnName")];
                }

                if (v35)
                {
                  [v30 appendString:v35];
                }

                v39 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:v30];
                v40 = v39;
                if (v33)
                {
                  [(NSSQLiteAdapter *)v39 _useModel:v33];
                }

                [v47 addObject:v40];

                v5 = v45;
                v18 = v46;
              }
            }
          }
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [v5 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v17);
  }

  v41 = *MEMORY[0x1E69E9840];
  return v47;
}

- (void)_retainedRemovedSubEntitiesOfEntity:(uint64_t)entity
{
  v22 = *MEMORY[0x1E69E9840];
  if (!entity || (v19 = 0u, v20 = 0u, v17 = 0u, v18 = 0u, v4 = *(entity + 40), (v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16]) == 0))
  {
    v7 = 0;
    goto LABEL_21;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v18;
  do
  {
    v9 = 0;
    do
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(v4);
      }

      sourceEntity = [*(*(&v17 + 1) + 8 * v9) sourceEntity];
      if (sourceEntity)
      {
        v11 = sourceEntity;
        v12 = *(sourceEntity + 184);
        if (a2)
        {
          if (v12 < *(a2 + 184))
          {
            goto LABEL_15;
          }

          v13 = *(a2 + 188);
        }

        else
        {
          v13 = 0;
        }

        if (v12 <= v13)
        {
          if (!v7)
          {
            v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(entity + 40), "count")}];
          }

          [v7 addObject:v11];
        }
      }

LABEL_15:
      ++v9;
    }

    while (v6 != v9);
    v14 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    v6 = v14;
  }

  while (v14);
LABEL_21:
  v15 = *MEMORY[0x1E69E9840];
  return v7;
}

- (uint64_t)newCloudKitMetadataUpdateStatements:(uint64_t)statements
{
  v94 = *MEMORY[0x1E69E9840];
  if (!statements)
  {
    v61 = 0;
    goto LABEL_88;
  }

  v69 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (*(statements + 24) == 1)
  {
    v3 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          tableName = [*(statements + 8) tableName];
          *buf = 138412290;
          v93 = tableName;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Migration: CloudKit tables detected. Adding migration statements for removed table: %@\n", buf, 0xCu);
        }
      }

      else
      {
        v40 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          tableName2 = [*(statements + 8) tableName];
          *buf = 138412290;
          v93 = tableName2;
          _os_log_impl(&dword_18565F000, v40, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Migration: CloudKit tables detected. Adding migration statements for removed table: %@\n", buf, 0xCu);
        }
      }
    }

    v42 = *(statements + 8);
    if (_pflogging_catastrophic_mode)
    {
      tableName3 = [v42 tableName];
      v44 = 1;
    }

    else
    {
      tableName3 = [v42 tableName];
      v44 = 4;
    }

    _NSCoreDataLog_console(v44, "Migration: CloudKit tables detected. Adding migration statements for removed table: %@", tableName3);
    objc_autoreleasePoolPop(v3);
    v45 = objc_alloc(MEMORY[0x1E695DF70]);
    v46 = *(statements + 8);
    if (v46)
    {
      v47 = *(v46 + 152);
    }

    else
    {
      v47 = 0;
    }

    v48 = [v45 initWithCapacity:{objc_msgSend(v47, "count") + 1}];
    v49 = *(statements + 8);
    if (v49)
    {
      v50 = *(v49 + 184);
    }

    else
    {
      v50 = 0;
    }

    [v48 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v50)}];
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v51 = *(statements + 8);
    if (v51)
    {
      v52 = *(v51 + 152);
    }

    else
    {
      v52 = 0;
    }

    v53 = [v52 countByEnumeratingWithState:&v82 objects:v91 count:16];
    if (v53)
    {
      v54 = *v83;
      do
      {
        v55 = 0;
        do
        {
          if (*v83 != v54)
          {
            objc_enumerationMutation(v52);
          }

          v56 = *(*(&v82 + 1) + 8 * v55);
          if (v56)
          {
            v57 = *(v56 + 184);
          }

          else
          {
            v57 = 0;
          }

          [v48 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v57)}];
          ++v55;
        }

        while (v53 != v55);
        v58 = [v52 countByEnumeratingWithState:&v82 objects:v91 count:16];
        v53 = v58;
      }

      while (v58);
    }

    v59 = [NSSQLiteStatement alloc];
    v60 = -[NSSQLiteStatement initWithEntity:sqlString:](v59, "initWithEntity:sqlString:", 0, [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM ANSCKRECORDMETADATA WHERE ZENTITYID IN %@", v48]);
    [v69 addObject:v60];

    goto LABEL_87;
  }

  if ([*(statements + 56) count])
  {
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    obj = *(statements + 56);
    v6 = [obj countByEnumeratingWithState:&v78 objects:v90 count:16];
    if (v6)
    {
      v65 = *v79;
      v7 = 0x1EA8C5000uLL;
      do
      {
        v8 = 0;
        v66 = v6;
        do
        {
          if (*v79 != v65)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v78 + 1) + 8 * v8);
          [v9 validateCloudKitEntityMigration];
          sourceEntity = [v9 sourceEntity];
          if (sourceEntity)
          {
            v11 = *(sourceEntity + *(v7 + 3424));
            if (!v9)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v11 = 0;
            if (!v9)
            {
LABEL_35:
              LODWORD(v12) = 0;
              goto LABEL_18;
            }
          }

          v12 = v9[4];
          if (v12)
          {
            LODWORD(v12) = *(v12 + *(v7 + 3424));
          }

LABEL_18:
          if (v11 != v12)
          {
            v13 = MEMORY[0x1E696AD98];
            sourceEntity2 = [v9 sourceEntity];
            if (sourceEntity2)
            {
              v15 = *(sourceEntity2 + *(v7 + 3424));
            }

            else
            {
              v15 = 0;
            }

            v89[0] = [v13 numberWithUnsignedInt:v15];
            if (v9 && (v16 = v9[4]) != 0)
            {
              v17 = *(v16 + *(v7 + 3424));
            }

            else
            {
              v17 = 0;
            }

            v89[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v17];
            [a2 addObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v89, 2)}];
          }

          v67 = v8;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          removedManyToManys = [(_NSSQLEntityMigrationDescription *)v9 removedManyToManys];
          v19 = [removedManyToManys countByEnumeratingWithState:&v74 objects:v88 count:16];
          if (v19)
          {
            v20 = *v75;
            do
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v75 != v20)
                {
                  objc_enumerationMutation(removedManyToManys);
                }

                v22 = *(*(&v74 + 1) + 8 * i);
                v23 = [NSSQLiteStatement alloc];
                v24 = -[NSSQLiteStatement initWithEntity:sqlString:](v23, "initWithEntity:sqlString:", 0, [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM ANSCKMIRROREDRELATIONSHIP WHERE ZCDENTITYNAME = '%@' AND ZRELATIONSHIPNAME = '%@'", objc_msgSend(objc_msgSend(v9, "sourceEntity"), "name"), objc_msgSend(v22, "name")]);
                [v69 addObject:v24];
              }

              v19 = [removedManyToManys countByEnumeratingWithState:&v74 objects:v88 count:16];
            }

            while (v19);
          }

          v8 = v67 + 1;
          v7 = 0x1EA8C5000;
        }

        while (v67 + 1 != v66);
        v25 = [obj countByEnumeratingWithState:&v78 objects:v90 count:16];
        v6 = v25;
      }

      while (v25);
    }
  }

  if ([*(statements + 48) count])
  {
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v26 = *(statements + 48);
    v27 = [v26 countByEnumeratingWithState:&v70 objects:v87 count:16];
    if (v27)
    {
      v28 = *v71;
      do
      {
        v29 = 0;
        do
        {
          if (*v71 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v30 = *(*(&v70 + 1) + 8 * v29);
          [v30 validateCloudKitEntityMigration];
          sourceEntity3 = [v30 sourceEntity];
          if (sourceEntity3)
          {
            v32 = *(sourceEntity3 + 184);
            if (!v30)
            {
              goto LABEL_59;
            }
          }

          else
          {
            v32 = 0;
            if (!v30)
            {
LABEL_59:
              LODWORD(v33) = 0;
              goto LABEL_49;
            }
          }

          v33 = v30[4];
          if (v33)
          {
            LODWORD(v33) = *(v33 + 184);
          }

LABEL_49:
          if (v32 != v33)
          {
            v34 = MEMORY[0x1E696AD98];
            sourceEntity4 = [v30 sourceEntity];
            if (sourceEntity4)
            {
              v36 = *(sourceEntity4 + 184);
            }

            else
            {
              v36 = 0;
            }

            v86[0] = [v34 numberWithUnsignedInt:v36];
            if (v30 && (v37 = v30[4]) != 0)
            {
              v38 = *(v37 + 184);
            }

            else
            {
              v38 = 0;
            }

            v86[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v38];
            [a2 addObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v86, 2)}];
          }

          ++v29;
        }

        while (v27 != v29);
        v39 = [v26 countByEnumeratingWithState:&v70 objects:v87 count:16];
        v27 = v39;
      }

      while (v39);
    }
  }

LABEL_87:
  v61 = [v69 copy];

LABEL_88:
  v62 = *MEMORY[0x1E69E9840];
  return v61;
}

@end