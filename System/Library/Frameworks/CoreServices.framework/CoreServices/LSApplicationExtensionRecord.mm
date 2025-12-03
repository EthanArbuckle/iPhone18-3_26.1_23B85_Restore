@interface LSApplicationExtensionRecord
+ (id)_propertyClasses;
+ (id)appexRecordsForUnitIDsWithContext:(LSContext *)context unitIDs:(const void *)ds;
+ (id)applicationExtensionRecordsForUUIDs:(id)ds outContainingBundleRecords:(id *)records error:(id *)error;
+ (id)enumeratorWithExtensionPointRecord:(id)record options:(unint64_t)options;
+ (id)enumeratorWithOptions:(unint64_t)options;
- (BOOL)_usesSystemPersona;
- (BOOL)appProtectionHidden;
- (BOOL)appProtectionLocked;
- (BOOL)isUpdating;
- (LSBundleRecord)containingBundleRecord;
- (char)developerType;
- (id)_containingBundleRecordWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSPluginData *)bytes;
- (id)_initWithContext:(LSContext *)context persistentIdentifierData:(const LSPersistentIdentifierData *)data length:(unint64_t)length;
- (id)_intentsArrayForKey:(id)key;
- (id)_personasWithAttributes;
- (id)_replacementObjectForResolvedPropertyValue:(id)value forGetter:(SEL)getter encoder:(id)encoder;
- (id)associatedPersonas;
- (id)copyWithZone:(_NSZone *)zone;
- (id)effectiveBundleIdentifierWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSPluginData *)bytes;
- (id)extensionPointRecordWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSPluginData *)bytes;
- (id)managedPersonas;
- (id)recordForUnredactingWithContext:(LSContext *)context error:(id *)error;
- (id)uniqueIdentifierWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSPluginData *)bytes;
- (unint64_t)compatibilityState;
@end

@implementation LSApplicationExtensionRecord

- (LSBundleRecord)containingBundleRecord
{
  WeakRetained = objc_loadWeakRetained(&self->_weakContainingBundleRecord);
  if (!WeakRetained)
  {
    WeakRetained = [(LSApplicationExtensionRecord *)self _containingBundleRecord];
  }

  return WeakRetained;
}

- (char)developerType
{
  containingBundleRecord = [(LSApplicationExtensionRecord *)self containingBundleRecord];
  v4 = containingBundleRecord;
  if (containingBundleRecord)
  {
    developerType = [containingBundleRecord developerType];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = LSApplicationExtensionRecord;
    developerType = [(LSBundleRecord *)&v8 developerType];
  }

  v6 = developerType;

  return v6;
}

+ (id)_propertyClasses
{
  v5[3] = *MEMORY[0x1E69E9840];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (BOOL)appProtectionLocked
{
  containingBundleRecord = [(LSApplicationExtensionRecord *)self containingBundleRecord];
  appProtectionLocked = [containingBundleRecord appProtectionLocked];

  return appProtectionLocked;
}

- (id)_personasWithAttributes
{
  containingBundleRecord = [(LSApplicationExtensionRecord *)self containingBundleRecord];
  _personasWithAttributes = [containingBundleRecord _personasWithAttributes];

  return _personasWithAttributes;
}

- (BOOL)_usesSystemPersona
{
  containingBundleRecord = [(LSApplicationExtensionRecord *)self containingBundleRecord];
  _usesSystemPersona = [containingBundleRecord _usesSystemPersona];

  return _usesSystemPersona;
}

- (id)effectiveBundleIdentifierWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSPluginData *)bytes
{
  var3 = bytes->var3;
  [(_LSDatabase *)context->db store];
  v9 = _CSStringCopyCFString();
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    exactIdentifier = bytes->var0.exactIdentifier;
    [(_LSDatabase *)context->db store];
    v11 = _CSStringCopyCFString();
  }

  v13 = v11;

  return v13;
}

- (id)uniqueIdentifierWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSPluginData *)bytes
{
  var7 = bytes->var7;
  [(_LSDatabase *)context->db store];
  v7 = _CSStringCopyCFString();
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)extensionPointRecordWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSPluginData *)bytes
{
  v13 = 0;
  v12 = 0;
  v7 = _LSExtensionPointFindWithStringID(context->db, bytes->var4, bytes->var0.platform, 0, &v13, &v12);
  v8 = 0;
  if (!v7)
  {
    v9 = [LSExtensionPointRecord alloc];
    schema = [(_LSDatabase *)context->db schema];
    v8 = [(LSRecord *)v9 _initWithContext:context tableID:*(schema + 1592) unitID:v13];
  }

  return v8;
}

