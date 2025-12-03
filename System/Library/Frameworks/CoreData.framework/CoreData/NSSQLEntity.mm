@interface NSSQLEntity
+ (void)initialize;
- (NSSQLEntity)initWithModel:(id)model entityDescription:(id)description;
- (NSSQLEntity_DerivedAttributesExtension)derivedAttributesExtension;
- (NSSQLToOne)_addVirtualToOneForToMany:(NSSQLToOne *)many withInheritedProperty:;
- (id)_generateMulticolumnUniquenessConstraints;
- (id)attributeColumns;
- (id)attributes;
- (id)description;
- (id)foreignEntityKeyColumns;
- (id)foreignKeyColumns;
- (id)foreignOrderKeyColumns;
- (id)manyToManyRelationships;
- (id)toManyRelationships;
- (uint64_t)_addForeignOrderKeyForToOne:(void *)one entity:;
- (uint64_t)_addSubentity:(uint64_t)result;
- (uint64_t)_collectFKSlots:(void *)slots error:;
- (uint64_t)_entityIsBroken:(uint64_t)broken;
- (uint64_t)_generateAttributeDerivations:(uint64_t)result;
- (uint64_t)_generateIDWithSuperEntity:(int)entity nextID:;
- (uint64_t)_sqlPropertyWithRenamingIdentifier:(uint64_t)result;
- (uint64_t)addDerivedAttribute:(uint64_t)result;
- (uint64_t)addPropertiesForReadOnlyFetch:(uint64_t)fetch keys:(void *)keys context:;
- (uint64_t)properties;
- (uint64_t)rtreeIndexForIndexNamed:(uint64_t)named;
- (uint64_t)sqlAttributesForCompositeAttributeName:(uint64_t)name;
- (uint64_t)tempTableName;
- (unint64_t)virtualForeignKeyColumns;
- (void)_addColumnToFetch:(void *)result;
- (void)_generateInverseRelationshipsAndMore;
- (void)_generateProperties;
- (void)_organizeConstraints;
- (void)copyValuesForReadOnlyFetch:(id)fetch;
- (void)dealloc;
- (void)entitySpecificPropertiesPassing:(uint64_t)passing;
- (void)indexForIndexDescription:(void *)result;
- (void)rtreeIndexes;
- (void)subhierarchyColumnMatching:(uint64_t)matching;
@end

@implementation NSSQLEntity

- (id)foreignKeyColumns
{
  if (self->_fkColumns)
  {
    return self->_fkColumns;
  }

  else
  {
    return NSArray_EmptyArray;
  }
}

- (unint64_t)virtualForeignKeyColumns
{
  v19 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if (!atomic_load((result + 120)))
    {
      v4 = *(result + 96);
      if (v4)
      {
        if ([v4 count])
        {
          v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v14 = 0u;
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          v6 = *(v1 + 96);
          v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v15;
            do
            {
              for (i = 0; i != v8; ++i)
              {
                if (*v15 != v9)
                {
                  objc_enumerationMutation(v6);
                }

                v11 = *(*(&v14 + 1) + 8 * i);
                toOneRelationship = [v11 toOneRelationship];
                if (toOneRelationship && *(toOneRelationship + 88) == 1)
                {
                  [v5 addObject:v11];
                }
              }

              v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
            }

            while (v8);
          }

          v13 = 0;
          atomic_compare_exchange_strong((v1 + 120), &v13, v5);
          if (v13)
          {
          }
        }
      }
    }

    result = atomic_load((v1 + 120));
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)foreignEntityKeyColumns
{
  if (self->_ekColumns)
  {
    return self->_ekColumns;
  }

  else
  {
    return NSArray_EmptyArray;
  }
}

- (id)foreignOrderKeyColumns
{
  if (self->_fokColumns)
  {
    return self->_fokColumns;
  }

  else
  {
    return NSArray_EmptyArray;
  }
}

- (id)attributeColumns
{
  if (self->_attrColumns)
  {
    return self->_attrColumns;
  }

  else
  {
    return NSArray_EmptyArray;
  }
}

- (void)dealloc
{
  if (self)
  {
    if (atomic_load(&self->_fetch_entity_plan))
    {
      v4 = atomic_load(&self->_fetch_entity_plan);
      _deallocateFetchEntityPlan(v4);
      atomic_store(0, &self->_fetch_entity_plan);
    }
  }

  odiousHashHackStorage = self->_odiousHashHackStorage;
  if (odiousHashHackStorage)
  {
    _PF_Leopard_CFDictionaryDestroy(odiousHashHackStorage);
    self->_odiousHashHackStorage = 0;
  }

  self->_superentity = 0;
  v6 = atomic_load(&self->_virtualFKs);

  if (self->_propertyMapping)
  {

    self->_primaryKey = 0;
    self->_propertyMapping = 0;

    self->_entityKey = 0;
  }

  self->_subentities = 0;
  self->_tableName = 0;
  self->_columnsToFetch = 0;
  self->_columnsToFetchNoSubentities = 0;
  self->_fkColumns = 0;
  self->_ekColumns = 0;
  self->_fokColumns = 0;
  self->_attrColumns = 0;
  self->_entityDescription = 0;
  self->_properties = 0;
  self->_mappingGenerator = 0;
  atomic_store(0, &self->_fetch_entity_plan);
  self->_propertyAllCache = 0;
  self->_propertiesAllToManysCache = 0;
  self->_propertyManyToManyCache = 0;
  self->_multicolumnUniquenessConstraints = 0;
  self->_uniqueProperties = 0;
  self->_rtreeIndices = 0;
  self->_derivedAttributes = 0;
  self->_derivedAttributeExtension = 0;
  self->_compositeAttributeNameToSQLProperties = 0;
  self->_model = 0;
  v7.receiver = self;
  v7.super_class = NSSQLEntity;
  [(NSStoreMapping *)&v7 dealloc];
}

+ (void)initialize
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    qword_1ED4BE7E8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }
}

