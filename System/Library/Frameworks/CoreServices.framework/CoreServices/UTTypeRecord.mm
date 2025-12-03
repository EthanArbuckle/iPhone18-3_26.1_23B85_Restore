@interface UTTypeRecord
+ (BOOL)_typeIdentifier:(id)identifier conformsToTypeIdentifier:(id)typeIdentifier;
+ (UTTypeRecord)typeRecordWithTag:(id)tag ofClass:(id)class conformingToIdentifier:(id)identifier;
+ (UTTypeRecord)typeRecordWithTag:(id)tag ofClass:(id)class conformingToTypeRecord:(id)record;
+ (id)_typeRecordWithContext:(LSContext *)context forPromiseAtNode:(id)node error:(id *)error;
+ (id)_typeRecordWithContext:(LSContext *)context forPromiseResourceValues:(id)values error:(id *)error;
+ (id)_typeRecordWithContext:(LSContext *)context identifier:(id)identifier allowUndeclared:(BOOL)undeclared;
+ (id)enumerator;
+ (id)typeRecordForImportedTypeWithIdentifier:(id)identifier conformingToIdentifier:(id)toIdentifier;
+ (id)typeRecordForPromiseAtURL:(id)l error:(id *)error;
+ (id)typeRecordsWithIdentifiers:(id)identifiers;
+ (id)typeRecordsWithTag:(id)tag ofClass:(id)class conformingToIdentifier:(id)identifier;
+ (id)typeRecordsWithTag:(id)tag ofClass:(id)class conformingToTypeRecord:(id)record;
- (BOOL)conformsToTypeRecord:(id)record;
- (BOOL)isChildOfTypeIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (NSDictionary)localizedDescriptionDictionary;
- (NSOrderedSet)parentTypeIdentifiers;
- (NSSet)childTypeIdentifiers;
- (NSSet)pedigree;
- (NSString)localizedDescription;
- (NSURL)referenceAccessoryURL;
- (id)_initWithContext:(LSContext *)context persistentIdentifierData:(const LSPersistentIdentifierData *)data length:(unint64_t)length;
- (id)debugDescription;
- (id)localizedDescriptionWithPreferredLocalizations:(id)localizations;
- (id)preferredTagOfClass:(id)class;
- (unint64_t)hash;
- (void)_enumerateRelatedTypesWithMaximumDegreeOfSeparation:(int64_t)separation block:(id)block;
@end

@implementation UTTypeRecord

- (unint64_t)hash
{
  identifier = [(UTTypeRecord *)self identifier];
  v3 = [identifier hash];

  return v3;
}

+ (id)enumerator
{
  v2 = [(_LSDBEnumerator *)[_LSTypeEnumerator alloc] _initWithContext:0];

  return v2;
}

void __58__UTTypeRecord__typeRecordWithIdentifier_allowUndeclared___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = _LSDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58__UTTypeRecord__typeRecordWithIdentifier_allowUndeclared___block_invoke_cold_1(a1, a2, v4);
  }
}