- (BOOL)appProtectionHidden
{
  containingBundleRecord = [(LSApplicationExtensionRecord *)self containingBundleRecord];
  appProtectionHidden = [containingBundleRecord appProtectionHidden];

  return appProtectionHidden;
}

- (BOOL)isUpdating
{
  containingBundleRecord = [(LSApplicationExtensionRecord *)self containingBundleRecord];
  hasParallelPlaceholder = [containingBundleRecord hasParallelPlaceholder];

  return hasParallelPlaceholder;
}

+ (id)applicationExtensionRecordsForUUIDs:(id)ds outContainingBundleRecords:(id *)records error:(id *)error
{
  v93 = *MEMORY[0x1E69E9840];
  v86 = 0;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v6 = +[_LSDServiceDomain defaultServiceDomain];
  v7 = LaunchServices::Database::Context::_get(&v83, v6, 0);

  if (v7)
  {
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v8 = objc_autoreleasePoolPush();
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    dsCopy = ds;
    v10 = 0;
    v11 = [dsCopy countByEnumeratingWithState:&v76 objects:v92 count:16];
    if (v11)
    {
      v12 = *v77;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v77 != v12)
          {
            objc_enumerationMutation(dsCopy);
          }

          v14 = *(*(&v76 + 1) + 8 * i);
          *buf = 0;
          v75 = v10;
          PluginDataInContext = findPluginDataInContext(v7, v14, 0, 0, 0, 0, buf, &v75);
          v16 = v75;

          v10 = v16;
          if (PluginDataInContext)
          {
            v17 = *buf == 0;
          }

          else
          {
            v17 = 1;
          }

          if (!v17)
          {
            LODWORD(v72) = *buf;
            *(&v72 + 1) = v14;
            std::vector<std::pair<unsigned int,NSUUID * {__strong}>>::push_back[abi:nn200100](&v80, &v72);
          }
        }

        v11 = [dsCopy countByEnumeratingWithState:&v76 objects:v92 count:16];
      }

      while (v11);
    }

    objc_autoreleasePoolPop(v8);
    v60 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v72 = 0u;
    v73 = 0u;
    v74 = 1065353216;
    v18 = v80;
    v63 = v81;
    if (v80 != v81)
    {
      v19 = *MEMORY[0x1E696A768];
      v58 = *MEMORY[0x1E696A768];
      v59 = *MEMORY[0x1E696A278];
      do
      {
        v64 = *v18;
        v20 = _LSGetPlugin(*v7, *v18);
        v21 = v20;
        if (v20)
        {
          v71 = *(v20 + 224);
          if (v71)
          {
            v22 = std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::find<unsigned int>(&v72, &v71);
            v61 = v21;
            if (v22)
            {
              v23 = v22[3];
              if (!v23)
              {
                currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
                [currentHandler handleFailureInMethod:a2 object:self file:@"LSApplicationExtensionRecord.mm" lineNumber:320 description:@"why don't we have a container in the map?"];

                v23 = 0;
              }
            }

            else
            {
              v30 = [LSApplicationRecord alloc];
              v70 = v10;
              v31 = [(LSApplicationRecord *)v30 _initWithContext:v7 bundleID:v71 bundleData:0 error:&v70];
              v32 = v70;

              if (v31)
              {
                *buf = v71;
                v33 = v31;
                *&v91[4] = v33;
                std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,LSApplicationRecord * {__strong}>>(&v72, buf);

                v10 = v32;
                v23 = v33;
              }

              else
              {
                v23 = 0;
                v10 = v32;
              }
            }

            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v62 = v23;
            applicationExtensionRecords = [v23 applicationExtensionRecords];
            v35 = [applicationExtensionRecords countByEnumeratingWithState:&v66 objects:v89 count:16];
            if (v35)
            {
              v36 = *v67;
LABEL_29:
              v37 = 0;
              while (1)
              {
                if (*v67 != v36)
                {
                  objc_enumerationMutation(applicationExtensionRecords);
                }

                v38 = *(*(&v66 + 1) + 8 * v37);
                uniqueIdentifier = [v38 uniqueIdentifier];
                v40 = [uniqueIdentifier isEqual:*(v18 + 1)];

                if (v40)
                {
                  break;
                }

                if (v35 == ++v37)
                {
                  v35 = [applicationExtensionRecords countByEnumeratingWithState:&v66 objects:v89 count:16];
                  if (v35)
                  {
                    goto LABEL_29;
                  }

                  goto LABEL_35;
                }
              }

              v29 = v38;

              v21 = v61;
              if (v29)
              {
                goto LABEL_38;
              }
            }

            else
            {
LABEL_35:

              v21 = v61;
            }
          }

          v41 = [LSApplicationExtensionRecord alloc];
          v65 = v10;
          v29 = [(LSApplicationExtensionRecord *)v41 _initWithContext:v7 pluginID:v64 pluginData:v21 error:&v65];
          v42 = v65;

          v10 = v42;
          if (v29)
          {
LABEL_38:
            [v60 addObject:v29];
          }
        }

        else
        {
          v25 = _LSDefaultLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            *v91 = v64;
            _os_log_error_impl(&dword_18162D000, v25, OS_LOG_TYPE_ERROR, "unexpected error finding plugin with unit %lu", buf, 0xCu);
          }

          v87 = v59;
          v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not find plugin for unit %lu", v64];
          v88 = v26;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
          v28 = _LSMakeNSErrorImpl(v58, -10810, v27, "+[LSApplicationExtensionRecord applicationExtensionRecordsForUUIDs:outContainingBundleRecords:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationExtensionRecord.mm", 345);

          v29 = 0;
          v10 = v28;
        }

        v18 += 4;
      }

      while (v18 != v63);
    }

    if ([v60 count])
    {
      v43 = v60;
      if (records)
      {
        v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
        for (j = v73; j; j = *j)
        {
          [v44 addObject:j[3]];
        }

        v46 = *records;
        *records = v44;
      }
    }

    else
    {
      v43 = 0;
    }

    std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::~__hash_table(&v72);

    *&v72 = &v80;
    std::vector<std::pair<unsigned int,NSUUID * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v72);
  }

  else
  {
    v47 = +[_LSDServiceDomain defaultServiceDomain];
    v48 = LaunchServices::Database::Context::_get(&v83, v47, 0);

    if (v48)
    {
      v10 = 0;
    }

    else
    {
      v10 = v86;
    }

    v43 = 0;
  }

  if (error && !v43)
  {
    v49 = v10;
    *error = v10;
  }

  if (v83 && v85 == 1)
  {
    _LSContextDestroy(v83);
  }

  v50 = v84;
  v83 = 0;
  v84 = 0;

  v85 = 0;
  v51 = v86;
  v86 = 0;

  v52 = *MEMORY[0x1E69E9840];

  return v43;
}

