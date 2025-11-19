@interface UTType
+ (NSArray)typesWithTag:(NSString *)tag tagClass:(NSString *)tagClass conformingToType:(UTType *)supertype;
+ (UTType)_typeOfCurrentDevice;
+ (UTType)exportedTypeWithIdentifier:(NSString *)identifier;
+ (UTType)exportedTypeWithIdentifier:(NSString *)identifier conformingToType:(UTType *)parentType;
+ (UTType)importedTypeWithIdentifier:(NSString *)identifier;
+ (UTType)importedTypeWithIdentifier:(NSString *)identifier conformingToType:(UTType *)parentType;
+ (UTType)typeWithTag:(NSString *)tag tagClass:(NSString *)tagClass conformingToType:(UTType *)supertype;
+ (id)_exportedTypeWithIdentifier:(id)a3 bundle:(id)a4 conformingToType:(id)a5;
+ (id)_importedTypeWithIdentifier:(id)a3 bundle:(id)a4 conformingToType:(id)a5;
+ (id)_typeOfItemAtFileURL:(id)a3 error:(id *)a4;
+ (id)_typeOfPromiseAtFileURL:(id)a3 error:(id *)a4;
+ (id)_typeWithDeviceModelCode:(id)a3;
+ (id)_typeWithDeviceModelCode:(id)a3 enclosureColor:(UTHardwareColor)a4;
+ (id)_typeWithDeviceModelCodeWithoutResolvingCurrentDevice:(id)a3;
+ (id)_typeWithIdentifier:(id)a3 constantIndex:(int64_t)a4 error:(id *)a5;
+ (id)_typeWithTypeRecord:(id)a3 detachTypeRecord:(BOOL)a4 findConstant:(BOOL)a5;
+ (id)_typesWithIdentifiers:(id)a3;
+ (void)_enumerateAllDeclaredTypesUsingBlock:(id)a3;
+ (void)_unrealizeAllCoreTypes;
- (BOOL)_getPreferredEnclosureColor:(UTHardwareColor *)a3;
- (BOOL)_isCoreType;
- (BOOL)_isExported;
- (BOOL)_isImported;
- (BOOL)_isWildcard;
- (BOOL)conformsToType:(UTType *)type;
- (BOOL)isDeclared;
- (BOOL)isDynamic;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPublicType;
- (BOOL)isSubtypeOfType:(UTType *)type;
- (BOOL)isSupertypeOfType:(UTType *)type;
- (NSDictionary)_kindStringDictionary;
- (NSDictionary)_localizedDescriptionDictionary;
- (NSDictionary)tags;
- (NSNumber)version;
- (NSOrderedSet)_parentTypes;
- (NSSet)_childTypes;
- (NSSet)_subtypes;
- (NSSet)supertypes;
- (NSString)_kindString;
- (NSString)identifier;
- (NSString)localizedDescription;
- (NSURL)referenceAccessoryURL;
- (NSURL)referenceURL;
- (UTType)initWithCoder:(id)a3;
- (id)_initWithTypeRecord:(id)a3;
- (id)_kindStringWithPreferredLocalizations:(id)a3;
- (id)_localizedDescriptionWithPreferredLocalizations:(id)a3;
- (id)_preferredTagOfClass:(id)a3;
- (id)debugDescription;
- (unint64_t)_getEnclosureColors:(UTHardwareColor *)a3 count:(unint64_t)a4;
- (unint64_t)hash;
- (void)_setDefaultHandlerToApplicationRecord:(id)a3 completionHandler:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UTType

- (unint64_t)hash
{
  v2 = [(UTType *)self identifier];
  HashCode = _UTIdentifierGetHashCode(v2);

  return HashCode;
}

- (NSString)identifier
{
  v2 = [(UTType *)self _typeRecord];
  v3 = [v2 identifier];

  return v3;
}

- (BOOL)isDeclared
{
  v2 = [(UTType *)self _typeRecord];
  v3 = [v2 isDeclared];

  return v3;
}

- (BOOL)isDynamic
{
  v2 = [(UTType *)self _typeRecord];
  v3 = [v2 isDynamic];

  return v3;
}