+ (id)typeRecordsWithIdentifiers:(id)identifiers
{
  v40 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__55;
  v37 = __Block_byref_object_dispose__55;
  v38 = 0;
  MayMapDatabase = _LSCurrentProcessMayMapDatabase();
  if (MayMapDatabase)
  {
    CurrentContext = _LSDatabaseContextGetCurrentContext(MayMapDatabase);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v6 = +[_LSDServiceDomain defaultServiceDomain];
    v7 = LaunchServices::Database::Context::_get(&CurrentContext, v6, 0);

    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(identifiers, "count")}];
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      identifiersCopy = identifiers;
      v10 = [identifiersCopy countByEnumeratingWithState:&v25 objects:v39 count:16];
      if (v10)
      {
        v11 = *v26;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v26 != v11)
            {
              objc_enumerationMutation(identifiersCopy);
            }

            v13 = *(*(&v25 + 1) + 8 * i);
            v14 = [self _typeRecordWithContext:v7 identifier:v13 allowUndeclared:0];
            if (v14)
            {
              [v8 setObject:v14 forKeyedSubscript:v13];
            }
          }

          v10 = [identifiersCopy countByEnumeratingWithState:&v25 objects:v39 count:16];
        }

        while (v10);
      }

      v15 = [v8 copy];
      v16 = v34[5];
      v34[5] = v15;
    }

    if (CurrentContext && v31 == 1)
    {
      _LSContextDestroy(CurrentContext);
    }

    v17 = v30;
    CurrentContext = 0;
    v30 = 0;

    v31 = 0;
    v18 = v32;
    v32 = 0;
  }

  else
  {
    v19 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:?];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __43__UTTypeRecord_typeRecordsWithIdentifiers___block_invoke_2;
    v24[3] = &unk_1E6A1F028;
    v24[4] = &v33;
    [v19 getTypeRecordsWithIdentifiers:identifiers completionHandler:v24];
  }

  v20 = v34[5];
  if (!v20)
  {
    v34[5] = MEMORY[0x1E695E0F8];

    v20 = v34[5];
  }

  v21 = v20;
  _Block_object_dispose(&v33, 8);

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (UTTypeRecord)typeRecordWithTag:(id)tag ofClass:(id)class conformingToTypeRecord:(id)record
{
  identifier = [record identifier];
  v9 = [self typeRecordWithTag:tag ofClass:class conformingToIdentifier:identifier];

  return v9;
}

+ (id)typeRecordsWithTag:(id)tag ofClass:(id)class conformingToTypeRecord:(id)record
{
  identifier = [record identifier];
  v9 = [self typeRecordsWithTag:tag ofClass:class conformingToIdentifier:identifier];

  return v9;
}

+ (UTTypeRecord)typeRecordWithTag:(id)tag ofClass:(id)class conformingToIdentifier:(id)identifier
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__55;
  v32 = __Block_byref_object_dispose__55;
  v33 = 0;
  MayMapDatabase = _LSCurrentProcessMayMapDatabase();
  if (!MayMapDatabase)
  {
    v12 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:?];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __65__UTTypeRecord_typeRecordWithTag_ofClass_conformingToIdentifier___block_invoke_2;
    v21[3] = &unk_1E6A1F000;
    v21[4] = &v28;
    [v12 getTypeRecordWithTag:tag ofClass:class conformingToIdentifier:identifier completionHandler:v21];

    goto LABEL_16;
  }

  CurrentContext = _LSDatabaseContextGetCurrentContext(MayMapDatabase);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v9 = +[_LSDServiceDomain defaultServiceDomain];
  v10 = LaunchServices::Database::Context::_get(&CurrentContext, v9, 0);

  if (v10)
  {
    v23 = 0;
    if (identifier)
    {
      if (!_UTGetActiveTypeForCFStringIdentifier(v10->db, identifier, &v23))
      {
        goto LABEL_10;
      }

      v11 = v23;
    }

    else
    {
      v11 = 0;
    }

    v22 = 0;
    if (_UTTypeGetActiveIdentifierForTag(v10->db, class, tag, v11, &v22))
    {
      v13 = [_UTDeclaredTypeRecord alloc];
      schema = [(_LSDatabase *)v10->db schema];
      v15 = [(LSRecord *)v13 _initWithContext:v10 tableID:*(schema + 16) unitID:v22];
LABEL_11:
      v16 = v29[5];
      v29[5] = v15;

      goto LABEL_12;
    }

LABEL_10:
    v15 = fallbackDynamicOrBaseTypeRecord(v10, tag, class, identifier);
    goto LABEL_11;
  }

LABEL_12:
  if (CurrentContext && v26 == 1)
  {
    _LSContextDestroy(CurrentContext);
  }

  v17 = v25;
  CurrentContext = 0;
  v25 = 0;

  v26 = 0;
  v18 = v27;
  v27 = 0;

LABEL_16:
  v19 = v29[5];
  _Block_object_dispose(&v28, 8);

  return v19;
}

