@interface _NSMappingModelBuilder
- (NSEntityMapping)newEntityMappingWithSource:(void *)source destination:(void *)destination;
- (NSMappingModel)newInferredMappingModel:(NSMappingModel *)model;
- (_NSMappingModelBuilder)initWithSourceModel:(id)model destinationModel:(id)destinationModel;
- (void)dealloc;
@end

@implementation _NSMappingModelBuilder

- (_NSMappingModelBuilder)initWithSourceModel:(id)model destinationModel:(id)destinationModel
{
  v8.receiver = self;
  v8.super_class = _NSMappingModelBuilder;
  v6 = [(_NSMappingModelBuilder *)&v8 init];
  if (v6)
  {
    v6->_sourceModel = model;
    v6->_destinationModel = destinationModel;
  }

  return v6;
}

- (void)dealloc
{
  self->_sourceModel = 0;

  self->_destinationModel = 0;
  self->_error = 0;
  v3.receiver = self;
  v3.super_class = _NSMappingModelBuilder;
  [(_NSMappingModelBuilder *)&v3 dealloc];
}

- (NSMappingModel)newInferredMappingModel:(NSMappingModel *)model
{
  modelCopy = model;
  v155 = *MEMORY[0x1E69E9840];
  if (!model)
  {
    goto LABEL_89;
  }

  model->_reserved2 = 0;

  modelCopy->_entityMappings = 0;
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v83 = modelCopy;
  reserved = modelCopy->_reserved;
  v5 = 0;
  v6 = [reserved countByEnumeratingWithState:&v97 objects:v148 count:16];
  if (v6)
  {
    v7 = *v98;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v98 != v7)
        {
          objc_enumerationMutation(reserved);
        }

        [v3 setObject:*(*(&v97 + 1) + 8 * i) forKey:{objc_msgSend(*(*(&v97 + 1) + 8 * i), "renamingIdentifier")}];
      }

      v5 += v6;
      v6 = [reserved countByEnumeratingWithState:&v97 objects:v148 count:16];
    }

    while (v6);
  }

  if (v5 != [v3 count])
  {
    v59 = objc_alloc(MEMORY[0x1E696ABC0]);
    v60 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Each source entity must have a unique renaming identifier" forKey:@"reason"];
    v61 = [v59 initWithDomain:*MEMORY[0x1E696A250] code:134190 userInfo:v60];
    v83->_entityMappings = v61;
    modelCopy = 0;
    if (a2)
    {
      *a2 = v61;
    }

    goto LABEL_88;
  }

  v9 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:2 * v5];
  obj = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2 * v5];
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  reserved1 = v83->_reserved1;
  v11 = 0;
  v12 = [reserved1 countByEnumeratingWithState:&v93 objects:v147 count:16];
  if (v12)
  {
    v13 = *v94;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v94 != v13)
        {
          objc_enumerationMutation(reserved1);
        }

        v15 = *(*(&v93 + 1) + 8 * j);
        renamingIdentifier = [v15 renamingIdentifier];
        v17 = -[_NSMappingModelBuilder newEntityMappingWithSource:destination:]([v3 objectForKey:renamingIdentifier], v15);
        [obj addObject:v17];
        [v9 addObject:renamingIdentifier];

        [v3 removeObjectForKey:{objc_msgSend(v15, "renamingIdentifier")}];
      }

      v11 += v12;
      v12 = [reserved1 countByEnumeratingWithState:&v93 objects:v147 count:16];
    }

    while (v12);
  }

  if (v11 != [v9 count])
  {
    v62 = objc_alloc(MEMORY[0x1E696ABC0]);
    v63 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Each destination entity must have a unique renaming identifier" forKey:@"reason"];
    v64 = [v62 initWithDomain:*MEMORY[0x1E696A250] code:134190 userInfo:v63];
    v83->_entityMappings = v64;
    if (a2)
    {
      *a2 = v64;
    }

    modelCopy = 0;
    v3 = v9;
    goto LABEL_88;
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v18 = [v3 countByEnumeratingWithState:&v89 objects:v146 count:16];
  if (v18)
  {
    v19 = *v90;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v90 != v19)
        {
          objc_enumerationMutation(v3);
        }

        v21 = -[_NSMappingModelBuilder newEntityMappingWithSource:destination:]([v3 objectForKey:*(*(&v89 + 1) + 8 * k)], 0);
        [obj addObject:v21];
      }

      v18 = [v3 countByEnumeratingWithState:&v89 objects:v146 count:16];
    }

    while (v18);
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v74 = [obj countByEnumeratingWithState:&v85 objects:v145 count:16];
  if (!v74)
  {
LABEL_72:
    modelCopy = objc_alloc_init(NSMappingModel);
    [(NSMappingModel *)modelCopy setEntityMappings:obj];
    goto LABEL_87;
  }

  v73 = *v86;
  v71 = *MEMORY[0x1E696A250];