+ (UTType)_typeOfCurrentDevice
{
  v17[2] = *MEMORY[0x1E69E9840];
  LOBYTE(v15) = 0;
  if (qword_1ED40DB98 != -1)
  {
    dispatch_once(&qword_1ED40DB98, &__block_literal_global_42);
  }

  if (_MergedGlobals != 1)
  {
    goto LABEL_19;
  }

  v2 = getenv("__UTModelCodeOverride");
  if (v2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v2];
  }

  else
  {
    v3 = 0;
  }

  v4 = getenv("__UTEnclosureColorOverride");
  if (!v4)
  {
    v10 = 0;
    LOBYTE(v9) = 0;
    v11 = 0;
    if (!v3)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v5 = v4;
  if (!strchr(v4, 44))
  {
    v11 = strtoll(v5, 0, 0) << 32;
    v10 = 1;
    LOBYTE(v9) = 1;
    if (!v3)
    {
      goto LABEL_17;
    }

LABEL_18:
    v15 = v11 | v9;
    v16 = v10;
    v12 = UniformTypeIdentifiers::ModelCode::getDeviceTypeWithModelCode(v3, &v15, 3);

    goto LABEL_22;
  }

  memset(v17, 0, 12);
  if (sscanf(v5, "%u,%u,%u", v17, &v17[0].u8[4], &v17[1]) < 3)
  {
    v10 = 0;
    v9 = 0;
  }

  else
  {
    v6 = vand_s8(*(v17 + 4), 0xFF000000FFLL);
    v7.i64[0] = v6.u32[0];
    v7.i64[1] = v6.u32[1];
    v8 = vshlq_u64(v7, xmmword_1AC1BBC50);
    v9 = vorrq_s8(vdupq_laneq_s64(v8, 1), v8).u64[0] | (v17[0].u8[0] << 32);
    v10 = 1;
  }

  v11 = v9;
  if (v3)
  {
    goto LABEL_18;
  }

LABEL_17:
  if (v10)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (qword_1ED40DB90 != -1)
  {
    dispatch_once(&qword_1ED40DB90, &__block_literal_global);
  }

  v12 = qword_1ED40DB88;
LABEL_22:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

void __48__UTType_DeviceModelCodes___typeOfCurrentDevice__block_invoke()
{
  v2[0] = 0;
  v2[8] = 0;
  v0 = UniformTypeIdentifiers::ModelCode::getDeviceTypeWithModelCode(0, v2, 3);
  v1 = qword_1ED40DB88;
  qword_1ED40DB88 = v0;
}

- (NSDictionary)tags
{
  v2 = [(UTType *)self _typeRecord];
  v3 = [v2 tagSpecification];
  v4 = [v3 _expensiveDictionaryRepresentation];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  v7 = v6;

  return v6;
}

+ (id)_typeWithDeviceModelCode:(id)a3
{
  if (!a3)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"UTModelCode.mm" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"modelCode != nil"}];
  }

  v9[0] = 0;
  v9[8] = 0;
  v4 = UniformTypeIdentifiers::ModelCode::getDeviceTypeWithModelCode(a3, v9, 1);

  return v4;
}

+ (id)_typeWithDeviceModelCode:(id)a3 enclosureColor:(UTHardwareColor)a4
{
  if (!a3)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"UTModelCode.mm" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"modelCode != nil"}];
  }

  v11 = a4;
  v12 = 1;
  v6 = UniformTypeIdentifiers::ModelCode::getDeviceTypeWithModelCode(a3, &v11, 1);

  return v6;
}

+ (id)_typeWithDeviceModelCodeWithoutResolvingCurrentDevice:(id)a3
{
  if (!a3)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"UTModelCode.mm" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"modelCode != nil"}];
  }

  v9[0] = 0;
  v9[8] = 0;
  v4 = UniformTypeIdentifiers::ModelCode::getDeviceTypeWithModelCodeAndHardwareColorWithoutResolvingCurrentDevice(a3, v9);

  return v4;
}

- (BOOL)_getPreferredEnclosureColor:(UTHardwareColor *)a3
{
  if (!a3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UTModelCode.mm" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"outEnclosureColor != NULL"}];
  }

  return [(UTType *)self _getEnclosureColors:a3 count:1]== 1;
}

- (unint64_t)_getEnclosureColors:(UTHardwareColor *)a3 count:(unint64_t)a4
{
  v49 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_54:
    v9 = 0;
    goto LABEL_55;
  }

  v4 = a4;
  v37 = [MEMORY[0x1E696AAA8] currentHandler];
  [v37 handleFailureInMethod:a2 object:self file:@"UTModelCode.mm" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"outEnclosureColors != NULL"}];

  a4 = v4;
  if (!v4)
  {
    goto LABEL_54;
  }

LABEL_3:
  v41 = a4;
  if (![(UTType *)self conformsToType:&off_1ED40D980])
  {
    v9 = 0;
    goto LABEL_31;
  }

  v6 = [(UTType *)self identifier];
  v7 = [v6 rangeOfString:@"-" options:4];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [v6 substringFromIndex:v7 + v8];
    v11 = [v10 length];
    v12 = 0;
    v13 = &byte_1E796E902;
    v14 = 160;
    do
    {
      v15 = *(v13 - 10);
      if (v15)
      {
        if (CFEqual(v15, v10))
        {
          v4 = (*(v13 - 2) << 24) | (*(v13 - 1) << 32) | (*v13 << 40);
          if ((v12 & 1) == 0)
          {
            v12 = 1;
          }
        }
      }

      v13 += 16;
      v14 -= 16;
    }

    while (v14);
    if ((v12 & 1) != 0 || v11 < 3)
    {
      if ((v12 & 1) != 0 || v11 - 3 < 0xFFFFFFFFFFFFFFFELL)
      {
        v16 = 0;
        v9 = 0;
        if ((v12 & 1) == 0)
        {
LABEL_29:

          goto LABEL_30;
        }

LABEL_26:
        *a3 = (v16 | (v4 << 8));
        v9 = 1;
        goto LABEL_29;
      }

      v17 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:v10];
      v47[0] = -1;
      v18 = [v17 scanLongLong:v47];
      v19 = v47[0];
      if (v47[0] >> 31)
      {
        v20 = 0;
      }

      else
      {
        v20 = v18;
      }

      if (v20 == 1)
      {

        v4 = v19 << 24;
        v16 = 1;
        goto LABEL_26;
      }
    }

    else
    {
      v46 = 0;
      LODWORD(v47[0]) = 0;
      if (sscanf([v10 UTF8String], "%x%n", v47, &v46) == 1 && v46 == 6)
      {
        v16 = 0;
        v4 = bswap64(v47[0] & 0xFFFFFF) >> 16;
        goto LABEL_26;
      }
    }

    v9 = 0;
    goto LABEL_29;
  }

  v9 = 0;