+ (id)typeRecordsWithTag:(id)tag ofClass:(id)class conformingToIdentifier:(id)identifier
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__55;
  v36 = __Block_byref_object_dispose__55;
  v37 = 0;
  MayMapDatabase = _LSCurrentProcessMayMapDatabase();
  if (MayMapDatabase)
  {
    CurrentContext = _LSDatabaseContextGetCurrentContext(MayMapDatabase);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v9 = +[_LSDServiceDomain defaultServiceDomain];
    v10 = LaunchServices::Database::Context::_get(&CurrentContext, v9, 0);

    if (v10)
    {
      v27 = 0;
      if (!identifier || _UTGetActiveTypeForCFStringIdentifier(v10->db, identifier, &v27))
      {
        v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        db = v10->db;
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __66__UTTypeRecord_typeRecordsWithTag_ofClass_conformingToIdentifier___block_invoke;
        v23[3] = &unk_1E6A1F050;
        v26 = v27;
        v25 = v10;
        v13 = v11;
        v24 = v13;
        _UTEnumerateTypesForTag(db, class, tag, v23);
        if (![v13 count])
        {
          v14 = fallbackDynamicOrBaseTypeRecord(v10, tag, class, identifier);
          if (v14)
          {
            [v13 addObject:v14];
          }
        }

        v15 = [v13 copy];
        v16 = v33[5];
        v33[5] = v15;
      }
    }

    if (CurrentContext && v30 == 1)
    {
      _LSContextDestroy(CurrentContext);
    }

    v17 = v29;
    CurrentContext = 0;
    v29 = 0;

    v30 = 0;
    v18 = v31;
    v31 = 0;
  }

  else
  {
    v19 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:?];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __66__UTTypeRecord_typeRecordsWithTag_ofClass_conformingToIdentifier___block_invoke_3;
    v22[3] = &unk_1E6A1F078;
    v22[4] = &v32;
    [v19 getTypeRecordsWithTag:tag ofClass:class conformingToIdentifier:identifier completionHandler:v22];
  }

  v20 = v33[5];
  _Block_object_dispose(&v32, 8);

  return v20;
}

void __66__UTTypeRecord_typeRecordsWithTag_ofClass_conformingToIdentifier___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 8))
  {
    v6 = *(a1 + 48);
    if (!v6 || _UTTypeConformsTo(**(a1 + 40), a3, v6))
    {
      v7 = [(LSRecord *)[_UTDeclaredTypeRecord alloc] _initWithContext:*(a1 + 40) tableID:*([(_LSDatabase *)**(a1 + 40) schema]+ 16) unitID:a3];
      if (v7)
      {
        v8 = v7;
        [*(a1 + 32) addObject:v7];
        v7 = v8;
      }
    }
  }
}

+ (id)typeRecordForImportedTypeWithIdentifier:(id)identifier conformingToIdentifier:(id)toIdentifier
{
  toIdentifierCopy = toIdentifier;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__55;
  v42 = __Block_byref_object_dispose__55;
  v43 = 0;
  MayMapDatabase = _LSCurrentProcessMayMapDatabase();
  if (!MayMapDatabase)
  {
    v13 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:?];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __79__UTTypeRecord_typeRecordForImportedTypeWithIdentifier_conformingToIdentifier___block_invoke_2;
    v30[3] = &unk_1E6A1F000;
    v30[4] = &v38;
    [v13 getTypeRecordForImportedTypeWithIdentifier:identifier conformingToIdentifier:toIdentifierCopy completionHandler:v30];

    goto LABEL_25;
  }

  CurrentContext = _LSDatabaseContextGetCurrentContext(MayMapDatabase);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v7 = +[_LSDServiceDomain defaultServiceDomain];
  v8 = LaunchServices::Database::Context::_get(&CurrentContext, v7, 0);

  if (v8)
  {
    v33 = 0;
    active = _UTGetActiveTypeForCFStringIdentifier(*v8, identifier, &v33);
    if (!active || (v10 = [(_LSDatabase *)*v8 schema], (EntryWithClass = _LSBindingListGetEntryWithClass(*v8, *(active + 80), *(v10 + 320))) == 0) || !EntryWithClass[1] || !EntryWithClass[2])
    {
LABEL_19:
      if (v33)
      {
        v22 = [_UTDeclaredTypeRecord alloc];
        schema = [(_LSDatabase *)*v8 schema];
        v24 = [(LSRecord *)v22 _initWithContext:v8 tableID:*(schema + 16) unitID:v33];
        v25 = v39[5];
        v39[5] = v24;
      }

      goto LABEL_21;
    }

    v32 = 0;
    v12 = *v8;
    if (toIdentifierCopy)
    {
      _UTGetActiveTypeForCFStringIdentifier(*v8, toIdentifierCopy, &v32);
      goto LABEL_15;
    }

    v14 = v33;
    TypeData = _UTTypeGetTypeData(*v8);
    v16 = _UTTypeConformsTo(v12, v14, TypeData);
    v17 = *v8;
    if (v16)
    {
      v18 = _UTTypeGetTypeData(*v8);
    }

    else
    {
      v19 = v33;
      TypePackage = _UTTypeGetTypePackage(*v8);
      if (!_UTTypeConformsTo(v17, v19, TypePackage))
      {
        goto LABEL_15;
      }

      v18 = _UTTypeGetTypePackage(*v8);
    }

    v32 = v18;
LABEL_15:
    [(_LSDatabase *)*v8 store];
    v21 = _CSStringCopyCFString();
    if (v21)
    {
      v31 = 0;
      if (_UTTypeGetActiveIdentifierForTag(*v8, @"public.filename-extension", v21, v32, &v31))
      {
        v33 = v31;
      }
    }

    goto LABEL_19;
  }