LABEL_27:
  v82 = 0;
  while (1)
  {
    if (*v86 != v73)
    {
      objc_enumerationMutation(obj);
    }

    v22 = *(*(&v85 + 1) + 8 * v82);
    if ([v22 mappingType] == 4 || objc_msgSend(v22, "mappingType") == 5)
    {
      break;
    }

LABEL_70:
    if (++v82 == v74)
    {
      v74 = [obj countByEnumeratingWithState:&v85 objects:v145 count:16];
      if (!v74)
      {
        goto LABEL_72;
      }

      goto LABEL_27;
    }
  }

  v23 = [objc_msgSend(v83->_reserved "entitiesByName")];
  v78 = [objc_msgSend(v83->_reserved1 "entitiesByName")];
  v83->_reserved2 = v22;
  v80 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v24 = MEMORY[0x1E696ABC8];
  v25 = [MEMORY[0x1E696ABC8] expressionForVariable:@"manager"];
  v26 = MEMORY[0x1E695DEC8];
  v27 = [MEMORY[0x1E696ABC8] expressionForConstantValue:{objc_msgSend(v23, "name")}];
  v28 = [v24 expressionForFunction:v25 selectorName:@"fetchRequestForSourceEntityNamed:predicateString:" arguments:{objc_msgSend(v26, "arrayWithObjects:", v27, objc_msgSend(MEMORY[0x1E696ABC8], "expressionForConstantValue:", @"TRUEPREDICATE", 0)}];
  [v22 setSourceExpression:{+[NSFetchRequestExpression expressionForFetch:context:countOnly:](NSFetchRequestExpression, "expressionForFetch:context:countOnly:", v28, objc_msgSend(MEMORY[0x1E696ABC8], "expressionForFunction:selectorName:arguments:", objc_msgSend(MEMORY[0x1E696ABC8], "expressionForVariable:", @"manager", @"sourceContext", 0), 0)}];
  propertiesByName = [v23 propertiesByName];
  v30 = [propertiesByName count];
  v31 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v30];
  v141 = 0;
  v142 = &v141;
  v143 = 0x2020000000;
  v144 = 0;
  v32 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v30];
  v75 = v22;
  v135 = 0;
  v136 = &v135;
  v137 = 0x3052000000;
  v138 = __Block_byref_object_copy__6;
  v139 = __Block_byref_object_dispose__6;
  v134[0] = MEMORY[0x1E69E9820];
  v134[1] = 3221225472;
  v134[2] = __64___NSMappingModelBuilder_inferPropertyMappingsForEntityMapping___block_invoke;
  v134[3] = &unk_1E6EC1938;
  v134[6] = &v141;
  v134[4] = v31;
  v81 = v32;
  v134[5] = v32;
  v140 = v134;
  v128 = 0;
  v129 = &v128;
  v130 = 0x3052000000;
  v131 = __Block_byref_object_copy__6;
  v132 = __Block_byref_object_dispose__6;
  v127[0] = MEMORY[0x1E69E9820];
  v127[1] = 3221225472;
  v127[2] = __64___NSMappingModelBuilder_inferPropertyMappingsForEntityMapping___block_invoke_2;
  v127[3] = &unk_1E6EC1960;
  v127[4] = &v128;
  v127[5] = &v135;
  v133 = v127;
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  allValues = [propertiesByName allValues];
  v34 = [allValues countByEnumeratingWithState:&v123 objects:buf count:16];
  if (!v34)
  {
    goto LABEL_51;
  }

  v35 = *v124;
  do
  {
    for (m = 0; m != v34; ++m)
    {
      if (*v124 != v35)
      {
        objc_enumerationMutation(allValues);
      }

      v37 = *(*(&v123 + 1) + 8 * m);
      if (([v37 isTransient] & 1) == 0)
      {
        _propertyType = [v37 _propertyType];
        if (_propertyType > 5)
        {
          if (_propertyType == 7)
          {
            v41 = v129[5];
            elements = [v37 elements];
            renamingIdentifier2 = [v37 renamingIdentifier];
            v37 = elements;
          }

          else
          {
            if (_propertyType != 6)
            {
              continue;
            }

LABEL_46:
            renamingIdentifier2 = 0;
            v41 = v136[5];
          }

          (*(v41 + 16))(v41, v37, renamingIdentifier2);
          continue;
        }

        if (_propertyType == 2 || _propertyType == 4)
        {
          goto LABEL_46;
        }
      }
    }

    v34 = [allValues countByEnumeratingWithState:&v123 objects:buf count:16];
  }

  while (v34);