LABEL_30:

LABEL_31:
  if (v9 >= v41)
  {
    v9 = 1;
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v21 = [(UTType *)self tags];
    v22 = [v21 objectForKeyedSubscript:@"com.apple.device-model-code"];

    v23 = [v22 countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v23)
    {
      v24 = *v43;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v43 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v42 + 1) + 8 * i);
          v28 = [v26 rangeOfString:@"@ECOLOR="];
          if (v28 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v29 = v27;
            v30 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:v26];
            [v30 setCharactersToBeSkipped:0];
            [v30 setScanLocation:v28 + v29];
            memset(v47, 0, 12);
            if ([v30 scanInt:v47])
            {
              if ([v30 scanString:@" intoString:{", 0}] && objc_msgSend(v30, "scanInt:", v47 + 4) && objc_msgSend(v30, "scanString:intoString:", @",", 0) && objc_msgSend(v30, "scanInt:", &v47[1]))
              {
                v31 = vand_s8(vmax_s32(*(v47 + 4), 0), 0xFF000000FFLL);
                v32.i64[0] = v31.u32[0];
                v32.i64[1] = v31.u32[1];
                v33 = vshlq_u64(v32, xmmword_1AC1BBC50);
                v34 = vorrq_s8(vdupq_laneq_s64(v33, 1), v33).u64[0];
                v35 = (LOBYTE(v47[0]) & ~(SLODWORD(v47[0]) >> 31));
              }

              else
              {
                v35 = LODWORD(v47[0]);
                v34 = 1;
              }

              a3[v9++] = (v34 | (v35 << 32));
              if (v9 >= v41)
              {

                goto LABEL_52;
              }
            }
          }
        }

        v23 = [v22 countByEnumeratingWithState:&v42 objects:v48 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

LABEL_52:
  }

LABEL_55:
  v38 = *MEMORY[0x1E69E9840];
  return v9;
}

- (NSString)localizedDescription
{
  v2 = [(UTType *)self _typeRecord];
  v3 = [v2 localizedDescription];

  return v3;
}

- (NSNumber)version
{
  v2 = [(UTType *)self _typeRecord];
  v3 = [v2 version];

  return v3;
}

- (NSURL)referenceURL
{
  v2 = [(UTType *)self _typeRecord];
  v3 = [v2 referenceURL];

  return v3;
}

- (BOOL)isPublicType
{
  v2 = [(UTType *)self _typeRecord];
  v3 = [v2 isInPublicDomain];

  return v3;
}

+ (void)_enumerateAllDeclaredTypesUsingBlock:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"UTType.mm" lineNumber:204 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];
  }

  v20 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [MEMORY[0x1E69636B0] enumerator];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v5)
  {
    v6 = *v17;
LABEL_5:
    v7 = 0;
    while (1)
    {
      if (*v17 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v16 + 1) + 8 * v7);
      v9 = objc_autoreleasePoolPush();
      v10 = [UTType _typeWithTypeRecord:v8 detachTypeRecord:1 findConstant:1];
      if (v10)
      {
        (*(a3 + 2))(a3, v10, &v20);
      }

      v11 = v20;
      objc_autoreleasePoolPop(v9);
      if (v11)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v4 countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v5)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (id)_typesWithIdentifiers:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy_;
  v36 = __Block_byref_object_dispose_;
  v37 = 0;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v29;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        v9 = __UTFindCoreTypesConstantWithIdentifier(v8, 0x7FFFFFFFFFFFFFFFuLL);
        if ([v9 _isRealized])
        {
          v10 = v33[5];
          if (!v10)
          {
            v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v3, "count")}];
            v12 = v33[5];
            v33[5] = v11;

            v10 = v33[5];
          }

          [v10 setObject:v9 forKeyedSubscript:v8];
          if (!v5)
          {
            v5 = [v3 mutableCopy];
          }

          [v5 removeObject:v8];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v4);

    if (v5)
    {
      v13 = [v5 count];
      v14 = v5;
      if (!v13)
      {
        goto LABEL_29;
      }

      goto LABEL_19;
    }
  }

  else
  {

    v5 = 0;
  }

  v14 = v3;