LABEL_21:
  if (CurrentContext && v36 == 1)
  {
    _LSContextDestroy(CurrentContext);
  }

  v26 = v35;
  CurrentContext = 0;
  v35 = 0;

  v36 = 0;
  v27 = v37;
  v37 = 0;

LABEL_25:
  v28 = v39[5];
  _Block_object_dispose(&v38, 8);

  return v28;
}

+ (id)typeRecordForPromiseAtURL:(id)l error:(id *)error
{
  v6 = [[FSNode alloc] initWithURL:l flags:0 error:error];
  v7 = v6;
  if (v6)
  {
    CurrentContext = _LSDatabaseContextGetCurrentContext(v6);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v8 = +[_LSDServiceDomain defaultServiceDomain];
    v9 = LaunchServices::Database::Context::_get(&CurrentContext, v8, 0);

    if (v9)
    {
      v10 = [self _typeRecordWithContext:v9 forPromiseAtNode:v7 error:error];
    }

    else if (error)
    {
      v11 = +[_LSDServiceDomain defaultServiceDomain];
      v12 = LaunchServices::Database::Context::_get(&CurrentContext, v11, 0);

      if (v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = v20;
      }

      v10 = 0;
      *error = v13;
    }

    else
    {
      v10 = 0;
    }

    if (CurrentContext && v19 == 1)
    {
      _LSContextDestroy(CurrentContext);
    }

    v14 = v18;
    CurrentContext = 0;
    v18 = 0;

    v19 = 0;
    v15 = v20;
    v20 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)preferredTagOfClass:(id)class
{
  tagSpecification = [(UTTypeRecord *)self tagSpecification];
  v5 = objc_opt_class();
  v6 = [tagSpecification objectForKey:class ofClass:v5 valuesOfClass:objc_opt_class()];
  firstObject = [v6 firstObject];

  return firstObject;
}

- (BOOL)conformsToTypeRecord:(id)record
{
  identifier = [record identifier];
  LOBYTE(self) = [(UTTypeRecord *)self conformsToTypeIdentifier:identifier];

  return self;
}

- (NSSet)pedigree
{
  identifier = [(UTTypeRecord *)self identifier];
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&identifier count:1];

  return v2;
}

- (NSOrderedSet)parentTypeIdentifiers
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFB8]);

  return v2;
}

- (NSSet)childTypeIdentifiers
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFB8]);

  return v2;
}

- (BOOL)isChildOfTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  lowercaseString = [identifierCopy lowercaseString];

  parentTypeIdentifiers = [(UTTypeRecord *)self parentTypeIdentifiers];
  LOBYTE(identifierCopy) = [parentTypeIdentifiers containsObject:lowercaseString];

  return identifierCopy;
}

- (NSString)localizedDescription
{
  _localizedDescription = [(UTTypeRecord *)self _localizedDescription];
  stringValue = [_localizedDescription stringValue];

  return stringValue;
}