LABEL_51:
  v43 = v142[3];
  if (v43 == [v31 count])
  {
    propertiesByName2 = [v78 propertiesByName];
    v45 = [propertiesByName2 count];
    v46 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v45];
    v76 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v45];
    v79 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v45];
    v77 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v45];
    v47 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v119 = 0;
    v120 = &v119;
    v121 = 0x2020000000;
    v122 = 0;
    v113 = 0;
    v114 = &v113;
    v115 = 0x3052000000;
    v116 = __Block_byref_object_copy__6;
    v117 = __Block_byref_object_dispose__6;
    v112[0] = MEMORY[0x1E69E9820];
    v112[1] = 3221225472;
    v112[2] = __64___NSMappingModelBuilder_inferPropertyMappingsForEntityMapping___block_invoke_3;
    v112[3] = &unk_1E6EC1988;
    v112[4] = v31;
    v112[5] = v83;
    v72 = v46;
    v112[6] = v46;
    v112[7] = v76;
    v112[8] = v47;
    v112[9] = v79;
    v112[10] = v77;
    v112[11] = v81;
    v112[12] = &v119;
    v118 = v112;
    v106 = 0;
    v107 = &v106;
    v108 = 0x3052000000;
    v109 = __Block_byref_object_copy__6;
    v110 = __Block_byref_object_dispose__6;
    v105[0] = MEMORY[0x1E69E9820];
    v105[1] = 3221225472;
    v105[2] = __64___NSMappingModelBuilder_inferPropertyMappingsForEntityMapping___block_invoke_59;
    v105[3] = &unk_1E6EC19B0;
    v105[5] = &v106;
    v105[4] = v47;
    v105[6] = &v113;
    v111 = v105;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    allValues2 = [propertiesByName2 allValues];
    v49 = [allValues2 countByEnumeratingWithState:&v101 objects:v150 count:16];
    if (v49)
    {
      v50 = *v102;
      do
      {
        for (n = 0; n != v49; ++n)
        {
          if (*v102 != v50)
          {
            objc_enumerationMutation(allValues2);
          }

          v52 = *(*(&v101 + 1) + 8 * n);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v53 = v107[5];
            v149 = v52;
            (*(v53 + 16))(v53, [MEMORY[0x1E695DEC8] arrayWithObjects:&v149 count:1], 0);
          }

          else
          {
            (*(v114[5] + 16))();
          }
        }

        v49 = [allValues2 countByEnumeratingWithState:&v101 objects:v150 count:16];
      }

      while (v49);
    }

    if (v120[3])
    {
    }

    else
    {
      [v75 setAttributeMappings:v79];
      [v75 setRelationshipMappings:v77];

      userInfo = [v75 userInfo];
      v57 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(userInfo, "count") + 3}];
      v58 = v57;
      if (userInfo)
      {
        [v57 addEntriesFromDictionary:userInfo];
      }

      [v58 setObject:v81 forKey:_NSInferredRemovedPropertiesKey];
      [v58 setObject:v72 forKey:_NSInferredAddedPropertiesKey];
      [v58 setObject:v76 forKey:_NSInferredMappedPropertiesKey];
      [v75 setUserInfo:v58];
    }

    [v80 drain];
    v55 = *(v120 + 24) ^ 1;
    _Block_object_dispose(&v106, 8);
    _Block_object_dispose(&v113, 8);
    _Block_object_dispose(&v119, 8);
  }

  else
  {
    v54 = objc_alloc(MEMORY[0x1E696ABC0]);
    v83->_entityMappings = [v54 initWithDomain:v71 code:134190 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", @"Each property must have a unique renaming identifier", @"reason"}];

    [v80 drain];
    v55 = 0;
  }

  _Block_object_dispose(&v128, 8);
  _Block_object_dispose(&v135, 8);
  _Block_object_dispose(&v141, 8);
  if (v55)
  {
    goto LABEL_70;
  }

  entityMappings = v83->_entityMappings;
  if (entityMappings)
  {
    if (a2)
    {
      modelCopy = 0;
      *a2 = entityMappings;
      goto LABEL_87;
    }
  }

  else
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v152 = "/Library/Caches/com.apple.xbs/Sources/Persistence/_NSMappingModelBuilder.m";
      v153 = 1024;
      v154 = 132;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v67 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v152 = "/Library/Caches/com.apple.xbs/Sources/Persistence/_NSMappingModelBuilder.m";
      v153 = 1024;
      v154 = 132;
      _os_log_fault_impl(&dword_18565F000, v67, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    }
  }

  modelCopy = 0;
