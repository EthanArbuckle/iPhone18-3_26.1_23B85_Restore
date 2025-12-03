@interface NSSQLModel
- (BOOL)_generateModelWithError:(id *)error;
- (id)entityForID:(unint64_t)d;
- (id)initWithManagedObjectModel:(uint64_t)model configurationName:(char)name retainHashHack:(uint64_t)hack brokenHashVersion:;
- (uint64_t)_precomputedKeyOrderForEntity:(uint64_t)result;
- (void)_sqlEntityWithRenamingIdentifier:(uint64_t)identifier;
- (void)dealloc;
@end

@implementation NSSQLModel

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  entityDescriptionToSQLMap = self->_entityDescriptionToSQLMap;
  if (entityDescriptionToSQLMap)
  {
    PF_FREE_OBJECT_ARRAY(entityDescriptionToSQLMap);
    self->_entityDescriptionToSQLMap = 0;
  }

  entities = self->_entities;
  if (entities)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(NSArray *)entities countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(entities);
          }

          CFRelease(*(*(&v11 + 1) + 8 * v8++));
        }

        while (v6 != v8);
        v6 = [(NSArray *)entities countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    CFRelease(self->_entities);
    self->_entities = 0;
  }

  self->_entitiesByName = 0;
  self->_mom = 0;
  v10.receiver = self;
  v10.super_class = NSSQLModel;
  [(NSStoreMapping *)&v10 dealloc];
  v9 = *MEMORY[0x1E69E9840];
}

- (id)initWithManagedObjectModel:(uint64_t)model configurationName:(char)name retainHashHack:(uint64_t)hack brokenHashVersion:
{
  selfCopy = self;
  v29 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    goto LABEL_38;
  }

  if (model)
  {
    v10 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          modelCopy2 = model;
          v12 = "CoreData: error: NSSQLModel initalized with a configuration name (%@) - the configuration will be ignored.\n";
LABEL_40:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(2);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          modelCopy2 = model;
          v12 = "CoreData: warning: NSSQLModel initalized with a configuration name (%@) - the configuration will be ignored.\n";
          goto LABEL_40;
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    _NSCoreDataLog_console(v13, "NSSQLModel initalized with a configuration name (%@) - the configuration will be ignored.", model);
    objc_autoreleasePoolPop(v10);
  }

  v26.receiver = selfCopy;
  v26.super_class = NSSQLModel;
  selfCopy = objc_msgSendSuper2(&v26, sel_init);
  if (selfCopy)
  {
    *(selfCopy + 2) = a2;
    *(selfCopy + 4) = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(selfCopy + 5) = PF_CALLOC_OBJECT_ARRAY([objc_msgSend(a2 "entitiesByName")]);
    *(selfCopy + 6) = hack;
    *(selfCopy + 56) = name;
    v14 = a2 && a2[2] != 0;
    *(selfCopy + 57) = v14;
    *(selfCopy + 15) = [objc_msgSend(MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(a2, "_modelsReferenceIDOffset")), "unsignedIntValue"}];
    *(selfCopy + 16) = 0;
    v25 = 0;
    if (![selfCopy _generateModelWithError:&v25])
    {
      v15 = PFUseToolchainBehaviors();
      v16 = objc_autoreleasePoolPush();
      if (v15)
      {
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v17 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              modelCopy2 = v25;
              _os_log_error_impl(&dword_18565F000, v17, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to generate optimized model (sql model generation failed %@)\n", buf, 0xCu);
            }
          }

          else
          {
            v20 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              modelCopy2 = v25;
              _os_log_impl(&dword_18565F000, v20, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Unable to generate optimized model (sql model generation failed %@)\n", buf, 0xCu);
            }
          }
        }

        v21 = v25;
        if (_pflogging_catastrophic_mode)
        {
          v22 = 1;
        }

        else
        {
          v22 = 4;
        }

        goto LABEL_37;
      }

      _pflogInitialize(2);
      if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v18 = _PFLogGetLogStream(1);
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_34;
          }

          *buf = 138412290;
          modelCopy2 = v25;
          v19 = "CoreData: error: Unable to generate optimized model (sql model generation failed %@)\n";
        }

        else
        {
          v18 = _PFLogGetLogStream(2);
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_34;
          }

          *buf = 138412290;
          modelCopy2 = v25;
          v19 = "CoreData: warning: Unable to generate optimized model (sql model generation failed %@)\n";
        }

        _os_log_error_impl(&dword_18565F000, v18, OS_LOG_TYPE_ERROR, v19, buf, 0xCu);
      }