- (id)localizedDescriptionWithPreferredLocalizations:(id)localizations
{
  _localizedDescription = [(UTTypeRecord *)self _localizedDescription];
  v5 = [_localizedDescription stringValueWithPreferredLocalizations:localizations];

  return v5;
}

- (NSDictionary)localizedDescriptionDictionary
{
  _localizedDescription = [(UTTypeRecord *)self _localizedDescription];
  allStringValues = [_localizedDescription allStringValues];
  v4 = allStringValues;
  if (allStringValues)
  {
    v5 = allStringValues;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  v6 = v5;

  return v5;
}

+ (id)_typeRecordWithContext:(LSContext *)context identifier:(id)identifier allowUndeclared:(BOOL)undeclared
{
  undeclaredCopy = undeclared;
  v12 = 0;
  if (_UTTypeIdentifierIsDynamic(identifier))
  {
    v8 = [[_UTDynamicTypeRecord alloc] _initWithContext:context dynamicUTI:identifier];
  }

  else if (_UTGetActiveTypeForCFStringIdentifier(context->db, identifier, &v12))
  {
    v9 = [_UTDeclaredTypeRecord alloc];
    schema = [(_LSDatabase *)context->db schema];
    v8 = [(LSRecord *)v9 _initWithContext:context tableID:*(schema + 16) unitID:v12];
  }

  else if (undeclaredCopy)
  {
    v8 = [[_UTUndeclaredTypeRecord alloc] _initWithContext:context identifier:identifier];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_enumerateRelatedTypesWithMaximumDegreeOfSeparation:(int64_t)separation block:(id)block
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__55;
  v32 = __Block_byref_object_dispose__55;
  v33 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x4812000000;
  v24 = __Block_byref_object_copy__23;
  v25 = __Block_byref_object_dispose__24;
  v26 = &unk_1818533FF;
  memset(v27, 0, sizeof(v27));
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __74__UTTypeRecord__enumerateRelatedTypesWithMaximumDegreeOfSeparation_block___block_invoke;
  v20[3] = &unk_1E6A1F0C8;
  v20[4] = self;
  v20[5] = &v28;
  v20[6] = &v21;
  v20[7] = separation;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __74__UTTypeRecord__enumerateRelatedTypesWithMaximumDegreeOfSeparation_block___block_invoke_3;
  v19[3] = &unk_1E6A1A4F8;
  v19[5] = block;
  v19[6] = separation;
  v19[4] = self;
  [(LSRecord *)self _ifAttached:v20 else:v19];
  v5 = v29[5];
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = v5;
  v34[0] = v6;
  v18 = 0;
  v7 = v22[6];
  v8 = v22[7];
  if (v7 == v8)
  {
    goto LABEL_15;
  }

  v9 = v7 + 24;
  do
  {
    v10 = objc_autoreleasePoolPush();
    if (*(v9 - 4) == 1)
    {
      v11 = *(v9 - 8);
      v12 = [_UTDeclaredTypeRecord alloc];
      v13 = [(LSRecord *)v12 _initWithContext:v34 tableID:*([(_LSDatabase *)v34[0] schema]+ 16) unitID:v11];
      v14 = v13;
      if (*(v9 - 4))
      {
        if (!v13)
        {
          goto LABEL_11;
        }

LABEL_10:
        (*(block + 2))(block, v14, *(v9 - 16), &v18);
        goto LABEL_11;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = [[_UTDynamicTypeRecord alloc] _initWithContext:v34 dynamicUTI:*(v9 - 24)];

    v14 = v15;
    if (v15)
    {
      goto LABEL_10;
    }

LABEL_11:
    v16 = v18;

    objc_autoreleasePoolPop(v10);
    if (v16)
    {
      break;
    }

    v17 = v9 == v8;
    v9 += 24;
  }

  while (!v17);
  v6 = v34[0];
LABEL_15:

LABEL_16:
  _Block_object_dispose(&v21, 8);
  v34[0] = v27;
  std::vector<LaunchServices::Types::EnumeratedTypeUnitOrDynamicTypeIdentifier>::__destroy_vector::operator()[abi:nn200100](v34);
  _Block_object_dispose(&v28, 8);
}

uint64_t __74__UTTypeRecord__enumerateRelatedTypesWithMaximumDegreeOfSeparation_block___block_invoke(void *a1, id *a2, uint64_t a3, uint64_t a4)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *a2);
  v7 = a1[4];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__UTTypeRecord__enumerateRelatedTypesWithMaximumDegreeOfSeparation_block___block_invoke_2;
  v10[3] = &unk_1E6A1F0A0;
  v8 = a1[7];
  v10[4] = a1[6];
  return [v7 _enumerateRelatedTypeUnitsOrDynamicIdsWithContext:a2 unitID:a4 maximumDegreeOfSeparation:v8 block:v10];
}

void __74__UTTypeRecord__enumerateRelatedTypesWithMaximumDegreeOfSeparation_block___block_invoke_2(uint64_t a1, void **a2)
{
  std::vector<LaunchServices::Types::EnumeratedTypeUnitOrDynamicTypeIdentifier>::push_back[abi:nn200100]((*(*(a1 + 32) + 8) + 48), a2);
  v3 = *a2;
}

void __74__UTTypeRecord__enumerateRelatedTypesWithMaximumDegreeOfSeparation_block___block_invoke_3(uint64_t a1)
{
  if (_LSCurrentProcessMayMapDatabase())
  {
    v2 = [UTTypeRecord alloc];
    v3 = [*(a1 + 32) persistentIdentifier];
    v9 = [(LSRecord *)v2 initWithPersistentIdentifier:v3];

    if (v9)
    {
      [(UTTypeRecord *)v9 _enumerateRelatedTypesWithMaximumDegreeOfSeparation:*(a1 + 48) block:*(a1 + 40)];
    }

    else
    {
      v7 = [*(a1 + 32) identifier];
      v8 = [UTTypeRecord typeRecordWithIdentifier:v7];

      if (v8)
      {
        [v8 _enumerateRelatedTypesWithMaximumDegreeOfSeparation:*(a1 + 48) block:*(a1 + 40)];
      }
    }
  }

  else
  {
    v4 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:?];
    v5 = [*(a1 + 32) identifier];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__UTTypeRecord__enumerateRelatedTypesWithMaximumDegreeOfSeparation_block___block_invoke_5;
    v10[3] = &unk_1E6A1F0F0;
    v6 = *(a1 + 48);
    v10[4] = *(a1 + 40);
    [v4 getRelatedTypesOfTypeWithIdentifier:v5 maximumDegreeOfSeparation:v6 completionHandler:v10];
  }
}

void __74__UTTypeRecord__enumerateRelatedTypesWithMaximumDegreeOfSeparation_block___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v6 = [a2 count];
  v7 = [a3 count];
  if (v7 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v13 = 0;
  if (v8)
  {
    v9 = 1;
    do
    {
      v10 = *(a1 + 32);
      v11 = [a2 objectAtIndexedSubscript:v9 - 1];
      v12 = [a3 objectAtIndexedSubscript:v9 - 1];
      (*(v10 + 16))(v10, v11, [v12 integerValue], &v13);

      if (v9 >= v8)
      {
        break;
      }

      ++v9;
    }

    while ((v13 & 1) == 0);
  }
}

+ (BOOL)_typeIdentifier:(id)identifier conformsToTypeIdentifier:(id)typeIdentifier
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v6 = objc_autoreleasePoolPush();
  if (_LSCurrentProcessMayMapDatabase())
  {
    v7 = [UTTypeRecord typeRecordWithIdentifier:identifier];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 conformsToTypeIdentifier:typeIdentifier];
      *(v14 + 24) = v9;
    }
  }

  else
  {
    v8 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:?];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__UTTypeRecord__typeIdentifier_conformsToTypeIdentifier___block_invoke_2;
    v12[3] = &unk_1E6A1F118;
    v12[4] = &v13;
    [v8 getWhetherTypeIdentifier:identifier conformsToTypeIdentifier:typeIdentifier completionHandler:v12];
  }

  objc_autoreleasePoolPop(v6);
  v10 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v10;
}

