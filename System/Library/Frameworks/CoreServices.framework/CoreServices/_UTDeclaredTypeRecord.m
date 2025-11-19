@interface _UTDeclaredTypeRecord
+ (id)_propertyClasses;
- (BOOL)_isOneTapOpenable;
- (BOOL)conformsToTypeIdentifier:(id)a3;
- (id)_declaringBundleBookmarkWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6;
- (id)_declaringBundleRecordWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6;
- (id)_delegatePathWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6;
- (id)_localizedDescriptionWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6;
- (id)_referenceAccessoryPathWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6;
- (id)_referenceAccessoryURLNoConformances;
- (id)childTypeIdentifiersWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)declarationWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6;
- (id)declaringBundleRecord;
- (id)identifierWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6;
- (id)parentTypeIdentifiersWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6;
- (id)pedigreeWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6;
- (id)referenceURLWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6;
- (id)tagSpecificationWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6;
- (void)_enumerateRelatedTypeStructuresWithContext:(LSContext *)a3 unitID:(unsigned int)a4 maximumDegreeOfSeparation:(int64_t)a5 block:(id)a6;
@end

@implementation _UTDeclaredTypeRecord

- (id)declaringBundleRecord
{
  WeakRetained = objc_loadWeakRetained(&self->_weakDeclaringBundleRecord);
  if (!WeakRetained)
  {
    WeakRetained = [(_UTDeclaredTypeRecord *)self _declaringBundleRecord];
  }

  return WeakRetained;
}

+ (id)_propertyClasses
{
  v5[7] = *MEMORY[0x1E69E9840];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v5[4] = objc_opt_class();
  v5[5] = objc_opt_class();
  v5[6] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:7];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)_declaringBundleRecordWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6
{
  v24 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_weakDeclaringBundleRecord);

  if (WeakRetained)
  {
LABEL_2:
    v10 = 0;
    goto LABEL_3;
  }

  db = a3->db;
  var5 = a6->var5;
  if ((a6->var2 & 0x2000) != 0)
  {
    v10 = _LSGetPlugin(db, var5);
    if (v10)
    {
      v10 = [[LSApplicationExtensionRecord alloc] _initWithContext:a3 pluginID:a6->var5 pluginData:v10 error:0];
    }
  }

  else
  {
    v10 = _LSBundleGet(db, var5);
    if (v10)
    {
      v15 = v10;
      v16 = v10[42];
      switch(v16)
      {
        case 11:
          v10 = +[LSBundleRecord coreTypesBundleRecord];
          break;
        case 8:
          v10 = [[LSBundleRecord alloc] _initWithNode:0 bundleIdentifier:0 context:a3 tableID:*([(_LSDatabase *)a3->db schema]+ 4) unitID:a6->var5 bundleBaseData:v10 error:0];
          break;
        case 2:
          v10 = [[LSApplicationRecord alloc] _initWithContext:a3 bundleID:a6->var5 bundleData:v10 error:0];
          break;
        default:
          v17 = _LSRecordLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = v15[42];
            v19 = [(_UTDeclaredTypeRecord *)self identifier];
            *buf = 134218242;
            v21 = v18;
            v22 = 2114;
            v23 = v19;
            _os_log_impl(&dword_18162D000, v17, OS_LOG_TYPE_ERROR, "Unexpected bundle class %lu declaring type %{public}@", buf, 0x16u);
          }

          goto LABEL_2;
      }
    }
  }

LABEL_3:
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)_enumerateRelatedTypeStructuresWithContext:(LSContext *)a3 unitID:(unsigned int)a4 maximumDegreeOfSeparation:(int64_t)a5 block:(id)a6
{
  if (a5 < 1)
  {
    if (a5 < 0)
    {
      db = a3->db;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __107___UTDeclaredTypeRecord__enumerateRelatedTypeStructuresWithContext_unitID_maximumDegreeOfSeparation_block___block_invoke_2;
      v9[3] = &unk_1E6A1F140;
      if (a5 == 0x8000000000000000)
      {
        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = -a5;
      }

      v9[4] = a6;
      v9[5] = a3;
      _UTTypeSearchConformingTypesWithBlock(db, a4, v8, 0, v9);
    }
  }

  else
  {
    v6 = a3->db;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __107___UTDeclaredTypeRecord__enumerateRelatedTypeStructuresWithContext_unitID_maximumDegreeOfSeparation_block___block_invoke;
    v10[3] = &unk_1E6A1F140;
    v10[4] = a6;
    v10[5] = a3;
    _UTTypeSearchConformsToTypesWithBlock(v6, a4, a5, 0, v10);
  }
}

- (id)identifierWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6
{
  var3 = a6->var3;
  [(_LSDatabase *)a3->db store];
  v7 = _CSStringCopyCFString();

  return v7;
}