LABEL_34:
      v21 = v25;
      if (_pflogging_catastrophic_mode)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

LABEL_37:
      _NSCoreDataLog_console(v22, "Unable to generate optimized model (sql model generation failed %@)", v21);
      objc_autoreleasePoolPop(v16);

      selfCopy = 0;
    }
  }

LABEL_38:
  v23 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (BOOL)_generateModelWithError:(id *)error
{
  v125 = *MEMORY[0x1E69E9840];
  v77 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  managedObjectModel = [(NSSQLModel *)self managedObjectModel];
  v5 = [(NSManagedObjectModel *)managedObjectModel _sortedEntitiesForConfiguration:?];
  v75 = [v5 count];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v75];
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v112 objects:v124 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v113;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v113 != v9)
        {
          objc_enumerationMutation(v5);
        }

        [v6 addObject:{objc_msgSend(*(*(&v112 + 1) + 8 * i), "name")}];
      }

      v8 = [v5 countByEnumeratingWithState:&v112 objects:v124 count:16];
    }

    while (v8);
  }

  self->_entitiesByName = [[NSKnownKeysDictionary alloc] initForKeys:v6];

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v11 = [v5 countByEnumeratingWithState:&v108 objects:v123 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v109;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v109 != v13)
        {
          objc_enumerationMutation(v5);
        }

        v15 = [[NSSQLEntity alloc] initWithModel:self entityDescription:*(*(&v108 + 1) + 8 * j)];
        [(NSKnownKeysDictionary *)self->_entitiesByName setObject:v15 forKey:[(NSSQLEntity *)v15 name]];
      }

      v12 = [v5 countByEnumeratingWithState:&v108 objects:v123 count:16];
    }

    while (v12);
  }

  allValues = [(NSKnownKeysDictionary *)self->_entitiesByName allValues];
  entityIDOffset = self->_entityIDOffset;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v18 = [allValues countByEnumeratingWithState:&v104 objects:v122 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = entityIDOffset + 1;
    v21 = *v105;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v105 != v21)
        {
          objc_enumerationMutation(allValues);
        }

        v23 = *(*(&v104 + 1) + 8 * k);
        if (![objc_msgSend(v23 "entityDescription")])
        {
          v20 = [(NSSQLEntity *)v23 _generateIDWithSuperEntity:v20 nextID:?];
        }
      }

      v19 = [allValues countByEnumeratingWithState:&v104 objects:v122 count:16];
    }

    while (v19);
  }

  errorCopy = error;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v24 = [allValues countByEnumeratingWithState:&v100 objects:v121 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v101;
    do
    {
      for (m = 0; m != v25; ++m)
      {
        if (*v101 != v26)
        {
          objc_enumerationMutation(allValues);
        }

        v28 = *(*(&v100 + 1) + 8 * m);
        v29 = objc_autoreleasePoolPush();
        if (v28)
        {
          if (!*(v28 + 160))
          {
            [(NSSQLEntity *)v28 _generateProperties];
          }

          v30 = *(v28 + 184);
          if (v30 > self->_lastEntityID)
          {
            self->_lastEntityID = v30;
          }
        }

        objc_autoreleasePoolPop(v29);
      }

      v25 = [allValues countByEnumeratingWithState:&v100 objects:v121 count:16];
    }

    while (v25);
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v31 = [allValues countByEnumeratingWithState:&v96 objects:v120 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v97;
    do
    {
      for (n = 0; n != v32; ++n)
      {
        if (*v97 != v33)
        {
          objc_enumerationMutation(allValues);
        }

        v35 = *(*(&v96 + 1) + 8 * n);
        v36 = objc_autoreleasePoolPush();
        [(NSSQLEntity *)v35 _generateInverseRelationshipsAndMore];
        objc_autoreleasePoolPop(v36);
      }

      v32 = [allValues countByEnumeratingWithState:&v96 objects:v120 count:16];
    }

    while (v32);
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v37 = [allValues countByEnumeratingWithState:&v92 objects:v119 count:16];
  if (!v37)
  {
LABEL_51:
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v42 = [allValues countByEnumeratingWithState:&v88 objects:v118 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v89;
      do
      {
        for (ii = 0; ii != v43; ++ii)
        {
          if (*v89 != v44)
          {
            objc_enumerationMutation(allValues);
          }

          v46 = *(*(&v88 + 1) + 8 * ii);
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          attributes = [v46 attributes];
          v48 = [attributes countByEnumeratingWithState:&v84 objects:v117 count:16];
          if (v48)
          {
            v49 = v48;
            v50 = *v85;
            do
            {
              for (jj = 0; jj != v49; ++jj)
              {
                if (*v85 != v50)
                {
                  objc_enumerationMutation(attributes);
                }

                v52 = *(*(&v84 + 1) + 8 * jj);
                if (v52 && v52[24] == 1)
                {
                }
              }

              v49 = [attributes countByEnumeratingWithState:&v84 objects:v117 count:16];
            }

            while (v49);
          }
        }

        v43 = [allValues countByEnumeratingWithState:&v88 objects:v118 count:16];
      }

      while (v43);
    }

    v53 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v75];
    if (!v75)
    {

      self->_entitiesByName = [[NSKnownKeysDictionary alloc] initForKeys:v53];
      v56 = 0;
      v83 = 0;
LABEL_89:
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v61 = [managedObjectModel countByEnumeratingWithState:&v79 objects:v116 count:16];
      if (v61)
      {
        v62 = v61;
        v63 = *v80;
        do
        {
          v64 = 0;
          do
          {
            if (*v80 != v63)
            {
              objc_enumerationMutation(managedObjectModel);
            }

            v65 = *(*(&v79 + 1) + 8 * v64);
            if (v65)
            {
              v66 = v65[20];
            }

            else
            {
              v66 = 0;
            }

            self->_entityDescriptionToSQLMap[v66] = -[NSKnownKeysDictionary objectForKey:](self->_entitiesByName, "objectForKey:", [v65 name]);
            ++v64;
          }

          while (v62 != v64);
          v67 = [managedObjectModel countByEnumeratingWithState:&v79 objects:v116 count:16];
          v62 = v67;
        }

        while (v67);
      }

      entities = self->_entities;
      self->_entities = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:entities];

      [v77 drain];
      v69 = self->_retainLeopardStyleDictionaries & v56;
      if (v69)
      {
        if (errorCopy)
        {
          v70 = MEMORY[0x1E696ABC0];
          v71 = *MEMORY[0x1E696A250];
          if (v83)
          {
            v72 = [MEMORY[0x1E695DF20] dictionaryWithObject:v83 forKey:*MEMORY[0x1E696AA08]];
          }

          else
          {
            v72 = 0;
          }

          *errorCopy = [v70 errorWithDomain:v71 code:134060 userInfo:v72];
        }
      }

      v60 = v69 ^ 1;
      goto LABEL_108;
    }

    for (kk = 0; kk != v75; ++kk)
    {
      [v53 addObject:{objc_msgSend(-[NSArray objectAtIndex:](self->_entities, "objectAtIndex:", kk), "name")}];
    }

    self->_entitiesByName = [[NSKnownKeysDictionary alloc] initForKeys:v53];
    v55 = 0;
    v56 = 0;
    v83 = 0;
    while (1)
    {
      v57 = [(NSArray *)self->_entities objectAtIndex:v55];
      -[NSKnownKeysDictionary setObject:forKey:](self->_entitiesByName, "setObject:forKey:", v57, [v57 name]);
      if (self->_retainLeopardStyleDictionaries)
      {
        goto LABEL_76;
      }

      if (v57)
      {
        break;
      }

LABEL_85:
      if (v75 == ++v55)
      {
        goto LABEL_89;
      }
    }

    v58 = v57[31];
    if (v58)
    {
      _PF_Leopard_CFDictionaryDestroy(v58);
      v57[31] = 0;
      if (self->_retainLeopardStyleDictionaries)
      {
LABEL_76:
        if (!(v56 & 1 | !self->_hasVirtualToOnes))
        {
          if ([(NSSQLEntity *)v57 _entityIsBroken:?])
          {
            if (v83)
            {
              v59 = v83;
            }

            v56 = 1;
          }

          else
          {
            v56 = 0;
          }
        }

        if (!v57)
        {
          goto LABEL_85;
        }
      }
    }

    if (!v57[20])
    {
      [(NSSQLEntity *)v57 _organizeConstraints];
    }

    goto LABEL_85;
  }

  v38 = v37;
  v39 = *v93;