- (id)_containingBundleRecordWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSPluginData *)bytes
{
  WeakRetained = objc_loadWeakRetained(&self->_weakContainingBundleRecord);

  if (WeakRetained)
  {
    goto LABEL_2;
  }

  v9 = _LSBundleGet(context->db, bytes->var8);
  if (v9)
  {
    if (v9[42] != 2)
    {
LABEL_2:
      v9 = 0;
      goto LABEL_3;
    }

    v9 = [[LSApplicationRecord alloc] _initWithContext:context bundleID:bytes->var8 bundleData:v9 error:0];
  }

LABEL_3:

  return v9;
}

- (unint64_t)compatibilityState
{
  containingBundleRecord = [(LSApplicationExtensionRecord *)self containingBundleRecord];
  v4 = containingBundleRecord;
  if (containingBundleRecord)
  {
    compatibilityState = [containingBundleRecord compatibilityState];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = LSApplicationExtensionRecord;
    compatibilityState = [(LSBundleRecord *)&v8 compatibilityState];
  }

  v6 = compatibilityState;

  return v6;
}

- (id)managedPersonas
{
  containingBundleRecord = [(LSApplicationExtensionRecord *)self containingBundleRecord];
  managedPersonas = [containingBundleRecord managedPersonas];

  return managedPersonas;
}

- (id)associatedPersonas
{
  containingBundleRecord = [(LSApplicationExtensionRecord *)self containingBundleRecord];
  associatedPersonas = [containingBundleRecord associatedPersonas];

  return associatedPersonas;
}

- (id)_initWithContext:(LSContext *)context persistentIdentifierData:(const LSPersistentIdentifierData *)data length:(unint64_t)length
{
  var3 = data->var3;
  if (var3 != *([(_LSDatabase *)context->db schema]+ 1588))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSApplicationExtensionRecord.mm" lineNumber:484 description:{@"Invalid parameter not satisfying: %@", @"pi->tableID == ctx->db.schema->pluginTable"}];
  }

  v13.receiver = self;
  v13.super_class = LSApplicationExtensionRecord;
  return [(LSBundleRecord *)&v13 _initWithContext:context persistentIdentifierData:data length:length];
}