+ (id)_typeRecordWithContext:(LSContext *)context forPromiseAtNode:(id)node error:(id *)error
{
  if (context)
  {
    if (node)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[UTTypeRecord _typeRecordWithContext:forPromiseAtNode:error:]"];
    [currentHandler handleFailureInFunction:v13 file:@"UTTypeRecord.mm" lineNumber:738 description:{@"Invalid parameter not satisfying: %@", @"ctx != NULL"}];

    if (node)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[UTTypeRecord _typeRecordWithContext:forPromiseAtNode:error:]"];
  [currentHandler2 handleFailureInFunction:v15 file:@"UTTypeRecord.mm" lineNumber:739 description:{@"Invalid parameter not satisfying: %@", @"node != nil"}];

LABEL_3:
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__55;
  v27 = __Block_byref_object_dispose__55;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__55;
  v21 = __Block_byref_object_dispose__55;
  v22 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __62__UTTypeRecord__typeRecordWithContext_forPromiseAtNode_error___block_invoke;
  v16[3] = &unk_1E6A19158;
  v16[4] = node;
  v16[5] = &v23;
  v16[6] = &v17;
  __LSRECORD_IS_PERFORMING_IO_FOR_A_CALLER__(v16);
  v9 = v24[5];
  if (v9)
  {
    v10 = [self _typeRecordWithContext:context forPromiseResourceValues:v9 error:error];
  }

  else
  {
    v10 = 0;
    if (error)
    {
      *error = v18[5];
    }
  }

  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v10;
}

void __62__UTTypeRecord__typeRecordWithContext_forPromiseAtNode_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v9 = 0;
  v3 = [v2 sideFaultResourceValuesWithError:&v9];
  v4 = v9;
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;
}