LABEL_45:
  v40 = 0;
  while (1)
  {
    if (*v93 != v39)
    {
      objc_enumerationMutation(allValues);
    }

    v41 = *(*(&v92 + 1) + 8 * v40);
    [(NSSQLEntity *)v41 _generateMulticolumnUniquenessConstraints];
    if (![(NSSQLEntity *)v41 _generateAttributeDerivations:error])
    {
      break;
    }

    if (v38 == ++v40)
    {
      v38 = [allValues countByEnumeratingWithState:&v92 objects:v119 count:16];
      if (!v38)
      {
        goto LABEL_51;
      }

      goto LABEL_45;
    }
  }

  v60 = 0;
LABEL_108:
  v73 = *MEMORY[0x1E69E9840];
  return v60 & 1;
}

- (void)_sqlEntityWithRenamingIdentifier:(uint64_t)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  if (!identifier)
  {
    goto LABEL_13;
  }

  v4 = [*(identifier + 24) objectForKey:a2];
  if (v4)
  {
    v5 = v4;
    if ([a2 isEqualToString:{objc_msgSend(objc_msgSend(v4, "entityDescription"), "renamingIdentifier")}])
    {
      goto LABEL_14;
    }
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [*(identifier + 24) allValues];
  v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v7)
  {
LABEL_13:
    v5 = 0;
    goto LABEL_14;
  }

  v8 = v7;
  v9 = *v14;