- (id)_replacementObjectForResolvedPropertyValue:(id)value forGetter:(SEL)getter encoder:(id)encoder
{
  if (sel__containingBundleRecord == getter)
  {
    valueCopy = value;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = LSApplicationExtensionRecord;
    valueCopy = [LSRecord _replacementObjectForResolvedPropertyValue:sel__replacementObjectForResolvedPropertyValue_forGetter_encoder_ forGetter:value encoder:?];
  }

  return valueCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = LSApplicationExtensionRecord;
  v4 = [(LSBundleRecord *)&v7 copyWithZone:zone];
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_weakContainingBundleRecord);
    objc_storeWeak(v4 + 10, WeakRetained);
  }

  return v4;
}

- (id)_intentsArrayForKey:(id)key
{
  infoDictionary = [(LSBundleRecord *)self infoDictionary];
  v5 = [infoDictionary objectForKey:@"NSExtension" ofClass:objc_opt_class()];

  if (!v5)
  {
    v9 = MEMORY[0x1E695E0F0];
    goto LABEL_13;
  }

  v6 = objc_opt_class();
  v7 = [v5 objectForKey:@"NSExtensionAttributes"];
  v8 = v7;
  if (v6 && v7)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = v8;
      v8 = 0;
LABEL_10:

      goto LABEL_11;
    }
  }

  else if (!v7)
  {
LABEL_11:
    v9 = MEMORY[0x1E695E0F0];
    goto LABEL_12;
  }

  v9 = [v8 objectForKeyedSubscript:key];
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = objc_opt_class();
  if ((_LSIsArrayWithValuesOfClass(v9, v10) & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_12:

LABEL_13:

  return v9;
}

void __108__LSApplicationExtensionRecord_Redaction__redactedAppexRecordWithUUID_node_bundleIdentifier_platform_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v5 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v5, a3);
}

- (id)recordForUnredactingWithContext:(LSContext *)context error:(id *)error
{
  v7 = [LSApplicationExtensionRecord alloc];
  _node = [(LSBundleRecord *)self _node];
  bundleIdentifier = [(LSBundleRecord *)self bundleIdentifier];
  LOBYTE(v12) = 0;
  v10 = [(LSApplicationExtensionRecord *)v7 _initWithUUID:0 node:_node bundleIdentifier:bundleIdentifier platform:[(LSBundleRecord *)self platform] context:context requireValid:1 allowRedacted:v12 error:error];

  return v10;
}

+ (id)appexRecordsForUnitIDsWithContext:(LSContext *)context unitIDs:(const void *)ds
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(ds + 1) == *ds)
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:(*(ds + 1) - *ds) >> 2];
    v8 = *ds;
    v9 = *(ds + 1);
    if (*ds != v9)
    {
      *&v7 = 134218242;
      v18 = v7;
      do
      {
        v10 = *v8;
        v11 = [LSApplicationExtensionRecord alloc];
        v19 = 0;
        v12 = [(LSApplicationExtensionRecord *)v11 _initWithContext:context pluginID:v10 pluginData:0 error:&v19];
        v13 = v19;
        if (v12)
        {
          [v6 addObject:v12];
        }

        else
        {
          v14 = _LSDefaultLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            v21 = v10;
            v22 = 2112;
            v23 = v13;
            _os_log_error_impl(&dword_18162D000, v14, OS_LOG_TYPE_ERROR, "Unable to create appex record for unit ID 0x%llx: %@", buf, 0x16u);
          }
        }

        ++v8;
      }

      while (v8 != v9);
    }

    v15 = [v6 copy];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)enumeratorWithOptions:(unint64_t)options
{
  v3 = [[_LSApplicationExtensionRecordEnumerator alloc] initWithExtensionPointIdentifier:0 options:options];

  return v3;
}

+ (id)enumeratorWithExtensionPointRecord:(id)record options:(unint64_t)options
{
  if (!record)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSRecord+Enumeration.mm" lineNumber:296 description:{@"Invalid parameter not satisfying: %@", @"extensionPointRecord != nil"}];
  }

  v6 = [[_LSApplicationExtensionRecordEnumerator alloc] initWithExtensionPoint:record options:options];

  return v6;
}

@end