+ (id)_typeRecordWithContext:(LSContext *)context forPromiseResourceValues:(id)values error:(id *)error
{
  v32 = 0;
  if (context)
  {
    if (values)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[UTTypeRecord _typeRecordWithContext:forPromiseResourceValues:error:]"];
    [currentHandler handleFailureInFunction:v28 file:@"UTTypeRecord.mm" lineNumber:767 description:{@"Invalid parameter not satisfying: %@", @"ctx != NULL"}];

    if (values)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[UTTypeRecord _typeRecordWithContext:forPromiseResourceValues:error:]"];
  [currentHandler2 handleFailureInFunction:v30 file:@"UTTypeRecord.mm" lineNumber:768 description:{@"Invalid parameter not satisfying: %@", @"props != nil"}];

LABEL_3:
  v31 = 0;
  v8 = [values objectForKeyedSubscript:*MEMORY[0x1E695DB20]];
  v9 = v8;
  if (!v8)
  {
LABEL_13:
    v17 = 0;
    goto LABEL_20;
  }

  if ([v8 isEqual:*MEMORY[0x1E695DB30]])
  {
    v10 = [values objectForKeyedSubscript:*MEMORY[0x1E695DB68]];
    bOOLValue = [v10 BOOLValue];

    db = context->db;
    if (bOOLValue)
    {
      v13 = &kUTTypeAliasFile;
LABEL_12:
      _UTGetActiveTypeForCFStringIdentifier(db, *v13, &v31);
      v17 = 0;
      goto LABEL_20;
    }

    TypeData = _UTTypeGetTypeData(db);
    goto LABEL_15;
  }

  if (![v9 isEqual:*MEMORY[0x1E695DB18]])
  {
    if ([v9 isEqual:*MEMORY[0x1E695DB40]])
    {
      db = context->db;
      v13 = &kUTTypeSymLink;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v14 = [values objectForKeyedSubscript:*MEMORY[0x1E695DBA0]];
  bOOLValue2 = [v14 BOOLValue];

  if (bOOLValue2)
  {
    TypeData = _UTTypeGetTypePackage(context->db);
LABEL_15:
    v31 = TypeData;
    v17 = 1;
    goto LABEL_20;
  }

  v18 = [values objectForKeyedSubscript:*MEMORY[0x1E695DBE8]];
  bOOLValue3 = [v18 BOOLValue];

  v20 = context->db;
  if (bOOLValue3)
  {
    TypeVolume = _UTTypeGetTypeVolume(v20);
  }

  else
  {
    TypeVolume = _UTTypeGetTypeFolder(v20);
  }

  v17 = 0;
  v31 = TypeVolume;
LABEL_20:

  if (v31)
  {
    if (v17)
    {
      v22 = [values objectForKeyedSubscript:*MEMORY[0x1E695DC30]];
      if (v22)
      {
        _CFGetPathExtensionRangesFromPathComponent();
      }
    }

    v23 = 0;
    v32 = v31;
  }

  else
  {
    v23 = 0;
  }

  if (v32)
  {
    v24 = [_UTDeclaredTypeRecord alloc];
    schema = [(_LSDatabase *)context->db schema];
    v23 = [(LSRecord *)v24 _initWithContext:context tableID:*(schema + 16) unitID:v32];
  }

  if (error && !v23)
  {
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10813, 0, "+[UTTypeRecord _typeRecordWithContext:forPromiseResourceValues:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/UTTypeRecord.mm", 841);
  }

  return v23;
}

- (id)_initWithContext:(LSContext *)context persistentIdentifierData:(const LSPersistentIdentifierData *)data length:(unint64_t)length
{
  v25 = *MEMORY[0x1E69E9840];
  var3 = data->var3;
  if (var3 != *([(_LSDatabase *)context->db schema]+ 16))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UTTypeRecord.mm" lineNumber:862 description:{@"Invalid parameter not satisfying: %@", @"pi->tableID == ctx->db.schema->utypeTable"}];
  }

  if (length < 0x1D)
  {
    var2 = data->var2;
    if (_UTTypeGet(context->db))
    {
      v15 = [(LSRecord *)[_UTDeclaredTypeRecord alloc] _initWithContext:context tableID:data->var3 unitID:data->var2];
    }

    else
    {
      v16 = _LSRecordLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:data length:length freeWhenDone:0];
        *buf = 138412290;
        v24 = v17;
        _os_log_impl(&dword_18162D000, v16, OS_LOG_TYPE_DEBUG, "Failed to initialize type record with persistent identifier %@ because the type could not be found.", buf, 0xCu);
      }

      v15 = 0;
    }
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:data->var5 length:length - 28 encoding:4 freeWhenDone:0];
    v12 = v11;
    if (v11)
    {
      if (UTTypeIsDynamic(v11))
      {
        v13 = [[_UTDynamicTypeRecord alloc] _initWithContext:context dynamicUTI:v12];
      }

      else
      {
        v13 = [[_UTUndeclaredTypeRecord alloc] _initWithContext:context identifier:v12];
      }

      v15 = v13;
    }

    else
    {
      v18 = _LSRecordLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:data length:length freeWhenDone:0];
        *buf = 138412290;
        v24 = v19;
        _os_log_impl(&dword_18162D000, v18, OS_LOG_TYPE_DEBUG, "Failed to initialize type record with persistent identifier %@ because the stored type was not valid UTF-8.", buf, 0xCu);
      }

      v15 = 0;
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  identifier = [(UTTypeRecord *)self identifier];
  v6 = [v3 initWithFormat:@"<%@ %p> { identifier: %@ }", v4, self, identifier];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  identifier = [(UTTypeRecord *)self identifier];
  v6 = UTTypeEqual(identifier, [equal identifier]) != 0;

  return v6;
}

- (NSURL)referenceAccessoryURL
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__55;
  v11 = __Block_byref_object_dispose__55;
  v12 = 0;
  _referenceAccessoryURLNoConformances = [(UTTypeRecord *)self _referenceAccessoryURLNoConformances];
  if (_referenceAccessoryURLNoConformances)
  {
    objc_storeStrong(v8 + 5, _referenceAccessoryURLNoConformances);
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __44__UTTypeRecord_ARKit__referenceAccessoryURL__block_invoke;
    v6[3] = &unk_1E6A1F1B8;
    v6[4] = &v7;
    [(UTTypeRecord *)self enumeratePedigreeWithBlock:v6];
  }

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __44__UTTypeRecord_ARKit__referenceAccessoryURL__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 _referenceAccessoryURLNoConformances];
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v6);
    v6 = v7;
    *a4 = 1;
  }
}

void __58__UTTypeRecord__typeRecordWithIdentifier_allowUndeclared___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "could not reach database to find type for %@: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end