LABEL_19:
  v15 = [MEMORY[0x1E69636B0] typeRecordsWithIdentifiers:v14];
  v16 = v15;
  if (v15)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __32__UTType__typesWithIdentifiers___block_invoke;
    v24[3] = &unk_1E796E9E0;
    v27 = &v32;
    v17 = v15;
    v25 = v17;
    v26 = v3;
    [v17 enumerateKeysAndObjectsUsingBlock:v24];
    if (qword_1ED40DC18 != -1)
    {
      dispatch_once(&qword_1ED40DC18, &__block_literal_global_2);
    }

    if (_MergedGlobals_2 == 1)
    {
      v18 = [v17 count];
      v19 = v18;
      if (v18)
      {
        if (v18 > 0x80)
        {
          v38 = 0;
          std::vector<UTTypeRecord *>::vector[abi:ne200100](&__p, v18);
        }

        bzero(&__p, 0x400uLL);
        [v17 getObjects:&__p andKeys:0 count:v19];
        _UTDetachTypeRecords(&__p, v19);
      }
    }
  }

LABEL_29:
  v20 = v33[5];
  if (v20)
  {
    v21 = [v20 copy];
  }

  else
  {
    v21 = MEMORY[0x1E695E0F8];
  }

  _Block_object_dispose(&v32, 8);
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

void __32__UTType__typesWithIdentifiers___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [UTType _typeWithTypeRecord:a3 detachTypeRecord:0 findConstant:1];
  if (v5)
  {
    v13 = v5;
    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
      v7 = *(*(a1 + 48) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }

    v9 = [*(a1 + 40) member:a2];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = a2;
    }

    v12 = v11;

    [*(*(*(a1 + 48) + 8) + 40) setObject:v13 forKeyedSubscript:v12];
    v5 = v13;
  }
}

- (id)_localizedDescriptionWithPreferredLocalizations:(id)a3
{
  if (!a3)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"UTType.mm" lineNumber:278 description:{@"Invalid parameter not satisfying: %@", @"preferredLocalizations != nil"}];
  }

  v5 = [(UTType *)self _typeRecord];
  v6 = [v5 localizedDescriptionWithPreferredLocalizations:a3];

  return v6;
}

- (NSDictionary)_localizedDescriptionDictionary
{
  v2 = [(UTType *)self identifier];
  v3 = _UTTypeCopyDescriptionLocalizationDictionary();

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  v5 = v4;

  return v4;
}

- (NSString)_kindString
{
  v2 = [(UTType *)self identifier];
  v3 = _UTTypeCopyKindStringForNonMaterializedItem();

  return v3;
}

- (id)_kindStringWithPreferredLocalizations:(id)a3
{
  if (!a3)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UTType.mm" lineNumber:305 description:{@"Invalid parameter not satisfying: %@", @"preferredLocalizations != nil"}];
  }

  v4 = [(UTType *)self identifier];
  v5 = _UTTypeCopyKindStringForNonMaterializedItem();

  return v5;
}

- (NSDictionary)_kindStringDictionary
{
  v2 = [(UTType *)self identifier];
  v3 = _UTTypeCopyKindStringDictionaryForNonMaterializedItem();
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  v6 = v5;

  return v5;
}

+ (id)_typeOfItemAtFileURL:(id)a3 error:(id *)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v15 = 0;
  v6 = [a3 getResourceValue:&v15 forKey:*MEMORY[0x1E695DAA0] error:a4];
  v7 = v15;
  v8 = v7;
  if (v6)
  {
    v9 = a4 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9 && v7 == 0)
  {
    v11 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696A998];
    v17[0] = a3;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *a4 = [v11 initWithDomain:*MEMORY[0x1E696A250] code:256 userInfo:v12];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)_typeOfPromiseAtFileURL:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (([a3 isFileURL] & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"UTType.mm" lineNumber:332 description:{@"Invalid parameter not satisfying: %@", @"promiseURL.fileURL"}];

    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a4)
  {
LABEL_3:
    v8 = objc_alloc(MEMORY[0x1E696ABC0]);
    v13 = *MEMORY[0x1E696A998];
    v14[0] = a3;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *a4 = [v8 initWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:v9];
  }

LABEL_4:
  v10 = *MEMORY[0x1E69E9840];
  return 0;
}