- (void)_generateProperties
{
  v154[3] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = result[20];
    entityDescription = [result entityDescription];
    v3 = *(v1 + 16);
    if (v3 && (*(v3 + 57) & 1) != 0)
    {
      _leopardStyleRelationshipsByName = 0;
      _leopardStyleAttributesByName = 0;
      v130 = 1;
      v134 = 1;
    }

    else
    {
      _leopardStyleAttributesByName = [entityDescription _leopardStyleAttributesByName];
      _leopardStyleRelationshipsByName = [entityDescription _leopardStyleRelationshipsByName];
      v130 = 0;
      v134 = 0;
    }

    model = [v1 model];
    if (model)
    {
      v133 = (*(model + 48) >> 1) & 1;
    }

    else
    {
      v133 = 0;
    }

    v5 = *(v1 + 160);
    v6 = 0x1EA8C5000;
    if (v5)
    {
      *(v1 + 80) = [*(v5 + 80) mutableCopy];
      v7 = objc_alloc(MEMORY[0x1E695DF90]);
      if (v2)
      {
        v8 = v2[5];
      }

      else
      {
        v8 = 0;
      }

      *(v1 + 40) = [v7 initWithDictionary:v8];
      v9 = objc_alloc(MEMORY[0x1E695DF90]);
      if (v2)
      {
        v10 = &OBJC_IVAR____NSPersistentHistoryTransaction__author;
        v11 = v2[34];
      }

      else
      {
        v11 = 0;
        v10 = &OBJC_IVAR____NSPersistentHistoryTransaction__author;
      }

      *(v1 + v10[183]) = [v9 initWithDictionary:v11];
      if ((v134 & 1) == 0)
      {
        v12 = _PF_Leopard_CFDictionaryCreate();
        v135 = &v126;
        *(v1 + 248) = v12;
        v13 = v2[31];
        v14 = *v13;
        if (*v13 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = *v13;
        }

        if (v14 >= 0x201)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15;
        }

        v17 = 8 * v16;
        MEMORY[0x1EEE9AC00](v12);
        v19 = &v126 - v18;
        if (v17 >= 0x200)
        {
          v20 = 512;
        }

        else
        {
          v20 = v17;
        }

        bzero(v19, v20);
        if (v14 > 0x200)
        {
          v19 = NSAllocateScannedUncollectable();
        }

        else
        {
          bzero(v19, v17);
        }

        v25 = v13[1];
        if (v25 >= 1)
        {
          v26 = 0;
          v27 = v13[9];
          do
          {
            v29 = *v27++;
            v28 = v29;
            v30 = v13[8];
            v31 = v30 ^ v29;
            if (v30 != v29 && v31 != -1)
            {
              *&v19[8 * v26++] = v28;
            }

            --v25;
          }

          while (v25);
        }

        if (v14 >= 1)
        {
          v33 = v19;
          v34 = v14;
          do
          {
            v35 = *v33++;
            Value = _PF_Leopard_CFDictionaryGetValue(v13, v35);
            _PF_Leopard_CFDictionarySetValue(*(v1 + 248), v35, Value);
            --v34;
          }

          while (v34);
        }

        v6 = 0x1EA8C5000uLL;
        if (v14 >= 0x201)
        {
          NSZoneFree(0, v19);
        }
      }

      if ([objc_msgSend(v2 "foreignKeyColumns")])
      {
        *(v1 + 96) = [objc_msgSend(v2 "foreignKeyColumns")];
      }

      if ([objc_msgSend(v2 "foreignEntityKeyColumns")])
      {
        *(v1 + 88) = [objc_msgSend(v2 "foreignEntityKeyColumns")];
      }

      if ([objc_msgSend(v2 "foreignOrderKeyColumns")])
      {
        *(v1 + 104) = [objc_msgSend(v2 "foreignOrderKeyColumns")];
      }

      if ([objc_msgSend(v2 "attributeColumns")])
      {
        *(v1 + 112) = [objc_msgSend(v2 "attributeColumns")];
      }

      if (v2)
      {
        *(v1 + 128) = v2[16];
        *(v1 + 136) = v2[17];
        *(v1 + 144) = v2[18];
        v37 = *(v2 + *(v6 + 3396));
      }

      else
      {
        v37 = 0;
        *(v1 + 128) = 0;
        *(v1 + 136) = 0;
        *(v1 + 144) = 0;
      }

      v24 = v37;
    }

    else
    {
      *(v1 + 40) = objc_opt_new();
      *(v1 + 272) = objc_alloc_init(MEMORY[0x1E695DF90]);
      if ((v134 & 1) == 0)
      {
        *(v1 + 248) = _PF_Leopard_CFDictionaryCreate();
      }

      *(v1 + 72) = objc_opt_new();
      *(v1 + 80) = objc_opt_new();
      *(v1 + 96) = 0;
      *(v1 + 88) = 0;
      *(v1 + 104) = 0;
      *(v1 + 112) = 0;
      v21 = [[NSSQLEntityKey alloc] initWithEntity:v1 propertyDescription:0];
      *(v1 + 136) = v21;
      [(NSSQLEntity *)v1 _addColumnToFetch:v21];
      [*(v1 + 40) setObject:*(v1 + 136) forKey:{objc_msgSend(*(v1 + 136), "name")}];
      if ((v134 & 1) == 0)
      {
        _PF_Leopard_CFDictionarySetValue(*(v1 + 248), [*(v1 + 136) name], *(v1 + 136));
      }

      v22 = [[NSSQLPrimaryKey alloc] initWithEntity:v1 propertyDescription:0];
      *(v1 + 128) = v22;
      [(NSSQLEntity *)v1 _addColumnToFetch:v22];
      [*(v1 + 40) setObject:*(v1 + 128) forKey:{objc_msgSend(*(v1 + 128), "name")}];
      if ((v134 & 1) == 0)
      {
        _PF_Leopard_CFDictionarySetValue(*(v1 + 248), [*(v1 + 128) name], *(v1 + 128));
      }

      v23 = [[NSSQLOptLockKey alloc] initWithEntity:v1 propertyDescription:0];
      *(v1 + 144) = v23;
      [(NSSQLEntity *)v1 _addColumnToFetch:v23];
      [*(v1 + 40) setObject:*(v1 + 144) forKey:{objc_msgSend(*(v1 + 144), "name")}];
      if ((v134 & 1) == 0)
      {
        _PF_Leopard_CFDictionarySetValue(*(v1 + 248), [*(v1 + 144) name], *(v1 + 144));
      }

      v24 = objc_alloc_init(NSSQLStoreMappingGenerator);
    }

    *(v1 + *(v6 + 3396)) = v24;
    if (v134)
    {
      v135 = 0;
    }

    else
    {
      v135 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    if (v133)
    {
      v38 = [entityDescription _newSnowLeopardStyleDictionaryContainingPropertiesOfType:1];
      v132 = v38;
      v127 = &v126;
      v39 = *(v38 + 8);
      if (v39 > 1)
      {
        v40 = *(v38 + 8);
      }

      v41 = MEMORY[0x1EEE9AC00](v38);
      v43 = (&v126 - v42);
      _PF_SnowLeopard_CFDictionaryGetValues(v41, &v126 - v42);
    }

    else
    {
      v132 = [entityDescription _newMappingForPropertiesOfRange:1];
      v39 = [v132 count];
      v127 = &v126;
      MEMORY[0x1EEE9AC00](v39);
      v43 = (&v126 - v45);
      [v132 getObjects:&v126 - v45];
    }

    if (v39)
    {
      v128 = v154;
      v129 = &v153;
      *&v44 = 138412546;
      v126 = v44;
      do
      {
        v46 = *v43;
        if (([*v43 isTransient] & 1) == 0)
        {
          if (v46 && [v46 attributeType] == 2100)
          {
            v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x3052000000;
              v153 = __Block_byref_object_copy__26;
              v154[0] = __Block_byref_object_dispose__26;
              v142[0] = MEMORY[0x1E69E9820];
              v142[1] = 3221225472;
              v143 = __34__NSSQLEntity__generateProperties__block_invoke;
              v144 = &unk_1E6EC39E8;
              v148 = v46;
              v149 = buf;
              v145 = v1;
              v146 = v47;
              v150 = v130;
              v147 = v135;
              v154[1] = v142;
              elements = [v46 elements];
              name = [v46 name];
              v143(v142, elements, name);
              name2 = [v46 name];
              if (name2)
              {
                v51 = [*(v1 + 272) objectForKey:name2];
                if (v51)
                {
                  [v51 addObjectsFromArray:v47];
                }

                else
                {
                  v60 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v47];
                  [*(v1 + 272) setObject:v60 forKey:name2];
                }
              }

              _Block_object_dispose(buf, 8);
            }

            else
            {
              LogStream = _PFLogGetLogStream(17);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                v61 = objc_opt_class();
                v62 = NSStringFromClass(v61);
                v63 = objc_opt_class();
                v64 = NSStringFromClass(v63);
                *buf = v126;
                *&buf[4] = v62;
                *&buf[12] = 2112;
                *&buf[14] = v64;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unexpected multi-column attribute description class (expected %@): %@\n", buf, 0x16u);
              }

              v55 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
              {
                v56 = objc_opt_class();
                v57 = NSStringFromClass(v56);
                v58 = objc_opt_class();
                v59 = NSStringFromClass(v58);
                *buf = v126;
                *&buf[4] = v57;
                *&buf[12] = 2112;
                *&buf[14] = v59;
                _os_log_fault_impl(&dword_18565F000, v55, OS_LOG_TYPE_FAULT, "CoreData: Unexpected multi-column attribute description class (expected %@): %@", buf, 0x16u);
              }
            }
          }

          else
          {
            name3 = [v46 name];
            if (![*(v1 + 40) objectForKey:name3])
            {
              v53 = [[NSSQLAttribute alloc] initWithEntity:v1 propertyDescription:v46];
              [(NSSQLEntity *)v1 _addColumnToFetch:v53];
              [*(v1 + 40) setObject:v53 forKey:name3];
              if ((v134 & 1) == 0)
              {
                [v135 setObject:v53 forKey:name3];
              }

              if ([v46 _propertyType] == 6)
              {
                [(NSSQLEntity *)v1 addDerivedAttribute:v53];
              }
            }
          }
        }

        ++v43;
        --v39;
      }

      while (v39);
    }

    if (v133)
    {
      _PF_SnowLeopard_CFDictionaryDestroy(v132);
    }

    else
    {
    }

    if ((v134 & 1) == 0)
    {
      v66 = *_leopardStyleAttributesByName;
      if (*_leopardStyleAttributesByName >= 1)
      {
        if (v66 >= 0x201)
        {
          v67 = 1;
        }

        else
        {
          v67 = *_leopardStyleAttributesByName;
        }

        v68 = 8 * v67;
        MEMORY[0x1EEE9AC00](v65);
        v70 = &v126 - v69;
        if (v68 >= 0x200)
        {
          v71 = 512;
        }

        else
        {
          v71 = v68;
        }

        bzero(v70, v71);
        if (v66 > 0x200)
        {
          v70 = NSAllocateScannedUncollectable();
        }

        else
        {
          bzero(v70, v68);
        }

        v72 = _leopardStyleAttributesByName[1];
        if (v72 > 0)
        {
          v73 = 0;
          v74 = _leopardStyleAttributesByName[9];
          do
          {
            v76 = *v74++;
            v75 = v76;
            v77 = _leopardStyleAttributesByName[8];
            v78 = v77 ^ v76;
            if (v77 != v76 && v78 != -1)
            {
              *&v70[8 * v73++] = v75;
            }

            --v72;
          }

          while (v72);
        }

        v80 = 0;
        do
        {
          v81 = _PF_Leopard_CFDictionaryGetValue(_leopardStyleAttributesByName, *&v70[8 * v80]);
          if (([v81 isTransient] & 1) == 0)
          {
            name4 = [v81 name];
            v83 = [v135 objectForKey:name4];
            if (v83)
            {
              _PF_Leopard_CFDictionarySetValue(*(v1 + 248), name4, v83);
            }
          }

          ++v80;
        }

        while (v66 != v80);
        if (v66 >= 0x201)
        {
          NSZoneFree(0, v70);
        }
      }

      [v135 removeAllObjects];
    }

    if (v133)
    {
      v84 = [entityDescription _newSnowLeopardStyleDictionaryContainingPropertiesOfType:2];
      v85 = v84;
      v86 = *(v84 + 8);
      if (v86 > 1)
      {
        v87 = *(v84 + 8);
      }

      v88 = MEMORY[0x1EEE9AC00](v84);
      v90 = (&v126 - v89);
      _PF_SnowLeopard_CFDictionaryGetValues(v88, &v126 - v89);
    }

    else
    {
      v85 = [entityDescription _newMappingForPropertiesOfRange:2];
      v86 = [v85 count];
      MEMORY[0x1EEE9AC00](v86);
      v90 = (&v126 - v91);
      [v85 getObjects:&v126 - v91];
    }

    for (; v86; --v86)
    {
      v92 = *v90;
      if (([*v90 isTransient] & 1) == 0)
      {
        name5 = [v92 name];
        if (![*(v1 + 40) objectForKey:name5])
        {
          if ([v92 maxCount] == 1)
          {
            v94 = [[NSSQLToOne alloc] initWithEntity:v1 propertyDescription:v92];
            foreignKey = [(NSSQLToOne *)v94 foreignKey];
            [*(v1 + 40) setObject:foreignKey forKey:{objc_msgSend(foreignKey, "name")}];
            if ((v134 & 1) == 0)
            {
              name6 = [foreignKey name];
              [v135 setObject:foreignKey forKey:name6];
            }

            [(NSSQLEntity *)v1 _addColumnToFetch:foreignKey];
            if (!v94)
            {
              goto LABEL_142;
            }

            foreignEntityKey = v94->_foreignEntityKey;
            if (foreignEntityKey)
            {
              [*(v1 + 40) setObject:foreignEntityKey forKey:{-[NSSQLForeignEntityKey name](v94->_foreignEntityKey, "name")}];
              if ((v134 & 1) == 0)
              {
                name7 = [(NSSQLForeignEntityKey *)foreignEntityKey name];
                [v135 setObject:foreignEntityKey forKey:name7];
              }

              [(NSSQLEntity *)v1 _addColumnToFetch:?];
            }
          }

          else
          {
            inverseRelationship = [v92 inverseRelationship];
            if (!inverseRelationship || (v100 = [inverseRelationship maxCount], v101 = off_1E6EC0BA8, v100 == 1))
            {
              v101 = off_1E6EC0BB0;
            }

            v94 = [objc_alloc(*v101) initWithEntity:v1 propertyDescription:v92];
            if (!v94)
            {
              goto LABEL_142;
            }
          }

          [*(v1 + 40) setObject:v94 forKey:name5];
          if ((v134 & 1) == 0)
          {
            [v135 setObject:v94 forKey:name5];
          }
        }
      }

LABEL_142:
      ++v90;
    }

    if (v133)
    {
      _PF_SnowLeopard_CFDictionaryDestroy(v85);
    }

    else
    {
    }

    if ((v134 & 1) == 0)
    {
      v103 = *_leopardStyleRelationshipsByName;
      if (*_leopardStyleRelationshipsByName >= 1)
      {
        if (v103 < 0x201)
        {
          v104 = *_leopardStyleRelationshipsByName;
        }

        MEMORY[0x1EEE9AC00](v102);
        v106 = &v126 - v105;
        if (v103 > 0x200)
        {
          v106 = NSAllocateScannedUncollectable();
        }

        else
        {
          bzero(&v126 - v105, 8 * v103);
        }

        v107 = _leopardStyleRelationshipsByName[1];
        if (v107 > 0)
        {
          v108 = 0;
          v109 = _leopardStyleRelationshipsByName[9];
          do
          {
            v111 = *v109++;
            v110 = v111;
            v112 = _leopardStyleRelationshipsByName[8];
            v113 = v112 ^ v111;
            if (v112 != v111 && v113 != -1)
            {
              *&v106[8 * v108++] = v110;
            }

            --v107;
          }

          while (v107);
        }

        v115 = 0;
        do
        {
          v116 = _PF_Leopard_CFDictionaryGetValue(_leopardStyleRelationshipsByName, *&v106[8 * v115]);
          if (([v116 isTransient] & 1) == 0)
          {
            name8 = [v116 name];
            v118 = [v135 objectForKey:name8];
            if (v118)
            {
              if ([v116 maxCount] == 1)
              {
                foreignKey2 = [v118 foreignKey];
                _PF_Leopard_CFDictionarySetValue(*(v1 + 248), [foreignKey2 name], foreignKey2);
                v120 = v118[9];
                if (v120)
                {
                  _PF_Leopard_CFDictionarySetValue(*(v1 + 248), [v118[9] name], v120);
                }
              }

              _PF_Leopard_CFDictionarySetValue(*(v1 + 248), [v118 name], v118);
            }
          }

          ++v115;
        }

        while (v103 != v115);
        if (v103 >= 0x201)
        {
          NSZoneFree(0, v106);
        }
      }

      _PF_Leopard_CFDictionaryDestroy(_leopardStyleRelationshipsByName);
      _PF_Leopard_CFDictionaryDestroy(_leopardStyleAttributesByName);
    }

    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v121 = *(v1 + 152);
    result = [v121 countByEnumeratingWithState:&v138 objects:v151 count:16];
    v122 = result;
    if (result)
    {
      v123 = *v139;
      do
      {
        v124 = 0;
        do
        {
          if (*v139 != v123)
          {
            objc_enumerationMutation(v121);
          }

          [(NSSQLEntity *)*(*(&v138 + 1) + 8 * v124) _generateProperties];
          v124 = (v124 + 1);
        }

        while (v122 != v124);
        result = [v121 countByEnumeratingWithState:&v138 objects:v151 count:16];
        v122 = result;
      }

      while (result);
    }
  }

  v125 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_generateInverseRelationshipsAndMore
{
  v134 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    model = [result model];
    if (model && (*(model + 48) & 1) != 0)
    {
      array = [MEMORY[0x1E695DF70] array];
      v22 = array;
      v23 = *(v1 + 248);
      v24 = *v23;
      if (*v23 >= 1)
      {
        if (v24 >= 0x201)
        {
          v25 = 1;
        }

        else
        {
          v25 = *v23;
        }

        v26 = 8 * v25;
        MEMORY[0x1EEE9AC00](array);
        v28 = &v117 - v27;
        if (v26 >= 0x200)
        {
          v29 = 512;
        }

        else
        {
          v29 = v26;
        }

        bzero(v28, v29);
        if (v24 > 0x200)
        {
          v28 = NSAllocateScannedUncollectable();
        }

        else
        {
          bzero(v28, v26);
        }

        v39 = *(v1 + 248);
        v40 = v39[1];
        if (v40 > 0)
        {
          v41 = 0;
          v42 = v39[9];
          do
          {
            v44 = *v42++;
            v43 = v44;
            v45 = v39[8];
            v46 = v45 ^ v44;
            if (v45 != v44 && v46 != -1)
            {
              *&v28[8 * v41++] = v43;
            }

            --v40;
          }

          while (v40);
        }

        v48 = 0;
        do
        {
          [v22 addObject:{_PF_Leopard_CFDictionaryGetValue(*(v1 + 248), *&v28[8 * v48++])}];
        }

        while (v24 != v48);
        if (v24 >= 0x201)
        {
          NSZoneFree(0, v28);
        }
      }

      goto LABEL_136;
    }

    model2 = [v1 model];
    if (model2 && (*(model2 + 48) & 2) != 0)
    {
      v30 = [*(v1 + 40) count];
      if (v30 >= 1)
      {
        v31 = PF_Tiger_CFDictionaryCreate(0, v30, 1);
        v32 = v31;
        v118 = &v117;
        v33 = v30 & 0x7FFFFFFF;
        if (v33 >= 0x201)
        {
          v34 = 1;
        }

        else
        {
          v34 = v30 & 0x7FFFFFFF;
        }

        v35 = 8 * v34;
        MEMORY[0x1EEE9AC00](v31);
        v37 = &v117 - v36;
        if (v35 >= 0x200)
        {
          v38 = 512;
        }

        else
        {
          v38 = v35;
        }

        bzero(v37, v38);
        v117 = v33;
        if (v33 > 0x200)
        {
          v37 = NSAllocateScannedUncollectable();
        }

        else
        {
          bzero(v37, v35);
        }

        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        v55 = *(v1 + 40);
        v56 = [v55 countByEnumeratingWithState:&v127 objects:v133 count:{16, v117}];
        if (v56)
        {
          v57 = v56;
          v58 = *v128;
          do
          {
            for (i = 0; i != v57; ++i)
            {
              if (*v128 != v58)
              {
                objc_enumerationMutation(v55);
              }

              PF_Tiger_CFDictionarySetValue(v32, *(*(&v127 + 1) + 8 * i), [*(v1 + 40) objectForKey:*(*(&v127 + 1) + 8 * i)]);
            }

            v57 = [v55 countByEnumeratingWithState:&v127 objects:v133 count:16];
          }

          while (v57);
        }

        PF_Tiger_CFDictionaryGetKeysAndValues(v32, 0, v37);
        v60 = v117;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:v117];
        PF_Tiger_CFDictionaryDestroy(v32);
        if (v60 < 0x201)
        {
          goto LABEL_136;
        }

        v61 = v37;
LABEL_106:
        NSZoneFree(0, v61);
        goto LABEL_136;
      }
    }

    else
    {
      v4 = *(v1 + 16);
      if (v4 && *(v4 + 57) == 1)
      {
        v5 = [(NSSQLModel *)v4 _precomputedKeyOrderForEntity:v1];
        v6 = [*(v1 + 40) count];
        v7 = _PF_Leopard_CFDictionaryCreate();
        v123 = 0u;
        v124 = 0u;
        v125 = 0u;
        v126 = 0u;
        v8 = [v5 countByEnumeratingWithState:&v123 objects:v132 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v124;
          do
          {
            v11 = 0;
            do
            {
              if (*v124 != v10)
              {
                objc_enumerationMutation(v5);
              }

              v12 = *(*(&v123 + 1) + 8 * v11);
              v13 = [*(v1 + 40) objectForKey:v12];
              if (v13)
              {
                _PF_Leopard_CFDictionarySetValue(v7, v12, v13);
              }

              ++v11;
            }

            while (v9 != v11);
            v8 = [v5 countByEnumeratingWithState:&v123 objects:v132 count:16];
            v9 = v8;
          }

          while (v8);
        }

        v14 = *v7;
        if (*v7 < 1)
        {
          v22 = NSArray_EmptyArray;
        }

        else
        {
          v118 = &v117;
          if (v14 >= 0x201)
          {
            v15 = 1;
          }

          else
          {
            v15 = v14;
          }

          v16 = 8 * v15;
          MEMORY[0x1EEE9AC00](v8);
          v18 = &v117 - v17;
          if (v16 >= 0x200)
          {
            v19 = 512;
          }

          else
          {
            v19 = v16;
          }

          bzero(v18, v19);
          if (v14 > 0x200)
          {
            v20 = NSAllocateScannedUncollectable();
            v18 = v20;
          }

          else
          {
            bzero(v18, v16);
          }

          v84 = v6;
          if (v6 << 32)
          {
            v85 = v6;
          }

          else
          {
            v85 = 1;
          }

          if (v6 >= 0x201)
          {
            v86 = 1;
          }

          else
          {
            v86 = v85;
          }

          v87 = 8 * v86;
          MEMORY[0x1EEE9AC00](v20);
          v89 = &v117 - v88;
          if (v87 >= 0x200)
          {
            v90 = 512;
          }

          else
          {
            v90 = v87;
          }

          bzero(v89, v90);
          if (v6 > 0x200)
          {
            v89 = NSAllocateScannedUncollectable();
          }

          else
          {
            bzero(v89, v87);
          }

          v91 = PF_Tiger_CFDictionaryCreate(0, v6, 1);
          v92 = v7[1];
          if (v92 > 0)
          {
            v93 = 0;
            v94 = v7[9];
            do
            {
              v96 = *v94++;
              v95 = v96;
              v97 = v7[8];
              v98 = v97 ^ v96;
              if (v97 != v96 && v98 != -1)
              {
                *&v18[8 * v93++] = v95;
              }

              --v92;
            }

            while (v92);
          }

          v100 = 0;
          do
          {
            v101 = *&v18[8 * v100];
            Value = _PF_Leopard_CFDictionaryGetValue(v7, v101);
            PF_Tiger_CFDictionarySetValue(v91, v101, Value);
            ++v100;
          }

          while (v14 != v100);
          PF_Tiger_CFDictionaryGetKeysAndValues(v91, 0, v89);
          v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:v84];
          PF_Tiger_CFDictionaryDestroy(v91);
          if (v84 >= 0x201)
          {
            NSZoneFree(0, v89);
          }

          if (v14 >= 0x201)
          {
            NSZoneFree(0, v18);
          }
        }

        _PF_Leopard_CFDictionaryDestroy(v7);
        goto LABEL_136;
      }

      v49 = **(v1 + 248);
      if (v49 >= 1)
      {
        v118 = &v117;
        if (v49 >= 0x201)
        {
          v50 = 1;
        }

        else
        {
          v50 = v49;
        }

        v51 = 8 * v50;
        MEMORY[0x1EEE9AC00](v4);
        v53 = &v117 - v52;
        if (v51 >= 0x200)
        {
          v54 = 512;
        }

        else
        {
          v54 = v51;
        }

        bzero(v53, v54);
        if (v49 > 0x200)
        {
          v53 = NSAllocateScannedUncollectable();
        }

        else
        {
          bzero(v53, v51);
        }

        v62 = *(v1 + 248);
        v63 = v62[1];
        if (v63 >= 1)
        {
          v64 = 0;
          v65 = v62[9];
          do
          {
            v67 = *v65++;
            v66 = v67;
            v68 = v62[8];
            v69 = v68 ^ v67;
            if (v68 != v67 && v69 != -1)
            {
              *&v53[8 * v64++] = v66;
            }

            --v63;
          }

          while (v63);
        }

        v71 = [*(v1 + 40) count];
        v72 = PF_Tiger_CFDictionaryCreate(0, v71, 1);
        v73 = v72;
        v74 = v71;
        if (v71 << 32)
        {
          v75 = v71;
        }

        else
        {
          v75 = 1;
        }

        if (v71 >= 0x201)
        {
          v76 = 1;
        }

        else
        {
          v76 = v75;
        }

        v77 = 8 * v76;
        MEMORY[0x1EEE9AC00](v72);
        v79 = &v117 - v78;
        if (v77 >= 0x200)
        {
          v80 = 512;
        }

        else
        {
          v80 = v77;
        }

        bzero(v79, v80);
        if (v74 > 0x200)
        {
          v79 = NSAllocateScannedUncollectable();
        }

        else
        {
          bzero(v79, v77);
        }

        for (j = 0; j != v49; ++j)
        {
          v82 = *&v53[8 * j];
          v83 = _PF_Leopard_CFDictionaryGetValue(*(v1 + 248), v82);
          PF_Tiger_CFDictionarySetValue(v73, v82, v83);
        }

        PF_Tiger_CFDictionaryGetKeysAndValues(v73, 0, v79);
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:v74];
        PF_Tiger_CFDictionaryDestroy(v73);
        if (v74 >= 0x201)
        {
          NSZoneFree(0, v79);
        }

        if (v49 < 0x201)
        {
          goto LABEL_136;
        }

        v61 = v53;
        goto LABEL_106;
      }
    }

    v22 = NSArray_EmptyArray;