LABEL_6:
  v10 = 0;
  while (1)
  {
    if (*v14 != v9)
    {
      objc_enumerationMutation(allValues);
    }

    v5 = *(*(&v13 + 1) + 8 * v10);
    if ([objc_msgSend(objc_msgSend(v5 "entityDescription")])
    {
      break;
    }

    if (v8 == ++v10)
    {
      v8 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
      v5 = 0;
      if (v8)
      {
        goto LABEL_6;
      }

      break;
    }
  }

LABEL_14:
  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)entityForID:(unint64_t)d
{
  v3 = ~self->_entityIDOffset + d;
  if (v3 < 0 || v3 >= [(NSArray *)self->_entities count])
  {
    return 0;
  }

  entities = self->_entities;

  return [(NSArray *)entities objectAtIndexedSubscript:v3];
}

- (uint64_t)_precomputedKeyOrderForEntity:(uint64_t)result
{
  if (result)
  {
    if (*(result + 57) == 1)
    {
      v2 = *(result + 16);
      entityDescription = [a2 entityDescription];
      if (v2 && (v4 = *(v2 + 16)) != 0)
      {
        if (entityDescription)
        {
          v5 = *(entityDescription + 160);
        }

        else
        {
          v5 = 0;
        }

        return *(v4 + 8 * v5);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

@end