- (NSOrderedSet)_parentTypes
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v4 = objc_autoreleasePoolPush();
  v5 = [(UTType *)self _typeRecord];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __22__UTType__parentTypes__block_invoke;
  v20[3] = &unk_1E796EA08;
  v6 = v3;
  v21 = v6;
  [v5 enumerateParentTypesWithBlock:v20];

  v7 = v6;
  if (qword_1ED40DC18 != -1)
  {
    dispatch_once(&qword_1ED40DC18, &__block_literal_global_2);
  }

  if (_MergedGlobals_2 == 1)
  {
    v8 = [v7 count];
    if (v8)
    {
      if (v8 > 0x80)
      {
        v26[0] = 0;
        std::vector<UTTypeRecord *>::vector[abi:ne200100](__p, v8);
      }

      bzero(v26, 0x400uLL);
      *__p = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:__p objects:v27 count:16];
      if (v10)
      {
        v11 = 0;
        v12 = *v23;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v23 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(__p[1] + i);
            v15 = v14;
            if ((v14 & 0x8000000000000000) == 0 && [v14 _constantIndex] < 0)
            {
              v16 = [v15 _typeRecord];
              if (v16)
              {
                v26[v11++] = v16;
              }
            }
          }

          v10 = [v9 countByEnumeratingWithState:__p objects:v27 count:16];
        }

        while (v10);

        if (v11)
        {
          _UTDetachTypeRecords(v26, v11);
        }
      }

      else
      {
      }
    }
  }

  objc_autoreleasePoolPop(v4);
  v17 = [v7 copy];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

void __22__UTType__parentTypes__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [UTType _typeWithTypeRecord:a2 detachTypeRecord:0 findConstant:1];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (NSSet)_childTypes
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = objc_autoreleasePoolPush();
  v5 = [(UTType *)self _typeRecord];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __21__UTType__childTypes__block_invoke;
  v9[3] = &unk_1E796EA08;
  v6 = v3;
  v10 = v6;
  [v5 enumerateChildTypesWithBlock:v9];

  UniformTypeIdentifiers::Type::detachTypeRecordsInTypes<NSMutableSet<UTType *> * {__strong}>(v6);
  objc_autoreleasePoolPop(v4);
  v7 = [v6 copy];

  return v7;
}

void __21__UTType__childTypes__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [UTType _typeWithTypeRecord:a2 detachTypeRecord:0 findConstant:1];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (NSSet)_subtypes
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = objc_autoreleasePoolPush();
  v5 = [(UTType *)self _typeRecord];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __19__UTType__subtypes__block_invoke;
  v9[3] = &unk_1E796EA08;
  v6 = v3;
  v10 = v6;
  [v5 enumerateDescendantsWithBlock:v9];

  UniformTypeIdentifiers::Type::detachTypeRecordsInTypes<NSMutableSet<UTType *> * {__strong}>(v6);
  objc_autoreleasePoolPop(v4);
  v7 = [v6 copy];

  return v7;
}

void __19__UTType__subtypes__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [UTType _typeWithTypeRecord:a2 detachTypeRecord:0 findConstant:1];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (BOOL)_isExported
{
  v2 = [(UTType *)self _typeRecord];
  v3 = [v2 isExported];

  return v3;
}

- (BOOL)_isImported
{
  v2 = [(UTType *)self _typeRecord];
  v3 = [v2 isImported];

  return v3;
}

- (BOOL)_isWildcard
{
  v2 = [(UTType *)self _typeRecord];
  v3 = [v2 isWildcard];

  return v3;
}

- (BOOL)_isCoreType
{
  v2 = [(UTType *)self _typeRecord];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isCoreType];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_typeWithTypeRecord:(id)a3 detachTypeRecord:(BOOL)a4 findConstant:(BOOL)a5
{
  v5 = a4;
  v12 = a3;
  if (!a3)
  {
    goto LABEL_8;
  }

  v6 = a5;
  v8 = _UTTaggedTypeCreate(a3);
  if (v8)
  {
    goto LABEL_12;
  }

  if (!v6 || ([a3 identifier], v9 = objc_claimAutoreleasedReturnValue(), __UTFindCoreTypesConstantWithIdentifier(v9, 0x7FFFFFFFFFFFFFFFuLL), v8 = objc_claimAutoreleasedReturnValue(), v9, !v8))
  {
LABEL_8:
    v10 = [[UTType alloc] _initWithTypeRecord:v12];
    if (v5 && v12)
    {
      v8 = v10;
      _UTDetachTypeRecords(&v12, 1);
    }

    else
    {
      v8 = v10;
    }

    goto LABEL_12;
  }

  if (_UTCoreTypesConstantSetTypeRecordIfNil(v8, v12) && v5)
  {
    _UTDetachTypeRecords(&v12, 1);
  }

LABEL_12:

  return v8;
}

- (id)_initWithTypeRecord:(id)a3
{
  v7.receiver = self;
  v7.super_class = UTType;
  v4 = [(UTType *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_typeRecord, a3);
  }

  return v5;
}

