@interface ATXRegexFilter
+ (id)_compilePatterns:(id)patterns assetName:(id)name ruleName:(id)ruleName;
- (ATXRegexFilter)initWithAssetName:(id)name;
- (BOOL)_checkString:(id)string againstRegexesArray:(id)array;
- (BOOL)_checkString:(id)string againstRegexesArrayDictionary:(id)dictionary;
- (BOOL)shouldFilterOutAction:(id)action;
- (BOOL)shouldFilterOutBundleId:(id)id andAttribute:(id)attribute;
- (id)_initWithAssetName:(id)name asset:(id)asset;
- (id)description;
@end

@implementation ATXRegexFilter

- (ATXRegexFilter)initWithAssetName:(id)name
{
  nameCopy = name;
  v5 = [ATXAssets2 dictionaryForClassName:nameCopy];
  v6 = [(ATXRegexFilter *)self _initWithAssetName:nameCopy asset:v5];

  return v6;
}

- (id)_initWithAssetName:(id)name asset:(id)asset
{
  nameCopy = name;
  assetCopy = asset;
  objc_storeStrong(&self->_assetName, name);
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v12 = v11;
  if (assetCopy)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __43__ATXRegexFilter__initWithAssetName_asset___block_invoke;
    v20[3] = &unk_1E80C1750;
    v21 = v11;
    v22 = nameCopy;
    v23 = v10;
    v24 = v9;
    selfCopy = self;
    [assetCopy enumerateKeysAndObjectsUsingBlock:v20];

    v13 = v21;
  }

  else
  {
    v13 = __atxlog_handle_default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXRegexFilter _initWithAssetName:asset:];
    }
  }

  combinedFilters = self->_combinedFilters;
  self->_combinedFilters = v9;
  v15 = v9;

  bundleIdsFilters = self->_bundleIdsFilters;
  self->_bundleIdsFilters = v10;
  v17 = v10;

  attributesFilters = self->_attributesFilters;
  self->_attributesFilters = v12;

  return self;
}

void __43__ATXRegexFilter__initWithAssetName_asset___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"bundleIdsRegexes"];
  v8 = [v6 objectForKeyedSubscript:@"attributesRegexes"];

  if ([v7 isEqualToArray:&unk_1F3E60750])
  {
    v9 = [ATXRegexFilter _compilePatterns:v8 assetName:*(a1 + 40) ruleName:v5];
    v10 = *(a1 + 32);
LABEL_5:
    [v10 setObject:v9 forKeyedSubscript:v5];
    goto LABEL_12;
  }

  v11 = [v8 isEqualToArray:&unk_1F3E60768];
  v9 = [ATXRegexFilter _compilePatterns:v7 assetName:*(a1 + 40) ruleName:v5];
  if (v11)
  {
    v10 = *(a1 + 48);
    goto LABEL_5;
  }

  v12 = [ATXRegexFilter _compilePatterns:v8 assetName:*(a1 + 40) ruleName:v5];
  if ([v9 count] && objc_msgSend(v12, "count"))
  {
    v13 = [MEMORY[0x1E69C5D98] tupleWithFirst:v9 second:v12];
    [*(a1 + 56) setObject:v13 forKeyedSubscript:v5];
  }

  else
  {
    v13 = __atxlog_handle_default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __43__ATXRegexFilter__initWithAssetName_asset___block_invoke_cold_1();
    }
  }

LABEL_12:
}

- (BOOL)shouldFilterOutBundleId:(id)id andAttribute:(id)attribute
{
  idCopy = id;
  attributeCopy = attribute;
  if ([(ATXRegexFilter *)self shouldFilterOutOnlyBasedOnBundleId:idCopy]|| [(ATXRegexFilter *)self shouldFilterOutOnlyBasedOnAttribute:attributeCopy])
  {
    v8 = 1;
  }

  else
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    combinedFilters = self->_combinedFilters;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __55__ATXRegexFilter_shouldFilterOutBundleId_andAttribute___block_invoke;
    v11[3] = &unk_1E80C1778;
    v11[4] = self;
    v12 = idCopy;
    v13 = attributeCopy;
    v14 = &v15;
    [(NSDictionary *)combinedFilters enumerateKeysAndObjectsUsingBlock:v11];
    v8 = *(v16 + 24);

    _Block_object_dispose(&v15, 8);
  }

  return v8 & 1;
}