LABEL_136:
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    result = [v22 countByEnumeratingWithState:&v119 objects:v131 count:16];
    if (!result)
    {
      goto LABEL_166;
    }

    v103 = result;
    v104 = *v120;
    do
    {
      v105 = 0;
      do
      {
        if (*v120 != v104)
        {
          objc_enumerationMutation(v22);
        }

        v106 = *(*(&v119 + 1) + 8 * v105);
        if (v106)
        {
          v107 = *(v106 + 24);
          if ((v107 - 7) <= 2)
          {
            if (*(v106 + 56))
            {
              if (v107 == 7 && *(v106 + 80))
              {
                goto LABEL_152;
              }
            }

            else
            {
              v108 = [objc_msgSend(v106 "propertyDescription")];
              if (v108)
              {
                if (*(v106 + 24) == 9)
                {
                  goto LABEL_156;
                }

                destinationEntity = [v106 destinationEntity];
                name = [v108 name];
                if (destinationEntity)
                {
                  v111 = [*(destinationEntity + 40) objectForKey:name];
                }

                else
                {
                  v111 = 0;
                }

                [(NSSQLRelationship *)v106 _setInverseRelationship:v111];
                if (*(v106 + 24) == 7)
                {
LABEL_152:
                  [(NSSQLEntity *)v1 _addForeignOrderKeyForToOne:v106 entity:v1];
                  goto LABEL_159;
                }

                if ([v111 entity] == v1)
                {
                  [v111 isToMany];
                }
              }

              else
              {
                if ([v106 isToMany])
                {
                  v112 = -[NSSQLEntity _addVirtualToOneForToMany:withInheritedProperty:]([v106 destinationEntity], v106, 0);
                  [(NSSQLRelationship *)v106 _setInverseRelationship:v112];
                  goto LABEL_159;
                }

                if (*(v106 + 24) == 9)
                {
LABEL_156:
                  destinationEntity2 = [v106 destinationEntity];
                  name2 = [v108 name];
                  if (destinationEntity2)
                  {
                    v115 = [*(destinationEntity2 + 40) objectForKey:name2];
                  }

                  else
                  {
                    v115 = 0;
                  }

                  [(NSSQLManyToMany *)v106 _setInverseManyToMany:v115];
                }
              }
            }
          }
        }

LABEL_159:
        v105 = v105 + 1;
      }

      while (v103 != v105);
      result = [v22 countByEnumeratingWithState:&v119 objects:v131 count:16];
      v103 = result;
    }

    while (result);
  }