LABEL_87:
  v3 = obj;
LABEL_88:

LABEL_89:
  v68 = *MEMORY[0x1E69E9840];
  return modelCopy;
}

- (NSEntityMapping)newEntityMappingWithSource:(void *)source destination:(void *)destination
{
  v4 = objc_alloc_init(NSEntityMapping);
  if (source)
  {
    -[NSEntityMapping setSourceEntityName:](v4, "setSourceEntityName:", [source name]);
    -[NSEntityMapping setSourceEntityVersionHash:](v4, "setSourceEntityVersionHash:", [source versionHash]);
    v5 = 0;
    if (destination)
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = [v13 initWithFormat:@"%@%@_%@", _NSInferredMappingPrefix, @"Remove", objc_msgSend(source, "renamingIdentifier")];
    [(NSEntityMapping *)v4 setName:v14];

    v5 = 3;
    goto LABEL_11;
  }

  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = [v11 initWithFormat:@"%@%@_%@", _NSInferredMappingPrefix, @"Add", objc_msgSend(destination, "renamingIdentifier")];
  [(NSEntityMapping *)v4 setName:v12];

  v5 = 2;
  if (!destination)
  {
    goto LABEL_7;
  }

LABEL_3:
  -[NSEntityMapping setDestinationEntityName:](v4, "setDestinationEntityName:", [destination name]);
  -[NSEntityMapping setDestinationEntityVersionHash:](v4, "setDestinationEntityVersionHash:", [destination versionHash]);
  if (source)
  {
    v6 = [objc_msgSend(source "versionHash")];
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = _NSInferredMappingPrefix;
    renamingIdentifier = [source renamingIdentifier];
    if (v6)
    {
      v10 = [v7 initWithFormat:@"%@%@_%@", v8, @"Copy", renamingIdentifier];
      [(NSEntityMapping *)v4 setName:v10];

      v5 = 4;
    }

    else
    {
      v15 = [v7 initWithFormat:@"%@%@_%@", v8, @"Transform", renamingIdentifier];
      [(NSEntityMapping *)v4 setName:v15];

      v5 = 5;
      if ([source _isSchemaEqual:destination] && v4)
      {
        *&v4->_entityMappingFlags |= 2u;
        v5 = 5;
      }
    }
  }

LABEL_11:
  [(NSEntityMapping *)v4 setMappingType:v5];
  return v4;
}

@end