void __55__ATXRegexFilter_shouldFilterOutBundleId_andAttribute___block_invoke(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = a1[4];
  v8 = a1[5];
  v13 = v6;
  v9 = [v6 first];
  LODWORD(v7) = [v7 _checkString:v8 againstRegexesArray:v9];

  if (v7)
  {
    v10 = a1[4];
    v11 = a1[6];
    v12 = [v13 second];
    LODWORD(v10) = [v10 _checkString:v11 againstRegexesArray:v12];

    if (v10)
    {
      *(*(a1[7] + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

- (BOOL)shouldFilterOutAction:(id)action
{
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [ATXRegexFilter shouldFilterOutAction:];
  }

  return 0;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  allKeys = [(NSDictionary *)self->_combinedFilters allKeys];
  allKeys2 = [(NSDictionary *)self->_bundleIdsFilters allKeys];
  allKeys3 = [(NSDictionary *)self->_attributesFilters allKeys];
  v7 = [v3 initWithFormat:@"<ATXRegexFilter: %@ %@ %@>", allKeys, allKeys2, allKeys3];

  return v7;
}

- (BOOL)_checkString:(id)string againstRegexesArray:(id)array
{
  v18 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  arrayCopy = array;
  v7 = arrayCopy;
  if (stringCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = arrayCopy;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = *v14;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v8);
          }

          if ([*(*(&v13 + 1) + 8 * i) rangeOfFirstMatchInString:stringCopy options:0 range:{0, objc_msgSend(stringCopy, "length", v13)}] != 0x7FFFFFFFFFFFFFFFLL)
          {
            LOBYTE(v9) = 1;
            goto LABEL_15;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v8 = __atxlog_handle_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ATXRegexFilter _checkString:againstRegexesArray:];
    }

    LOBYTE(v9) = 0;
  }

LABEL_15:

  return v9;
}

- (BOOL)_checkString:(id)string againstRegexesArrayDictionary:(id)dictionary
{
  stringCopy = string;
  dictionaryCopy = dictionary;
  if (stringCopy)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__ATXRegexFilter__checkString_againstRegexesArrayDictionary___block_invoke;
    v11[3] = &unk_1E80C17A0;
    v11[4] = self;
    v12 = stringCopy;
    v13 = &v14;
    [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v11];
    v8 = *(v15 + 24);

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ATXRegexFilter _checkString:againstRegexesArray:];
    }

    v8 = 0;
  }

  return v8 & 1;
}

uint64_t __61__ATXRegexFilter__checkString_againstRegexesArrayDictionary___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) _checkString:*(a1 + 40) againstRegexesArray:a3];
  if (result)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

+ (id)_compilePatterns:(id)patterns assetName:(id)name ruleName:(id)ruleName
{
  nameCopy = name;
  ruleNameCopy = ruleName;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__ATXRegexFilter__compilePatterns_assetName_ruleName___block_invoke;
  v13[3] = &unk_1E80C17C8;
  v14 = nameCopy;
  v15 = ruleNameCopy;
  v9 = ruleNameCopy;
  v10 = nameCopy;
  v11 = [patterns _pas_mappedArrayWithTransform:v13];

  return v11;
}

id __54__ATXRegexFilter__compilePatterns_assetName_ruleName___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0;
  v4 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:v3 options:0 error:&v11];
  v5 = v11;
  if (v5)
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      *buf = 138413058;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v3;
      v18 = 2112;
      v19 = v5;
      _os_log_error_impl(&dword_1BF549000, v6, OS_LOG_TYPE_ERROR, "%@ asset for rule %@ is not compiling pattern %@ with error %@", buf, 0x2Au);
    }

    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

void __43__ATXRegexFilter__initWithAssetName_asset___block_invoke_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_10();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1BF549000, v1, OS_LOG_TYPE_ERROR, "%@ asset for rule %@ is malformed, the rule will be ignored", v2, 0x16u);
}

@end