LABEL_166:
  v116 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_generateMulticolumnUniquenessConstraints
{
  v29 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    rootEntity = [result rootEntity];
    if (rootEntity)
    {
      v16 = *(rootEntity + 216);
    }

    else
    {
      v16 = 0;
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    entityDescription = [v1 entityDescription];
    if (entityDescription)
    {
      v4 = *(entityDescription + 128);
      if (!v4 || (v5 = *(v4 + 24)) == 0)
      {
        v5 = NSArray_EmptyArray;
      }
    }

    else
    {
      v5 = 0;
    }

    result = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (result)
    {
      v6 = result;
      obj = v5;
      v18 = *v24;
      do
      {
        v7 = 0;
        do
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v23 + 1) + 8 * v7);
          if ([v8 count] >= 2)
          {
            v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [v16 addObject:v9];

            v21 = 0u;
            v22 = 0u;
            v19 = 0u;
            v20 = 0u;
            v10 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v10)
            {
              v11 = v10;
              v12 = *v20;
              do
              {
                for (i = 0; i != v11; ++i)
                {
                  if (*v20 != v12)
                  {
                    objc_enumerationMutation(v8);
                  }

                  v14 = [v1[5] objectForKey:*(*(&v19 + 1) + 8 * i)];
                  [v14 setConstrained:1];
                  [v9 addObject:v14];
                }

                v11 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
              }

              while (v11);
            }
          }

          v7 = (v7 + 1);
        }

        while (v7 != v6);
        result = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
        v6 = result;
      }

      while (result);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)attributes
{
  while (self)
  {
    selfCopy = self;
    self = *(self + 21);
    if (self == selfCopy)
    {
      return selfCopy[9];
    }
  }

  return self;
}

