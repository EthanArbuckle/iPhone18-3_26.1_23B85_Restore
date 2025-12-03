@interface _NSSQLEntityMigrationDescription
- (id)description;
- (uint64_t)_generateSQLValueMappingsWithMigrationContext:(uint64_t)result;
- (uint64_t)_populateSQLValuesForDestinationToOne:(void *)one fromSourceToOne:;
- (uint64_t)addedManyToManys;
- (uint64_t)nextPropertyTransform;
- (uint64_t)removedManyToManys;
- (uint64_t)transformedManyToManys;
- (void)dealloc;
- (void)initWithEntityMapping:(void *)mapping sourceEntity:(void *)entity destinationEntity:;
- (void)validateCloudKitEntityMigration;
@end

@implementation _NSSQLEntityMigrationDescription

- (void)initWithEntityMapping:(void *)mapping sourceEntity:(void *)entity destinationEntity:
{
  if (!self)
  {
    return 0;
  }

  v9.receiver = self;
  v9.super_class = _NSSQLEntityMigrationDescription;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  if (v7)
  {
    v7[1] = a2;
    v7[5] = mapping;
    v7[4] = entity;
    *(v7 + 12) = [a2 mappingType] - 2;
  }

  return v7;
}

- (void)dealloc
{
  self->_entityMapping = 0;

  self->_srcEntity = 0;
  self->_dstEntity = 0;

  self->_sqlValuesByColumnName = 0;
  self->_addedManyToManys = 0;

  self->_removedManyToManys = 0;
  self->_transformedManyToManys = 0;

  self->_processedTransforms = 0;
  self->_pendingTransforms = 0;

  self->_sourceEntitiesByToOneWithNewEntityKey = 0;
  v3.receiver = self;
  v3.super_class = _NSSQLEntityMigrationDescription;
  [(_NSSQLEntityMigrationDescription *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v6.receiver = self;
  v6.super_class = _NSSQLEntityMigrationDescription;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ : %@ -> %@", -[_NSSQLEntityMigrationDescription description](&v6, sel_description), -[NSSQLEntity name](self->_srcEntity, "name"), -[NSSQLEntity name](self->_dstEntity, "name")];
  objc_autoreleasePoolPop(v3);
  return v4;
}

- (uint64_t)_generateSQLValueMappingsWithMigrationContext:(uint64_t)result
{
  v112 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_119;
  }

  v2 = result;
  _mappingsByName = [(NSEntityMapping *)*(result + 8) _mappingsByName];
  *(v2 + 80) = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{2 * objc_msgSend(_mappingsByName, "count")}];
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  obj = [_mappingsByName allValues];
  v4 = [obj countByEnumeratingWithState:&v99 objects:v108 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v100;
    do
    {
      v7 = 0;
      do
      {
        if (*v100 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v99 + 1) + 8 * v7);
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        if (v8)
        {
          v9 = *(v8 + 24);
        }

        else
        {
          v9 = 0;
        }

        v10 = [v9 countByEnumeratingWithState:&v95 objects:v107 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v96;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v96 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v95 + 1) + 8 * i);
              if (v14 && *(v14 + 24))
              {
                v15 = *(v2 + 88);
                if (!v15)
                {
                  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
                  *(v2 + 88) = v15;
                }
              }

              else
              {
                v15 = *(v2 + 80);
              }

              [v15 addObject:v14];
            }

            v11 = [v9 countByEnumeratingWithState:&v95 objects:v107 count:16];
          }

          while (v11);
        }

        ++v7;
      }

      while (v7 != v5);
      v16 = [obj countByEnumeratingWithState:&v99 objects:v108 count:16];
      v5 = v16;
    }

    while (v16);
  }

  v17 = *(v2 + 80);
  if (!*(v2 + 16))
  {
    *(v2 + 16) = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{2 * objc_msgSend(v17, "count")}];
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  obja = [v17 countByEnumeratingWithState:&v103 objects:v111 count:16];
  if (!obja)
  {
    goto LABEL_93;
  }

  v18 = 0x1EA8C5000uLL;
  v91 = *v104;
  v89 = v17;
  do
  {
    v19 = 0;
    do
    {
      if (*v104 != v91)
      {
        objc_enumerationMutation(v89);
      }

      v20 = *(*(&v103 + 1) + 8 * v19);
      v21 = *(v2 + 32);
      if (v20)
      {
        v22 = *(v20 + 16);
        if (!v21)
        {
          goto LABEL_86;
        }
      }

      else
      {
        v22 = 0;
        if (!v21)
        {
LABEL_86:
          if (([0 isToMany] & 1) == 0)
          {
            goto LABEL_122;
          }

          goto LABEL_83;
        }
      }

      foreignKey = [*(v21 + *(v18 + 3392)) objectForKey:v22];
      if (!foreignKey)
      {
        goto LABEL_86;
      }

      v24 = foreignKey;
      v25 = foreignKey[24];
      if (v25 == 1)
      {
        v27 = 0;
        v26 = 0;
        v28 = 0;
      }

      else
      {
        if (v25 != 7)
        {
          if (([foreignKey isToMany] & 1) == 0 && v24[24] != 9)
          {
LABEL_122:
            v78 = MEMORY[0x1E695DF30];
            v79 = *MEMORY[0x1E695D930];
            v80 = [MEMORY[0x1E695DF20] dictionaryWithObject:v20 forKey:@"transform"];
            v81 = @"Unrecognized destination property type in transform";
            goto LABEL_127;
          }

          goto LABEL_83;
        }

        foreignKey = [foreignKey foreignKey];
        v26 = *(v24 + 9);
        v27 = *(v24 + 10);
        v28 = foreignKey;
      }

      columnName = [foreignKey columnName];
      if (v20)
      {
        v30 = *(v20 + 8);
      }

      else
      {
        v30 = 0;
      }

      expressionType = [v30 expressionType];
      if (expressionType == 4)
      {
        if ([@"_prependExternalBlobToken:" isEqual:{objc_msgSend(v30, "function")}])
        {
          if (v24[24] != 1)
          {
            goto LABEL_121;
          }

          v40 = [objc_msgSend(objc_msgSend(v30 "arguments")];
          v41 = *(v2 + 40);
          v18 = 0x1EA8C5000uLL;
          if (v41)
          {
            v42 = [*(v41 + 40) objectForKey:v40];
          }

          else
          {
            v42 = 0;
          }

          v38 = *(v2 + 16);
          columnName2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NSCoreDataPrependExternalReferenceMarker(length(%@), %@)", objc_msgSend(v42, "columnName"), objc_msgSend(v42, "columnName"), v88];
          goto LABEL_69;
        }

        if ([@"_convertTransformableToCodable:" isEqual:{objc_msgSend(v30, "function")}])
        {
          v18 = 0x1EA8C5000uLL;
          if (v24[24] == 1)
          {
            v43 = [objc_msgSend(objc_msgSend(v30 "arguments")];
            v44 = *(v2 + 40);
            if (v44)
            {
              v45 = [*(v44 + 40) objectForKey:v43];
            }

            else
            {
              v45 = 0;
            }

            v38 = *(v2 + 16);
            columnName2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NSCoreDataConvertTransformableToCodable('%@', '%@', %@)", objc_msgSend(objc_msgSend(v30, "arguments"), "objectAtIndex:", 0), objc_msgSend(objc_msgSend(v30, "arguments"), "objectAtIndex:", 1), objc_msgSend(v45, "columnName")];
LABEL_69:
            [v38 setObject:columnName2 forKey:columnName];
            goto LABEL_83;
          }

LABEL_121:
          v78 = MEMORY[0x1E695DF30];
          v79 = *MEMORY[0x1E695D930];
          v80 = [MEMORY[0x1E695DF20] dictionaryWithObject:v20 forKey:@"transform"];
          v81 = @"Invalid source property type in transform";
        }

        else
        {
LABEL_120:
          v78 = MEMORY[0x1E695DF30];
          v79 = *MEMORY[0x1E695D930];
          v80 = [MEMORY[0x1E695DF20] dictionaryWithObject:v20 forKey:@"transform"];
          v81 = @"Unsupported value expression type in transform";
        }

LABEL_127:
        v84 = v78;
        v85 = v79;
LABEL_128:
        objc_exception_throw([v84 exceptionWithName:v85 reason:v81 userInfo:v80]);
      }

      if (expressionType == 3)
      {
        v34 = *(v2 + 40);
        keyPath = [v30 keyPath];
        if (v34)
        {
          v18 = 0x1EA8C5000uLL;
          v36 = [*(v34 + 40) objectForKey:keyPath];
        }

        else
        {
          v36 = 0;
          v18 = 0x1EA8C5000;
        }

        if (a2 && -[_NSSQLiteStoreMigrator enforceCloudKitConstraintsForEntity:](a2, [v24 entity]) && !objc_msgSend(objc_msgSend(v36, "name"), "isEqualToString:", objc_msgSend(v24, "name")))
        {
          v86 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Properties cannot be renamed in stores that are used with CloudKit. Cannot rename '%@.%@' to '%@.%@'.", objc_msgSend(*(v2 + 40), "name"), objc_msgSend(v36, "name"), objc_msgSend(*(v2 + 32), "name"), objc_msgSend(v24, "name")];
          v87 = [_NSCoreDataException exceptionWithName:134110 code:v86 reason:0 userInfo:?];
          objc_exception_throw(v87);
        }

        v37 = v24[24];
        if (v37 != 7)
        {
          if (v37 != 1)
          {
            v78 = MEMORY[0x1E695DF30];
            v79 = *MEMORY[0x1E695D930];
            v80 = [MEMORY[0x1E695DF20] dictionaryWithObject:v20 forKey:@"transform"];
            v81 = @"Unrecognized source property type in transform";
            goto LABEL_127;
          }

          v38 = *(v2 + 16);
          columnName2 = [v36 columnName];
          goto LABEL_69;
        }

        [(_NSSQLEntityMigrationDescription *)v2 _populateSQLValuesForDestinationToOne:v24 fromSourceToOne:v36];
      }

      else
      {
        if (expressionType)
        {
          goto LABEL_120;
        }

        v32 = v24[24];
        if (v32 != 7)
        {
          if (v32 != 1)
          {
            v78 = MEMORY[0x1E695DF30];
            v79 = *MEMORY[0x1E695D930];
            v80 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v20, @"transform", v24, @"property", 0}];
            v81 = @"Invalid constant expression type for property type in transform";
            goto LABEL_127;
          }

          v33 = -[NSSQLBindVariable initWithValue:sqlType:propertyDescription:]([NSSQLBindVariable alloc], "initWithValue:sqlType:propertyDescription:", [v30 constantValue], objc_msgSend(v24, "sqlType"), objc_msgSend(v24, "propertyDescription"));
          [*(v2 + 16) setObject:v33 forKey:columnName];

          goto LABEL_47;
        }

        v46 = [objc_msgSend(v24 "propertyDescription")];
        if (v46)
        {
          v47 = v46;
          v48 = [-[_NSSQLiteStoreMigrator entityMigrationDescriptionForEntity:](a2 objc_msgSend(v24];
          v49 = [objc_msgSend(v48 "entityDescription")];
          if (v49)
          {
            v50 = v49;
            if (![v49 inverseRelationship])
            {
              name = [v50 name];
              if (v48)
              {
                v52 = [v48[5] objectForKey:name];
                if (v52)
                {
                  v53 = *(v52 + 56);
                  if (v53)
                  {
                    if (*(v53 + 24) == 7)
                    {
                      [(_NSSQLEntityMigrationDescription *)v2 _populateSQLValuesForDestinationToOne:v24 fromSourceToOne:v53];
LABEL_47:
                      v18 = 0x1EA8C5000;
                      goto LABEL_83;
                    }
                  }
                }
              }
            }
          }
        }

        v54 = -[NSSQLBindVariable initWithValue:sqlType:propertyDescription:]([NSSQLBindVariable alloc], "initWithValue:sqlType:propertyDescription:", 0, [v28 sqlType], 0);
        [*(v2 + 16) setObject:v54 forKey:columnName];

        if (v26)
        {
          v55 = -[NSSQLBindVariable initWithValue:sqlType:propertyDescription:]([NSSQLBindVariable alloc], "initWithValue:sqlType:propertyDescription:", 0, [v26 sqlType], 0);
          [*(v2 + 16) setObject:v55 forKey:{objc_msgSend(v26, "columnName")}];
        }

        v18 = 0x1EA8C5000;
        if (v27)
        {
          v56 = -[NSSQLBindVariable initWithValue:sqlType:propertyDescription:]([NSSQLBindVariable alloc], "initWithValue:sqlType:propertyDescription:", 0, [v27 sqlType], 0);
          [*(v2 + 16) setObject:v56 forKey:{objc_msgSend(v27, "columnName")}];
        }
      }

LABEL_83:
      v19 = v19 + 1;
    }

    while (obja != v19);
    v57 = [v89 countByEnumeratingWithState:&v103 objects:v111 count:16];
    obja = v57;
  }

  while (v57);
LABEL_93:
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  properties = [(NSSQLEntity *)*(v2 + 32) properties];
  result = [properties countByEnumeratingWithState:&v103 objects:v111 count:16];
  if (result)
  {
    v59 = result;
    v60 = *v104;
    v61 = &OBJC_IVAR____PFFetchPlanHeader_sql_model;
    objb = properties;
    do
    {
      v62 = 0;
      do
      {
        if (*v104 != v60)
        {
          objc_enumerationMutation(properties);
        }

        v63 = *(*(&v103 + 1) + 8 * v62);
        if (v63 && *(v63 + 24) == 7 && *(v63 + v61[80]) == 1)
        {
          foreignKey2 = [*(*(&v103 + 1) + 8 * v62) foreignKey];
          v65 = *(v63 + 56);
          v66 = -[_NSSQLiteStoreMigrator entityMigrationDescriptionForEntity:](a2, [v65 entity]);
          v67 = v66;
          if (v66)
          {
            v66 = v66[1];
          }

          userInfo = [v66 userInfo];
          if ([objc_msgSend(userInfo objectForKey:{_NSInferredMappedPropertiesKey), "containsObject:", objc_msgSend(v65, "name")}])
          {
            if (v65)
            {
              propertyDescription = [v65 propertyDescription];
            }

            else
            {
              propertyDescription = 0;
            }

            v70 = -[NSSQLEntity _sqlPropertyWithRenamingIdentifier:]([v67 sourceEntity], objc_msgSend(propertyDescription, "renamingIdentifier"));
            v61 = &OBJC_IVAR____PFFetchPlanHeader_sql_model;
            if (![v70 isToMany])
            {
              v82 = MEMORY[0x1E695DF30];
              v83 = *MEMORY[0x1E695D930];
              v109[0] = @"sourceRelationship";
              v109[1] = @"destinationRelationship";
              v110[0] = v70;
              v110[1] = v63;
              v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v110 forKeys:v109 count:2];
              v81 = @"Unsupported relationship migration: A to-one's inverse to-many source must be a to-many";
              v84 = v82;
              v85 = v83;
              goto LABEL_128;
            }

            if (v70)
            {
              v71 = v70[7];
            }

            else
            {
              v71 = 0;
            }

            [(_NSSQLEntityMigrationDescription *)v2 _populateSQLValuesForDestinationToOne:v63 fromSourceToOne:v71];
          }

          else
          {
            v72 = *(v63 + 72);
            v73 = *(v63 + 80);
            v74 = -[NSSQLBindVariable initWithValue:sqlType:propertyDescription:]([NSSQLBindVariable alloc], "initWithValue:sqlType:propertyDescription:", 0, [foreignKey2 sqlType], 0);
            [*(v2 + 16) setObject:v74 forKey:{objc_msgSend(foreignKey2, "columnName")}];

            if (v72)
            {
              v75 = -[NSSQLBindVariable initWithValue:sqlType:propertyDescription:]([NSSQLBindVariable alloc], "initWithValue:sqlType:propertyDescription:", 0, [v72 sqlType], 0);
              [*(v2 + 16) setObject:v75 forKey:{objc_msgSend(v72, "columnName")}];
            }

            properties = objb;
            v61 = &OBJC_IVAR____PFFetchPlanHeader_sql_model;
            if (v73)
            {
              v76 = -[NSSQLBindVariable initWithValue:sqlType:propertyDescription:]([NSSQLBindVariable alloc], "initWithValue:sqlType:propertyDescription:", 0, [v73 sqlType], 0);
              [*(v2 + 16) setObject:v76 forKey:{objc_msgSend(v73, "columnName")}];
            }
          }
        }

        ++v62;
      }

      while (v59 != v62);
      result = [properties countByEnumeratingWithState:&v103 objects:v111 count:16];
      v59 = result;
    }

    while (result);
  }

LABEL_119:
  v77 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_populateSQLValuesForDestinationToOne:(void *)one fromSourceToOne:
{
  result = [*(self + 16) setObject:objc_msgSend(objc_msgSend(one forKey:{"foreignKey"), "columnName"), objc_msgSend(objc_msgSend(a2, "foreignKey"), "columnName")}];
  if (!a2)
  {
    return result;
  }

  v7 = a2[9];
  v8 = a2[10];
  if (!v7)
  {
    goto LABEL_11;
  }

  if (one)
  {
    v9 = one[9];
    if (v9)
    {
      v10 = *(self + 16);
      columnName = [v9 columnName];
      columnName2 = [v7 columnName];
      v13 = v10;
      v14 = columnName;
LABEL_10:
      result = [v13 setObject:v14 forKey:columnName2];
LABEL_11:
      if (!v8)
      {
        return result;
      }

      goto LABEL_12;
    }
  }

  destinationEntity = [one destinationEntity];
  if (destinationEntity)
  {
    v16 = *(destinationEntity + 184);
  }

  else
  {
    v16 = 0;
  }

  v17 = -[NSSQLBindVariable initWithInt64:sqlType:]([NSSQLBindVariable alloc], "initWithInt64:sqlType:", v16, [v7 sqlType]);
  [*(self + 16) setObject:v17 forKey:{objc_msgSend(v7, "columnName")}];

  destinationEntity2 = [one destinationEntity];
  v19 = *(self + 24);
  if (v19)
  {
    columnName2 = [a2 name];
    v13 = v19;
    v14 = destinationEntity2;
    goto LABEL_10;
  }

  result = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{destinationEntity2, objc_msgSend(a2, "name"), 0}];
  *(self + 24) = result;
  if (!v8)
  {
    return result;
  }

LABEL_12:
  if (!one)
  {
    v21 = *(self + 16);
    goto LABEL_14;
  }

  foreignKey = one[10];
  v21 = *(self + 16);
  if (!foreignKey)
  {
LABEL_14:
    foreignKey = [one foreignKey];
  }

  columnName3 = [foreignKey columnName];
  columnName4 = [v8 columnName];

  return [v21 setObject:columnName3 forKey:columnName4];
}