+ (void)_unrealizeAllCoreTypes
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = _UTGetAllCoreTypesConstants();
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v5++) _unrealize];
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)_preferredTagOfClass:(id)a3
{
  v4 = [(UTType *)self _typeRecord];
  v5 = [v4 preferredTagOfClass:a3];

  return v5;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  Class = object_getClass(self);
  v5 = [(UTType *)self identifier];
  v6 = [(UTType *)self isDynamic];
  v7 = [(UTType *)self isDeclared];
  v8 = @"not ";
  if (v6)
  {
    v9 = &stru_1F20ECC30;
  }

  else
  {
    v9 = @"not ";
  }

  if (v7)
  {
    v8 = &stru_1F20ECC30;
  }

  v10 = [v3 initWithFormat:@"<%@ %p> %@ (%@dynamic, %@declared)", Class, self, v5, v9, v8];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = a3;
    if (a3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = [(UTType *)self identifier];
        v6 = [v3 identifier];
        LOBYTE(v3) = _UTIdentifiersAreEqual(v5, v6);
      }

      else
      {
        LOBYTE(v3) = 0;
      }
    }
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = [(UTType *)self identifier];
  [a3 encodeObject:? forKey:?];

  [a3 encodeInteger:-[UTType _constantIndex](self forKey:{"_constantIndex"), @"constantIndex"}];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[UTType isDeclared](self, "isDeclared")}];
  [a3 encodeObject:? forKey:?];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[UTType isDynamic](self, "isDynamic")}];
  [a3 encodeObject:? forKey:?];
}

- (UTType)initWithCoder:(id)a3
{
  v32[2] = *MEMORY[0x1E69E9840];
  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"declared"];
  v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"dynamic"];
  if (_NSIsNSString())
  {
    if (object_getClass(self) == UTType && (v20 = __UTFindCoreTypesConstantWithIdentifier(v5, [a3 decodeIntegerForKey:@"constantIndex"])) != 0)
    {
      v14 = v20;
    }

    else
    {
      if (!v6 || ((v8 = [v6 BOOLValue], !v7) ? (v9 = 1) : (v9 = v8), (v9 & 1) != 0 || (objc_msgSend(v7, "BOOLValue") & 1) != 0))
      {
        v10 = [MEMORY[0x1E69636B0] typeRecordWithIdentifier:v5];
      }

      else
      {
        v10 = [MEMORY[0x1E69636B0] typeRecordWithPotentiallyUndeclaredIdentifier:v5];
      }

      v11 = v10;
      v26 = v10;
      if (v10)
      {
        v12 = _UTTaggedTypeCreate(v10);
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = [(UTType *)self _initWithTypeRecord:v11];
          if (v14)
          {
            _UTDetachTypeRecords(&v26, 1);
          }
        }

        v22 = v26;
      }

      else
      {

        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31[0] = *MEMORY[0x1E696A278];
        v31[1] = @"UTIdentifier";
        v32[0] = @"Unrecognized type identifier.";
        v32[1] = v5;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
        v23 = [v21 initWithDomain:*MEMORY[0x1E696A250] code:4864 userInfo:v22];
        [a3 failWithError:v23];

        v14 = 0;
      }
    }
  }

  else
  {

    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    if (v5)
    {
      v29[0] = *MEMORY[0x1E696A278];
      v29[1] = @"UTIdentifier";
      v30[0] = @"Type identifier was not a string.";
      v30[1] = v5;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
      v17 = [v15 initWithDomain:*MEMORY[0x1E696A250] code:4864 userInfo:v16];
      [a3 failWithError:v17];
    }

    else
    {
      v27 = *MEMORY[0x1E696A278];
      v28 = @"Type identifier was not encoded.";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v19 = [v15 initWithDomain:*MEMORY[0x1E696A250] code:4865 userInfo:v18];
      [a3 failWithError:v19];
    }

    v14 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)conformsToType:(UTType *)type
{
  if (!type)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"UTType.mm" lineNumber:623 description:{@"Invalid parameter not satisfying: %@", @"type != nil"}];
  }

  if (self == type)
  {
    return 1;
  }

  v5 = [(UTType *)self identifier];
  v6 = [(UTType *)type identifier];
  v7 = _UTIdentifiersAreEqual(v5, v6);

  if (v7)
  {
    return 1;
  }

  v9 = [(UTType *)self _typeRecord];
  v10 = [(UTType *)type identifier];
  v8 = [v9 conformsToTypeIdentifier:v10];

  return v8;
}

- (BOOL)isSupertypeOfType:(UTType *)type
{
  if (!type)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UTType.mm" lineNumber:641 description:{@"Invalid parameter not satisfying: %@", @"type != nil"}];
  }

  return [(UTType *)type isSubtypeOfType:self];
}

- (BOOL)isSubtypeOfType:(UTType *)type
{
  if (!type)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"UTType.mm" lineNumber:648 description:{@"Invalid parameter not satisfying: %@", @"type != nil"}];
  }

  if (self == type)
  {
    return 0;
  }

  v5 = [(UTType *)self identifier];
  v6 = [(UTType *)type identifier];
  v7 = !_UTIdentifiersAreEqual(v5, v6) && [(UTType *)self conformsToType:type];

  return v7;
}