- (void)_organizeConstraints
{
  v34 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = [*(self + 216) count];
    if (!*(self + 160) && v2 != 0)
    {
      v4 = v2;
      v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v2];
      keyCallBacks.version = *MEMORY[0x1E695E9D8];
      *&keyCallBacks.retain = *(MEMORY[0x1E695E9D8] + 8);
      v6 = *(MEMORY[0x1E695E9D8] + 24);
      keyCallBacks.equal = 0;
      keyCallBacks.hash = 0;
      keyCallBacks.copyDescription = v6;
      v20 = v4;
      v7 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], v4, &keyCallBacks, MEMORY[0x1E695E9E8]);
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      selfCopy = self;
      obj = *(self + 216);
      v8 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v28;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v28 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = [*(*(&v27 + 1) + 8 * i) sortedArrayUsingDescriptors:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", objc_msgSend(MEMORY[0x1E696AEB0], "sortDescriptorWithKey:ascending:", @"name", 1))}];
            v13 = [objc_msgSend(v12 valueForKey:{@"columnName", "componentsJoinedByString:", @"_"}];
            [v5 addObject:v13];
            CFDictionaryAddValue(v7, v13, v12);
          }

          v9 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
        }

        while (v9);
      }

      [v5 sortUsingComparator:&__block_literal_global_44];
      v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v20];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v15 = [v5 countByEnumeratingWithState:&v23 objects:v32 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v24;
        do
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v24 != v17)
            {
              objc_enumerationMutation(v5);
            }

            [v14 addObject:{CFDictionaryGetValue(v7, *(*(&v23 + 1) + 8 * j))}];
          }

          v16 = [v5 countByEnumeratingWithState:&v23 objects:v32 count:16];
        }

        while (v16);
      }

      *(selfCopy + 216) = v14;
      CFRelease(v7);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (uint64_t)tempTableName
{
  if (result)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"TEMP_CD%@", *(result + 32)];
  }

  return result;
}

- (NSSQLEntity_DerivedAttributesExtension)derivedAttributesExtension
{
  if (result)
  {
    v1 = result;
    result = result[6]._triggerSQL;
    if (!result)
    {
      result = [[NSSQLEntity_DerivedAttributesExtension alloc] initWithEntity:v1];
      v1[6]._triggerSQL = result;
    }
  }

  return result;
}

- (id)toManyRelationships
{
  v17 = *MEMORY[0x1E69E9840];
  propertiesAllToManysCache = self->_propertiesAllToManysCache;
  if (!propertiesAllToManysCache)
  {
    propertiesAllToManysCache = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    properties = [(NSSQLEntity *)self properties];
    v5 = [properties countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(properties);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          if ([v9 isToMany])
          {
            CFArrayAppendValue(propertiesAllToManysCache, v9);
          }
        }

        v6 = [properties countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    self->_propertiesAllToManysCache = propertiesAllToManysCache;
  }

  v10 = *MEMORY[0x1E69E9840];
  return propertiesAllToManysCache;
}

- (id)manyToManyRelationships
{
  v17 = *MEMORY[0x1E69E9840];
  propertyManyToManyCache = self->_propertyManyToManyCache;
  if (!propertyManyToManyCache)
  {
    propertyManyToManyCache = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    properties = [(NSSQLEntity *)self properties];
    v5 = [properties countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(properties);
          }

          v9 = *(*(&v12 + 1) + 8 * v8);
          if (v9 && v9[24] == 9)
          {
            CFArrayAppendValue(propertyManyToManyCache, v9);
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [properties countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    self->_propertyManyToManyCache = propertyManyToManyCache;
  }

  v10 = *MEMORY[0x1E69E9840];
  return propertyManyToManyCache;
}

- (uint64_t)properties
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    result = *(result + 48);
    if (!result)
    {
      allValues = [*(v1 + 40) allValues];
      v3 = [allValues count];
      v4 = MEMORY[0x1EEE9AC00](v3);
      v7 = (v10 - v6);
      if (v4 > 0x200)
      {
        v7 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(v10 - v6, 8 * v5);
      }

      [allValues getObjects:v7 range:{0, v3}];
      v8 = CFArrayCreate(*MEMORY[0x1E695E480], v7, v3, 0);
      if (v3 >= 0x201)
      {
        NSZoneFree(0, v7);
      }

      *(v1 + 48) = v8;
      result = *(v1 + 48);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __34__NSSQLEntity__generateProperties__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  result = [a2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(a2);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        if ([v9 isNSArray])
        {
          v10 = *(*(*(*(a1 + 64) + 8) + 40) + 16);
LABEL_10:
          v10();
          goto LABEL_11;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = *(*(*(a1 + 64) + 8) + 40);
          [v9 elements];
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", a3, objc_msgSend(v9, "name")];
          v10 = *(v11 + 16);
          goto LABEL_10;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v9 name];
          v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", a3, v12];
          if (![*(*(a1 + 32) + 40) objectForKey:v13])
          {
            v14 = [[NSSQLAttribute alloc] initWithEntity:*(a1 + 32) propertyDescription:v9];
            [(NSSQLEntity *)*(a1 + 32) _addColumnToFetch:v14];
            [*(a1 + 40) addObject:v14];
            [*(*(a1 + 32) + 40) setObject:v14 forKey:v13];
            if ((*(a1 + 72) & 1) == 0)
            {
              [*(a1 + 48) setObject:v14 forKey:v13];
            }

            if ([*(a1 + 56) _propertyType] == 6)
            {
              [(NSSQLEntity *)*(a1 + 32) addDerivedAttribute:v14];
            }

            _PF_Leopard_CFDictionarySetValue(*(*(a1 + 32) + 248), v13, v14);
          }
        }

LABEL_11:
        ++v8;
      }

      while (v6 != v8);
      result = [a2 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v6 = result;
    }

    while (result);
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSSQLEntity)initWithModel:(id)model entityDescription:(id)description
{
  v37 = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = NSSQLEntity;
  v6 = [(NSSQLEntity *)&v26 init];
  if (v6)
  {
    v7 = +[NSSQLStoreMappingGenerator defaultMappingGenerator];
    if (model)
    {
      v8 = *(model + 15) >> 7 > 0x7Cu;
    }

    else
    {
      v8 = 0;
    }

    *(v6 + 4) = [(NSSQLStoreMappingGenerator *)v7 generateTableName:description isAncillary:v8];
    *(v6 + 3) = description;
    *(v6 + 2) = model;
    atomic_store(0, v6 + 28);
    *(v6 + 12) = *(*(description + 14) + 96);
    *(v6 + 70) = *(v6 + 70) & 0xFFFFFFFE | [(NSEntityDescription *)description _hasAttributesWithExternalDataReferences];
    if ([(NSEntityDescription *)description _hasAttributesWithFileBackedFutures])
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    *(v6 + 70) = *(v6 + 70) & 0xFFFFFFFD | v9;
    if (![description superentity])
    {
      *(v6 + 27) = objc_alloc_init(MEMORY[0x1E695DF70]);
      *(v6 + 26) = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    if ([description indexes] && objc_msgSend(objc_msgSend(description, "indexes"), "count"))
    {
      v25 = *(v6 + 29);
      if (!v25)
      {
        v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
        *(v6 + 29) = v25;
      }

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v10 = v6;
      indexes = [*(v6 + 3) indexes];
      v12 = [indexes countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v32;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v32 != v14)
            {
              objc_enumerationMutation(indexes);
            }

            v16 = *(*(&v31 + 1) + 8 * i);
            if ([objc_msgSend(v16 "elements")] && objc_msgSend(objc_msgSend(objc_msgSend(v16, "elements"), "firstObject"), "collationType") == 1)
            {
              v29 = 0u;
              v30 = 0u;
              v27 = 0u;
              v28 = 0u;
              elements = [v16 elements];
              v18 = [elements countByEnumeratingWithState:&v27 objects:v35 count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v28;
LABEL_22:
                v21 = 0;
                while (1)
                {
                  if (*v28 != v20)
                  {
                    objc_enumerationMutation(elements);
                  }

                  if ([objc_msgSend(*(*(&v27 + 1) + 8 * v21) "property")])
                  {
                    break;
                  }

                  if (v19 == ++v21)
                  {
                    v19 = [elements countByEnumeratingWithState:&v27 objects:v35 count:16];
                    if (v19)
                    {
                      goto LABEL_22;
                    }

                    goto LABEL_28;
                  }
                }
              }

              else
              {
LABEL_28:
                v22 = [[NSSQLRTreeIndex alloc] initForIndexDescription:v16 sqlEntity:v10];
                [v25 setObject:v22 forKey:{objc_msgSend(v16, "name")}];
              }
            }
          }

          v13 = [indexes countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v13);
      }

      v6 = v10;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)entitySpecificPropertiesPassing:(uint64_t)passing
{
  v20 = *MEMORY[0x1E69E9840];
  if (passing)
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    allValues = [*(passing + 40) allValues];
    v5 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(allValues);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          if ((*(a2 + 16))(a2, [v9 propertyType]))
          {
            v10 = *(passing + 160);
            name = [v9 name];
            if (!v10 || ![*(v10 + 40) objectForKey:name])
            {
              [array addObject:v9];
            }
          }
        }

        v6 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }
  }

  else
  {
    array = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return array;
}

- (void)subhierarchyColumnMatching:(uint64_t)matching
{
  v19 = *MEMORY[0x1E69E9840];
  if (!matching)
  {
LABEL_14:
    v5 = 0;
    goto LABEL_16;
  }

  v4 = [*(matching + 40) objectForKey:{objc_msgSend(a2, "name")}];
  if (!v4 || (v5 = v4, [v4 propertyType] != 1) || !objc_msgSend(objc_msgSend(a2, "propertyDescription"), "_isSchemaEqual:", objc_msgSend(v5, "propertyDescription")) || (objc_msgSend(objc_msgSend(a2, "columnName"), "isEqual:", objc_msgSend(v5, "columnName")) & 1) == 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = *(matching + 152);
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(NSSQLEntity *)*(*(&v14 + 1) + 8 * v10) subhierarchyColumnMatching:a2];
          if (v11)
          {
            v5 = v11;
            goto LABEL_16;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_14;
  }

LABEL_16:
  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (uint64_t)_addSubentity:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 152);
    if (!v4)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
      *(v3 + 152) = v4;
    }

    return [v4 addObject:a2];
  }

  return result;
}