- (uint64_t)addedManyToManys
{
  v16 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if (!*(result + 56))
    {
      userInfo = [*(result + 8) userInfo];
      v3 = [userInfo objectForKey:_NSInferredAddedPropertiesKey];
      *(v1 + 56) = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      manyToManyRelationships = [*(v1 + 32) manyToManyRelationships];
      v5 = [manyToManyRelationships countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v12;
        do
        {
          v8 = 0;
          do
          {
            if (*v12 != v7)
            {
              objc_enumerationMutation(manyToManyRelationships);
            }

            v9 = *(*(&v11 + 1) + 8 * v8);
            if (v9 && v9[8] && [*(*(&v11 + 1) + 8 * v8) entity] == *(v1 + 32) && objc_msgSend(v3, "containsObject:", objc_msgSend(v9, "name")))
            {
              [*(v1 + 56) addObject:v9];
            }

            ++v8;
          }

          while (v6 != v8);
          v6 = [manyToManyRelationships countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v6);
      }
    }

    result = *(v1 + 56);
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)removedManyToManys
{
  v16 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if (!*(result + 64))
    {
      userInfo = [*(result + 8) userInfo];
      v3 = [userInfo objectForKey:_NSInferredRemovedPropertiesKey];
      *(v1 + 64) = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      manyToManyRelationships = [*(v1 + 40) manyToManyRelationships];
      v5 = [manyToManyRelationships countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v12;
        do
        {
          v8 = 0;
          do
          {
            if (*v12 != v7)
            {
              objc_enumerationMutation(manyToManyRelationships);
            }

            v9 = *(*(&v11 + 1) + 8 * v8);
            if (v9 && v9[8] && [*(*(&v11 + 1) + 8 * v8) entity] == *(v1 + 40) && objc_msgSend(v3, "containsObject:", objc_msgSend(v9, "name")))
            {
              [*(v1 + 64) addObject:v9];
            }

            ++v8;
          }

          while (v6 != v8);
          v6 = [manyToManyRelationships countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v6);
      }
    }

    result = *(v1 + 64);
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)transformedManyToManys
{
  v17 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if (!*(result + 72))
    {
      userInfo = [*(result + 8) userInfo];
      v3 = [userInfo objectForKey:_NSInferredMappedPropertiesKey];
      *(v1 + 72) = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      manyToManyRelationships = [*(v1 + 32) manyToManyRelationships];
      v5 = [manyToManyRelationships countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v13;
        do
        {
          v8 = 0;
          do
          {
            if (*v13 != v7)
            {
              objc_enumerationMutation(manyToManyRelationships);
            }

            v9 = *(*(&v12 + 1) + 8 * v8);
            if (v9)
            {
              if (v9[8])
              {
                if ([*(*(&v12 + 1) + 8 * v8) entity] == *(v1 + 32))
                {
                  if ([v3 containsObject:{objc_msgSend(v9, "name")}])
                  {
                    v10 = -[NSSQLEntity _sqlPropertyWithRenamingIdentifier:](*(v1 + 40), [objc_msgSend(v9 "propertyDescription")]);
                    if (([(NSSQLManyToMany *)v9 isTableSchemaEqual:v10]& 1) == 0)
                    {
                      [*(v1 + 72) addObject:v9];
                    }
                  }
                }
              }
            }

            ++v8;
          }

          while (v6 != v8);
          v6 = [manyToManyRelationships countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v6);
      }
    }

    result = *(v1 + 72);
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)nextPropertyTransform
{
  v17 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v2 = *(self + 88);
    v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v13;
      do
      {
        v6 = 0;
        do
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v12 + 1) + 8 * v6);
          if (v7)
          {
            v8 = *(v7 + 24);
          }

          else
          {
            v8 = 0;
          }

          if ([*(self + 80) containsObject:v8])
          {
            [*(self + 80) addObject:v7];
            [*(self + 88) removeObject:v7];
            goto LABEL_17;
          }

          ++v6;
        }

        while (v4 != v6);
        v9 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
        v4 = v9;
      }

      while (v9);
    }

    if ([*(self + 88) count])
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Entity mapping includes property transform with unresolved prerequisite" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", *(self + 88), @"pendingTransforms"}]);
    }
  }

  v7 = 0;