- (NSSet)supertypes
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = [(UTType *)self _typeRecord];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __33__UTType_Conformance__supertypes__block_invoke;
  v18[3] = &unk_1E796EA08;
  v5 = v3;
  v19 = v5;
  [v4 enumeratePedigreeWithBlock:v18];

  v6 = [v5 copy];
  if (qword_1ED40DC18 != -1)
  {
    dispatch_once(&qword_1ED40DC18, &__block_literal_global_2);
  }

  if (_MergedGlobals_2 == 1)
  {
    v7 = [v6 count];
    if (v7)
    {
      if (v7 > 0x80)
      {
        v24[0] = 0;
        std::vector<UTTypeRecord *>::vector[abi:ne200100](__p, v7);
      }

      bzero(v24, 0x400uLL);
      *__p = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:__p objects:v25 count:16];
      if (v9)
      {
        v10 = 0;
        v11 = *v21;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v21 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(__p[1] + i);
            v14 = v13;
            if ((v13 & 0x8000000000000000) == 0 && [v13 _constantIndex] < 0)
            {
              v15 = [v14 _typeRecord];
              if (v15)
              {
                v24[v10++] = v15;
              }
            }
          }

          v9 = [v8 countByEnumeratingWithState:__p objects:v25 count:16];
        }

        while (v9);

        if (v10)
        {
          _UTDetachTypeRecords(v24, v10);
        }
      }

      else
      {
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return v6;
}

void __33__UTType_Conformance__supertypes__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [UTType _typeWithTypeRecord:a2 detachTypeRecord:0 findConstant:1];
  [*(a1 + 32) addObject:v5];

  objc_autoreleasePoolPop(v4);
}

+ (UTType)typeWithTag:(NSString *)tag tagClass:(NSString *)tagClass conformingToType:(UTType *)supertype
{
  if (tag)
  {
    if (tagClass)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"UTType.mm" lineNumber:695 description:{@"Invalid parameter not satisfying: %@", @"tag != nil"}];

    if (tagClass)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:a1 file:@"UTType.mm" lineNumber:696 description:{@"Invalid parameter not satisfying: %@", @"tagClass != nil"}];

LABEL_3:
  if (UniformTypeIdentifiers::Type::isTagValid(tag, tagClass, tag))
  {
    v10 = MEMORY[0x1E69636B0];
    v11 = [(UTType *)supertype identifier];
    v12 = [v10 typeRecordWithTag:tag ofClass:tagClass conformingToIdentifier:v11];

    if (v12)
    {
      v13 = [UTType _typeWithTypeRecord:v12 detachTypeRecord:1 findConstant:1];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (NSArray)typesWithTag:(NSString *)tag tagClass:(NSString *)tagClass conformingToType:(UTType *)supertype
{
  v33 = *MEMORY[0x1E69E9840];
  if (tag)
  {
    if (tagClass)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:a1 file:@"UTType.mm" lineNumber:711 description:{@"Invalid parameter not satisfying: %@", @"tag != nil"}];

    if (tagClass)
    {
      goto LABEL_3;
    }
  }

  v25 = [MEMORY[0x1E696AAA8] currentHandler];
  [v25 handleFailureInMethod:a2 object:a1 file:@"UTType.mm" lineNumber:712 description:{@"Invalid parameter not satisfying: %@", @"tagClass != nil"}];

LABEL_3:
  if (!UniformTypeIdentifiers::Type::isTagValid(tag, tagClass, tag))
  {
    goto LABEL_20;
  }

  v10 = MEMORY[0x1E69636B0];
  v11 = [(UTType *)supertype identifier];
  v12 = [v10 typeRecordsWithTag:tag ofClass:tagClass conformingToIdentifier:v11];

  if (!v12)
  {
    goto LABEL_20;
  }

  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v12, "count")}];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v15)
  {
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = [UTType _typeWithTypeRecord:*(*(&v26 + 1) + 8 * i) detachTypeRecord:0 findConstant:1];
        [v13 addObject:v18];
      }

      v15 = [v14 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v15);
  }

  v19 = [v13 copy];
  if (qword_1ED40DC18 != -1)
  {
    dispatch_once(&qword_1ED40DC18, &__block_literal_global_2);
  }

  if (_MergedGlobals_2 == 1)
  {
    v20 = [v14 count];
    v21 = v20;
    if (v20)
    {
      if (v20 > 0x80)
      {
        v30 = 0;
        std::vector<UTTypeRecord *>::vector[abi:ne200100](&__p, v20);
      }

      bzero(&__p, 0x400uLL);
      [v14 getObjects:&__p range:{0, v21}];
      _UTDetachTypeRecords(&__p, v21);
    }
  }

  if (!v19)
  {
LABEL_20:
    v19 = MEMORY[0x1E695E0F0];
  }

  v22 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (UTType)exportedTypeWithIdentifier:(NSString *)identifier
{
  v5 = __UTGetDeclarationStatusFromInfoPlist(identifier, 1, 0, v3);
  if (v5)
  {
    __UNIFORM_TYPE_IDENTIFIER_WAS_NOT_DECLARED_IN_INFO_PLIST_OF_BUNDLE__(identifier, 1, 0, v5);
  }

  return UniformTypeIdentifiers::Type::getExportedType(identifier, 0, v6, v7);
}