- (uint64_t)_sqlPropertyWithRenamingIdentifier:(uint64_t)result
{
  v18 = *MEMORY[0x1E69E9840];
  if (!result)
  {
LABEL_16:
    v12 = *MEMORY[0x1E69E9840];
    return result;
  }

  v3 = result;
  propertiesByName = [*(result + 24) propertiesByName];
  if (![objc_msgSend(objc_msgSend(propertiesByName objectForKey:{a2), "renamingIdentifier"), "isEqualToString:", a2}])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    allValues = [propertiesByName allValues];
    result = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (result)
    {
      v8 = result;
      v9 = *v14;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(allValues);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          if ([objc_msgSend(v11 "renamingIdentifier")])
          {
            result = [*(v3 + 40) objectForKey:{objc_msgSend(v11, "name")}];
            goto LABEL_16;
          }

          ++v10;
        }

        while (v8 != v10);
        result = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
        v8 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_16;
  }

  v5 = *(v3 + 40);
  v6 = *MEMORY[0x1E69E9840];

  return [v5 objectForKey:a2];
}

- (void)_addColumnToFetch:(void *)result
{
  if (!result || !a2)
  {
    return result;
  }

  v3 = result;
  v4 = result[21];
  if (v4)
  {
    v5 = [*(v4 + 72) count];
    [*(v4 + 72) addObject:a2];
    a2[13] = v5;
  }

  propertyType = [a2 propertyType];
  if (propertyType > 3)
  {
    if (propertyType == 4)
    {
      v7 = &OBJC_IVAR___NSSQLEntity__ekColumns;
    }

    else
    {
      if (propertyType != 10)
      {
        goto LABEL_18;
      }

      v7 = &OBJC_IVAR___NSSQLEntity__fokColumns;
    }

LABEL_14:
    v8 = *(v3 + *v7);
    if (v8 || (v8 = objc_opt_new(), (*(v3 + *v7) = v8) != 0))
    {
      v9 = [v8 count];
      [v8 addObject:a2];
      if (a2[14] == -1)
      {
        a2[14] = v9;
      }
    }

    goto LABEL_18;
  }

  if (propertyType == 1)
  {
    v7 = &OBJC_IVAR___NSSQLEntity__attrColumns;
    goto LABEL_14;
  }

  if (propertyType == 3)
  {
    v7 = &OBJC_IVAR___NSSQLEntity__fkColumns;
    goto LABEL_14;
  }

LABEL_18:
  result = v3[10];
  if (result)
  {
    v10 = a2[13];
    if ([result count] < v10)
    {
      do
      {
        v11 = [v3[10] count];
        objc_opt_self();
        os_unfair_lock_lock_with_options();
        v12 = [qword_1ED4BE7E8 objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v11)}];
        if (!v12)
        {
          v13 = [[NSSQLColumn alloc] initWithColumnName:@"0" sqlType:1];
          v12 = v13;
          if (v13)
          {
            *&v13->super._flags &= ~1u;
            v13->super._fetchIndex = v11;
          }

          [qword_1ED4BE7E8 setObject:v13 forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v11)}];
        }

        os_unfair_lock_unlock(&_MergedGlobals_91);
        [v3[10] addObject:v12];
      }

      while ([v3[10] count] < v10);
    }

    v14 = v3[10];

    return [v14 addObject:a2];
  }

  return result;
}

- (uint64_t)_addForeignOrderKeyForToOne:(void *)one entity:
{
  v19 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_19;
  }

  v5 = result;
  result = [a2 sourceEntity];
  if (!a2)
  {
    goto LABEL_19;
  }

  v6 = a2[10];
  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = result;
  result = [*(v5 + 40) objectForKey:{objc_msgSend(a2[10], "name")}];
  if (result)
  {
    goto LABEL_19;
  }

  [*(v5 + 40) setObject:v6 forKey:{objc_msgSend(v6, "name")}];
  v8 = *(v5 + 248);
  if (v8)
  {
    _PF_Leopard_CFDictionarySetValue(v8, [v6 name], v6);
  }

  if (v7 != one)
  {
    v9 = *(v5 + 104);
    if (!v9)
    {
      v9 = objc_opt_new();
      *(v5 + 104) = v9;
    }

    [v9 addObject:v6];
    if (!one)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  [(NSSQLEntity *)v5 _addColumnToFetch:v6];
  if (one)
  {
LABEL_11:
    one = one[19];
  }

LABEL_12:
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  result = [one countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (result)
  {
    v10 = result;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(one);
        }

        [(NSSQLEntity *)*(*(&v14 + 1) + 8 * v12) _addForeignOrderKeyForToOne:a2 entity:*(*(&v14 + 1) + 8 * v12)];
        ++v12;
      }

      while (v10 != v12);
      result = [one countByEnumeratingWithState:&v14 objects:v18 count:16];
      v10 = result;
    }

    while (result);
  }

LABEL_19:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSSQLToOne)_addVirtualToOneForToMany:(NSSQLToOne *)many withInheritedProperty:
{
  v29 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    manyCopy = 0;
    goto LABEL_44;
  }

  manyCopy = many;
  v6 = *(self + 16);
  if (v6)
  {
    v7 = *(v6 + 57);
    if (many)
    {
      v8 = 0;
      goto LABEL_7;
    }

    *(v6 + 58) = 1;
    v9 = v7;
    goto LABEL_6;
  }

  v9 = 0;
  v8 = 0;
  v7 = 0;
  if (!many)
  {
LABEL_6:
    manyCopy = [[NSSQLToOne alloc] initWithEntity:self inverseToMany:a2];
    v8 = 1;
    v7 = v9;
  }

LABEL_7:
  foreignKey = [(NSSQLToOne *)manyCopy foreignKey];
  [*(self + 40) setObject:foreignKey forKey:{objc_msgSend(foreignKey, "name")}];
  if ((v7 & 1) == 0)
  {
    _PF_Leopard_CFDictionarySetValue(*(self + 248), [foreignKey name], foreignKey);
  }

  if (v8)
  {
    [(NSSQLEntity *)self _addColumnToFetch:foreignKey];
  }

  else
  {
    v11 = *(self + 96);
    if (!v11)
    {
      v11 = objc_opt_new();
      *(self + 96) = v11;
    }

    [v11 addObject:foreignKey];
  }

  if (manyCopy)
  {
    foreignEntityKey = manyCopy->_foreignEntityKey;
    if (foreignEntityKey)
    {
      [*(self + 40) setObject:foreignEntityKey forKey:{-[NSSQLForeignEntityKey name](manyCopy->_foreignEntityKey, "name")}];
      if ((v7 & 1) == 0)
      {
        _PF_Leopard_CFDictionarySetValue(*(self + 248), [(NSSQLForeignEntityKey *)foreignEntityKey name], foreignEntityKey);
      }

      if (v8)
      {
        [(NSSQLEntity *)self _addColumnToFetch:?];
      }

      else
      {
        v13 = *(self + 88);
        if (!v13)
        {
          v13 = objc_opt_new();
          *(self + 88) = v13;
        }

        [v13 addObject:foreignEntityKey];
      }
    }
  }

  [*(self + 40) setObject:manyCopy forKey:{-[NSSQLRelationship name](manyCopy, "name")}];
  if (v7)
  {
    if (!v8)
    {
      goto LABEL_25;
    }

LABEL_28:
    [(NSSQLRelationship *)manyCopy _setInverseRelationship:a2];

    if (!manyCopy)
    {
      goto LABEL_37;
    }

LABEL_29:
    foreignOrderKey = manyCopy->_foreignOrderKey;
    if (foreignOrderKey)
    {
      [*(self + 40) setObject:foreignOrderKey forKey:{-[NSSQLForeignOrderKey name](manyCopy->_foreignOrderKey, "name")}];
      v15 = *(self + 248);
      if (v15)
      {
        _PF_Leopard_CFDictionarySetValue(v15, [(NSSQLForeignOrderKey *)foreignOrderKey name], foreignOrderKey);
      }

      if (v8)
      {
        [(NSSQLEntity *)self _addColumnToFetch:?];
      }

      else
      {
        v16 = *(self + 104);
        if (!v16)
        {
          v16 = objc_opt_new();
          *(self + 104) = v16;
        }

        [v16 addObject:foreignOrderKey];
      }
    }

    goto LABEL_37;
  }

  _PF_Leopard_CFDictionarySetValue(*(self + 248), [(NSSQLRelationship *)manyCopy name], manyCopy);
  if (v8)
  {
    goto LABEL_28;
  }

LABEL_25:
  if (manyCopy)
  {
    goto LABEL_29;
  }

LABEL_37:
  v17 = *(self + 152);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(NSSQLEntity *)*(*(&v24 + 1) + 8 * i) _addVirtualToOneForToMany:a2 withInheritedProperty:manyCopy];
      }

      v19 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v19);
  }

LABEL_44:
  v22 = *MEMORY[0x1E69E9840];
  return manyCopy;
}

- (uint64_t)addDerivedAttribute:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 256);
    if (!v4)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
      *(v3 + 256) = v4;
    }

    return [v4 addObject:a2];
  }

  return result;
}