LABEL_17:
  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)validateCloudKitEntityMigration
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  transformedManyToManys = [(_NSSQLEntityMigrationDescription *)self transformedManyToManys];
  v4 = [transformedManyToManys countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      v7 = 0;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(transformedManyToManys);
        }

        v8 = *(*(&v23 + 1) + 8 * v7);
        if (v8)
        {
          propertyDescription = [*(*(&v23 + 1) + 8 * v7) propertyDescription];
        }

        else
        {
          propertyDescription = 0;
        }

        if ([objc_msgSend(propertyDescription "renamingIdentifier")])
        {
          if (v8)
          {
            name = [objc_msgSend(v8 "propertyDescription")];
            propertyDescription2 = [v8 propertyDescription];
          }

          else
          {
            name = [0 name];
            propertyDescription2 = 0;
          }

          if (([name isEqualToString:{objc_msgSend(propertyDescription2, "renamingIdentifier")}] & 1) == 0)
          {
            v14 = MEMORY[0x1E696AEC0];
            if (v8)
            {
              renamingIdentifier = [objc_msgSend(v8 "propertyDescription")];
              propertyDescription3 = [v8 propertyDescription];
            }

            else
            {
              renamingIdentifier = [0 renamingIdentifier];
              propertyDescription3 = 0;
            }

            name2 = [propertyDescription3 name];
            v17 = [v14 stringWithFormat:@"CloudKit integration forbids renaming '%@' to '%@'. Older devices can't process the new relationships.", renamingIdentifier, name2, v23];
LABEL_22:
            v18 = [_NSCoreDataException exceptionWithName:134110 code:v17 reason:0 userInfo:?];
            objc_exception_throw(v18);
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v12 = [transformedManyToManys countByEnumeratingWithState:&v23 objects:v27 count:16];
      v5 = v12;
    }

    while (v12);
  }

  if (([-[NSSQLEntity name](self->_srcEntity "name")] & 1) == 0)
  {
    v19 = MEMORY[0x1E696AEC0];
    name3 = [(NSSQLEntity *)self->_srcEntity name];
    name4 = [(NSSQLEntity *)self->_dstEntity name];
    v17 = [v19 stringWithFormat:@"CloudKit integration forbids renaming '%@' to '%@'. Older devices can't process the new records.", name3, name4, v23];
    goto LABEL_22;
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end