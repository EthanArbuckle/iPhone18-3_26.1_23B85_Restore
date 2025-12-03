@interface _UTDeclaredTypeRecord
+ (id)_propertyClasses;
- (BOOL)_isOneTapOpenable;
- (BOOL)conformsToTypeIdentifier:(id)identifier;
- (id)_declaringBundleBookmarkWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (id)_declaringBundleRecordWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (id)_delegatePathWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (id)_localizedDescriptionWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (id)_referenceAccessoryPathWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (id)_referenceAccessoryURLNoConformances;
- (id)childTypeIdentifiersWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)declarationWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (id)declaringBundleRecord;
- (id)identifierWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (id)parentTypeIdentifiersWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (id)pedigreeWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (id)referenceURLWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (id)tagSpecificationWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (void)_enumerateRelatedTypeStructuresWithContext:(LSContext *)context unitID:(unsigned int)d maximumDegreeOfSeparation:(int64_t)separation block:(id)block;
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

- (id)_declaringBundleRecordWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  v24 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_weakDeclaringBundleRecord);

  if (WeakRetained)
  {
LABEL_2:
    v10 = 0;
    goto LABEL_3;
  }

  db = context->db;
  var5 = bytes->var5;
  if ((bytes->var2 & 0x2000) != 0)
  {
    v10 = _LSGetPlugin(db, var5);
    if (v10)
    {
      v10 = [[LSApplicationExtensionRecord alloc] _initWithContext:context pluginID:bytes->var5 pluginData:v10 error:0];
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
          v10 = [[LSBundleRecord alloc] _initWithNode:0 bundleIdentifier:0 context:context tableID:*([(_LSDatabase *)context->db schema]+ 4) unitID:bytes->var5 bundleBaseData:v10 error:0];
          break;
        case 2:
          v10 = [[LSApplicationRecord alloc] _initWithContext:context bundleID:bytes->var5 bundleData:v10 error:0];
          break;
        default:
          v17 = _LSRecordLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = v15[42];
            identifier = [(_UTDeclaredTypeRecord *)self identifier];
            *buf = 134218242;
            v21 = v18;
            v22 = 2114;
            v23 = identifier;
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

- (void)_enumerateRelatedTypeStructuresWithContext:(LSContext *)context unitID:(unsigned int)d maximumDegreeOfSeparation:(int64_t)separation block:(id)block
{
  if (separation < 1)
  {
    if (separation < 0)
    {
      db = context->db;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __107___UTDeclaredTypeRecord__enumerateRelatedTypeStructuresWithContext_unitID_maximumDegreeOfSeparation_block___block_invoke_2;
      v9[3] = &unk_1E6A1F140;
      if (separation == 0x8000000000000000)
      {
        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = -separation;
      }

      v9[4] = block;
      v9[5] = context;
      _UTTypeSearchConformingTypesWithBlock(db, d, v8, 0, v9);
    }
  }

  else
  {
    v6 = context->db;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __107___UTDeclaredTypeRecord__enumerateRelatedTypeStructuresWithContext_unitID_maximumDegreeOfSeparation_block___block_invoke;
    v10[3] = &unk_1E6A1F140;
    v10[4] = block;
    v10[5] = context;
    _UTTypeSearchConformsToTypesWithBlock(v6, d, separation, 0, v10);
  }
}

- (id)identifierWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  var3 = bytes->var3;
  [(_LSDatabase *)context->db store];
  v7 = _CSStringCopyCFString();

  return v7;
}

- (id)declarationWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  identifier = [(_UTDeclaredTypeRecord *)self identifier];
  [v9 setObject:identifier forKeyedSubscript:@"UTTypeIdentifier"];

  version = [(_UTDeclaredTypeRecord *)self version];
  [v9 setObject:version forKeyedSubscript:@"UTTypeVersion"];

  _localizedDescription = [(_UTDeclaredTypeRecord *)self _localizedDescription];
  defaultStringValue = [_localizedDescription defaultStringValue];
  [v9 setObject:defaultStringValue forKeyedSubscript:@"UTTypeDescription"];

  var12 = bytes->var12;
  [(_LSDatabase *)context->db store];
  v15 = _CSStringCopyCFString();
  [v9 setObject:v15 forKeyedSubscript:@"UTKEXTIdentifier"];

  tagSpecification = [(_UTDeclaredTypeRecord *)self tagSpecification];
  _expensiveDictionaryRepresentation = [tagSpecification _expensiveDictionaryRepresentation];
  [v9 setObject:_expensiveDictionaryRepresentation forKeyedSubscript:@"UTTypeTagSpecification"];

  var14 = bytes->var14;
  if (var14)
  {
    db = context->db;
    schema = [(_LSDatabase *)context->db schema];
    EntryWithClass = _LSBindingListGetEntryWithClass(db, var14, *(schema + 216));
    if (EntryWithClass && (v22 = EntryWithClass[1], v22))
    {
      v23 = 0;
      v24 = (EntryWithClass + 2);
      do
      {
        v25 = *v24++;
        [(_LSDatabase *)context->db store];
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

  referenceURL = [(_UTDeclaredTypeRecord *)self referenceURL];
  absoluteString = [referenceURL absoluteString];
  [v9 setObject:absoluteString forKeyedSubscript:@"UTTypeReferenceURL"];

  if ([(_UTDeclaredTypeRecord *)self isWildcard])
  {
    [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"UTTypeIsWildcard"];
  }

  v30 = [_LSLazyPropertyList lazyPropertyListWithPropertyList:v9];

  return v30;
}

- (id)tagSpecificationWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  if (!bytes->var13)
  {
    goto LABEL_21;
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  var13 = bytes->var13;
  EntryCount = _LSBindingListGetEntryCount(context->db);
  if (EntryCount)
  {
    for (i = 0; i != EntryCount; ++i)
    {
      EntryAtIndex = _LSBindingListGetEntryAtIndex(context->db, bytes->var13, i);
      v13 = EntryAtIndex;
      if (EntryAtIndex)
      {
        v14 = *EntryAtIndex;
        [(_LSDatabase *)context->db store];
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
              [(_LSDatabase *)context->db store];
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

- (id)referenceURLWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  var15 = bytes->var15;
  [(_LSDatabase *)context->db store];
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

- (BOOL)conformsToTypeIdentifier:(id)identifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50___UTDeclaredTypeRecord_conformsToTypeIdentifier___block_invoke;
  v6[3] = &unk_1E6A1F168;
  v6[4] = identifier;
  v6[5] = &v7;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50___UTDeclaredTypeRecord_conformsToTypeIdentifier___block_invoke_2;
  v5[3] = &unk_1E6A1F190;
  v5[5] = identifier;
  v5[6] = &v7;
  v5[4] = self;
  [(LSRecord *)self _ifAttached:v6 else:v5];
  v3 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (id)pedigreeWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  PedigreeInternal = _UTTypeGetPedigreeInternal(&context->db, iD, bytes);
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

- (id)parentTypeIdentifiersWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  v8 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  db = context->db;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __83___UTDeclaredTypeRecord_parentTypeIdentifiersWithContext_tableID_unitID_unitBytes___block_invoke;
  v16 = &unk_1E6A1EF88;
  contextCopy = context;
  v10 = v8;
  v17 = v10;
  _UTTypeSearchConformsToTypesWithBlock(db, iD, 1, 0, &v13);
  v11 = [v10 copy];

  return v11;
}

- (id)childTypeIdentifiersWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  db = context->db;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __82___UTDeclaredTypeRecord_childTypeIdentifiersWithContext_tableID_unitID_unitBytes___block_invoke;
  v16 = &unk_1E6A1EF88;
  contextCopy = context;
  v10 = v8;
  v17 = v10;
  _UTTypeSearchConformingTypesWithBlock(db, iD, 1, 0, &v13);
  v11 = [v10 copy];

  return v11;
}

- (id)_localizedDescriptionWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  v6 = [[_LSLocalizedStringRecord alloc] _initWithContext:context unitID:_UTGetLocalizedDescription(context->db, iD)];

  return v6;
}

- (id)_declaringBundleBookmarkWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  BundleBaseData = _UTTypeGetBundleBaseData(context->db, bytes);
  if (BundleBaseData)
  {
    v8 = _LSAliasGet(context->db, *BundleBaseData);
    v9 = [v8 copy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_delegatePathWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  if ((bytes->var2 & 0x2000) != 0)
  {
    v15 = 0;
  }

  else
  {
    var11 = bytes->var11;
    [(_LSDatabase *)context->db store];
    v9 = _CSStringCopyCFString();
    if (v9)
    {
      v10 = _LSBundleGet(context->db, bytes->var5);
      if (v10 && (db = context->db, v12 = *(v10 + 464), [(_LSDatabase *)db store], v13 = _CSStringCopyCFString(), (v14 = v13) != 0))
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
  __isDirectlyOneTapOpenable = [(_UTDeclaredTypeRecord *)self __isDirectlyOneTapOpenable];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = _UTDeclaredTypeRecord;
  v4 = [(LSRecord *)&v7 copyWithZone:zone];
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_weakDeclaringBundleRecord);
    objc_storeWeak(v4 + 4, WeakRetained);
  }

  return v4;
}

- (id)_referenceAccessoryPathWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  var16 = bytes->var16;
  [(_LSDatabase *)context->db store];
  v7 = _CSStringCopyCFString();

  return v7;
}

- (id)_referenceAccessoryURLNoConformances
{
  _referenceAccessoryPath = [(_UTDeclaredTypeRecord *)self _referenceAccessoryPath];
  _delegatePath = [(_UTDeclaredTypeRecord *)self _delegatePath];
  _declaringBundleBookmark = [(_UTDeclaredTypeRecord *)self _declaringBundleBookmark];
  v6 = _declaringBundleBookmark;
  v7 = 0;
  if (_referenceAccessoryPath && _declaringBundleBookmark)
  {
    v8 = [[FSNode alloc] initByResolvingBookmarkData:_declaringBundleBookmark relativeToNode:0 bookmarkDataIsStale:0 error:0];
    v9 = v8;
    v10 = v8;
    if (_delegatePath)
    {
      v11 = v8;
      v12 = v11;
      if (([(_UTDeclaredTypeRecord *)self _rawFlags]& 0x20) != 0)
      {
        v13 = [[FSNode alloc] initWithPath:@"/System/Library/CoreServices/CoreTypes.bundle/" flags:8 error:0];

        v12 = v13;
      }

      v14 = [(FSNode *)v12 childNodeWithRelativePath:_delegatePath flags:8 error:0];

      v10 = v14;
    }

    v15 = [v10 childNodeWithRelativePath:_referenceAccessoryPath flags:0 error:0];
    v7 = [v15 URL];
  }

  return v7;
}

@end