- (uint64_t)_generateIDWithSuperEntity:(int)entity nextID:
{
  v21 = *MEMORY[0x1E69E9840];
  if (self)
  {
    entityDescription = [self entityDescription];
    if (a2)
    {
      *(self + 168) = [a2 rootEntity];
      *(self + 160) = a2;
      [(NSSQLEntity *)a2 _addSubentity:self];
    }

    else
    {
      *(self + 168) = self;
    }

    *(self + 184) = entity;
    model = [self model];
    if (model)
    {
      [*(model + 32) addObject:self];
      CFRetain(self);
    }

    v8 = (entity + 1);
    _sortedSubentities = [(NSEntityDescription *)entityDescription _sortedSubentities];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [_sortedSubentities countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(_sortedSubentities);
          }

          v8 = -[NSSQLEntity _generateIDWithSuperEntity:nextID:]([*(self + 16) entityNamed:{objc_msgSend(*(*(&v16 + 1) + 8 * v13++), "name")}], self, v8);
        }

        while (v11 != v13);
        v11 = [_sortedSubentities countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }

    *(self + 188) = v8 - 1;
  }

  else
  {
    v8 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v8;
}

- (uint64_t)_collectFKSlots:(void *)slots error:
{
  v34 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AD50]);
    foreignKeyColumns = [*(self + 160) foreignKeyColumns];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    selfCopy = self;
    v8 = *(self + 96);
    v9 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v29;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v28 + 1) + 8 * i);
          slot = [v13 slot];
          if ([a2 containsIndex:slot] && (objc_msgSend(foreignKeyColumns, "containsObject:", v13) & 1) == 0)
          {
            if (slots)
            {
              *slots = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", objc_msgSend(objc_msgSend(v13, "toOneRelationship"), "propertyDescription"), @"relationship"}];
            }

            goto LABEL_22;
          }

          [v6 addIndex:slot];
        }

        v10 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    [v6 addIndexes:a2];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = *(selfCopy + 152);
    v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
LABEL_13:
      v19 = 0;
      while (1)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        if (([(NSSQLEntity *)*(*(&v24 + 1) + 8 * v19) _collectFKSlots:v6 error:slots]& 1) != 0)
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
          v20 = 0;
          if (v17)
          {
            goto LABEL_13;
          }

          goto LABEL_23;
        }
      }

LABEL_22:
      v20 = 1;
    }

    else
    {
      v20 = 0;
    }

LABEL_23:
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (uint64_t)_entityIsBroken:(uint64_t)broken
{
  if (!broken || *(broken + 168) != broken)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v6 = [(NSSQLEntity *)broken _collectFKSlots:v5 error:a2];

  return v6;
}

- (uint64_t)_generateAttributeDerivations:(uint64_t)result
{
  v109 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_77;
  }

  v3 = result;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v4 = *(result + 256);
  v5 = [v4 countByEnumeratingWithState:&v75 objects:v108 count:16];
  if (!v5)
  {
    result = 1;
    goto LABEL_77;
  }

  v6 = v5;
  v7 = MEMORY[0x1E695E0F0];
  v8 = *v76;
  v9 = 0x1E695D000uLL;
LABEL_4:
  v10 = 0;
  while (1)
  {
    if (*v76 != v8)
    {
      objc_enumerationMutation(v4);
    }

    v69 = v10;
    v11 = *(*(&v75 + 1) + 8 * v10);
    v12 = [*(v9 + 4008) set];
    propertyDescription = [v11 propertyDescription];
    v74 = 0;
    v14 = [objc_msgSend(propertyDescription "derivationExpression")];
    if (!v14)
    {
      v41 = *MEMORY[0x1E695D940];
      v42 = *MEMORY[0x1E696AA08];
      v106[0] = @"derived attribute";
      v106[1] = v42;
      v107[0] = propertyDescription;
      v107[1] = v74;
      v43 = [MEMORY[0x1E695DF30] exceptionWithName:v41 reason:@"Invalid keypaths found in derived attribute (derivationExpression)" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v107, v106, 2)}];
      v44 = *MEMORY[0x1E696A250];
      v104 = @"NSUnderlyingException";
      v105 = v43;
      v45 = [MEMORY[0x1E696ABC0] errorWithDomain:v44 code:134097 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v105, &v104, 1)}];
      if (v45)
      {
        goto LABEL_66;
      }

      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v101 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLEntity.m";
        v102 = 1024;
        v103 = 1523;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v36 = _PFLogGetLogStream(17);
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_76;
      }

      *buf = 136315394;
      v101 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLEntity.m";
      v102 = 1024;
      v103 = 1523;
      goto LABEL_54;
    }

    [v12 addObjectsFromArray:{objc_msgSend(v14, "allObjects")}];
    if (![propertyDescription filteringPredicate])
    {
      goto LABEL_11;
    }

    v15 = [objc_msgSend(propertyDescription "filteringPredicate")];
    if (!v15)
    {
      v51 = *MEMORY[0x1E695D940];
      v52 = *MEMORY[0x1E696AA08];
      v98[0] = @"derived attribute";
      v98[1] = v52;
      v99[0] = propertyDescription;
      v99[1] = v74;
      v53 = [MEMORY[0x1E695DF30] exceptionWithName:v51 reason:@"Invalid keypaths found in derived attribute (filteringPredicate)" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v99, v98, 2)}];
      v54 = *MEMORY[0x1E696A250];
      v96 = @"NSUnderlyingException";
      v97 = v53;
      v45 = [MEMORY[0x1E696ABC0] errorWithDomain:v54 code:134097 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v97, &v96, 1)}];
      if (v45)
      {
LABEL_66:
        if (a2)
        {
          *a2 = v45;
        }

        goto LABEL_76;
      }

      v55 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v101 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLEntity.m";
        v102 = 1024;
        v103 = 1532;
        _os_log_error_impl(&dword_18565F000, v55, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v36 = _PFLogGetLogStream(17);
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_76;
      }

      *buf = 136315394;
      v101 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLEntity.m";
      v102 = 1024;
      v103 = 1532;
LABEL_54:
      _os_log_fault_impl(&dword_18565F000, v36, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      goto LABEL_76;
    }

    [v12 addObjectsFromArray:{objc_msgSend(v15, "allObjects")}];
LABEL_11:
    if (![v12 count])
    {
      derivedAttributesExtension = [(NSSQLEntity *)v3 derivedAttributesExtension];
      [(NSSQLEntity_DerivedAttributesExtension *)derivedAttributesExtension addDerivationKeypath:v7 forAttribute:v11];
      goto LABEL_38;
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v67 = [v12 countByEnumeratingWithState:&v70 objects:v95 count:16];
    if (v67)
    {
      break;
    }

LABEL_38:
    v10 = v69 + 1;
    if (v69 + 1 == v6)
    {
      v6 = [v4 countByEnumeratingWithState:&v75 objects:v108 count:16];
      result = 1;
      if (!v6)
      {
        goto LABEL_77;
      }

      goto LABEL_4;
    }
  }

  v68 = *v71;
  v63 = v4;
  v64 = a2;
  v65 = propertyDescription;
  v66 = v3;
  v61 = v8;
  v62 = v6;
  while (2)
  {
    v16 = 0;
LABEL_15:
    if (*v71 != v68)
    {
      objc_enumerationMutation(v12);
    }

    v17 = [*(*(&v70 + 1) + 8 * v16) componentsSeparatedByString:@"."];
    v18 = [v17 count];
    if (!v18)
    {
LABEL_34:
      if (++v16 == v67)
      {
        v29 = [v12 countByEnumeratingWithState:&v70 objects:v95 count:16];
        v4 = v63;
        a2 = v64;
        v3 = v66;
        v8 = v61;
        v6 = v62;
        v7 = MEMORY[0x1E695E0F0];
        v9 = 0x1E695D000;
        v67 = v29;
        if (!v29)
        {
          goto LABEL_38;
        }

        continue;
      }

      goto LABEL_15;
    }

    break;
  }

  v19 = v18;
  v20 = 0;
  v21 = v18 - 1;
  destinationEntity = v66;
  while (1)
  {
    v23 = [v17 objectAtIndexedSubscript:v20];
    if ([v23 hasPrefix:@"@"])
    {
      break;
    }

    if (!destinationEntity || (v24 = [(objc_class *)destinationEntity[1].super.isa objectForKey:v23]) == 0)
    {
      v31 = *MEMORY[0x1E695D940];
      v89[0] = @"derived attribute";
      v89[1] = @"component";
      v90[0] = v65;
      v90[1] = v23;
      v32 = [MEMORY[0x1E695DF30] exceptionWithName:v31 reason:@"Invalid keypaths found in derived attribute (can't find keypath component)" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v90, v89, 2)}];
      v33 = *MEMORY[0x1E696A250];
      v87 = @"NSUnderlyingException";
      v88 = v32;
      v34 = [MEMORY[0x1E696ABC0] errorWithDomain:v33 code:134097 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v88, &v87, 1)}];
      if (!v34)
      {
        v35 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v101 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLEntity.m";
          v102 = 1024;
          v103 = 1565;
          _os_log_error_impl(&dword_18565F000, v35, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v36 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v101 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLEntity.m";
          v102 = 1024;
          v103 = 1565;
          goto LABEL_54;
        }

        goto LABEL_76;
      }