+ (UTType)exportedTypeWithIdentifier:(NSString *)identifier conformingToType:(UTType *)parentType
{
  if (!parentType)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"UTType.mm" lineNumber:751 description:{@"Invalid parameter not satisfying: %@", @"parentType != nil"}];
  }

  v6 = __UTGetDeclarationStatusFromInfoPlist(identifier, 1, 0, v4);
  if (v6)
  {
    __UNIFORM_TYPE_IDENTIFIER_WAS_NOT_DECLARED_IN_INFO_PLIST_OF_BUNDLE__(identifier, 1, 0, v6);
  }

  return UniformTypeIdentifiers::Type::getExportedType(identifier, 0, v7, v8);
}

+ (UTType)importedTypeWithIdentifier:(NSString *)identifier
{
  v5 = __UTGetDeclarationStatusFromInfoPlist(identifier, 0, 0, v3);
  if (v5)
  {
    __UNIFORM_TYPE_IDENTIFIER_WAS_NOT_DECLARED_IN_INFO_PLIST_OF_BUNDLE__(identifier, 0, 0, v5);
  }

  return UniformTypeIdentifiers::Type::getImportedType(identifier, 0, 0, v6);
}

+ (UTType)importedTypeWithIdentifier:(NSString *)identifier conformingToType:(UTType *)parentType
{
  if (!parentType)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"UTType.mm" lineNumber:765 description:{@"Invalid parameter not satisfying: %@", @"parentType != nil"}];
  }

  v7 = __UTGetDeclarationStatusFromInfoPlist(identifier, 0, 0, v4);
  if (v7)
  {
    __UNIFORM_TYPE_IDENTIFIER_WAS_NOT_DECLARED_IN_INFO_PLIST_OF_BUNDLE__(identifier, 0, 0, v7);
  }

  return UniformTypeIdentifiers::Type::getImportedType(identifier, &parentType->super.isa, 0, v8);
}

+ (id)_exportedTypeWithIdentifier:(id)a3 bundle:(id)a4 conformingToType:(id)a5
{
  v8 = __UTGetDeclarationStatusFromInfoPlist(a3, 1, a4, v5);
  if (v8)
  {
    __UNIFORM_TYPE_IDENTIFIER_WAS_NOT_DECLARED_IN_INFO_PLIST_OF_BUNDLE__(a3, 1, a4, v8);
  }

  return UniformTypeIdentifiers::Type::getExportedType(a3, a4, v9, v10);
}

+ (id)_importedTypeWithIdentifier:(id)a3 bundle:(id)a4 conformingToType:(id)a5
{
  v9 = __UTGetDeclarationStatusFromInfoPlist(a3, 0, a4, v5);
  if (v9)
  {
    __UNIFORM_TYPE_IDENTIFIER_WAS_NOT_DECLARED_IN_INFO_PLIST_OF_BUNDLE__(a3, 0, a4, v9);
  }

  return UniformTypeIdentifiers::Type::getImportedType(a3, a5, a4, v10);
}

+ (id)_typeWithIdentifier:(id)a3 constantIndex:(int64_t)a4 error:(id *)a5
{
  v18[2] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"UTType.mm" lineNumber:916 description:{@"Invalid parameter not satisfying: %@", @"identifier != nil"}];
  }

  if (a1 == UTType)
  {
    v9 = __UTFindCoreTypesConstantWithIdentifier(a3, a4);
    if (v9)
    {
      goto LABEL_8;
    }

    v14 = [MEMORY[0x1E69636B0] typeRecordWithIdentifier:a3];
    if (v14)
    {
      v9 = [UTType _typeWithTypeRecord:v14 detachTypeRecord:1 findConstant:0];
    }

    else
    {
      v9 = 0;
    }

    if (!a5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = [a1 typeWithIdentifier:a3];
    if (!a5)
    {
      goto LABEL_8;
    }
  }

  if (!v9)
  {
    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v17[0] = *MEMORY[0x1E696A278];
    v17[1] = @"UTIdentifier";
    v18[0] = @"Unrecognized type identifier.";
    v18[1] = a3;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
    *a5 = [v10 initWithDomain:*MEMORY[0x1E696A250] code:4864 userInfo:v11];

    v9 = 0;
  }

LABEL_8:
  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

- (NSURL)referenceAccessoryURL
{
  v2 = [(UTType *)self _typeRecord];
  v3 = [v2 referenceAccessoryURL];

  if (v3)
  {
    v4 = [UTType _typeOfItemAtFileURL:v3 error:0];
    v5 = [UTType typeWithIdentifier:@"com.apple.arkit.referenceaccessory"];
    v6 = [v4 conformsToType:v5];

    if ((v6 & 1) == 0)
    {

      v3 = 0;
    }
  }

  return v3;
}

- (void)_setDefaultHandlerToApplicationRecord:(id)a3 completionHandler:(id)a4
{
  v8 = [MEMORY[0x1E6963608] defaultWorkspace];
  v7 = [(UTType *)self _typeRecord];
  [v8 setDefaultHandlerForTypeRecord:v7 toApplicationRecord:a3 completionHandler:a4];
}

@end