- (id)declarationWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6
{
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = [(_UTDeclaredTypeRecord *)self identifier];
  [v9 setObject:v10 forKeyedSubscript:@"UTTypeIdentifier"];

  v11 = [(_UTDeclaredTypeRecord *)self version];
  [v9 setObject:v11 forKeyedSubscript:@"UTTypeVersion"];

  v12 = [(_UTDeclaredTypeRecord *)self _localizedDescription];
  v13 = [v12 defaultStringValue];
  [v9 setObject:v13 forKeyedSubscript:@"UTTypeDescription"];

  var12 = a6->var12;
  [(_LSDatabase *)a3->db store];
  v15 = _CSStringCopyCFString();
  [v9 setObject:v15 forKeyedSubscript:@"UTKEXTIdentifier"];

  v16 = [(_UTDeclaredTypeRecord *)self tagSpecification];
  v17 = [v16 _expensiveDictionaryRepresentation];
  [v9 setObject:v17 forKeyedSubscript:@"UTTypeTagSpecification"];

  var14 = a6->var14;
  if (var14)
  {
    db = a3->db;
    v20 = [(_LSDatabase *)a3->db schema];
    EntryWithClass = _LSBindingListGetEntryWithClass(db, var14, *(v20 + 216));
    if (EntryWithClass && (v22 = EntryWithClass[1], v22))
    {
      v23 = 0;
      v24 = (EntryWithClass + 2);
      do
      {
        v25 = *v24++;
        [(_LSDatabase *)a3->db store];
        v26 = _CSStringCopyCFString();
        v27 = v26;
        if (v26 && [v26 length])
        {
          if (!v23)
          {
            v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          [v23 addObject:v27];
        }

        --v22;
      }

      while (v22);
    }

    else
    {
      v23 = 0;
    }

    [v9 setObject:v23 forKeyedSubscript:@"UTTypeConformsTo"];
  }

  v28 = [(_UTDeclaredTypeRecord *)self referenceURL];
  v29 = [v28 absoluteString];
  [v9 setObject:v29 forKeyedSubscript:@"UTTypeReferenceURL"];

  if ([(_UTDeclaredTypeRecord *)self isWildcard])
  {
    [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"UTTypeIsWildcard"];
  }

  v30 = [_LSLazyPropertyList lazyPropertyListWithPropertyList:v9];

  return v30;
}

- (id)tagSpecificationWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6
{
  if (!a6->var13)
  {
    goto LABEL_21;
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  var13 = a6->var13;
  EntryCount = _LSBindingListGetEntryCount(a3->db);
  if (EntryCount)
  {
    for (i = 0; i != EntryCount; ++i)
    {
      EntryAtIndex = _LSBindingListGetEntryAtIndex(a3->db, a6->var13, i);
      v13 = EntryAtIndex;
      if (EntryAtIndex)
      {
        v14 = *EntryAtIndex;
        [(_LSDatabase *)a3->db store];
        v15 = _CSStringCopyCFString();
        if (v15)
        {
          v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v17 = v13[1];
          if (v17)
          {
            v18 = v13 + 2;
            do
            {
              v19 = *v18++;
              [(_LSDatabase *)a3->db store];
              v20 = _CSStringCopyCFString();
              if (v20)
              {
                [v16 addObject:v20];
              }

              --v17;
            }

            while (v17);
          }

          if ([v16 count])
          {
            v21 = [v8 objectForKeyedSubscript:v15];
            v22 = v21;
            if (v21)
            {
              v23 = [v21 arrayByAddingObjectsFromArray:v16];
            }

            else
            {
              v23 = [v16 copy];
            }

            [v8 setObject:v23 forKeyedSubscript:v15];
          }
        }
      }
    }
  }

  if (v8)
  {
    v24 = [_LSLazyPropertyList lazyPropertyListWithPropertyList:v8];
  }

  else
  {
LABEL_21:
    v24 = _LSLazyPropertyListGetSharedEmptyPropertyList();
  }

  return v24;
}

- (id)referenceURLWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6
{
  var15 = a6->var15;
  [(_LSDatabase *)a3->db store];
  v7 = _CSStringCopyCFString();
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)conformsToTypeIdentifier:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50___UTDeclaredTypeRecord_conformsToTypeIdentifier___block_invoke;
  v6[3] = &unk_1E6A1F168;
  v6[4] = a3;
  v6[5] = &v7;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50___UTDeclaredTypeRecord_conformsToTypeIdentifier___block_invoke_2;
  v5[3] = &unk_1E6A1F190;
  v5[5] = a3;
  v5[6] = &v7;
  v5[4] = self;
  [(LSRecord *)self _ifAttached:v6 else:v5];
  v3 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (id)pedigreeWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6
{
  PedigreeInternal = _UTTypeGetPedigreeInternal(&a3->db, a5, a6);
  v7 = PedigreeInternal;
  if (PedigreeInternal)
  {
    v8 = PedigreeInternal;
  }

  else
  {
    v8 = [MEMORY[0x1E695DFD8] set];
  }

  v9 = v8;

  return v9;
}

- (id)parentTypeIdentifiersWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6
{
  v8 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  db = a3->db;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __83___UTDeclaredTypeRecord_parentTypeIdentifiersWithContext_tableID_unitID_unitBytes___block_invoke;
  v16 = &unk_1E6A1EF88;
  v18 = a3;
  v10 = v8;
  v17 = v10;
  _UTTypeSearchConformsToTypesWithBlock(db, a5, 1, 0, &v13);
  v11 = [v10 copy];

  return v11;
}

- (id)childTypeIdentifiersWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6
{
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  db = a3->db;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __82___UTDeclaredTypeRecord_childTypeIdentifiersWithContext_tableID_unitID_unitBytes___block_invoke;
  v16 = &unk_1E6A1EF88;
  v18 = a3;
  v10 = v8;
  v17 = v10;
  _UTTypeSearchConformingTypesWithBlock(db, a5, 1, 0, &v13);
  v11 = [v10 copy];

  return v11;
}

- (id)_localizedDescriptionWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6
{
  v6 = [[_LSLocalizedStringRecord alloc] _initWithContext:a3 unitID:_UTGetLocalizedDescription(a3->db, a5)];

  return v6;
}

- (id)_declaringBundleBookmarkWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6
{
  BundleBaseData = _UTTypeGetBundleBaseData(a3->db, a6);
  if (BundleBaseData)
  {
    v8 = _LSAliasGet(a3->db, *BundleBaseData);
    v9 = [v8 copy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_delegatePathWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6
{
  if ((a6->var2 & 0x2000) != 0)
  {
    v15 = 0;
  }

  else
  {
    var11 = a6->var11;
    [(_LSDatabase *)a3->db store];
    v9 = _CSStringCopyCFString();
    if (v9)
    {
      v10 = _LSBundleGet(a3->db, a6->var5);
      if (v10 && (db = a3->db, v12 = *(v10 + 464), [(_LSDatabase *)db store], v13 = _CSStringCopyCFString(), (v14 = v13) != 0))
      {
        v15 = [v13 stringByAppendingPathComponent:v9];
      }

      else
      {
        v15 = v9;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (BOOL)_isOneTapOpenable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = [(_UTDeclaredTypeRecord *)self __isDirectlyOneTapOpenable];
  if (v7[3])
  {
    v3 = 1;
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __42___UTDeclaredTypeRecord__isOneTapOpenable__block_invoke;
    v5[3] = &unk_1E6A1F1B8;
    v5[4] = &v6;
    [(UTTypeRecord *)self enumeratePedigreeWithBlock:v5];
    v3 = *(v7 + 24);
  }

  _Block_object_dispose(&v6, 8);
  return v3 & 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = _UTDeclaredTypeRecord;
  v4 = [(LSRecord *)&v7 copyWithZone:a3];
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_weakDeclaringBundleRecord);
    objc_storeWeak(v4 + 4, WeakRetained);
  }

  return v4;
}

- (id)_referenceAccessoryPathWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6
{
  var16 = a6->var16;
  [(_LSDatabase *)a3->db store];
  v7 = _CSStringCopyCFString();

  return v7;
}

- (id)_referenceAccessoryURLNoConformances
{
  v3 = [(_UTDeclaredTypeRecord *)self _referenceAccessoryPath];
  v4 = [(_UTDeclaredTypeRecord *)self _delegatePath];
  v5 = [(_UTDeclaredTypeRecord *)self _declaringBundleBookmark];
  v6 = v5;
  v7 = 0;
  if (v3 && v5)
  {
    v8 = [[FSNode alloc] initByResolvingBookmarkData:v5 relativeToNode:0 bookmarkDataIsStale:0 error:0];
    v9 = v8;
    v10 = v8;
    if (v4)
    {
      v11 = v8;
      v12 = v11;
      if (([(_UTDeclaredTypeRecord *)self _rawFlags]& 0x20) != 0)
      {
        v13 = [[FSNode alloc] initWithPath:@"/System/Library/CoreServices/CoreTypes.bundle/" flags:8 error:0];

        v12 = v13;
      }

      v14 = [(FSNode *)v12 childNodeWithRelativePath:v4 flags:8 error:0];

      v10 = v14;
    }

    v15 = [v10 childNodeWithRelativePath:v3 flags:0 error:0];
    v7 = [v15 URL];
  }

  return v7;
}

@end