LABEL_48:
      if (v64)
      {
        *v64 = v34;
      }

      goto LABEL_76;
    }

    v25 = v24;
    v26 = [objc_msgSend(v24 "propertyDescription")];
    if (v26 == 6)
    {
      v37 = *MEMORY[0x1E695D940];
      v85 = @"derived attribute";
      v86 = v65;
      v38 = [MEMORY[0x1E695DF30] exceptionWithName:v37 reason:@"Invalid keypaths found in derived attribute (derived attribute found in dependency chain)" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v86, &v85, 1)}];
      v39 = *MEMORY[0x1E696A250];
      v83 = @"NSUnderlyingException";
      v84 = v38;
      v34 = [MEMORY[0x1E696ABC0] errorWithDomain:v39 code:134097 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v84, &v83, 1)}];
      if (v34)
      {
        goto LABEL_48;
      }

      v40 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v101 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLEntity.m";
        v102 = 1024;
        v103 = 1572;
        _os_log_error_impl(&dword_18565F000, v40, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v36 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v101 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLEntity.m";
        v102 = 1024;
        v103 = 1572;
        goto LABEL_54;
      }

      goto LABEL_76;
    }

    if (v21 == v20)
    {
      derivedAttributesExtension2 = [(NSSQLEntity *)destinationEntity derivedAttributesExtension];
      [(NSSQLEntity_DerivedAttributesExtension *)derivedAttributesExtension2 addDerivationKeypath:v17 forAttribute:v11];
    }

    else if (v26 == 2)
    {
      if (([objc_msgSend(v17 objectAtIndexedSubscript:{v20 + 1), "hasPrefix:", @"@"}] & 1) == 0)
      {
        v47 = *MEMORY[0x1E695D940];
        v81 = @"derived attribute";
        v82 = v65;
        v48 = [MEMORY[0x1E695DF30] exceptionWithName:v47 reason:@"Invalid keypaths found in derived attribute (non-terminal attribute not followed by a function)" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v82, &v81, 1)}];
        v49 = *MEMORY[0x1E696A250];
        v79 = @"NSUnderlyingException";
        v80 = v48;
        v34 = [MEMORY[0x1E696ABC0] errorWithDomain:v49 code:134097 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v80, &v79, 1)}];
        if (v34)
        {
          goto LABEL_48;
        }

        v50 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v101 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLEntity.m";
          v102 = 1024;
          v103 = 1585;
          _os_log_error_impl(&dword_18565F000, v50, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v36 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v101 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLEntity.m";
          v102 = 1024;
          v103 = 1585;
          goto LABEL_54;
        }

        goto LABEL_76;
      }
    }

    else if (v26 == 4)
    {
      destinationEntity = [v25 destinationEntity];
    }

    if (v19 == ++v20)
    {
      goto LABEL_34;
    }
  }

  if ([@"@count" caseInsensitiveCompare:v23])
  {
    if (destinationEntity)
    {
      derivedAttributesExtension3 = [(NSSQLEntity *)destinationEntity derivedAttributesExtension];
      [(NSSQLEntity_DerivedAttributesExtension *)derivedAttributesExtension3 addDerivationKeypath:v17 forAttribute:v11];
    }

    goto LABEL_34;
  }

  v56 = *MEMORY[0x1E695D940];
  v93 = @"derived attribute";
  v94 = v65;
  v57 = [MEMORY[0x1E695DF30] exceptionWithName:v56 reason:@"Invalid keypaths found in derived attribute (unsupported function)" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v94, &v93, 1)}];
  v58 = *MEMORY[0x1E696A250];
  v91 = @"NSUnderlyingException";
  v92 = v57;
  v34 = [MEMORY[0x1E696ABC0] errorWithDomain:v58 code:134097 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v92, &v91, 1)}];
  if (v34)
  {
    goto LABEL_48;
  }

  v59 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v101 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLEntity.m";
    v102 = 1024;
    v103 = 1554;
    _os_log_error_impl(&dword_18565F000, v59, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v36 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v101 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLEntity.m";
    v102 = 1024;
    v103 = 1554;
    goto LABEL_54;
  }

LABEL_76:
  result = 0;
LABEL_77:
  v60 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)sqlAttributesForCompositeAttributeName:(uint64_t)name
{
  if (!name)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v2 = [*(name + 272) objectForKey:a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = MEMORY[0x1E695DEC8];

  return [v4 arrayWithArray:v3];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AEC0];
  name = [(NSSQLEntity *)self name];
  if (self)
  {
    entityID = self->_entityID;
  }

  else
  {
    entityID = 0;
  }

  entityID = [v4 stringWithFormat:@"<NSSQLEntity %@ id=%d>", name, entityID];
  objc_autoreleasePoolPop(v3);

  return entityID;
}

- (void)copyValuesForReadOnlyFetch:(id)fetch
{
  self->_model = [fetch model];
  self->_entityDescription = [fetch entityDescription];
  self->_tableName = [objc_msgSend(fetch "tableName")];
  v5 = objc_alloc_init(NSSQLPrimaryKey);
  self->_primaryKey = v5;
  if (fetch)
  {
    v6 = *(fetch + 16);
  }

  else
  {
    v6 = 0;
  }

  [(NSSQLPrimaryKey *)v5 copyValuesForReadOnlyFetch:v6];
  v7 = objc_alloc_init(NSSQLEntityKey);
  self->_entityKey = v7;
  if (fetch)
  {
    [(NSSQLColumn *)v7 copyValuesForReadOnlyFetch:*(fetch + 17)];
    self->_entityID = *(fetch + 46);
    v8 = *(fetch + 47);
  }

  else
  {
    [(NSSQLColumn *)v7 copyValuesForReadOnlyFetch:0];
    v8 = 0;
    self->_entityID = 0;
  }

  self->_subentityMaxID = v8;
  self->_columnsToFetch = objc_alloc_init(MEMORY[0x1E695DF70]);
  self->_attrColumns = 0;
  self->_ekColumns = 0;
  self->_fokColumns = 0;
  self->_fkColumns = 0;
  self->_properties = objc_alloc_init(MEMORY[0x1E695DF90]);
  self->_rootEntity = self;
  self->_propertyMapping = [MEMORY[0x1E695DFB0] null];
}

- (uint64_t)addPropertiesForReadOnlyFetch:(uint64_t)fetch keys:(void *)keys context:
{
  v22 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v6 = result;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [a2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(a2);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          if (v11)
          {
            v11[2] = v6;
          }

          propertyType = [v11 propertyType];
          if (propertyType == 7)
          {
            [*(v6 + 40) setObject:v11 forKey:{objc_msgSend(v11, "name")}];
            if (v11)
            {
              v13 = v11[9];
              if (v13)
              {
                *(v13 + 16) = v6;
                [(NSSQLEntity *)v6 _addColumnToFetch:v13];
              }
            }

            foreignKey = [v11 foreignKey];
            if (foreignKey)
            {
              *(foreignKey + 16) = v6;
            }

            [(NSSQLEntity *)v6 _addColumnToFetch:foreignKey];
          }

          else
          {
            if (propertyType != 1)
            {
              [keys setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D930], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Trying to add a non-attribute, non-to-one property to an entity: %@", objc_msgSend(v11, "name")), 0), @"NSUnderlyingException"}];
              result = 0;
              goto LABEL_22;
            }

            [(NSSQLEntity *)v6 _addColumnToFetch:v11];
            [*(v6 + 40) setObject:v11 forKey:{objc_msgSend(v11, "name")}];
          }
        }

        v8 = [a2 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    *(v6 + 240) = [[NSKnownKeysMappingStrategy alloc] initForKeys:fetch];
    result = 1;
  }

LABEL_22:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)rtreeIndexes
{
  if (result)
  {
    v1 = result;
    result = result[29];
    if (!result)
    {
      result = objc_alloc_init(MEMORY[0x1E695DF90]);
      v1[29] = result;
    }
  }

  return result;
}

- (void)indexForIndexDescription:(void *)result
{
  if (result)
  {
    v3 = result;
    if (a2 && [a2[2] count] && !objc_msgSend(objc_msgSend(a2[2], "firstObject"), "collationType"))
    {
      v6 = [(NSSQLIndex *)[NSSQLBinaryIndex alloc] initForIndexDescription:a2 sqlEntity:v3];

      return v6;
    }

    else
    {
      v4 = v3[29];
      name = [a2 name];

      return [v4 objectForKey:name];
    }
  }

  return result;
}

- (uint64_t)rtreeIndexForIndexNamed:(uint64_t)named
{
  if (!named)
  {
    return 0;
  }

  v3 = *(named + 232);
  if (a2)
  {

    return [v3 objectForKey:a2];
  }

  if ([v3 count] != 1)
  {
    return 0;
  }

  allValues = [*(named + 232) allValues];

  return [allValues firstObject];
}

uint64_t __61__NSSQLEntity_DerivedAttributesExtension__generateTriggerSQL__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [NSSQLDerivedAttributeSQLGenerator generateSQLForDerivedAttribute:a2 keypaths:a3];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 objectAtIndexedSubscript:{0, 0}];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(a1 + 32) + 24) addObject:*(*(&v12 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [objc_msgSend(*(*(a1 + 32) + 32) valueForKey:{@"dropStatements", "addObjectsFromArray:", objc_msgSend(objc_msgSend(v4, "objectAtIndexedSubscript:", 1), "valueForKey:", @"dropStatements"}];
  [objc_msgSend(*(*(a1 + 32) + 32) valueForKey:{@"dataStatements", "addObjectsFromArray:", objc_msgSend(objc_msgSend(v4, "objectAtIndexedSubscript:", 1), "valueForKey:", @"dataStatements"}];
  result = [objc_msgSend(*(*(a1 + 32) + 32) valueForKey:{@"triggerCreationStatements", "addObjectsFromArray:", objc_msgSend(objc_msgSend(v4, "objectAtIndexedSubscript:", 1), "valueForKey:", @"triggerCreationStatements"}];
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

@end