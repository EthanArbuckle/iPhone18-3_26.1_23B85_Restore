void CRLLogSinkf(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = a2;
  v12 = a5;
  v16 = a6;
  v17 = a6;
  v13 = [[NSString alloc] crl_initRedactedWithFormat:v12 arguments:a6];
  if (s_logSinkBlocks && [s_logSinkBlocks count] && objc_msgSend(s_logSinkBlocks, "count"))
  {
    v14 = 0;
    do
    {
      v15 = [s_logSinkBlocks objectAtIndexedSubscript:{v14, v16, v17}];
      (v15)[2](v15, a1, v11, a3, a4, v13);

      ++v14;
    }

    while (v14 < [s_logSinkBlocks count]);
  }
}

void CRLLogSinkv(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2;
  v12 = [NSString stringWithUTF8String:a5];
  CRLLogSinkf(a1, v11, a3, a4, v12, a6);
}

id CRLLogSinkSetBlock(void *a1)
{
  v1 = a1;
  v2 = [s_logSinkBlocks copy];
  if (v1)
  {
    v3 = objc_retainBlock(v1);
    v8 = v3;
    v4 = [NSArray arrayWithObjects:&v8 count:1];
    v5 = s_logSinkBlocks;
    s_logSinkBlocks = v4;
  }

  else
  {
    v6 = s_logSinkBlocks;
    s_logSinkBlocks = &__NSArray0__struct;
  }

  return v2;
}

id CRLLogSinkSetBlocks(void *a1)
{
  v1 = a1;
  v2 = [s_logSinkBlocks copy];
  v3 = s_logSinkBlocks;
  s_logSinkBlocks = v1;

  return v2;
}

os_log_t CRLLogCreateCategory(char *category)
{
  v1 = os_log_create("com.apple.freeform", category);

  return v1;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id EnabledCategories()
{
  if (EnabledCategories_pred != -1)
  {
    EnabledCategories_cold_1();
  }

  v1 = EnabledCategories_sYESCategories;

  return v1;
}

id DisabledCategories()
{
  if (DisabledCategories_pred != -1)
  {
    DisabledCategories_cold_1();
  }

  v1 = DisabledCategories_sNOCategories;

  return v1;
}

id CRLLogCat_GetSortedCategories()
{
  v0 = EnabledCategories();
  v1 = [v0 allObjects];

  v2 = DisabledCategories();
  v3 = [v2 allObjects];

  if (v3)
  {
    if (v1)
    {
      v4 = [v1 arrayByAddingObjectsFromArray:v3];

      v1 = v4;
    }

    else
    {
      v1 = v3;
    }
  }

  v5 = [v1 sortedArrayUsingSelector:"caseInsensitiveCompare:"];

  return v5;
}

BOOL CRLLogCat_AreAnyCategoriesEnabled()
{
  v0 = EnabledCategories();
  v1 = [v0 count] != 0;

  return v1;
}

BOOL CRLLogCat_AreAnyCategoriesDisabled()
{
  v0 = DisabledCategories();
  v1 = [v0 count] != 0;

  return v1;
}

id CRLLogCat_IsCategoryEnabled(void *a1)
{
  v1 = a1;
  v2 = EnabledCategories();
  v3 = [v2 containsObject:v1];

  return v3;
}

id CRLLogCat_IsCategoryDefined(void *a1)
{
  v1 = a1;
  v2 = EnabledCategories();
  if ([v2 containsObject:v1])
  {
    v3 = &dword_0 + 1;
  }

  else
  {
    v4 = DisabledCategories();
    v3 = [v4 containsObject:v1];
  }

  return v3;
}

void CRLLogCat_SetCategoryEnabled(void *a1, int a2)
{
  v3 = a1;
  v4 = EnabledCategories();
  v5 = DisabledCategories();
  v6 = [v5 containsObject:v3];
  if ([v4 containsObject:v3])
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 containsObject:v3] ^ 1;
  }

  if (a2)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  if (a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  [v8 removeObject:v3];
  [v9 addObject:v3];
  v10 = +[NSUserDefaults standardUserDefaults];
  v11 = [v4 allObjects];
  [v10 setObject:v11 forKey:@"CRLLogCatYES"];

  v12 = [v5 allObjects];
  [v10 setObject:v12 forKey:@"CRLLogCatNO"];

  if (v7)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = ___sendCategoryAddedNotification_block_invoke;
    block[3] = &unk_4CF08;
    v16 = v3;
    dispatch_async(&_dispatch_main_q, block);
  }

  if (v6 == a2)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __CRLLogCat_SetCategoryEnabled_block_invoke;
    v13[3] = &unk_4CF08;
    v14 = v3;
    dispatch_async(&_dispatch_main_q, v13);
  }
}

void CRLLogCat_ToggleCategoryEnabled(void *a1)
{
  v2 = a1;
  v1 = CRLLogCat_IsCategoryEnabled(v2);
  CRLLogCat_SetCategoryEnabled(v2, v1 ^ 1);
}

void CRLLogCat_RemoveCategory(void *a1)
{
  v1 = a1;
  v3 = EnabledCategories();
  v2 = DisabledCategories();
  [v3 removeObject:v1];
  [v2 removeObject:v1];
}

id CRLLogCat_GetEnabledCategories()
{
  v0 = EnabledCategories();
  v1 = [v0 immutableSet];

  return v1;
}

id CRLLogCat_GetDisabledCategories()
{
  v0 = DisabledCategories();
  v1 = [v0 immutableSet];

  return v1;
}

id CRLLogGetNameDictionary()
{
  if (CRLLogGetNameDictionary_onceToken != -1)
  {
    CRLLogGetNameDictionary_cold_1();
  }

  v1 = CRLLogGetNameDictionary_nameDictionary;

  return v1;
}

void *CRLLogEnsureCreated(void *a1, void *a2, dispatch_once_t *a3)
{
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = __CRLLogEnsureCreated_block_invoke;
  v14 = &unk_4CF50;
  v15 = a1;
  v16 = a2;
  v5 = *a3;
  v6 = a1;
  if (v5 != -1)
  {
    dispatch_once(a3, &v11);
  }

  v7 = CRLLogGetNameDictionary();
  [v7 setObject:v6 forKey:{*a2, v11, v12, v13, v14, v15, v16}];

  v8 = *a2;
  v9 = v8;

  return v8;
}

void __CRLLogEnsureCreated_block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.freeform", [*(a1 + 32) UTF8String]);

  **(a1 + 40) = v2;
}

id CRLLogGetName(void *a1)
{
  v1 = a1;
  v2 = CRLLogGetNameDictionary();
  v3 = [v2 objectForKey:v1];

  return v3;
}

void ___sendCategoryAddedNotification_block_invoke(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (CRLAssertCat_init_token != -1)
    {
      ___sendCategoryAddedNotification_block_invoke_cold_1();
    }

    v3 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      ___sendCategoryAddedNotification_block_invoke_cold_2(v2, v3);
    }

    if (CRLAssertCat_init_token != -1)
    {
      ___sendCategoryAddedNotification_block_invoke_cold_3();
    }

    v4 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      ___sendCategoryAddedNotification_block_invoke_cold_4(v4, v2);
    }

    v5 = [NSString stringWithUTF8String:"void _sendCategoryAddedNotification(NSString *__strong)_block_invoke"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLLog.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:151 isFatal:0 description:"invalid nil value for '%{public}s'", "category"];
  }

  v7 = +[NSNotificationCenter defaultCenter];
  v8 = *(a1 + 32);
  v10 = @"CRLLogCatCategoryKey";
  v11 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [v7 postNotificationName:@"CRLLogCatCategoryAdded" object:0 userInfo:v9];
}

void ___sendCategoryAddedNotification_block_invoke_2(id a1)
{
  CRLAssertCat_log_t = os_log_create("com.apple.freeform", "CRLAssertCat");

  _objc_release_x1();
}

void ___sendCategoryAddedNotification_block_invoke_58(id a1)
{
  CRLAssertCat_log_t = os_log_create("com.apple.freeform", "CRLAssertCat");

  _objc_release_x1();
}

uint64_t CRLBuildIndexFromBuildVersion(void *a1)
{
  v1 = a1;
  v25 = 0;
  v2 = [NSRegularExpression regularExpressionWithPattern:@"([0-9]+)([A-Za-z])([0-9]+)([A-Za-z])?" options:1 error:&v25];
  v3 = [v2 firstMatchInString:v1 options:0 range:{0, objc_msgSend(v1, "length")}];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 rangeAtIndex:1];
    v7 = [v1 substringWithRange:{v5, v6}];
    v8 = [v7 intValue];

    v9 = [v4 rangeAtIndex:2];
    v11 = [v1 substringWithRange:{v9, v10}];
    v12 = [v11 uppercaseString];
    v13 = [v12 characterAtIndex:0];

    v14 = [v4 rangeAtIndex:3];
    v16 = [v1 substringWithRange:{v14, v15}];
    v17 = [v16 intValue];

    v18 = [v4 rangeAtIndex:4];
    v20 = 0;
    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = [v1 substringWithRange:{v18, v19}];
      v22 = [v21 uppercaseString];
      v20 = [v22 characterAtIndex:0] - 64;
    }

    v23 = v20 | (32 * (((v13 << 14) + 0x7FFFFFFFFF00000) | (v8 << 19) | v17));
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

id CRLBuildIndexSetFromString(void *a1)
{
  v1 = a1;
  v23 = 0;
  v2 = [NSRegularExpression regularExpressionWithPattern:@"([0-9A-Za-z]+)([- options:])? *" error:1, &v23];
  v3 = v23;
  v4 = [v1 length];
  v22 = +[NSMutableIndexSet indexSet];
  if (!v4)
  {
    goto LABEL_28;
  }

  v21 = v3;
  v5 = 0;
  v6 = 0;
  while (1)
  {
    v7 = [v2 firstMatchInString:v1 options:0 range:{v5, v4}];
    v8 = v7;
    if (!v7)
    {
      break;
    }

    v9 = [v7 rangeAtIndex:1];
    v11 = [v1 substringWithRange:{v9, v10}];
    v12 = [v8 rangeAtIndex:2];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0;
      if ([0 isEqualToString:@"-"])
      {
        goto LABEL_8;
      }

LABEL_12:
      if (v6)
      {
        v15 = CRLBuildIndexFromBuildVersion(v6);
        v16 = CRLBuildIndexFromBuildVersion(v11);
        if (v15 && v16 && v16 >= v15)
        {
          [v22 addIndexesInRange:{v15, v16 - v15 + 1}];
        }

        v6 = 0;
      }

      else
      {
        v17 = CRLBuildIndexFromBuildVersion(v11);
        if (v17)
        {
          [v22 addIndex:v17];
        }

        v6 = 0;
      }

      goto LABEL_21;
    }

    v14 = [v1 substringWithRange:{v12, v13}];
    if ([v14 isEqualToString:@"-"])
    {
LABEL_8:
      if (!v6)
      {
        v6 = v11;
      }

      goto LABEL_21;
    }

    if (!v14 || [v14 isEqualToString:{@", "}])
    {
      goto LABEL_12;
    }

LABEL_21:
    [v8 rangeAtIndex:0];
    v5 += v18;
    v4 -= v18;

    if (!v4)
    {
      goto LABEL_24;
    }
  }

LABEL_24:
  v3 = v21;
  if (v6)
  {
    v19 = CRLBuildIndexFromBuildVersion(v6);
    if (v19)
    {
      [v22 addIndexesInRange:{v19, 0x7FFFFFFFFFFFFFFELL - v19}];
    }
  }

LABEL_28:

  return v22;
}

id CRLProductBuildVersion()
{
  v0 = [NSBundle bundleForClass:objc_opt_class()];
  v1 = [v0 bundlePath];
  v2 = [v1 stringByAppendingPathComponent:@"../../CoreServices/SystemVersion.plist"];
  v3 = [v2 stringByStandardizingPath];

  v4 = [NSDictionary dictionaryWithContentsOfFile:v3];
  v5 = [v4 objectForKey:@"ProductBuildVersion"];
  v6 = [NSString stringWithFormat:@"%@", v5];

  return v6;
}

id CRLProductName()
{
  v0 = [NSBundle bundleForClass:objc_opt_class()];
  v1 = [v0 bundlePath];
  v2 = [v1 stringByAppendingPathComponent:@"../../CoreServices/SystemVersion.plist"];
  v3 = [v2 stringByStandardizingPath];

  v4 = [NSDictionary dictionaryWithContentsOfFile:v3];
  v5 = [v4 objectForKey:@"ProductName"];
  v6 = [NSString stringWithFormat:@"%@", v5];

  return v6;
}

uint64_t CRLProductBuildIndex()
{
  result = CRLProductBuildIndex_s_buildIndex;
  if (!CRLProductBuildIndex_s_buildIndex)
  {
    v1 = CRLProductBuildVersion();
    CRLProductBuildIndex_s_buildIndex = CRLBuildIndexFromBuildVersion(v1);

    return CRLProductBuildIndex_s_buildIndex;
  }

  return result;
}

id CRLSystemVersion()
{
  v0 = +[UIDevice currentDevice];
  v1 = [v0 systemVersion];

  return v1;
}

uint64_t CRLSystemVersionNumber()
{
  v0 = CRLSystemVersion();
  v1 = CRLVersionNumberFromString(v0);

  return v1;
}

uint64_t CRLVersionNumberFromString(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"."];
  v2 = [v1 count];
  if (v2 < 1)
  {
    v5 = 0;
  }

  else
  {
    v3 = v2;
    v4 = [v1 objectAtIndexedSubscript:0];
    v5 = 1000000 * [v4 integerValue];

    if (v3 != 1)
    {
      v6 = [v1 objectAtIndexedSubscript:1];
      v5 += 1000 * [v6 integerValue];

      if (v3 >= 3)
      {
        v7 = [v1 objectAtIndexedSubscript:2];
        v5 += [v7 integerValue];
      }
    }
  }

  return v5;
}

id CRLValidPlatformTags()
{
  v0 = CRLValidPlatformTags_validPlatforms;
  if (!CRLValidPlatformTags_validPlatforms)
  {
    v1 = [NSMutableSet setWithObject:@"ios"];
    v2 = CRLValidPlatformTags_validPlatforms;
    CRLValidPlatformTags_validPlatforms = v1;

    p_appendPlatformComponent(CRLValidPlatformTags_validPlatforms, @"-arm");
    v3 = CRLValidPlatformTags_validPlatforms;
    v4 = +[UIScreen mainScreen];
    [v4 scale];
    if (v5 == 2.0)
    {
      v6 = @"@2x";
    }

    else
    {
      v6 = @"@1x";
    }

    p_appendPlatformComponent(v3, v6);

    [CRLValidPlatformTags_validPlatforms addObject:@"default"];
    v0 = CRLValidPlatformTags_validPlatforms;
  }

  return v0;
}

void p_appendPlatformComponent(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = +[NSMutableSet set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [NSString stringWithFormat:@"%@%@", *(*(&v12 + 1) + 8 * v10), v4, v12];
        [v5 addObject:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [v6 unionSet:v5];
}

__CFString *CRLPlatformTag()
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v0 = CRLValidPlatformTags();
  v1 = [v0 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v11;
    v4 = &stru_4EB10;
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v11 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        if (([v6 isEqualToString:{@"default", v10}] & 1) == 0)
        {
          v7 = [v6 length];
          if (v7 > [(__CFString *)v4 length])
          {
            v8 = v6;

            v4 = v8;
          }
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v2);
  }

  else
  {
    v4 = &stru_4EB10;
  }

  return v4;
}

id CRLPlatformSpecificStringForBuildIndex(void *a1, uint64_t a2)
{
  v2 = a1;
  v36 = 0;
  v35 = [NSRegularExpression regularExpressionWithPattern:@"(?:\\[(ios|ios-sim|ios-sim@1x|ios-sim@2x|ios-arm|ios@2x|mac|mac32|mac64|default)(?:\\:([^\\]]*))?\\])?([^\\[]*)" options:1 error:&v36];
  v32 = v36;
  v3 = [v2 length];
  v4 = 0;
  v34 = 0;
  do
  {
    if (!v3)
    {
      break;
    }

    v5 = [v35 firstMatchInString:v2 options:0 range:{v4, v3}];
    if (!v5)
    {
      break;
    }

    v6 = v5;
    v7 = [v5 rangeAtIndex:1];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7;
    }

    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
    }

    else
    {
      v10 = v8;
    }

    v11 = [v2 substringWithRange:{v9, v10}];
    v12 = [v6 rangeAtIndex:2];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0;
    }

    else
    {
      v14 = v12;
    }

    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = 0;
    }

    else
    {
      v15 = v13;
    }

    v16 = [v2 substringWithRange:{v14, v15}];
    v17 = [v6 rangeAtIndex:3];
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = 0;
    }

    else
    {
      v19 = v17;
    }

    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = 0;
    }

    else
    {
      v20 = v18;
    }

    v21 = [v2 substringWithRange:{v19, v20}];
    if ([v11 length])
    {
      v22 = CRLValidPlatformTags();
      v23 = [v22 containsObject:v11];

      if (!v23)
      {
        goto LABEL_29;
      }
    }

    if (![v16 length])
    {
      v29 = v21;

      v27 = 0;
      v34 = v29;
      goto LABEL_31;
    }

    v24 = CRLBuildIndexSetFromString(v16);
    v25 = v24;
    if (!v24 || ([v24 containsIndex:a2] & 1) == 0)
    {

LABEL_29:
      [v6 rangeAtIndex:0];
      v4 += v28;
      v3 -= v28;
      v27 = 1;
      goto LABEL_31;
    }

    v26 = v21;

    v27 = 0;
    v34 = v26;
LABEL_31:
  }

  while ((v27 & 1) != 0);
  v30 = v34;

  return v34;
}

id CRLPlatformSpecificString(void *a1)
{
  v1 = a1;
  v2 = CRLProductBuildIndex();
  v3 = CRLPlatformSpecificStringForBuildIndex(v1, v2);

  return v3;
}

void sub_4FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void OUTLINED_FUNCTION_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x2Cu);
}

void CRLNormalizeRanges(void *a1)
{
  v15 = a1;
  [v15 sortUsingFunction:compareRangeValues context:0];
  if ([v15 count] >= 2)
  {
    v1 = 0;
    v2 = 1;
    do
    {
      v3 = v1;
      v1 = v2;
      v4 = [v15 objectAtIndex:v3];
      location = [v4 rangeValue];
      length = v6;

      v8 = [v15 objectAtIndex:v2];
      v9 = [v8 rangeValue];
      v11 = v10;
      while (1)
      {

        v17.location = location;
        v17.length = length;
        v19.location = v9;
        v19.length = v11;
        if (!NSIntersectionRange(v17, v19).length)
        {
          break;
        }

        v18.location = location;
        v18.length = length;
        v20.location = v9;
        v20.length = v11;
        v12 = NSUnionRange(v18, v20);
        location = v12.location;
        length = v12.length;
        v8 = [NSValue valueWithRange:v12.location, v12.length];
        [v15 replaceObjectAtIndex:v3 withObject:v8];
        [v15 removeObjectAtIndex:v2];
        if ([v15 count] <= v2)
        {
          v11 = 0;
        }

        else
        {
          v13 = [v15 objectAtIndex:v2];
          v9 = [v13 rangeValue];
          v11 = v14;
        }
      }

      v2 = (v2 + 1);
    }

    while ([v15 count] > v2);
  }
}

uint64_t compareRangeValues(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 rangeValue];
  v5 = [v3 rangeValue];

  if (v4 < v5)
  {
    return -1;
  }

  else
  {
    return v4 > v5;
  }
}

id CRLIntersectionLocations(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  v6 = [v4 count];
  if (v5 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = [NSMutableArray arrayWithCapacity:v7];
  v9 = [v3 mutableCopy];
  v10 = [v4 mutableCopy];
  CRLNormalizeRanges(v9);
  CRLNormalizeRanges(v10);
  if (v5 && v6)
  {
    while ([v9 count] && objc_msgSend(v10, "count"))
    {
      v11 = [v9 objectAtIndex:0];
      v12 = [v11 rangeValue];
      v14 = v13;

      v15 = [v10 objectAtIndex:0];
      v16 = [v15 rangeValue];
      v18 = v17;

      v24.location = v12;
      v24.length = v14;
      v26.location = v16;
      v26.length = v18;
      if (NSIntersectionRange(v24, v26).length)
      {
        v25.location = v12;
        v25.length = v14;
        v27.location = v16;
        v27.length = v18;
        v19 = NSIntersectionRange(v25, v27);
        v20 = [NSValue valueWithRange:v19.location, v19.length];
        [v8 addObject:v20];
      }

      if (v12 >= v16)
      {
        v21 = v10;
      }

      else
      {
        v21 = v9;
      }

      [v21 removeObjectAtIndex:0];
    }
  }

  return v8;
}

id CRLUnionLocations(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  v6 = [v4 count];
  if (v5 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  [NSMutableArray arrayWithCapacity:v7];
  v32 = v31 = v3;
  v8 = [v3 mutableCopy];
  v30 = v4;
  v9 = [v4 mutableCopy];
  CRLNormalizeRanges(v8);
  CRLNormalizeRanges(v9);
LABEL_5:
  if ([v8 count] && objc_msgSend(v9, "count"))
  {
    v10 = [v8 objectAtIndex:0];
    v11 = [v10 rangeValue];
    v13 = v12;

    v14 = [v9 objectAtIndex:0];
    v15 = [v14 rangeValue];
    v17 = v16;

    if (v11 >= v15)
    {
      length = v17;
    }

    else
    {
      length = v13;
    }

    if (v11 >= v15)
    {
      v19 = v15;
    }

    else
    {
      v19 = v11;
    }

    while (1)
    {
      while (1)
      {
        if (![v8 count] || !objc_msgSend(v9, "count"))
        {
LABEL_24:
          v28 = [NSValue valueWithRange:v19, length];
          [v32 addObject:v28];

          goto LABEL_5;
        }

        v34.location = v11;
        v34.length = v13;
        v38.location = v19;
        v38.length = length;
        location = NSIntersectionRange(v34, v38).location;
        v21 = location != 0;
        if (location)
        {
          v35.location = v11;
          v35.length = v13;
          v39.location = v19;
          v39.length = length;
          v22 = NSUnionRange(v35, v39);
          v19 = v22.location;
          length = v22.length;
          [v8 removeObjectAtIndex:0];
          if ([v8 count])
          {
            v23 = [v8 objectAtIndex:0];
            v11 = [v23 rangeValue];
            v13 = v24;
          }
        }

        v36.location = v15;
        v36.length = v17;
        v40.location = v19;
        v40.length = length;
        if (NSIntersectionRange(v36, v40).location)
        {
          break;
        }

LABEL_21:
        if (!v21)
        {
          goto LABEL_24;
        }
      }

      v37.location = v15;
      v37.length = v17;
      v41.location = v19;
      v41.length = length;
      v25 = NSUnionRange(v37, v41);
      v19 = v25.location;
      length = v25.length;
      [v9 removeObjectAtIndex:0];
      if (![v9 count])
      {
        v21 = 1;
        goto LABEL_21;
      }

      v26 = [v9 objectAtIndex:0];
      v15 = [v26 rangeValue];
      v17 = v27;
    }
  }

  [v32 addObjectsFromArray:v8];
  [v32 addObjectsFromArray:v9];

  return v32;
}

id CRLComplementLocations(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  v6 = [v4 count];
  if (v5 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = [NSMutableArray arrayWithCapacity:v7];
  v28 = v3;
  v9 = [v3 mutableCopy];
  v27 = v4;
  v10 = [v4 mutableCopy];
  CRLNormalizeRanges(v9);
  CRLNormalizeRanges(v10);
  v11 = [v9 objectAtIndex:0];
  v12 = [v11 rangeValue];

  if ([v9 count])
  {
    v13 = 0;
    do
    {
      if (![v10 count])
      {
        break;
      }

      v14 = [v9 objectAtIndex:0];
      v15 = [v14 rangeValue];
      v17 = v16;

      v18 = [v10 objectAtIndex:0];
      v19 = [v18 rangeValue];
      v21 = v20;

      v30.location = v15;
      v30.length = v17;
      v31.location = v19;
      v31.length = v21;
      v22 = NSIntersectionRange(v30, v31);
      if (v22.location)
      {
        if (v22.location > v12)
        {
          v13 = v22.location - v12;
        }

        if (v13)
        {
          v23 = [NSValue valueWithRange:v12, v13];
          [v8 addObject:v23];
        }

        if (&v15[v17] <= v22.location + v22.length)
        {
          goto LABEL_16;
        }

        [v10 removeObjectAtIndex:0];
        v13 = 0;
        v12 = (v22.location + v22.length);
      }

      else
      {
        if (v19 > v15)
        {
          v13 = &v15[v17] - v12;
          v24 = [NSValue valueWithRange:v12, v13];
          [v8 addObject:v24];

LABEL_16:
          [v9 removeObjectAtIndex:0];
          if ([v9 count])
          {
            v25 = [v9 objectAtIndex:0];
            v12 = [v25 rangeValue];

            v13 = 0;
          }

          continue;
        }

        [v10 removeObjectAtIndex:0];
      }
    }

    while ([v9 count]);
  }

  return v8;
}

NSUInteger CRLIntersectionRangeWithEdge(NSRange a1, NSRange a2, int a3)
{
  length = a2.length;
  location = a2.location;
  v6 = a1.length;
  v7 = a1.location;
  v8 = NSIntersectionRange(a1, a2);
  if (length)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v7 | location)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10;
  }

  if (v8 == 0uLL)
  {
    v12 = v11;
  }

  else
  {
    v12 = v8.location;
  }

  if (location + length == v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  if (v7 + v6 == location)
  {
    v14 = location;
  }

  else
  {
    v14 = v13;
  }

  if (a3)
  {
    return v14;
  }

  else
  {
    return v12;
  }
}

uint64_t CRLAdjustSelectionRangeForChangedRange(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1;
  if (!a5)
  {
    return v5;
  }

  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (CRLAssertCat_init_token != -1)
    {
      CRLAdjustSelectionRangeForChangedRange_cold_9();
    }

    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      CRLAdjustSelectionRangeForChangedRange_cold_10();
    }

    if (CRLAssertCat_init_token != -1)
    {
      CRLAdjustSelectionRangeForChangedRange_cold_11();
    }

    v7 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      [NSString(CRLAdditions) crl_stringByUniquingPathInsideDirectory:v7 withFormat:?];
    }

    v8 = [NSString stringWithUTF8String:"NSRange CRLAdjustSelectionRangeForChangedRange(NSRange, NSRange, NSInteger)"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLRangeUtils.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:218 isFatal:0 description:"Bad selectionRange passed to CRLAdjustSelectionRangeForChangedRange"];

    v5 = 0x7FFFFFFFFFFFFFFFLL;
    if (a3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      return v5;
    }

    goto LABEL_14;
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_14:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (CRLAssertCat_init_token != -1)
    {
      CRLAdjustSelectionRangeForChangedRange_cold_13();
    }

    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      CRLAdjustSelectionRangeForChangedRange_cold_14();
    }

    if (CRLAssertCat_init_token != -1)
    {
      CRLAdjustSelectionRangeForChangedRange_cold_15();
    }

    v10 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      [NSString(CRLAdditions) crl_stringByUniquingPathInsideDirectory:v10 withFormat:?];
    }

    v11 = [NSString stringWithUTF8String:"NSRange CRLAdjustSelectionRangeForChangedRange(NSRange, NSRange, NSInteger)"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLRangeUtils.m"];
    v13 = "Bad changingRange passed to CRLAdjustSelectionRangeForChangedRange";
    v14 = v11;
    v15 = v12;
    v16 = 219;
LABEL_23:
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:v16 isFatal:0 description:v13];

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (-a4 > a5)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (CRLAssertCat_init_token != -1)
    {
      CRLAdjustSelectionRangeForChangedRange_cold_5();
    }

    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      CRLAdjustSelectionRangeForChangedRange_cold_6();
    }

    if (CRLAssertCat_init_token != -1)
    {
      CRLAdjustSelectionRangeForChangedRange_cold_7();
    }

    v19 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      [NSString(CRLAdditions) crl_stringByUniquingPathInsideDirectory:v19 withFormat:?];
    }

    v11 = [NSString stringWithUTF8String:"NSRange CRLAdjustSelectionRangeForChangedRange(NSRange, NSRange, NSInteger)"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLRangeUtils.m"];
    v13 = "Bad delta passed to CRLAdjustSelectionRangeForChangedRange";
    v14 = v11;
    v15 = v12;
    v16 = 223;
    goto LABEL_23;
  }

  v20 = a1 + a2;
  if (a1 + a2 >= a3)
  {
    v21 = a3 + a4;
    if (a3 + a4 >= a1)
    {
      if ((a3 != a1 || a4 != a2) && (a1 > a3 || v20 < v21) && a3 <= a1)
      {
        if (v21 >= v20)
        {
          if (-a2 > a5 && a1 >= a4 + a5 + a3)
          {
            return a4 + a5 + a3;
          }
        }

        else
        {
          if (a1 <= a3)
          {
            +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (CRLAssertCat_init_token != -1)
            {
              CRLAdjustSelectionRangeForChangedRange_cold_1();
            }

            if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
            {
              CRLAdjustSelectionRangeForChangedRange_cold_2();
            }

            if (CRLAssertCat_init_token != -1)
            {
              CRLAdjustSelectionRangeForChangedRange_cold_3();
            }

            v22 = CRLAssertCat_log_t;
            if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
            {
              [NSString(CRLAdditions) crl_stringByUniquingPathInsideDirectory:v22 withFormat:?];
            }

            v23 = [NSString stringWithUTF8String:"NSRange CRLAdjustSelectionRangeForChangedRange(NSRange, NSRange, NSInteger)"];
            v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLRangeUtils.m"];
            [CRLAssertionHandler handleFailureInFunction:v23 file:v24 lineNumber:262 isFatal:0 description:"expected selectionRange to start within changingRange"];
          }

          if (a3 > v5 + a5)
          {
            return a3;
          }
        }
      }
    }

    else
    {
      return a1 + a5;
    }
  }

  return v5;
}

uint64_t enumerateAllSubrangesOfRange(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result + a2;
  if (!__CFADD__(result, a2))
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = 0;
      do
      {
        result = (*(a3 + 16))(a3, v5, v7, v6 + v7);
        ++v7;
      }

      while (v5 + v7 <= v3);
      ++v5;
      v6 += v7;
    }

    while (v5 <= v3);
  }

  return result;
}

NSUInteger NSIntersectionRangeInclusive(NSRange a1, NSRange range1)
{
  if (a1.location != range1.location + range1.length)
  {
    if (a1.location + a1.length == range1.location)
    {
      a1.location = range1.location;
    }

    else
    {
      a1.location = NSIntersectionRange(a1, range1).location;
    }
  }

  return a1.location;
}

unint64_t NSExpandedRange(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = a4 + a5;
  if (a4 + a3 >= a1)
  {
    v6 = a4;
  }

  else
  {
    v6 = a1 - a3;
  }

  if (a1 + a2 + a3 < v5)
  {
    v5 = a1 + a2 + a3;
  }

  if (v6 >= v5)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

void OUTLINED_FUNCTION_4_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x22u);
}

BOOL CRLVersionIsPatchSupportedForVersions(unint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = HIDWORD(a1) & 0xFFFFFF;
  for (i = a3 - 1; ; --i)
  {
    v6 = *a2++;
    v5 = v6;
    v7 = HIDWORD(v6);
    if (v3 == HIDWORD(v6))
    {
      break;
    }

    if (v3 > v7 || i == 0)
    {
      return 0;
    }
  }

  return (a1 & 0xFFFFFF) >= v5;
}

uint64_t CRLVersionParse(uint64_t result, _WORD *a2, _WORD *a3, _DWORD *a4)
{
  if (a2)
  {
    *a2 = HIWORD(result);
  }

  if (a3)
  {
    *a3 = WORD2(result);
  }

  if (a4)
  {
    *a4 = result;
  }

  return result;
}

unint64_t CRLVersionFromNSString(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"."];
  if ([v1 count] == &dword_0 + 3)
  {
    v2 = [v1 objectAtIndexedSubscript:0];
    v3 = [v2 integerValue];

    if (v3 >= 0x10000)
    {
      CRLVersionFromNSString_cold_6();
      v4 = 0xFFFF000000000000;
    }

    else if (v3 < 0)
    {
      CRLVersionFromNSString_cold_5();
      v4 = 0;
    }

    else
    {
      v4 = v3 << 48;
    }

    v5 = [v1 objectAtIndexedSubscript:1];
    v6 = [v5 integerValue];

    if (v6 >= 0x10000)
    {
      CRLVersionFromNSString_cold_8();
      v7 = 0xFFFF00000000;
    }

    else if (v6 < 0)
    {
      CRLVersionFromNSString_cold_7();
      v7 = 0;
    }

    else
    {
      v7 = v6 << 32;
    }

    v8 = [v1 objectAtIndexedSubscript:2];
    v9 = [v8 integerValue];

    if (v9 >= 0x100000000)
    {
      CRLVersionFromNSString_cold_10(&v19, &v20);
    }

    else
    {
      if ((v9 & 0x8000000000000000) == 0)
      {
LABEL_10:
        v10 = v7 | v4 | v9;
        goto LABEL_20;
      }

      CRLVersionFromNSString_cold_9(&v19, &v20);
    }

    v16 = v19;
    v9 = v20;
    v17 = [NSString stringWithUTF8String:"CRLVersion CRLVersionFromNSString(NSString * _Nonnull __strong)"];
    v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLVersion.m"];
    [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:178 isFatal:0 description:v16];

    goto LABEL_10;
  }

  v11 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (CRLAssertCat_init_token != -1)
  {
    CRLVersionFromNSString_cold_1();
  }

  if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    CRLVersionFromNSString_cold_2(v11);
  }

  if (CRLAssertCat_init_token != -1)
  {
    CRLVersionFromNSString_cold_3();
  }

  v12 = CRLAssertCat_log_t;
  if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    CRLVersionFromNSString_cold_4(v12);
  }

  v13 = [NSString stringWithUTF8String:"CRLVersion CRLVersionFromNSString(NSString * _Nonnull __strong)"];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLVersion.m"];
  [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:172 isFatal:0 description:"Version should consist of 3 numbers separated by '.'"];

  v10 = 0;
LABEL_20:

  return v10;
}

BOOL OUTLINED_FUNCTION_4_1()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_9()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
}

uint64_t OUTLINED_FUNCTION_10()
{

  return +[CRLAssertionHandler _atomicIncrementAssertCount];
}

uint64_t NSStringFromCRLError(unsigned int a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_4DA10 + a1);
  }
}

id CRLAppBundleIdentifier()
{
  if (CRLAppBundleIdentifier_onceToken != -1)
  {
    CRLAppBundleIdentifier_cold_1();
  }

  v1 = CRLAppBundleIdentifier_identifier;

  return v1;
}

id CRLAppGroupIdentifier()
{
  if (CRLAppGroupIdentifier_onceToken != -1)
  {
    CRLAppGroupIdentifier_cold_1();
  }

  v1 = CRLAppGroupIdentifier_identifier;

  return v1;
}

intptr_t CRLDynamicBaseAddress()
{
  v0 = getsectbyname("__TEXT", "__text");
  addr = v0->addr;
  offset = v0->offset;
  bufsize = 1024;
  if (_NSGetExecutablePath(buf, &bufsize))
  {
    image_vmaddr_slide = -1;
  }

  else if (_dyld_image_count())
  {
    v4 = 0;
    while (1)
    {
      image_name = _dyld_get_image_name(v4);
      if (!strcmp(image_name, buf))
      {
        break;
      }

      if (++v4 >= _dyld_image_count())
      {
        goto LABEL_7;
      }
    }

    image_vmaddr_slide = _dyld_get_image_vmaddr_slide(v4);
  }

  else
  {
LABEL_7:
    image_vmaddr_slide = 0;
  }

  return addr - offset + image_vmaddr_slide;
}

void CRLCrashFinalThrow()
{
  v0 = [NSException exceptionWithName:@"CRLCrash" reason:@"CRLCrash was called" userInfo:0];
  objc_exception_throw(v0);
}

void CRLSetCrashReporterInfov(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v8 = a2;
  v2 = [NSString stringWithUTF8String:a1];
  v3 = [[NSString alloc] crl_initRedactedWithFormat:v2 arguments:v7];
  v4 = [v3 UTF8String];
  v6 = 0;
  if (v4)
  {
    asprintf(&v6, "%s", v4);
    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v5 = "CRLSetCrashReporterInfo: unknown reason";
  }

  __crashreporter_info__ = v5;
}

NSString one-time initialization function for deviceManagementRestrictionsChangedNotificationName()
{
  result = String._bridgeToObjectiveC()();
  static CRLDeviceManagementRestrictionsManager.deviceManagementRestrictionsChangedNotificationName = result;
  return result;
}

uint64_t *CRLDeviceManagementRestrictionsManager.deviceManagementRestrictionsChangedNotificationName.unsafeMutableAddressor()
{
  if (one-time initialization token for deviceManagementRestrictionsChangedNotificationName != -1)
  {
    swift_once();
  }

  return &static CRLDeviceManagementRestrictionsManager.deviceManagementRestrictionsChangedNotificationName;
}

uint64_t CRLDeviceManagementRestrictionsManager.isMathPaperSolvingAllowed.getter()
{
  v1 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t key path getter for CRLDeviceManagementRestrictionsManager.isMathPaperSolvingAllowed : CRLDeviceManagementRestrictionsManager@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t key path setter for CRLDeviceManagementRestrictionsManager.isMathPaperSolvingAllowed : CRLDeviceManagementRestrictionsManager(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t CRLDeviceManagementRestrictionsManager.isKeyboardMathSolvingAllowed.getter()
{
  v1 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isKeyboardMathSolvingAllowed;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t key path getter for CRLDeviceManagementRestrictionsManager.isKeyboardMathSolvingAllowed : CRLDeviceManagementRestrictionsManager@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isKeyboardMathSolvingAllowed;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t key path setter for CRLDeviceManagementRestrictionsManager.isKeyboardMathSolvingAllowed : CRLDeviceManagementRestrictionsManager(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isKeyboardMathSolvingAllowed;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t CRLDeviceManagementRestrictionsManager.isDefinitionLookupAllowed.getter()
{
  v1 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isDefinitionLookupAllowed;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t key path getter for CRLDeviceManagementRestrictionsManager.isDefinitionLookupAllowed : CRLDeviceManagementRestrictionsManager@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isDefinitionLookupAllowed;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t key path setter for CRLDeviceManagementRestrictionsManager.isDefinitionLookupAllowed : CRLDeviceManagementRestrictionsManager(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isDefinitionLookupAllowed;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id CRLDeviceManagementRestrictionsManager.connection.getter()
{
  v1 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager____lazy_storage___connection;
  v2 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager____lazy_storage___connection);
  v3 = v2;
  if (v2 == &dword_0 + 1)
  {
    v3 = [objc_opt_self() sharedConnection];
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    outlined consume of MCProfileConnection??(v4);
  }

  outlined copy of MCProfileConnection??(v2);
  return v3;
}

id CRLDeviceManagementRestrictionsManager.__deallocating_deinit()
{
  v1 = CRLDeviceManagementRestrictionsManager.connection.getter();
  if (v1)
  {
    v2 = v1;
    [v1 unregisterObserver:v0];
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for CRLDeviceManagementRestrictionsManager();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void one-time initialization function for _sharedManager()
{
  v0 = [objc_allocWithZone(type metadata accessor for CRLDeviceManagementRestrictionsManager()) init];
  CRLDeviceManagementRestrictionsManager.registerObserver()();
  static CRLDeviceManagementRestrictionsManager._sharedManager = v0;
}

id CRLDeviceManagementRestrictionsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id @objc static CRLDeviceManagementRestrictionsManager.deviceManagementRestrictionsChangedNotificationName.getter(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

id static CRLDeviceManagementRestrictionsManager.deviceManagementRestrictionsChangedNotificationName.getter(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

Swift::Void __swiftcall CRLDeviceManagementRestrictionsManager.registerObserver()()
{
  v1 = CRLDeviceManagementRestrictionsManager.connection.getter();
  if (v1)
  {
    v2 = v1;
    [v1 registerObserver:v0];
  }

  v3 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager____lazy_storage___connection;
  v4 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager____lazy_storage___connection);
  if (v4)
  {
    v5 = [v4 isMathPaperSolvingAllowed];
  }

  else
  {
    v5 = 1;
  }

  v6 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed;
  v7 = 1;
  swift_beginAccess();
  *(v0 + v6) = v5;
  v8 = *(v0 + v3);
  if (v8)
  {
    v7 = [v8 isKeyboardMathSolvingAllowed];
  }

  v9 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isKeyboardMathSolvingAllowed;
  v10 = 1;
  swift_beginAccess();
  *(v0 + v9) = v7;
  v11 = *(v0 + v3);
  if (v11)
  {
    v10 = [v11 isDefinitionLookupAllowed];
  }

  v12 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isDefinitionLookupAllowed;
  swift_beginAccess();
  *(v0 + v12) = v10;
}

id CRLDeviceManagementRestrictionsManager.init()()
{
  v0[OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed] = 1;
  v0[OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isKeyboardMathSolvingAllowed] = 1;
  v0[OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isDefinitionLookupAllowed] = 1;
  *&v0[OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager____lazy_storage___connection] = 1;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLDeviceManagementRestrictionsManager();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance ACAccountDataclass(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance ACAccountDataclass(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance ACAccountDataclass@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ACAccountDataclass@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ACAccountDataclass@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance ACAccountDataclass(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ACAccountDataclass and conformance ACAccountDataclass(&lazy protocol witness table cache variable for type ACAccountDataclass and conformance ACAccountDataclass);
  v3 = lazy protocol witness table accessor for type ACAccountDataclass and conformance ACAccountDataclass(&lazy protocol witness table cache variable for type ACAccountDataclass and conformance ACAccountDataclass);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance ACAccountDataclass()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ACAccountDataclass()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ACAccountDataclass()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ACAccountDataclass(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

void specialized CRLDeviceManagementRestrictionsManager.profileConnectionDidReceiveEffectiveSettingsChangedNotification(_:userInfo:)(void *a1)
{
  if (!a1)
  {
    __break(1u);
    return;
  }

  v3 = [a1 isMathPaperSolvingAllowed];
  v4 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed;
  swift_beginAccess();
  v5 = v3 ^ *(v1 + v4);
  if (v5)
  {
    *(v1 + v4) = [a1 isMathPaperSolvingAllowed];
  }

  v6 = [a1 isKeyboardMathSolvingAllowed];
  v7 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isKeyboardMathSolvingAllowed;
  swift_beginAccess();
  if (v6 != *(v1 + v7))
  {
    *(v1 + v7) = [a1 isKeyboardMathSolvingAllowed];
    v5 = 1;
  }

  v8 = [a1 isDefinitionLookupAllowed];
  v9 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isDefinitionLookupAllowed;
  swift_beginAccess();
  if (v8 == *(v1 + v9))
  {
    if ((v5 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    *(v1 + v9) = [a1 isDefinitionLookupAllowed];
  }

  v10 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for deviceManagementRestrictionsChangedNotificationName != -1)
  {
    swift_once();
  }

  [v10 postNotificationName:static CRLDeviceManagementRestrictionsManager.deviceManagementRestrictionsChangedNotificationName object:0 userInfo:0];
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void outlined consume of MCProfileConnection??(id a1)
{
  if (a1 != &dword_0 + 1)
  {
  }
}

id outlined copy of MCProfileConnection??(id result)
{
  if (result != &dword_0 + 1)
  {
    return result;
  }

  return result;
}

void type metadata accessor for os_unfair_lock_s(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ACAccountDataclass and conformance ACAccountDataclass(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ACAccountDataclass(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Error.publicDescription.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v88 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v85 = (&v75 - v7);
  v8 = type metadata accessor for Mirror.DisplayStyle();
  v9 = *(v8 - 8);
  v86 = v8;
  v87 = v9;
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v82 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v83 = &v75 - v13;
  v14 = type metadata accessor for Mirror();
  v84 = *(v14 - 8);
  v15 = *(v84 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v16);
  v23 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v75 - v24;
  v26 = v3;
  DynamicType = swift_getDynamicType();
  swift_getMetatypeMetadata();
  v27 = String.init<A>(reflecting:)();
  v29 = v28;
  type metadata accessor for NSError();
  if (!swift_dynamicCastMetatype())
  {
    v79 = v23;
    v80 = v29;
    v81 = v27;
    v88 = v14;
    v92[1] = a1;
    v30 = __swift_allocate_boxed_opaque_existential_0(&DynamicType);
    v33 = *(v19 + 16);
    v32 = v19 + 16;
    v31 = v33;
    v33(v30, v26, a1);
    Mirror.init(reflecting:)();
    v34 = v85;
    Mirror.displayStyle.getter();
    v35 = v86;
    v36 = v87;
    v37 = v18;
    if ((*(v87 + 48))(v34, 1, v86) == 1)
    {
      (*(v84 + 8))(v18, v88);
      outlined destroy of Mirror.DisplayStyle?(v34);
      return v81;
    }

    v76 = a1;
    v77 = v31;
    v78 = v32;
    v48 = v83;
    (*(v36 + 32))(v83, v34, v35);
    v49 = v82;
    (*(v36 + 104))(v82, enum case for Mirror.DisplayStyle.enum(_:), v35);
    v50 = static Mirror.DisplayStyle.== infix(_:_:)();
    v53 = *(v36 + 8);
    v51 = v36 + 8;
    v52 = v53;
    (v53)(v49, v35);
    if ((v50 & 1) == 0)
    {
      DynamicType = 0;
      v91 = 0xE000000000000000;
      v64._countAndFlagsBits = v81;
      v64._object = v80;
      String.append(_:)(v64);

      v65._countAndFlagsBits = 40;
      v65._object = 0xE100000000000000;
      String.append(_:)(v65);
      _print_unlocked<A, B>(_:_:)();
      v66._countAndFlagsBits = 41;
      v66._object = 0xE100000000000000;
      String.append(_:)(v66);
      v67 = DynamicType;
      (v52)(v48, v35);
      (*(v84 + 8))(v37, v88);
      return v67;
    }

    v85 = v52;
    v82 = v26;
    v87 = v51;
    v54 = Mirror.children.getter();
    v55 = v54[2];
    v56 = v54[3];
    v57 = v54[4];
    v58 = v54[5];
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v59 = dispatch thunk of _AnyIndexBox._typeID.getter();
    swift_getObjectType();
    result = dispatch thunk of _AnyIndexBox._typeID.getter();
    if (v59 != result)
    {
      __break(1u);
      return result;
    }

    v60 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    if (v60)
    {
      swift_unknownObjectRelease();

      v61 = v86;
      v62 = v88;
      v63 = v81;
    }

    else
    {
      dispatch thunk of _AnyCollectionBox.subscript.getter();
      swift_unknownObjectRelease();

      v69 = DynamicType;
      v68 = v91;
      __swift_destroy_boxed_opaque_existential_0(v92);
      v61 = v86;
      v62 = v88;
      v63 = v81;
      if (v68)
      {
LABEL_15:
        v71 = v84;
        v72 = v85;
        DynamicType = v63;
        v91 = v80;
        v73._countAndFlagsBits = 46;
        v73._object = 0xE100000000000000;
        String.append(_:)(v73);
        v74._countAndFlagsBits = v69;
        v74._object = v68;
        String.append(_:)(v74);

        v67 = DynamicType;
        v72(v83, v61);
        (*(v71 + 8))(v37, v62);
        return v67;
      }
    }

    v77(v79, v82, v76);
    v69 = String.init<A>(describing:)();
    v68 = v70;

    goto LABEL_15;
  }

  (*(v19 + 16))(v25, v26, a1);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v19 + 8))(v25, a1);
  }

  else
  {
    swift_allocError();
    (*(v19 + 32))(v39, v25, a1);
  }

  v40 = _convertErrorToNSError(_:)();

  DynamicType = 0;
  v91 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  DynamicType = 0x20726F727245534ELL;
  v91 = 0xEF3D6E69616D6F44;
  v41 = [v40 domain];
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  v45._countAndFlagsBits = v42;
  v45._object = v44;
  String.append(_:)(v45);

  v46._countAndFlagsBits = 0x3D65646F4320;
  v46._object = 0xE600000000000000;
  String.append(_:)(v46);
  v89 = [v40 code];
  v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v47);

  return DynamicType;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t type metadata accessor for NSError()
{
  result = lazy cache variable for type metadata for NSError;
  if (!lazy cache variable for type metadata for NSError)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSError);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t outlined destroy of Mirror.DisplayStyle?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t Error.fullDescription.getter(uint64_t a1)
{
  v1 = *(*(a1 - 8) + 64);
  __chkstk_darwin(a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  return String.init<A>(reflecting:)();
}

id CRLAssetFileManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLAssetFileManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLAssetFileManager()
{
  result = type metadata singleton initialization cache for CRLAssetFileManager;
  if (!type metadata singleton initialization cache for CRLAssetFileManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for CRLAssetFileManager()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CRLAssetFileManager.purgeAllAssetsFromDisk()()
{
  v1 = [objc_opt_self() defaultManager];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMR);
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject() + v5;
  v7 = *(v3 + 16);
  v7(v6, v0 + OBJC_IVAR____TtC22FreeformDataclassOwner19CRLAssetFileManager_assetsDirectoryURL, v2);
  v7(v6 + v4, v0 + OBJC_IVAR____TtC22FreeformDataclassOwner19CRLAssetFileManager_deletedAssetsDirectoryURL, v2);
  closure #1 in CRLAssetFileManager.purgeAllAssetsFromDisk()(v6, v1);
  closure #1 in CRLAssetFileManager.purgeAllAssetsFromDisk()(v6 + v4, v1);

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
}

uint64_t closure #1 in CRLAssetFileManager.purgeAllAssetsFromDisk()(uint64_t a1, void *a2)
{
  URL.path.getter();
  v5 = String._bridgeToObjectiveC()();

  v23 = 0;
  v6 = [a2 contentsOfDirectoryAtPath:v5 error:&v23];

  v7 = v23;
  if (v6)
  {
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v7;

    __chkstk_darwin(v10);
    v22[2] = a2;
    v22[3] = a1;
    specialized Sequence.forEach(_:)(partial apply for closure #1 in closure #1 in CRLAssetFileManager.purgeAllAssetsFromDisk(), v22, v8);
    if (!v2)
    {
    }
  }

  else
  {
    v11 = v23;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (one-time initialization token for boardStore != -1)
  {
    swift_once();
  }

  v12 = static OS_os_log.boardStore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_3A290;
  swift_getErrorValue();
  v14 = Error.publicDescription.getter(v22[10], v22[11]);
  v16 = v15;
  *(inited + 56) = &type metadata for String;
  v17 = lazy protocol witness table accessor for type String and conformance String();
  *(inited + 64) = v17;
  *(inited + 32) = v14;
  *(inited + 40) = v16;
  swift_getErrorValue();
  v18 = Error.fullDescription.getter(v22[6]);
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v17;
  *(inited + 72) = v18;
  *(inited + 80) = v19;
  v20 = static os_log_type_t.error.getter();
  _CRLLog(_:dso:type:format:_:)(v12, &dword_0, v20, "Failed to remove all assets with error %{public}@ <%@>", 54, 2, inited);

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
  return swift_arrayDestroy();
}

id closure #1 in closure #1 in CRLAssetFileManager.purgeAllAssetsFromDisk()(uint64_t *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  URL.appendingPathComponent(_:)();
  URL.path.getter();
  (*(v5 + 8))(v8, v4);
  v11 = String._bridgeToObjectiveC()();

  v14 = 0;
  LOBYTE(a2) = [a2 removeItemAtPath:v11 error:&v14];

  if (a2)
  {
    return v14;
  }

  v13 = v14;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 40); ; i += 2)
    {
      v7 = *i;
      v8[0] = *(i - 1);
      v8[1] = v7;

      v5(v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

id specialized CRLAssetFileManager.init(store:)()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  URL.appendingPathComponent(_:isDirectory:)();
  v6 = *(v2 + 32);
  v6(&v0[OBJC_IVAR____TtC22FreeformDataclassOwner19CRLAssetFileManager_assetsDirectoryURL], v5, v1);
  URL.appendingPathComponent(_:isDirectory:)();
  v6(&v0[OBJC_IVAR____TtC22FreeformDataclassOwner19CRLAssetFileManager_deletedAssetsDirectoryURL], v5, v1);
  v7 = type metadata accessor for CRLAssetFileManager();
  v9.receiver = v0;
  v9.super_class = v7;
  return objc_msgSendSuper2(&v9, "init");
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t NSFileManager.crl_freeformLibraryURL()()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v6 = [v0 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:&v12];
  v7 = v12;
  if (v6)
  {
    v8 = v6;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v7;

    URL.appendingPathComponent(_:isDirectory:)();
    return (*(v2 + 8))(v5, v1);
  }

  else
  {
    v11 = v12;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t getEnumTagSinglePayload for NSFileManager.crl_Error(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for NSFileManager.crl_Error(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSFileManager.crl_Error and conformance NSFileManager.crl_Error()
{
  result = lazy protocol witness table cache variable for type NSFileManager.crl_Error and conformance NSFileManager.crl_Error;
  if (!lazy protocol witness table cache variable for type NSFileManager.crl_Error and conformance NSFileManager.crl_Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSFileManager.crl_Error and conformance NSFileManager.crl_Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSFileManager.crl_Error and conformance NSFileManager.crl_Error;
  if (!lazy protocol witness table cache variable for type NSFileManager.crl_Error and conformance NSFileManager.crl_Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSFileManager.crl_Error and conformance NSFileManager.crl_Error);
  }

  return result;
}

Swift::Int UUID.UUIDCodingError.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSFileManager.crl_Error()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

void static CRLBoardDataStoreProvider.mainDataDirectory(legacyLocation:)(char a1@<W0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v23 = *(v9 - 8);
  v24 = v9;
  v10 = *(v23 + 64);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_opt_self();
  v14 = [v13 defaultManager];
  if (a1)
  {
    NSFileManager.crl_freeformLibraryURL()();
    if (!v2)
    {
      goto LABEL_7;
    }

LABEL_18:

    return;
  }

  v15 = [v13 defaultManager];
  v16 = CRLAppGroupIdentifier();
  if (!v16)
  {
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = [v15 containerURLForSecurityApplicationGroupIdentifier:v16];

  if (!v18)
  {
    lazy protocol witness table accessor for type NSFileManager.crl_Error and conformance NSFileManager.crl_Error();
    swift_allocError();
    swift_willThrow();
    goto LABEL_18;
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_7:
  if (one-time initialization token for shouldUseSandboxEnvironment != -1)
  {
    swift_once();
  }

  if (static CRLCloudSyncConstants.shouldUseSandboxEnvironment == 1)
  {
    if (one-time initialization token for boardStore != -1)
    {
      swift_once();
    }

    v19 = static OS_os_log.boardStore;
    v20 = static os_log_type_t.default.getter();
    _CRLLog(_:dso:type:format:_:)(v19, &dword_0, v20, "Using sandbox path Development/Boards", 37, 2, &_swiftEmptyArrayStorage);
  }

  else
  {
    if (one-time initialization token for boardStore != -1)
    {
      swift_once();
    }

    v21 = static OS_os_log.boardStore;
    v22 = static os_log_type_t.default.getter();
    _CRLLog(_:dso:type:format:_:)(v21, &dword_0, v22, "Using production path Boards", 28, 2, &_swiftEmptyArrayStorage);
  }

  (*(v5 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v4);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(components:directoryHint:)();

  (*(v5 + 8))(v8, v4);
  (*(v23 + 8))(v12, v24);
}

uint64_t UUID.init(crl_data:)(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
LABEL_17:
      lazy protocol witness table accessor for type UUID.UUIDCodingError and conformance UUID.UUIDCodingError();
      swift_allocError();
      swift_willThrow();
      return outlined consume of Data._Representation(a1, a2);
    }

    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 == 16)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
    if (v4)
    {
      goto LABEL_15;
    }

    if (BYTE6(a2) != 16)
    {
      goto LABEL_17;
    }

LABEL_8:
    while (v4 != 2)
    {
      if (v4 != 1)
      {
        goto LABEL_22;
      }

      if (a1 > a1 >> 32)
      {
        goto LABEL_25;
      }

      v9 = __DataStorage._bytes.getter();
      if (!v9)
      {
        goto LABEL_30;
      }

      v10 = v9;
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(a1, v11))
      {
        goto LABEL_27;
      }

      v12 = (a1 - v11 + v10);
      __DataStorage._length.getter();
      if (v12)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_15:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_24;
      }

      if (HIDWORD(a1) - a1 != 16)
      {
        goto LABEL_17;
      }
    }

    v14 = *(a1 + 16);
    v15 = __DataStorage._bytes.getter();
    if (!v15)
    {
      goto LABEL_28;
    }

    v16 = v15;
    v17 = __DataStorage._offset.getter();
    if (!__OFSUB__(v14, v17))
    {
      v12 = (v14 - v17 + v16);
      __DataStorage._length.getter();
      if (!v12)
      {
        goto LABEL_29;
      }

LABEL_21:
      v18 = *v12;
      v19 = v12[1];
      v20 = v12[2];
      v21 = v12[3];
      v22 = v12[4];
      v23 = v12[5];
      v24 = v12[6];
      v25 = v12[7];
      v26 = v12[8];
      v27 = v12[9];
      v28 = v12[10];
      v29 = v12[11];
      v30 = v12[12];
      v31 = v12[13];
      v32 = v12[14];
      v33 = v12[15];
LABEL_22:
      UUID.init(uuid:)();
      return outlined consume of Data._Representation(a1, a2);
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __DataStorage._length.getter();
LABEL_29:
  __break(1u);
LABEL_30:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type UUID.UUIDCodingError and conformance UUID.UUIDCodingError()
{
  result = lazy protocol witness table cache variable for type UUID.UUIDCodingError and conformance UUID.UUIDCodingError;
  if (!lazy protocol witness table cache variable for type UUID.UUIDCodingError and conformance UUID.UUIDCodingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID.UUIDCodingError and conformance UUID.UUIDCodingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UUID.UUIDCodingError and conformance UUID.UUIDCodingError;
  if (!lazy protocol witness table cache variable for type UUID.UUIDCodingError and conformance UUID.UUIDCodingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID.UUIDCodingError and conformance UUID.UUIDCodingError);
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t UUID.crl_data()()
{
  v9 = UUID.uuid.getter();
  v10 = v0;
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  UUID.uuid.getter();
  return specialized Data.init(bytes:count:)(&v9, 16);
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t specialized Data.init(bytes:count:)(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return specialized Data.InlineData.init(_:)(a1, &a1[a2]);
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

const char *CRLFeatureFlags.feature.getter(char a1)
{
  result = "AdoptTipsNext";
  switch(a1)
  {
    case 1:
      result = "AppAnalytics";
      break;
    case 2:
      result = "AppIntents";
      break;
    case 3:
      result = "AppIntentsSettings";
      break;
    case 4:
      result = "BatteriesIncluded";
      break;
    case 5:
      result = "BetterPencilSelection";
      break;
    case 6:
      result = "ChangeShape";
      break;
    case 7:
      result = "CloudQuotaMessaging";
      break;
    case 8:
      result = "ContentLanguageCopyPaste";
      break;
    case 9:
      result = "DrawingDataDetectors";
      break;
    case 10:
      result = "EasierConnectionLines";
      break;
    case 11:
      result = "FileImportExport";
      break;
    case 12:
      result = "PKDrawingExport";
      break;
    case 13:
      result = "Follow";
      break;
    case 14:
      result = "GenerativePlayground";
      break;
    case 15:
      result = "MathPaper";
      break;
    case 16:
      result = "MagicLists";
      break;
    case 17:
      result = "MacMediaReplacer";
      break;
    case 18:
      result = "MediaLibrary";
      break;
    case 19:
      result = "PlaceholderImages";
      break;
    case 20:
      result = "Scenes";
      break;
    case 21:
      result = "SendACopy";
      break;
    case 22:
      result = "SignOutRedesign";
      break;
    case 23:
      result = "SnapToGrid";
      break;
    case 24:
      result = "Stencils";
      break;
    case 25:
      result = "VerticalTextBoxAlignment";
      break;
    case 26:
      result = "AllowMinRequiredVersionForGoodEnoughFidelityToSaveToCloudKit";
      break;
    case 27:
      result = "UseSandboxEnvironment";
      break;
    case 28:
      result = "Spatial";
      break;
    case 29:
      result = "InlineQuickLook";
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CRLFeatureFlags()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CRLFeatureFlags()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

const char *protocol witness for FeatureFlagsKey.feature.getter in conformance CRLPencilAndPaperFeatureFlags()
{
  if (*v0)
  {
    return "DrawingDataDetectors";
  }

  else
  {
    return "MathPaper";
  }
}

uint64_t @objc static CRLFeatureFlagGroup.isDrawingDataDetectorsEnabled.getter(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v10 = &type metadata for CRLPencilAndPaperFeatureFlags;
  v11 = lazy protocol witness table accessor for type CRLPencilAndPaperFeatureFlags and conformance CRLPencilAndPaperFeatureFlags();
  LOBYTE(v9[0]) = a3;
  v6 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v9);
  if (v6)
  {
    v10 = &type metadata for CRLFeatureFlags;
    v11 = lazy protocol witness table accessor for type CRLFeatureFlags and conformance CRLFeatureFlags();
    LOBYTE(v9[0]) = a4;
    v7 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t @objc static CRLFeatureFlagGroup.isAaBrandingEnabled.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6[3] = a3;
  v6[4] = a4();
  v4 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4 & 1;
}

uint64_t @objc static CRLFeatureFlagGroup.isAdoptTipsNextEnabled.getter(uint64_t a1, uint64_t a2, char a3)
{
  v6[3] = &type metadata for CRLFeatureFlags;
  v6[4] = lazy protocol witness table accessor for type CRLFeatureFlags and conformance CRLFeatureFlags();
  LOBYTE(v6[0]) = a3;
  v4 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4 & 1;
}

id CRLFeatureFlagGroup.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLFeatureFlagGroup();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t specialized static CRLFeatureFlagGroup.isMathPaperEnabled.getter()
{
  v6 = &type metadata for CRLPencilAndPaperFeatureFlags;
  v7 = lazy protocol witness table accessor for type CRLPencilAndPaperFeatureFlags and conformance CRLPencilAndPaperFeatureFlags();
  LOBYTE(v5[0]) = 0;
  v0 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v5);
  if ((v0 & 1) == 0)
  {
    return 0;
  }

  v6 = &type metadata for CRLFeatureFlags;
  v7 = lazy protocol witness table accessor for type CRLFeatureFlags and conformance CRLFeatureFlags();
  LOBYTE(v5[0]) = 15;
  v1 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v5);
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  if (one-time initialization token for _sharedManager != -1)
  {
    swift_once();
  }

  v2 = static CRLDeviceManagementRestrictionsManager._sharedManager;
  v3 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed;
  swift_beginAccess();
  return *(v2 + v3);
}

uint64_t specialized static CRLFeatureFlagGroup.isAILabelingEnabled.getter()
{
  v0 = type metadata accessor for OSEligibilityAnswer();
  v26 = *(v0 - 8);
  v27 = v0;
  v1 = *(v26 + 64);
  v2 = (__chkstk_darwin)();
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v25 - v5;
  v7 = type metadata accessor for OSEligibilityDomain();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13OSEligibility0A6ResultVSgMd, &_s13OSEligibility0A6ResultVSgMR);
  v13 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12 - 8);
  v15 = &v25 - v14;
  v16 = type metadata accessor for OSEligibilityResult();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for OSEligibilityDomain.aiLabeling(_:), v7);
  static OSEligibilityResult.result(for:)();
  (*(v8 + 8))(v11, v7);
  (*(v17 + 56))(v15, 0, 1, v16);
  (*(v17 + 32))(v20, v15, v16);
  OSEligibilityResult.answer.getter();
  v22 = v26;
  v21 = v27;
  (*(v26 + 104))(v4, enum case for OSEligibilityAnswer.eligible(_:), v27);
  LOBYTE(v7) = static OSEligibilityAnswer.== infix(_:_:)();
  v23 = *(v22 + 8);
  v23(v4, v21);
  v23(v6, v21);
  (*(v17 + 8))(v20, v16);
  return v7 & 1;
}

uint64_t outlined destroy of OSEligibilityResult?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13OSEligibility0A6ResultVSgMd, &_s13OSEligibility0A6ResultVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CRLFeatureFlags and conformance CRLFeatureFlags()
{
  result = lazy protocol witness table cache variable for type CRLFeatureFlags and conformance CRLFeatureFlags;
  if (!lazy protocol witness table cache variable for type CRLFeatureFlags and conformance CRLFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLFeatureFlags and conformance CRLFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CRLFeatureFlags and conformance CRLFeatureFlags;
  if (!lazy protocol witness table cache variable for type CRLFeatureFlags and conformance CRLFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLFeatureFlags and conformance CRLFeatureFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CRLUIKitFeatureFlags and conformance CRLUIKitFeatureFlags()
{
  result = lazy protocol witness table cache variable for type CRLUIKitFeatureFlags and conformance CRLUIKitFeatureFlags;
  if (!lazy protocol witness table cache variable for type CRLUIKitFeatureFlags and conformance CRLUIKitFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLUIKitFeatureFlags and conformance CRLUIKitFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CRLUIKitFeatureFlags and conformance CRLUIKitFeatureFlags;
  if (!lazy protocol witness table cache variable for type CRLUIKitFeatureFlags and conformance CRLUIKitFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLUIKitFeatureFlags and conformance CRLUIKitFeatureFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CRLPencilAndPaperFeatureFlags and conformance CRLPencilAndPaperFeatureFlags()
{
  result = lazy protocol witness table cache variable for type CRLPencilAndPaperFeatureFlags and conformance CRLPencilAndPaperFeatureFlags;
  if (!lazy protocol witness table cache variable for type CRLPencilAndPaperFeatureFlags and conformance CRLPencilAndPaperFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLPencilAndPaperFeatureFlags and conformance CRLPencilAndPaperFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CRLPencilAndPaperFeatureFlags and conformance CRLPencilAndPaperFeatureFlags;
  if (!lazy protocol witness table cache variable for type CRLPencilAndPaperFeatureFlags and conformance CRLPencilAndPaperFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLPencilAndPaperFeatureFlags and conformance CRLPencilAndPaperFeatureFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CRLAppleAccountUIFeatureFlags and conformance CRLAppleAccountUIFeatureFlags()
{
  result = lazy protocol witness table cache variable for type CRLAppleAccountUIFeatureFlags and conformance CRLAppleAccountUIFeatureFlags;
  if (!lazy protocol witness table cache variable for type CRLAppleAccountUIFeatureFlags and conformance CRLAppleAccountUIFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLAppleAccountUIFeatureFlags and conformance CRLAppleAccountUIFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CRLAppleAccountUIFeatureFlags and conformance CRLAppleAccountUIFeatureFlags;
  if (!lazy protocol witness table cache variable for type CRLAppleAccountUIFeatureFlags and conformance CRLAppleAccountUIFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLAppleAccountUIFeatureFlags and conformance CRLAppleAccountUIFeatureFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CRLAppleAccountFeatureFlags and conformance CRLAppleAccountFeatureFlags()
{
  result = lazy protocol witness table cache variable for type CRLAppleAccountFeatureFlags and conformance CRLAppleAccountFeatureFlags;
  if (!lazy protocol witness table cache variable for type CRLAppleAccountFeatureFlags and conformance CRLAppleAccountFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLAppleAccountFeatureFlags and conformance CRLAppleAccountFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CRLAppleAccountFeatureFlags and conformance CRLAppleAccountFeatureFlags;
  if (!lazy protocol witness table cache variable for type CRLAppleAccountFeatureFlags and conformance CRLAppleAccountFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLAppleAccountFeatureFlags and conformance CRLAppleAccountFeatureFlags);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRLPencilAndPaperFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLPencilAndPaperFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRLFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id CRLDataclassOwner.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        type metadata accessor for ACDataclassAction();
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        outlined init with take of Any(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for ACDataclassAction();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        outlined init with take of Any(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

Class @objc CRLDataclassOwner.actions(forDeleting:forDataclass:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(void *))
{
  v8 = a1;
  v9 = a3;
  v10 = a4;
  v11 = a5(a3);

  if (v11)
  {
    v12.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v12.super.isa = 0;
  }

  return v12.super.isa;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22FreeformDataclassOwner17CRLBoardDataStoreC5TableOGMd, &_ss23_ContiguousArrayStorageCy22FreeformDataclassOwner17CRLBoardDataStoreC5TableOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void specialized CRLDataclassOwner.setDefaultToEnsureOwnershipOfUserData()()
{
  v0 = CRLAppBundleIdentifier();
  if (v0)
  {
    v1 = v0;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  v7 = [objc_allocWithZone(NSUserDefaults) initWithSuiteName:v2];

  if (v7)
  {
    if (one-time initialization token for dataclassOwner != -1)
    {
      swift_once();
    }

    v3 = static OS_os_log.dataclassOwner;
    v4 = static os_log_type_t.default.getter();
    _CRLLog(_:dso:type:format:_:)(v3, &dword_0, v4, "Setting the user default to tell the app that it needs to ensure ownership of its data.", 87, 2, &_swiftEmptyArrayStorage);
    [v7 setBool:1 forKey:@"CRLEnsureOwnershipOfDataUserDefault"];
  }

  else
  {
    if (one-time initialization token for dataclassOwner != -1)
    {
      swift_once();
    }

    v5 = static OS_os_log.dataclassOwner;
    v6 = static os_log_type_t.fault.getter();

    _CRLLog(_:dso:type:format:_:)(v5, &dword_0, v6, "Unable to access Freeform's defaults for setting CRLEnsureOwnershipOfDataUserDefault.", 85, 2, &_swiftEmptyArrayStorage);
  }
}

void specialized CRLDataclassOwner.setDefaultThatDataclassOwnerIsLaunchingAppInBackground()()
{
  v0 = CRLAppBundleIdentifier();
  if (v0)
  {
    v1 = v0;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  v7 = [objc_allocWithZone(NSUserDefaults) initWithSuiteName:v2];

  if (v7)
  {
    if (one-time initialization token for dataclassOwner != -1)
    {
      swift_once();
    }

    v3 = static OS_os_log.dataclassOwner;
    v4 = static os_log_type_t.default.getter();
    _CRLLog(_:dso:type:format:_:)(v3, &dword_0, v4, "Setting the user default to tell the app that it dataclass owner is launching it.", 81, 2, &_swiftEmptyArrayStorage);
    [v7 setBool:1 forKey:@"CRLDataclassOwnerDidLaunchAppInBackgroundUserDefault"];
  }

  else
  {
    if (one-time initialization token for dataclassOwner != -1)
    {
      swift_once();
    }

    v5 = static OS_os_log.dataclassOwner;
    v6 = static os_log_type_t.fault.getter();

    _CRLLog(_:dso:type:format:_:)(v5, &dword_0, v6, "Unable to access Freeform's defaults for setting CRLDataclassOwnerDidLaunchAppInBackgroundUserDefault.", 102, 2, &_swiftEmptyArrayStorage);
  }
}

char *specialized CRLDataclassOwner.actionsForDisablingDataclass(on:forDataclass:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  result = __chkstk_darwin(v2 - 8);
  v6 = &v36[-2] - v5;
  if (!a1)
  {
    __break(1u);
    goto LABEL_22;
  }

  v7 = ACAccount.crl_identifier.getter();
  v9 = v8;
  if (one-time initialization token for dataclassOwner != -1)
  {
    swift_once();
  }

  v10 = static OS_os_log.dataclassOwner;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  inited = swift_initStackObject();
  v35 = xmmword_3A860;
  *(inited + 16) = xmmword_3A860;
  *(inited + 56) = &type metadata for String;
  v11 = lazy protocol witness table accessor for type String and conformance String();
  *(inited + 64) = v11;
  *(inited + 32) = v7;
  *(inited + 40) = v9;

  v12 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v10, &dword_0, v12, "Calling actionsForDisablingDataclass on account: [%@]", 53, 2, inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((inited + 32));
  v13 = type metadata accessor for URL();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  LOWORD(inited) = specialized static CRLBoardDataStore.fetchBoardDataStoreMetadata(dataDirectory:)(v6);
  v16 = v15;
  v18 = v17;
  outlined destroy of URL?(v6);
  v19 = swift_initStackObject();
  *(v19 + 16) = v35;

  v20 = CRLBoardDataStore.CRLBoardDataStoreMetadata.description.getter(inited & 0x101, v16, v18);
  v22 = v21;

  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = v11;
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  v23 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v10, &dword_0, v23, "Current boardDataStoreMetadata:\n%@", 34, 2, v19);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((v19 + 32));
  v37 = &type metadata for CRLAppleAccountUIFeatureFlags;
  v38 = lazy protocol witness table accessor for type CRLAppleAccountUIFeatureFlags and conformance CRLAppleAccountUIFeatureFlags();
  LOBYTE(v19) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v36);
  if ((v19 & 1) == 0 || (v37 = &type metadata for CRLFeatureFlags, v38 = lazy protocol witness table accessor for type CRLFeatureFlags and conformance CRLFeatureFlags(), LOBYTE(v36[0]) = 22, v24 = isFeatureEnabled(_:)(), __swift_destroy_boxed_opaque_existential_0(v36), (v24 & 1) == 0))
  {
    if ((inited & 1) == 0)
    {
      goto LABEL_15;
    }

    v29 = static os_log_type_t.default.getter();
    _CRLLog(_:dso:type:format:_:)(v10, &dword_0, v29, "User has unsynced Freeform data: returning an action that unsynced data will be lost.", 85, 2, &_swiftEmptyArrayStorage);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v26 = swift_allocObject();
    v26[1] = xmmword_3A870;
    v10 = objc_opt_self();
    inited = &stru_55000;
    result = [v10 actionWithType:8];
    if (result)
    {
      *(v26 + 4) = result;
      result = [v10 actionWithType:0];
      if (result)
      {
LABEL_19:
        v33 = result;

        *(v26 + 5) = v33;
        goto LABEL_20;
      }

      __break(1u);
LABEL_15:
      if ((inited & 0x100) == 0)
      {
        goto LABEL_16;
      }

      v31 = static os_log_type_t.default.getter();
      _CRLLog(_:dso:type:format:_:)(v10, &dword_0, v31, "User has synced Freeform data: returning an action that local synced data will be deleted.", 90, 2, &_swiftEmptyArrayStorage);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v26 = swift_allocObject();
      v26[1] = xmmword_3A870;
      v32 = objc_opt_self();
      result = [v32 actionWithType:3];
      if (result)
      {
        *(v26 + 4) = result;
        result = [v32 actionWithType:0];
        if (result)
        {
          goto LABEL_19;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((inited & 0x100) == 0)
  {
LABEL_16:

    v30 = static os_log_type_t.default.getter();
    v26 = &_swiftEmptyArrayStorage;
    _CRLLog(_:dso:type:format:_:)(v10, &dword_0, v30, "User has no Freeform data: not returning any actions.", 53, 2, &_swiftEmptyArrayStorage);
    goto LABEL_20;
  }

  v25 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v10, &dword_0, v25, "User has synced Freeform data: returning 2 actions: .mergeSyncDataIntoLocalData and .deleteSyncData.", 100, 2, &_swiftEmptyArrayStorage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v26 = swift_allocObject();
  v26[1] = xmmword_3A880;
  v27 = objc_opt_self();
  result = [v27 actionWithType:2];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *(v26 + 4) = result;
  result = [v27 destructiveActionWithType:3];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *(v26 + 5) = result;
  result = [v27 actionWithType:0];
  if (result)
  {
    v28 = result;

    *(v26 + 6) = v28;
LABEL_20:
    v34 = specialized _arrayForceCast<A, B>(_:)(v26);

    return v34;
  }

LABEL_27:
  __break(1u);
  return result;
}

id specialized CRLDataclassOwner.actionsForEnablingDataclass(on:forDataclass:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  result = __chkstk_darwin(v2 - 8);
  v6 = &v47 - v5;
  if (!a1)
  {
    __break(1u);
    goto LABEL_30;
  }

  v7 = ACAccount.crl_identifier.getter();
  v9 = v8;
  if (one-time initialization token for dataclassOwner != -1)
  {
    swift_once();
  }

  v10 = static OS_os_log.dataclassOwner;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  inited = swift_initStackObject();
  v49 = xmmword_3A860;
  *(inited + 16) = xmmword_3A860;
  *(inited + 56) = &type metadata for String;
  v12 = lazy protocol witness table accessor for type String and conformance String();
  *(inited + 64) = v12;
  v47 = v7;
  *(inited + 32) = v7;
  *(inited + 40) = v9;
  v48 = v9;

  v13 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v10, &dword_0, v13, "Calling actionsForEnablingDataclass on account: [%@]", 52, 2, inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((inited + 32));
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v15 = specialized static CRLBoardDataStore.fetchBoardDataStoreMetadata(dataDirectory:)(v6);
  v17 = v16;
  v19 = v18;
  outlined destroy of URL?(v6);
  v20 = swift_initStackObject();
  *(v20 + 16) = v49;

  v21 = CRLBoardDataStore.CRLBoardDataStoreMetadata.description.getter(v15 & 0x101, v17, v19);
  v23 = v22;

  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = v12;
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  v24 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v10, &dword_0, v24, "Current boardDataStoreMetadata:\n%@", 34, 2, v20);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((v20 + 32));
  v51 = &type metadata for CRLAppleAccountUIFeatureFlags;
  v52 = lazy protocol witness table accessor for type CRLAppleAccountUIFeatureFlags and conformance CRLAppleAccountUIFeatureFlags();

  LOBYTE(v23) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v50);
  if ((v23 & 1) == 0 || (v51 = &type metadata for CRLFeatureFlags, v52 = lazy protocol witness table accessor for type CRLFeatureFlags and conformance CRLFeatureFlags(), LOBYTE(v50[0]) = 22, v25 = isFeatureEnabled(_:)(), __swift_destroy_boxed_opaque_existential_0(v50), (v25 & 1) == 0))
  {
    if ((v15 & 0x100) != 0 && !v19)
    {
      v30 = static os_log_type_t.default.getter();
      _CRLLog(_:dso:type:format:_:)(v10, &dword_0, v30, "User has existing Freeform data, returning an action to enable to merge local data into the sync data.", 102, 2, &_swiftEmptyArrayStorage);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_3A290;
      v31 = objc_opt_self();
      result = [v31 actionWithType:5];
      if (result)
      {
        v32 = result;
        v33 = type metadata accessor for ACDataclassAction();
        *(v27 + 56) = v33;
        *(v27 + 32) = v32;
        result = [v31 actionWithType:0];
        if (result)
        {
          v34 = result;

          *(v27 + 88) = v33;
          *(v27 + 64) = v34;
          return v27;
        }

        goto LABEL_32;
      }

LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v28 = static os_log_type_t.default.getter();
    _CRLLog(_:dso:type:format:_:)(v10, &dword_0, v28, "User has no existing Freeform data, returning an action to enable to create the sync data store.", 96, 2, &_swiftEmptyArrayStorage);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v27 = swift_allocObject();
    *(v27 + 16) = v49;
    result = [objc_opt_self() actionWithType:1];
    if (result)
    {
LABEL_12:
      v29 = result;

      *(v27 + 56) = type metadata accessor for ACDataclassAction();
      *(v27 + 32) = v29;
      return v27;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if ((v15 & 0x100) == 0)
  {

    v26 = static os_log_type_t.default.getter();
    _CRLLog(_:dso:type:format:_:)(v10, &dword_0, v26, "User has no existing Freeform data, returning an action to enable to create the sync data store.", 96, 2, &_swiftEmptyArrayStorage);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v27 = swift_allocObject();
    *(v27 + 16) = v49;
    result = [objc_opt_self() actionWithType:1];
    if (result)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

  v35 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v10, &dword_0, v35, "User has existing Freeform data.", 32, 2, &_swiftEmptyArrayStorage);
  if (!v19)
  {
    goto LABEL_22;
  }

  if (v17 == v47 && v19 == v48)
  {

    goto LABEL_22;
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v36)
  {
LABEL_22:
    v37 = static os_log_type_t.default.getter();
    _CRLLog(_:dso:type:format:_:)(v10, &dword_0, v37, "Data was never synced, or belonged to this user, returning an action to merge local data into the sync data.", 108, 2, &_swiftEmptyArrayStorage);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_3A290;
    v38 = objc_opt_self();
    result = [v38 actionWithType:5];
    if (result)
    {
      v39 = result;
      v40 = type metadata accessor for ACDataclassAction();
      *(v27 + 56) = v40;
      *(v27 + 32) = v39;
      result = [v38 actionWithType:0];
      if (result)
      {
        v41 = result;

        *(v27 + 88) = v40;
        *(v27 + 64) = v41;
        return v27;
      }

      goto LABEL_35;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v42 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v10, &dword_0, v42, "Data belonged to another user, returning options to merge, or delete and start over.", 84, 2, &_swiftEmptyArrayStorage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_3A890;
  v43 = objc_opt_self();
  result = [v43 actionWithType:5];
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v44 = result;
  v45 = type metadata accessor for ACDataclassAction();
  *(v27 + 56) = v45;
  *(v27 + 32) = v44;
  result = [v43 actionWithType:6];
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  *(v27 + 88) = v45;
  *(v27 + 64) = result;
  result = [v43 actionWithType:0];
  if (result)
  {
    v46 = result;

    *(v27 + 120) = v45;
    *(v27 + 96) = v46;
    return v27;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t specialized CRLDataclassOwner.perform(_:for:withChildren:forDataclass:)(void *a1, uint64_t a2)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v26 = &v25 - v5;
  if (one-time initialization token for dataclassOwner != -1)
  {
    swift_once();
  }

  v6 = static OS_os_log.dataclassOwner;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  result = swift_initStackObject();
  v27 = xmmword_3A860;
  *(result + 16) = xmmword_3A860;
  if (a1)
  {
    v9 = result;
    v10 = [a1 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v9[7] = &type metadata for String;
    v14 = lazy protocol witness table accessor for type String and conformance String();
    v9[8] = v14;
    v15 = a1;
    v9[4] = v11;
    v9[5] = v13;
    v16 = static os_log_type_t.default.getter();
    _CRLLog(_:dso:type:format:_:)(v6, &dword_0, v16, "perform(_:for:withChildren:forDataclass:) called with action: %{public}@.", 73, 2, v9);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_0(v9 + 4);
    v25 = v7;
    inited = swift_initStackObject();
    *(inited + 16) = v27;
    v29 = [v15 type];
    type metadata accessor for ACDataclassActionType(0);
    v18 = String.init<A>(describing:)();
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = v14;
    *(inited + 32) = v18;
    *(inited + 40) = v19;
    v20 = static os_log_type_t.default.getter();
    *&v27 = v6;
    _CRLLog(_:dso:type:format:_:)(v6, &dword_0, v20, "Action type: %@.", 16, 2, inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_0((inited + 32));
    result = specialized static CRLBoardDataStore.dataStoreDataClassAction(_:)([v15 type]);
    v21 = v28;
    if (v28)
    {
      v22 = result;
      v23 = type metadata accessor for URL();
      v24 = v26;
      (*(*(v23 - 8) + 56))(v26, 1, 1, v23);
      specialized static CRLBoardDataStore.performDataStoreDataclassAction(_:for:dataDirectory:)(v22, v21, v24);
      outlined destroy of URL?(v24);
      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for ACDataclassAction()
{
  result = lazy cache variable for type metadata for ACDataclassAction;
  if (!lazy cache variable for type metadata for ACDataclassAction)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ACDataclassAction);
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t one-time initialization function for shouldUseSandboxEnvironment()
{
  v2[3] = &type metadata for CRLFeatureFlags;
  v2[4] = lazy protocol witness table accessor for type CRLFeatureFlags and conformance CRLFeatureFlags();
  LOBYTE(v2[0]) = 27;
  v0 = isFeatureEnabled(_:)();
  result = __swift_destroy_boxed_opaque_existential_0(v2);
  static CRLCloudSyncConstants.shouldUseSandboxEnvironment = v0 & 1;
  return result;
}

uint64_t *OS_os_log.boardStore.unsafeMutableAddressor()
{
  if (one-time initialization token for boardStore != -1)
  {
    swift_once();
  }

  return &static OS_os_log.boardStore;
}

uint64_t *OS_os_log.dataclassOwner.unsafeMutableAddressor()
{
  if (one-time initialization token for dataclassOwner != -1)
  {
    swift_once();
  }

  return &static OS_os_log.dataclassOwner;
}

void one-time initialization function for crlDefault()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLDefaultCat_log_t, &CRLDefaultCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlDefault = v1;
}

uint64_t *OS_os_log.crlDefault.unsafeMutableAddressor()
{
  if (one-time initialization token for crlDefault != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlDefault;
}

void one-time initialization function for crlAssert()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLAssertCat_log_t, &CRLAssertCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlAssert = v1;
}

uint64_t *OS_os_log.crlAssert.unsafeMutableAddressor()
{
  if (one-time initialization token for crlAssert != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlAssert;
}

void one-time initialization function for crlError()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLErrorCat_log_t, &CRLErrorCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlError = v1;
}

uint64_t *OS_os_log.crlError.unsafeMutableAddressor()
{
  if (one-time initialization token for crlError != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlError;
}

void one-time initialization function for crlWarning()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLWarningCat_log_t, &CRLWarningCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlWarning = v1;
}

uint64_t *OS_os_log.crlWarning.unsafeMutableAddressor()
{
  if (one-time initialization token for crlWarning != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlWarning;
}

void one-time initialization function for crlAlert()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLAlertCat_log_t, &CRLAlertCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlAlert = v1;
}

uint64_t *OS_os_log.crlAlert.unsafeMutableAddressor()
{
  if (one-time initialization token for crlAlert != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlAlert;
}

void one-time initialization function for crlPerformance()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLPerformanceCat_log_t, &CRLPerformanceCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlPerformance = v1;
}

uint64_t *OS_os_log.crlPerformance.unsafeMutableAddressor()
{
  if (one-time initialization token for crlPerformance != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlPerformance;
}

void one-time initialization function for crlStatusHUD()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLStatusHUDCat_log_t, &CRLStatusHUDCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlStatusHUD = v1;
}

uint64_t *OS_os_log.crlStatusHUD.unsafeMutableAddressor()
{
  if (one-time initialization token for crlStatusHUD != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlStatusHUD;
}

void one-time initialization function for crlTextInput()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLTextInputCat_log_t, &CRLTextInputCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlTextInput = v1;
}

uint64_t *OS_os_log.crlTextInput.unsafeMutableAddressor()
{
  if (one-time initialization token for crlTextInput != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlTextInput;
}

void one-time initialization function for crlTraceableResource()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLTraceableResourceCat_log_t, &CRLTraceableResourceCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlTraceableResource = v1;
}

uint64_t *OS_os_log.crlTraceableResource.unsafeMutableAddressor()
{
  if (one-time initialization token for crlTraceableResource != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlTraceableResource;
}

void one-time initialization function for crlStorageHierachy()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLStorageHierachyCat_log_t, &CRLStorageHierachyCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlStorageHierachy = v1;
}

uint64_t *OS_os_log.crlStorageHierachy.unsafeMutableAddressor()
{
  if (one-time initialization token for crlStorageHierachy != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlStorageHierachy;
}

void one-time initialization function for crlSerializableObject()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLSerializableObjectCat_log_t, &CRLSerializableObjectCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlSerializableObject = v1;
}

uint64_t *OS_os_log.crlSerializableObject.unsafeMutableAddressor()
{
  if (one-time initialization token for crlSerializableObject != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlSerializableObject;
}

void one-time initialization function for crlCollaborationParticipant()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLCollaborationParticipantCat_log_t, &CRLCollaborationParticipantCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlCollaborationParticipant = v1;
}

uint64_t *OS_os_log.crlCollaborationParticipant.unsafeMutableAddressor()
{
  if (one-time initialization token for crlCollaborationParticipant != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlCollaborationParticipant;
}

void one-time initialization function for crlSpotlight()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLSpotlightCat_log_t, &CRLSpotlightCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlSpotlight = v1;
}

uint64_t *OS_os_log.crlSpotlight.unsafeMutableAddressor()
{
  if (one-time initialization token for crlSpotlight != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlSpotlight;
}

void one-time initialization function for crlNetworkReachability()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLNetworkReachabilityCat_log_t, &CRLNetworkReachabilityCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlNetworkReachability = v1;
}

uint64_t *OS_os_log.crlNetworkReachability.unsafeMutableAddressor()
{
  if (one-time initialization token for crlNetworkReachability != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlNetworkReachability;
}

void one-time initialization function for crlAssetDownloadManager()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLAssetDownloadManagerCat_log_t, &CRLAssetDownloadManagerCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlAssetDownloadManager = v1;
}

uint64_t *OS_os_log.crlAssetDownloadManager.unsafeMutableAddressor()
{
  if (one-time initialization token for crlAssetDownloadManager != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlAssetDownloadManager;
}

void one-time initialization function for crlAnalytics()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLAnalyticsCat_log_t, &CRLAnalyticsCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlAnalytics = v1;
}

uint64_t *OS_os_log.crlAnalytics.unsafeMutableAddressor()
{
  if (one-time initialization token for crlAnalytics != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlAnalytics;
}

void one-time initialization function for crlAppAnalytics()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLAppAnalyticsCat_log_t, &CRLAppAnalyticsCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlAppAnalytics = v1;
}

uint64_t *OS_os_log.crlAppAnalytics.unsafeMutableAddressor()
{
  if (one-time initialization token for crlAppAnalytics != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlAppAnalytics;
}

uint64_t (*static OS_os_log.crlAppAnalytics.modify())()
{
  if (one-time initialization token for crlAppAnalytics != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static OS_os_log.crlAppAnalytics.modify;
}

void one-time initialization function for crlKeyboard()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLKeyboardCat_log_t, &CRLKeyboardCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlKeyboard = v1;
}

uint64_t *OS_os_log.crlKeyboard.unsafeMutableAddressor()
{
  if (one-time initialization token for crlKeyboard != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlKeyboard;
}

void one-time initialization function for crlFolderUI()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLFolderUICat_log_t, &CRLFolderUICat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlFolderUI = v1;
}

uint64_t *OS_os_log.crlFolderUI.unsafeMutableAddressor()
{
  if (one-time initialization token for crlFolderUI != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlFolderUI;
}

void one-time initialization function for crlBoardLibrary()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLBoardLibraryCat_log_t, &CRLBoardLibraryCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlBoardLibrary = v1;
}

uint64_t *OS_os_log.crlBoardLibrary.unsafeMutableAddressor()
{
  if (one-time initialization token for crlBoardLibrary != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlBoardLibrary;
}

void one-time initialization function for crlBoardPreviewImageCache()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLBoardPreviewImageCacheCat_log_t, &CRLBoardPreviewImageCacheCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlBoardPreviewImageCache = v1;
}

uint64_t *OS_os_log.crlBoardPreviewImageCache.unsafeMutableAddressor()
{
  if (one-time initialization token for crlBoardPreviewImageCache != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlBoardPreviewImageCache;
}

void one-time initialization function for crlDragAndDrop()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLDragAndDropCat_log_t, &CRLDragAndDropCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlDragAndDrop = v1;
}

uint64_t *OS_os_log.crlDragAndDrop.unsafeMutableAddressor()
{
  if (one-time initialization token for crlDragAndDrop != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlDragAndDrop;
}

void one-time initialization function for crlSharingExtension()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLSharingExtensionCat_log_t, &CRLSharingExtensionCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlSharingExtension = v1;
}

uint64_t *OS_os_log.crlSharingExtension.unsafeMutableAddressor()
{
  if (one-time initialization token for crlSharingExtension != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlSharingExtension;
}

void one-time initialization function for crlStencilLibrary()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLStencilLibraryCat_log_t, &CRLStencilLibraryCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlStencilLibrary = v1;
}

uint64_t *OS_os_log.crlStencilLibrary.unsafeMutableAddressor()
{
  if (one-time initialization token for crlStencilLibrary != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlStencilLibrary;
}

void one-time initialization function for crlRealTimeMessageTransfer()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLCarmelRealTimeMessageTransferCat_log_t, &CRLCarmelRealTimeMessageTransferCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlRealTimeMessageTransfer = v1;
}

uint64_t *OS_os_log.crlRealTimeMessageTransfer.unsafeMutableAddressor()
{
  if (one-time initialization token for crlRealTimeMessageTransfer != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlRealTimeMessageTransfer;
}

void one-time initialization function for crlZoneRefetch()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLZoneRefetchCat_log_t, &CRLZoneRefetchCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlZoneRefetch = v1;
}

uint64_t *OS_os_log.crlZoneRefetch.unsafeMutableAddressor()
{
  if (one-time initialization token for crlZoneRefetch != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlZoneRefetch;
}

void one-time initialization function for crlSendACopy()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLSendACopyCat_log_t, &CRLSendACopyCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlSendACopy = v1;
}

uint64_t *OS_os_log.crlSendACopy.unsafeMutableAddressor()
{
  if (one-time initialization token for crlSendACopy != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlSendACopy;
}

void one-time initialization function for crlCloudKitEnvironment()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLCloudKitEnvironmentCat_log_t, &CRLCloudKitEnvironmentCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlCloudKitEnvironment = v1;
}

uint64_t *OS_os_log.crlCloudKitEnvironment.unsafeMutableAddressor()
{
  if (one-time initialization token for crlCloudKitEnvironment != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlCloudKitEnvironment;
}

void one-time initialization function for crlSidebar()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLSidebarCat_log_t, &CRLSidebarCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlSidebar = v1;
}

uint64_t *OS_os_log.crlSidebar.unsafeMutableAddressor()
{
  if (one-time initialization token for crlSidebar != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlSidebar;
}

void one-time initialization function for crlInsertMedia()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLInsertMediaCat_log_t, &CRLInsertMediaCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlInsertMedia = v1;
}

uint64_t *OS_os_log.crlInsertMedia.unsafeMutableAddressor()
{
  if (one-time initialization token for crlInsertMedia != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlInsertMedia;
}

void one-time initialization function for crlCollaboratorCursor()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLCollaboratorCursorCat_log_t, &CRLCollaboratorCursorCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlCollaboratorCursor = v1;
}

uint64_t *OS_os_log.crlCollaboratorCursor.unsafeMutableAddressor()
{
  if (one-time initialization token for crlCollaboratorCursor != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlCollaboratorCursor;
}

void one-time initialization function for crlStateRestoration()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLStateRestorationCat_log_t, &CRLStateRestorationCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlStateRestoration = v1;
}

uint64_t *OS_os_log.crlStateRestoration.unsafeMutableAddressor()
{
  if (one-time initialization token for crlStateRestoration != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlStateRestoration;
}

void one-time initialization function for crlFollow()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLFollowCat_log_t, &CRLFollowCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlFollow = v1;
}

uint64_t *OS_os_log.crlFollow.unsafeMutableAddressor()
{
  if (one-time initialization token for crlFollow != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlFollow;
}

void one-time initialization function for crlJoinLeave()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLJoinLeaveCat_log_t, &CRLJoinLeaveCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlJoinLeave = v1;
}

uint64_t *OS_os_log.crlJoinLeave.unsafeMutableAddressor()
{
  if (one-time initialization token for crlJoinLeave != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlJoinLeave;
}

void one-time initialization function for crlPencilHover()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLPencilHoverCat_log_t, &CRLPencilHoverCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlPencilHover = v1;
}

uint64_t *OS_os_log.crlPencilHover.unsafeMutableAddressor()
{
  if (one-time initialization token for crlPencilHover != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlPencilHover;
}

void one-time initialization function for crlScenes()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLScenesCat_log_t, &CRLScenesCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlScenes = v1;
}

uint64_t *OS_os_log.crlScenes.unsafeMutableAddressor()
{
  if (one-time initialization token for crlScenes != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlScenes;
}

void one-time initialization function for crlTables()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLTablesCat_log_t, &CRLTablesCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlTables = v1;
}

uint64_t *OS_os_log.crlTables.unsafeMutableAddressor()
{
  if (one-time initialization token for crlTables != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlTables;
}

void one-time initialization function for crlThreeDimensionalObjects()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLThreeDimensionalObjectsCat_log_t, &CRLThreeDimensionalObjectsCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlThreeDimensionalObjects = v1;
}

uint64_t *OS_os_log.crlThreeDimensionalObjects.unsafeMutableAddressor()
{
  if (one-time initialization token for crlThreeDimensionalObjects != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlThreeDimensionalObjects;
}

void one-time initialization function for crlChangeShape()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLChangeShapeCat_log_t, &CRLChangeShapeCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlChangeShape = v1;
}

uint64_t *OS_os_log.crlChangeShape.unsafeMutableAddressor()
{
  if (one-time initialization token for crlChangeShape != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlChangeShape;
}

void one-time initialization function for crlCloudQuotaMessaging()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLCloudQuotaMessagingCat_log_t, &CRLCloudQuotaMessagingCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlCloudQuotaMessaging = v1;
}

uint64_t *OS_os_log.crlCloudQuotaMessaging.unsafeMutableAddressor()
{
  if (one-time initialization token for crlCloudQuotaMessaging != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlCloudQuotaMessaging;
}

void one-time initialization function for crl3DBreakthrough()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRL3DBreakthroughCat_log_t, &CRL3DBreakthroughCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crl3DBreakthrough = v1;
}

uint64_t *OS_os_log.crl3DBreakthrough.unsafeMutableAddressor()
{
  if (one-time initialization token for crl3DBreakthrough != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crl3DBreakthrough;
}

void one-time initialization function for crlObjectTransform()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLObjectTransformCat_log_t, &CRLObjectTransformCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlObjectTransform = v1;
}

uint64_t *OS_os_log.crlObjectTransform.unsafeMutableAddressor()
{
  if (one-time initialization token for crlObjectTransform != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlObjectTransform;
}

void one-time initialization function for crlLayerAnimation()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLLayerAnimationCat_log_t, &CRLLayerAnimationCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlLayerAnimation = v1;
}

uint64_t *OS_os_log.crlLayerAnimation.unsafeMutableAddressor()
{
  if (one-time initialization token for crlLayerAnimation != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlLayerAnimation;
}

void one-time initialization function for crlAnimationImpl()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLAnimationImplCat_log_t, &CRLAnimationImplCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlAnimationImpl = v1;
}

uint64_t *OS_os_log.crlAnimationImpl.unsafeMutableAddressor()
{
  if (one-time initialization token for crlAnimationImpl != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlAnimationImpl;
}

void one-time initialization function for crlMiniFormatter()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLMiniFormatterCat_log_t, &CRLMiniFormatterCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlMiniFormatter = v1;
}

uint64_t *OS_os_log.crlMiniFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for crlMiniFormatter != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlMiniFormatter;
}

void one-time initialization function for sceneManagement()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLSceneManagementCat_log_t, &CRLSceneManagementCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.sceneManagement = v1;
}

uint64_t *OS_os_log.sceneManagement.unsafeMutableAddressor()
{
  if (one-time initialization token for sceneManagement != -1)
  {
    swift_once();
  }

  return &static OS_os_log.sceneManagement;
}

void one-time initialization function for composition()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLCompositionCat_log_t, &CRLCompositionCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.composition = v1;
}

uint64_t *OS_os_log.composition.unsafeMutableAddressor()
{
  if (one-time initialization token for composition != -1)
  {
    swift_once();
  }

  return &static OS_os_log.composition;
}

void one-time initialization function for CRLViewController()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLViewControllerCat_log_t, &CRLViewControllerCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.CRLViewController = v1;
}

uint64_t *OS_os_log.CRLViewController.unsafeMutableAddressor()
{
  if (one-time initialization token for CRLViewController != -1)
  {
    swift_once();
  }

  return &static OS_os_log.CRLViewController;
}

void one-time initialization function for appIntents()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLAppIntentsCat_log_t, &CRLAppIntentsCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.appIntents = v1;
}

uint64_t *OS_os_log.appIntents.unsafeMutableAddressor()
{
  if (one-time initialization token for appIntents != -1)
  {
    swift_once();
  }

  return &static OS_os_log.appIntents;
}

void one-time initialization function for appState()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLAppStateCat_log_t, &CRLAppStateCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.appState = v1;
}

uint64_t *OS_os_log.appState.unsafeMutableAddressor()
{
  if (one-time initialization token for appState != -1)
  {
    swift_once();
  }

  return &static OS_os_log.appState;
}

void one-time initialization function for interaction()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLInteractionCat_log_t, &CRLInteractionCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.interaction = v1;
}

uint64_t *OS_os_log.interaction.unsafeMutableAddressor()
{
  if (one-time initialization token for interaction != -1)
  {
    swift_once();
  }

  return &static OS_os_log.interaction;
}

void one-time initialization function for contentState()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLContentStateCat_log_t, &CRLContentStateCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.contentState = v1;
}

uint64_t *OS_os_log.contentState.unsafeMutableAddressor()
{
  if (one-time initialization token for contentState != -1)
  {
    swift_once();
  }

  return &static OS_os_log.contentState;
}

void one-time initialization function for boardStore()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLBoardDataStoreCat_log_t, &CRLBoardDataStoreCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.boardStore = v1;
}

void one-time initialization function for fileProviderStore()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLFileProviderStoreCat_log_t, &CRLFileProviderStoreCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.fileProviderStore = v1;
}

uint64_t *OS_os_log.fileProviderStore.unsafeMutableAddressor()
{
  if (one-time initialization token for fileProviderStore != -1)
  {
    swift_once();
  }

  return &static OS_os_log.fileProviderStore;
}

void one-time initialization function for persistence()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLPersistenceCat_log_t, &CRLPersistenceCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.persistence = v1;
}

uint64_t *OS_os_log.persistence.unsafeMutableAddressor()
{
  if (one-time initialization token for persistence != -1)
  {
    swift_once();
  }

  return &static OS_os_log.persistence;
}

void one-time initialization function for dataSync()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLDataSyncCat_log_t, &CRLDataSyncCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.dataSync = v1;
}

uint64_t *OS_os_log.dataSync.unsafeMutableAddressor()
{
  if (one-time initialization token for dataSync != -1)
  {
    swift_once();
  }

  return &static OS_os_log.dataSync;
}

void one-time initialization function for commandController()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLCommandControllerCat_log_t, &CRLCommandControllerCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.commandController = v1;
}

uint64_t *OS_os_log.commandController.unsafeMutableAddressor()
{
  if (one-time initialization token for commandController != -1)
  {
    swift_once();
  }

  return &static OS_os_log.commandController;
}

void one-time initialization function for suspendResumeCollaboration()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLSuspendResumeCollaborationCat_log_t, &CRLSuspendResumeCollaborationCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.suspendResumeCollaboration = v1;
}

uint64_t *OS_os_log.suspendResumeCollaboration.unsafeMutableAddressor()
{
  if (one-time initialization token for suspendResumeCollaboration != -1)
  {
    swift_once();
  }

  return &static OS_os_log.suspendResumeCollaboration;
}

void one-time initialization function for realTimeSync()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLCarmelRealTimeSyncCat_log_t, &CRLCarmelRealTimeSyncCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.realTimeSync = v1;
}

uint64_t *OS_os_log.realTimeSync.unsafeMutableAddressor()
{
  if (one-time initialization token for realTimeSync != -1)
  {
    swift_once();
  }

  return &static OS_os_log.realTimeSync;
}

void one-time initialization function for keyboardInput()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLKeyboardInputCat_log_t, &CRLKeyboardInputCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.keyboardInput = v1;
}

uint64_t *OS_os_log.keyboardInput.unsafeMutableAddressor()
{
  if (one-time initialization token for keyboardInput != -1)
  {
    swift_once();
  }

  return &static OS_os_log.keyboardInput;
}

void one-time initialization function for target_gesture()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLTargetGestureCat_log_t, &CRLTargetGestureCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.target_gesture = v1;
}

uint64_t *OS_os_log.target_gesture.unsafeMutableAddressor()
{
  if (one-time initialization token for target_gesture != -1)
  {
    swift_once();
  }

  return &static OS_os_log.target_gesture;
}

void one-time initialization function for upgrade()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLDataStoreUpgradeCat_log_t, &CRLDataStoreUpgradeCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.upgrade = v1;
}

uint64_t *OS_os_log.upgrade.unsafeMutableAddressor()
{
  if (one-time initialization token for upgrade != -1)
  {
    swift_once();
  }

  return &static OS_os_log.upgrade;
}

void one-time initialization function for pasteboard()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLPasteboardCat_log_t, &CRLPasteboardCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.pasteboard = v1;
}

uint64_t *OS_os_log.pasteboard.unsafeMutableAddressor()
{
  if (one-time initialization token for pasteboard != -1)
  {
    swift_once();
  }

  return &static OS_os_log.pasteboard;
}

void one-time initialization function for boardItemDataSize()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLBoardItemDataSizeCat_log_t, &CRLBoardItemDataSizeCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.boardItemDataSize = v1;
}

uint64_t *OS_os_log.boardItemDataSize.unsafeMutableAddressor()
{
  if (one-time initialization token for boardItemDataSize != -1)
  {
    swift_once();
  }

  return &static OS_os_log.boardItemDataSize;
}

void one-time initialization function for boardItemLifecycle()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLBoardItemLifecycleCat_log_t, &CRLBoardItemLifecycleCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.boardItemLifecycle = v1;
}

uint64_t *OS_os_log.boardItemLifecycle.unsafeMutableAddressor()
{
  if (one-time initialization token for boardItemLifecycle != -1)
  {
    swift_once();
  }

  return &static OS_os_log.boardItemLifecycle;
}

void one-time initialization function for assetManagement()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLAssetManagementCat_log_t, &CRLAssetManagementCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.assetManagement = v1;
}

uint64_t *OS_os_log.assetManagement.unsafeMutableAddressor()
{
  if (one-time initialization token for assetManagement != -1)
  {
    swift_once();
  }

  return &static OS_os_log.assetManagement;
}

void one-time initialization function for dataclassOwner()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLDataclassOwnerCat_log_t, &CRLDataclassOwnerCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.dataclassOwner = v1;
}

void one-time initialization function for shareState()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLShareStateCat_log_t, &CRLShareStateCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.shareState = v1;
}

uint64_t *OS_os_log.shareState.unsafeMutableAddressor()
{
  if (one-time initialization token for shareState != -1)
  {
    swift_once();
  }

  return &static OS_os_log.shareState;
}

void one-time initialization function for DrawingDataDetectors()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLDrawingDataDetectors_log_t, &CRLDrawingDataDetectors_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.DrawingDataDetectors = v1;
}

uint64_t *OS_os_log.DrawingDataDetectors.unsafeMutableAddressor()
{
  if (one-time initialization token for DrawingDataDetectors != -1)
  {
    swift_once();
  }

  return &static OS_os_log.DrawingDataDetectors;
}

void one-time initialization function for sideStore()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLSideStore_log_t, &CRLSideStore_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.sideStore = v1;
}

uint64_t *OS_os_log.sideStore.unsafeMutableAddressor()
{
  if (one-time initialization token for sideStore != -1)
  {
    swift_once();
  }

  return &static OS_os_log.sideStore;
}

void one-time initialization function for crlSurface()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLSurfaceCat_log_t, &CRLSurfaceCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlSurface = v1;
}

uint64_t *OS_os_log.crlSurface.unsafeMutableAddressor()
{
  if (one-time initialization token for crlSurface != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlSurface;
}

void one-time initialization function for writingTools()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLWritingTools_log_t, &CRLWritingTools_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.writingTools = v1;
}

uint64_t *OS_os_log.writingTools.unsafeMutableAddressor()
{
  if (one-time initialization token for writingTools != -1)
  {
    swift_once();
  }

  return &static OS_os_log.writingTools;
}

uint64_t (*static OS_os_log.writingTools.modify())()
{
  if (one-time initialization token for writingTools != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static OS_os_log.writingTools.modify;
}

void one-time initialization function for crlFreehandDrawingStrokeAnimation()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLFreehandDrawingStrokeAnimationCat_log_t, &CRLFreehandDrawingStrokeAnimationCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlFreehandDrawingStrokeAnimation = v1;
}

uint64_t *OS_os_log.crlFreehandDrawingStrokeAnimation.unsafeMutableAddressor()
{
  if (one-time initialization token for crlFreehandDrawingStrokeAnimation != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlFreehandDrawingStrokeAnimation;
}

id static OS_os_log.crlAppAnalytics.getter(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *a2;

  return v3;
}

void static OS_os_log.crlAppAnalytics.setter(void *a1, void *a2, void **a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a3;
  *a3 = a1;
}

uint64_t (*static OS_os_log.crlFreehandDrawingStrokeAnimation.modify())()
{
  if (one-time initialization token for crlFreehandDrawingStrokeAnimation != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static OS_os_log.crlAppAnalytics.modify;
}

uint64_t _CRLLog(_:dso:type:format:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  switch(*(a7 + 16))
  {
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_3A860;
      v9 = a7 + 32;
      v10 = v20 + 32;
      goto LABEL_25;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_3A290;
      outlined init with copy of CVarArg(a7 + 32, v16 + 32);
      v9 = a7 + 72;
      v10 = v16 + 72;
      goto LABEL_25;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_3A890;
      outlined init with copy of CVarArg(a7 + 32, v18 + 32);
      outlined init with copy of CVarArg(a7 + 72, v18 + 72);
      v9 = a7 + 112;
      v10 = v18 + 112;
      goto LABEL_25;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_3AA30;
      outlined init with copy of CVarArg(a7 + 32, v13 + 32);
      outlined init with copy of CVarArg(a7 + 72, v13 + 72);
      outlined init with copy of CVarArg(a7 + 112, v13 + 112);
      v9 = a7 + 152;
      v10 = v13 + 152;
      goto LABEL_25;
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_3AA20;
      outlined init with copy of CVarArg(a7 + 32, v23 + 32);
      outlined init with copy of CVarArg(a7 + 72, v23 + 72);
      outlined init with copy of CVarArg(a7 + 112, v23 + 112);
      outlined init with copy of CVarArg(a7 + 152, v23 + 152);
      v9 = a7 + 192;
      v10 = v23 + 192;
      goto LABEL_25;
    case 6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_3AA10;
      outlined init with copy of CVarArg(a7 + 32, v26 + 32);
      outlined init with copy of CVarArg(a7 + 72, v26 + 72);
      outlined init with copy of CVarArg(a7 + 112, v26 + 112);
      outlined init with copy of CVarArg(a7 + 152, v26 + 152);
      outlined init with copy of CVarArg(a7 + 192, v26 + 192);
      v9 = a7 + 232;
      v10 = v26 + 232;
      goto LABEL_25;
    case 7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_3AA00;
      outlined init with copy of CVarArg(a7 + 32, v19 + 32);
      outlined init with copy of CVarArg(a7 + 72, v19 + 72);
      outlined init with copy of CVarArg(a7 + 112, v19 + 112);
      outlined init with copy of CVarArg(a7 + 152, v19 + 152);
      outlined init with copy of CVarArg(a7 + 192, v19 + 192);
      outlined init with copy of CVarArg(a7 + 232, v19 + 232);
      v9 = a7 + 272;
      v10 = v19 + 272;
      goto LABEL_25;
    case 8:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_3A9F0;
      outlined init with copy of CVarArg(a7 + 32, v29 + 32);
      outlined init with copy of CVarArg(a7 + 72, v29 + 72);
      outlined init with copy of CVarArg(a7 + 112, v29 + 112);
      outlined init with copy of CVarArg(a7 + 152, v29 + 152);
      outlined init with copy of CVarArg(a7 + 192, v29 + 192);
      outlined init with copy of CVarArg(a7 + 232, v29 + 232);
      outlined init with copy of CVarArg(a7 + 272, v29 + 272);
      v9 = a7 + 312;
      v10 = v29 + 312;
      goto LABEL_25;
    case 9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_3A9E0;
      outlined init with copy of CVarArg(a7 + 32, v15 + 32);
      outlined init with copy of CVarArg(a7 + 72, v15 + 72);
      outlined init with copy of CVarArg(a7 + 112, v15 + 112);
      outlined init with copy of CVarArg(a7 + 152, v15 + 152);
      outlined init with copy of CVarArg(a7 + 192, v15 + 192);
      outlined init with copy of CVarArg(a7 + 232, v15 + 232);
      outlined init with copy of CVarArg(a7 + 272, v15 + 272);
      outlined init with copy of CVarArg(a7 + 312, v15 + 312);
      v9 = a7 + 352;
      v10 = v15 + 352;
      goto LABEL_25;
    case 0xALL:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_3A9D0;
      outlined init with copy of CVarArg(a7 + 32, v28 + 32);
      outlined init with copy of CVarArg(a7 + 72, v28 + 72);
      outlined init with copy of CVarArg(a7 + 112, v28 + 112);
      outlined init with copy of CVarArg(a7 + 152, v28 + 152);
      outlined init with copy of CVarArg(a7 + 192, v28 + 192);
      outlined init with copy of CVarArg(a7 + 232, v28 + 232);
      outlined init with copy of CVarArg(a7 + 272, v28 + 272);
      outlined init with copy of CVarArg(a7 + 312, v28 + 312);
      outlined init with copy of CVarArg(a7 + 352, v28 + 352);
      v9 = a7 + 392;
      v10 = v28 + 392;
      goto LABEL_25;
    case 0xBLL:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_3A9C0;
      outlined init with copy of CVarArg(a7 + 32, v12 + 32);
      outlined init with copy of CVarArg(a7 + 72, v12 + 72);
      outlined init with copy of CVarArg(a7 + 112, v12 + 112);
      outlined init with copy of CVarArg(a7 + 152, v12 + 152);
      outlined init with copy of CVarArg(a7 + 192, v12 + 192);
      outlined init with copy of CVarArg(a7 + 232, v12 + 232);
      outlined init with copy of CVarArg(a7 + 272, v12 + 272);
      outlined init with copy of CVarArg(a7 + 312, v12 + 312);
      outlined init with copy of CVarArg(a7 + 352, v12 + 352);
      outlined init with copy of CVarArg(a7 + 392, v12 + 392);
      v9 = a7 + 432;
      v10 = v12 + 432;
      goto LABEL_25;
    case 0xCLL:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_3A9B0;
      outlined init with copy of CVarArg(a7 + 32, v14 + 32);
      outlined init with copy of CVarArg(a7 + 72, v14 + 72);
      outlined init with copy of CVarArg(a7 + 112, v14 + 112);
      outlined init with copy of CVarArg(a7 + 152, v14 + 152);
      outlined init with copy of CVarArg(a7 + 192, v14 + 192);
      outlined init with copy of CVarArg(a7 + 232, v14 + 232);
      outlined init with copy of CVarArg(a7 + 272, v14 + 272);
      outlined init with copy of CVarArg(a7 + 312, v14 + 312);
      outlined init with copy of CVarArg(a7 + 352, v14 + 352);
      outlined init with copy of CVarArg(a7 + 392, v14 + 392);
      outlined init with copy of CVarArg(a7 + 432, v14 + 432);
      v9 = a7 + 472;
      v10 = v14 + 472;
      goto LABEL_25;
    case 0xDLL:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_3A9A0;
      outlined init with copy of CVarArg(a7 + 32, v25 + 32);
      outlined init with copy of CVarArg(a7 + 72, v25 + 72);
      outlined init with copy of CVarArg(a7 + 112, v25 + 112);
      outlined init with copy of CVarArg(a7 + 152, v25 + 152);
      outlined init with copy of CVarArg(a7 + 192, v25 + 192);
      outlined init with copy of CVarArg(a7 + 232, v25 + 232);
      outlined init with copy of CVarArg(a7 + 272, v25 + 272);
      outlined init with copy of CVarArg(a7 + 312, v25 + 312);
      outlined init with copy of CVarArg(a7 + 352, v25 + 352);
      outlined init with copy of CVarArg(a7 + 392, v25 + 392);
      outlined init with copy of CVarArg(a7 + 432, v25 + 432);
      outlined init with copy of CVarArg(a7 + 472, v25 + 472);
      v9 = a7 + 512;
      v10 = v25 + 512;
      goto LABEL_25;
    case 0xELL:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_3A990;
      outlined init with copy of CVarArg(a7 + 32, v11 + 32);
      outlined init with copy of CVarArg(a7 + 72, v11 + 72);
      outlined init with copy of CVarArg(a7 + 112, v11 + 112);
      outlined init with copy of CVarArg(a7 + 152, v11 + 152);
      outlined init with copy of CVarArg(a7 + 192, v11 + 192);
      outlined init with copy of CVarArg(a7 + 232, v11 + 232);
      outlined init with copy of CVarArg(a7 + 272, v11 + 272);
      outlined init with copy of CVarArg(a7 + 312, v11 + 312);
      outlined init with copy of CVarArg(a7 + 352, v11 + 352);
      outlined init with copy of CVarArg(a7 + 392, v11 + 392);
      outlined init with copy of CVarArg(a7 + 432, v11 + 432);
      outlined init with copy of CVarArg(a7 + 472, v11 + 472);
      outlined init with copy of CVarArg(a7 + 512, v11 + 512);
      v9 = a7 + 552;
      v10 = v11 + 552;
      goto LABEL_25;
    case 0xFLL:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_3A980;
      outlined init with copy of CVarArg(a7 + 32, v17 + 32);
      outlined init with copy of CVarArg(a7 + 72, v17 + 72);
      outlined init with copy of CVarArg(a7 + 112, v17 + 112);
      outlined init with copy of CVarArg(a7 + 152, v17 + 152);
      outlined init with copy of CVarArg(a7 + 192, v17 + 192);
      outlined init with copy of CVarArg(a7 + 232, v17 + 232);
      outlined init with copy of CVarArg(a7 + 272, v17 + 272);
      outlined init with copy of CVarArg(a7 + 312, v17 + 312);
      outlined init with copy of CVarArg(a7 + 352, v17 + 352);
      outlined init with copy of CVarArg(a7 + 392, v17 + 392);
      outlined init with copy of CVarArg(a7 + 432, v17 + 432);
      outlined init with copy of CVarArg(a7 + 472, v17 + 472);
      outlined init with copy of CVarArg(a7 + 512, v17 + 512);
      outlined init with copy of CVarArg(a7 + 552, v17 + 552);
      v9 = a7 + 592;
      v10 = v17 + 592;
      goto LABEL_25;
    case 0x10:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_3A970;
      outlined init with copy of CVarArg(a7 + 32, v8 + 32);
      outlined init with copy of CVarArg(a7 + 72, v8 + 72);
      outlined init with copy of CVarArg(a7 + 112, v8 + 112);
      outlined init with copy of CVarArg(a7 + 152, v8 + 152);
      outlined init with copy of CVarArg(a7 + 192, v8 + 192);
      outlined init with copy of CVarArg(a7 + 232, v8 + 232);
      outlined init with copy of CVarArg(a7 + 272, v8 + 272);
      outlined init with copy of CVarArg(a7 + 312, v8 + 312);
      outlined init with copy of CVarArg(a7 + 352, v8 + 352);
      outlined init with copy of CVarArg(a7 + 392, v8 + 392);
      outlined init with copy of CVarArg(a7 + 432, v8 + 432);
      outlined init with copy of CVarArg(a7 + 472, v8 + 472);
      outlined init with copy of CVarArg(a7 + 512, v8 + 512);
      outlined init with copy of CVarArg(a7 + 552, v8 + 552);
      outlined init with copy of CVarArg(a7 + 592, v8 + 592);
      v9 = a7 + 632;
      v10 = v8 + 632;
      goto LABEL_25;
    case 0x11:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_3A960;
      outlined init with copy of CVarArg(a7 + 32, v21 + 32);
      outlined init with copy of CVarArg(a7 + 72, v21 + 72);
      outlined init with copy of CVarArg(a7 + 112, v21 + 112);
      outlined init with copy of CVarArg(a7 + 152, v21 + 152);
      outlined init with copy of CVarArg(a7 + 192, v21 + 192);
      outlined init with copy of CVarArg(a7 + 232, v21 + 232);
      outlined init with copy of CVarArg(a7 + 272, v21 + 272);
      outlined init with copy of CVarArg(a7 + 312, v21 + 312);
      outlined init with copy of CVarArg(a7 + 352, v21 + 352);
      outlined init with copy of CVarArg(a7 + 392, v21 + 392);
      outlined init with copy of CVarArg(a7 + 432, v21 + 432);
      outlined init with copy of CVarArg(a7 + 472, v21 + 472);
      outlined init with copy of CVarArg(a7 + 512, v21 + 512);
      outlined init with copy of CVarArg(a7 + 552, v21 + 552);
      outlined init with copy of CVarArg(a7 + 592, v21 + 592);
      outlined init with copy of CVarArg(a7 + 632, v21 + 632);
      v9 = a7 + 672;
      v10 = v21 + 672;
      goto LABEL_25;
    case 0x12:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_3A950;
      outlined init with copy of CVarArg(a7 + 32, v27 + 32);
      outlined init with copy of CVarArg(a7 + 72, v27 + 72);
      outlined init with copy of CVarArg(a7 + 112, v27 + 112);
      outlined init with copy of CVarArg(a7 + 152, v27 + 152);
      outlined init with copy of CVarArg(a7 + 192, v27 + 192);
      outlined init with copy of CVarArg(a7 + 232, v27 + 232);
      outlined init with copy of CVarArg(a7 + 272, v27 + 272);
      outlined init with copy of CVarArg(a7 + 312, v27 + 312);
      outlined init with copy of CVarArg(a7 + 352, v27 + 352);
      outlined init with copy of CVarArg(a7 + 392, v27 + 392);
      outlined init with copy of CVarArg(a7 + 432, v27 + 432);
      outlined init with copy of CVarArg(a7 + 472, v27 + 472);
      outlined init with copy of CVarArg(a7 + 512, v27 + 512);
      outlined init with copy of CVarArg(a7 + 552, v27 + 552);
      outlined init with copy of CVarArg(a7 + 592, v27 + 592);
      outlined init with copy of CVarArg(a7 + 632, v27 + 632);
      outlined init with copy of CVarArg(a7 + 672, v27 + 672);
      v9 = a7 + 712;
      v10 = v27 + 712;
      goto LABEL_25;
    case 0x13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_3A940;
      outlined init with copy of CVarArg(a7 + 32, v30 + 32);
      outlined init with copy of CVarArg(a7 + 72, v30 + 72);
      outlined init with copy of CVarArg(a7 + 112, v30 + 112);
      outlined init with copy of CVarArg(a7 + 152, v30 + 152);
      outlined init with copy of CVarArg(a7 + 192, v30 + 192);
      outlined init with copy of CVarArg(a7 + 232, v30 + 232);
      outlined init with copy of CVarArg(a7 + 272, v30 + 272);
      outlined init with copy of CVarArg(a7 + 312, v30 + 312);
      outlined init with copy of CVarArg(a7 + 352, v30 + 352);
      outlined init with copy of CVarArg(a7 + 392, v30 + 392);
      outlined init with copy of CVarArg(a7 + 432, v30 + 432);
      outlined init with copy of CVarArg(a7 + 472, v30 + 472);
      outlined init with copy of CVarArg(a7 + 512, v30 + 512);
      outlined init with copy of CVarArg(a7 + 552, v30 + 552);
      outlined init with copy of CVarArg(a7 + 592, v30 + 592);
      outlined init with copy of CVarArg(a7 + 632, v30 + 632);
      outlined init with copy of CVarArg(a7 + 672, v30 + 672);
      outlined init with copy of CVarArg(a7 + 712, v30 + 712);
      v9 = a7 + 752;
      v10 = v30 + 752;
      goto LABEL_25;
    case 0x14:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_3A930;
      outlined init with copy of CVarArg(a7 + 32, v22 + 32);
      outlined init with copy of CVarArg(a7 + 72, v22 + 72);
      outlined init with copy of CVarArg(a7 + 112, v22 + 112);
      outlined init with copy of CVarArg(a7 + 152, v22 + 152);
      outlined init with copy of CVarArg(a7 + 192, v22 + 192);
      outlined init with copy of CVarArg(a7 + 232, v22 + 232);
      outlined init with copy of CVarArg(a7 + 272, v22 + 272);
      outlined init with copy of CVarArg(a7 + 312, v22 + 312);
      outlined init with copy of CVarArg(a7 + 352, v22 + 352);
      outlined init with copy of CVarArg(a7 + 392, v22 + 392);
      outlined init with copy of CVarArg(a7 + 432, v22 + 432);
      outlined init with copy of CVarArg(a7 + 472, v22 + 472);
      outlined init with copy of CVarArg(a7 + 512, v22 + 512);
      outlined init with copy of CVarArg(a7 + 552, v22 + 552);
      outlined init with copy of CVarArg(a7 + 592, v22 + 592);
      outlined init with copy of CVarArg(a7 + 632, v22 + 632);
      outlined init with copy of CVarArg(a7 + 672, v22 + 672);
      outlined init with copy of CVarArg(a7 + 712, v22 + 712);
      outlined init with copy of CVarArg(a7 + 752, v22 + 752);
      v9 = a7 + 792;
      v10 = v22 + 792;
LABEL_25:
      outlined init with copy of CVarArg(v9, v10);
      os_log(_:dso:log:type:_:)();

      break;
    default:

      result = os_log(_:dso:log:type:_:)();
      break;
  }

  return result;
}

uint64_t outlined init with copy of CVarArg(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t CRLUnfairLock.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for inMemoryDatabaseURL()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for URL();
  __swift_allocate_value_buffer(v4, static SQLiteDatabase.inMemoryDatabaseURL);
  v5 = __swift_project_value_buffer(v4, static SQLiteDatabase.inMemoryDatabaseURL);
  URL.init(string:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t SQLiteDatabase.init(name:url:accessQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_hasRBSAssertion) = 0;
  v10 = (v4 + OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_name);
  *v10 = a1;
  v10[1] = a2;

  _StringGuts.grow(_:)(32);

  v11._object = 0x800000000003E420;
  v11._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v11);
  v12 = (v4 + OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_runningboardAssertionExplanation);
  *v12 = a1;
  v12[1] = a2;
  v13 = OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_url;
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 32))(v5 + v13, a3, v14);
  *(v5 + 32) = a4;
  return v5;
}

Swift::Int_optional __swiftcall SQLiteRow.getInt32(at:)(Swift::Int at)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(*(v2 + 16) + 32);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v11 = (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = swift_beginAccess();
  if (at < 0xFFFFFFFF80000000)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (at > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = sqlite3_column_type(*(v2 + 24), at);
  if (v13 == 5)
  {
    v11 = 0;
  }

  else
  {
    v11 = sqlite3_column_int(*(v2 + 24), at);
  }

  v12 = v13 == 5;
LABEL_11:
  result.value = v11;
  result.is_nil = v12;
  return result;
}

Swift::Bool __swiftcall SQLiteDatabase.enableIncrementalAutoVacuum()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 32);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  LODWORD(v1) = specialized static SQLiteStatement.execute(database:query:)(v0, 0xD000000000000017, 0x800000000003E3B0);
  if (v1 != 101)
  {
    if (one-time initialization token for crlDefault == -1)
    {
LABEL_4:
      v8 = static OS_os_log.crlDefault;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_3A860;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v1;
      v10 = static os_log_type_t.default.getter();
      _CRLLog(_:dso:type:format:_:)(v8, &dword_0, v10, "Failed to enable incremental auto-vacuum on the database with error %d", 70, 2, inited);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_0((inited + 32));
      return v1 == 101;
    }

LABEL_7:
    swift_once();
    goto LABEL_4;
  }

  return v1 == 101;
}

Swift::Bool __swiftcall SQLiteDatabase.setBusyTimeout(timeoutInMilliseconds:)(Swift::Int32 timeoutInMilliseconds)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 32);
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  swift_beginAccess();
  LODWORD(v1) = sqlite3_busy_timeout(*(v1 + 16), timeoutInMilliseconds);
  if (v1)
  {
    if (one-time initialization token for crlDefault == -1)
    {
LABEL_4:
      v10 = static OS_os_log.crlDefault;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_3A290;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = timeoutInMilliseconds;
      *(inited + 96) = &type metadata for Int32;
      *(inited + 104) = &protocol witness table for Int32;
      *(inited + 72) = v1;
      v12 = static os_log_type_t.default.getter();
      _CRLLog(_:dso:type:format:_:)(v10, &dword_0, v12, "Failed to set busy_timeout to %d, result = %d", 45, 2, inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
      swift_arrayDestroy();
      return v1 == 0;
    }

LABEL_7:
    swift_once();
    goto LABEL_4;
  }

  return v1 == 0;
}

uint64_t SQLiteDatabase.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_url;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_name + 8);

  v4 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_runningboardAssertionExplanation + 8);

  v5 = *(*v0 + 12);
  v6 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SQLiteDatabase()
{
  result = type metadata singleton initialization cache for SQLiteDatabase;
  if (!type metadata singleton initialization cache for SQLiteDatabase)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for SQLiteDatabase()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t SQLiteStatement.__deallocating_deinit()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(v0 + 24);
  if (v12)
  {
    v13 = *(*(v1 + 16) + 32);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    aBlock[4] = partial apply for closure #1 in SQLiteStatement.deinit;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor;
    v15 = _Block_copy(aBlock);
    v21 = v7;
    v16 = v15;
    v17 = v13;
    static DispatchQoS.unspecified.getter();
    v22 = &_swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v21);
  }

  v18 = *(v1 + 16);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall SQLiteStatement.bind(_:at:)(Swift::String _, Swift::Int at)
{
  v3 = v2;
  v23[0] = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v6 = type metadata accessor for String.Encoding();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(*(v3 + 16) + 32);
  *v15 = v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  v19 = *(v12 + 8);
  v18 = v12 + 8;
  v20 = v19(v15, v11);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v23[1] = countAndFlagsBits;
  v23[2] = v23[0];
  static String.Encoding.utf8.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v18 = StringProtocol.cString(using:)();
  (*(v7 + 8))(v10, v6);
  v20 = swift_beginAccess();
  if (at < 0xFFFFFFFF80000000)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (at <= 0x7FFFFFFF)
  {
    v20 = *(v3 + 24);
    if (one-time initialization token for SQLiteTransientDestructor == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  v22 = v20;
  swift_once();
  v20 = v22;
LABEL_5:
  if (v18)
  {
    v21 = (v18 + 32);
  }

  else
  {
    v21 = 0;
  }

  sqlite3_bind_text(v20, at, v21, -1, static SQLiteStatement.SQLiteTransientDestructor);
}

Swift::String_optional __swiftcall SQLiteRow.getString(at:)(Swift::Int at)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(*(v2 + 16) + 32);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v11 = (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = swift_beginAccess();
  if (at < 0xFFFFFFFF80000000)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (at > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (sqlite3_column_type(*(v2 + 24), at) == 5)
  {
    v11 = 0;
LABEL_8:
    v12 = 0;
    goto LABEL_13;
  }

  v11 = sqlite3_column_text(*(v2 + 24), at);
  if (!v11)
  {
    goto LABEL_8;
  }

  v11 = String.init(cString:)();
LABEL_13:
  result.value._object = v12;
  result.value._countAndFlagsBits = v11;
  return result;
}

uint64_t SQLiteRowIterator.next()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = v0[2];
  v7 = *(*(v6 + 16) + 32);
  *v5 = v7;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v5, v1);
  if (v7)
  {
    v10 = v0[4];
    v11 = v0[3];
    v12 = v0[5];
    v0[3] = 0;
    v0[4] = 0;
    v0[5] = 1;
    outlined consume of SQLiteError?(v11, v10, v12);
    swift_beginAccess();
    v13 = sqlite3_step(*(v6 + 24));
    result = 0;
    if (v13 && v13 != 101)
    {
      if (v13 == 100)
      {
      }

      else
      {
        v14 = v0[3];
        v15 = v0[4];
        v16 = v0[5];
        v0[3] = v13;
        v0[4] = 0;
        v0[5] = 0;
        outlined consume of SQLiteError?(v14, v15, v16);
        return 0;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SQLiteRowIterator.__deallocating_deinit()
{
  v1 = v0[2];

  outlined consume of SQLiteError?(v0[3], v0[4], v0[5]);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for IteratorProtocol.next() in conformance SQLiteRowIterator@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = SQLiteRowIterator.next()();
  *a1 = result;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLTransaction.commit()()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 16);
  v8 = *(v7 + 32);
  *v6 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v24 = v3[13];
  v24(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v25 = v3[1];
  v25(v6, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v12 = specialized SQLiteStatement.init(database:query:)(v11, 0xD000000000000012, 0x800000000003E230);

  if (v1)
  {
    return;
  }

  v13 = *(*(v12 + 16) + 32);
  *v6 = v13;
  v24(v6, v9, v2);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v25(v6, v2);
  if ((v13 & 1) == 0)
  {
    goto LABEL_13;
  }

  v15 = *(v12 + 16);

  v16 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v15, v12);

  *(v7 + 24) = 0;
  if (v16 != 101)
  {
    goto LABEL_7;
  }

  v17 = *(*(v12 + 16) + 32);
  *v6 = v17;
  v24(v6, v9, v2);
  v18 = v17;
  v9 = _dispatchPreconditionTest(_:)();
  v25(v6, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v19 = v16;
    *(v19 + 8) = 0xD00000000000001ELL;
    *(v19 + 16) = 0x800000000003E250;
    swift_willThrow();
    v20 = *(*(v12 + 16) + 32);
    *v6 = v20;
    v24(v6, v9, v2);
    v21 = v20;
    v22 = _dispatchPreconditionTest(_:)();
    v25(v6, v2);
    if (v22)
    {
      goto LABEL_8;
    }

LABEL_14:
    __break(1u);
  }

LABEL_8:
  swift_beginAccess();
  v23 = *(v12 + 24);
  if (v23)
  {
    sqlite3_finalize(v23);
    *(v12 + 24) = 0;
  }
}

Swift::Bool __swiftcall SQLTransaction.rollback()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = v2[8];
  __chkstk_darwin(v1);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 16);
  v7 = *(v6 + 32);
  *v5 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = v2[13];
  v9(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v10 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v11 = v2[1];
  v11(v5, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(v6 + 24) = 0;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v13 = specialized SQLiteStatement.init(database:query:)(v12, 0xD000000000000014, 0x800000000003E210);

  v14 = *(*(v13 + 16) + 32);
  *v5 = v14;
  v9(v5, v8, v1);

  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v11(v5, v1);
  if ((v14 & 1) == 0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  v16 = *(v13 + 16);

  v17 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v16, v13);

  v18 = v17 == 101;
  v19 = *(*(v13 + 16) + 32);
  *v5 = v19;
  v9(v5, v8, v1);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  v11(v5, v1);
  if ((v19 & 1) == 0)
  {
    goto LABEL_9;
  }

  swift_beginAccess();
  v21 = *(v13 + 24);
  if (v21)
  {
    sqlite3_finalize(v21);
    *(v13 + 24) = 0;
  }

  return v18;
}

uint64_t SQLTransaction.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for SQLTransaction.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SQLTransaction.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SQLiteError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SQLiteError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SQLTransaction.Kind and conformance SQLTransaction.Kind()
{
  result = lazy protocol witness table cache variable for type SQLTransaction.Kind and conformance SQLTransaction.Kind;
  if (!lazy protocol witness table cache variable for type SQLTransaction.Kind and conformance SQLTransaction.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLTransaction.Kind and conformance SQLTransaction.Kind);
  }

  return result;
}

uint64_t specialized SQLiteStatement.init(database:query:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v25 = a2;
  v26 = type metadata accessor for String.Encoding();
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v26);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = v3;
  *(v3 + 24) = 0;
  v15 = (v3 + 24);
  v16 = *(a1 + 32);
  *v13 = v16;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v13, v9);
  if (v16)
  {
    *(v14 + 16) = a1;
    v28 = v25;
    v29 = v27;

    static String.Encoding.utf8.getter();
    lazy protocol witness table accessor for type String and conformance String();
    v19 = StringProtocol.cString(using:)();
    (*(v5 + 8))(v8, v26);

    swift_beginAccess();
    v20 = *(a1 + 16);
    if (v19)
    {
      v21 = (v19 + 32);
    }

    else
    {
      v21 = 0;
    }

    swift_beginAccess();
    v22 = sqlite3_prepare_v2(v20, v21, -1, v15, 0);
    swift_endAccess();

    if (v22)
    {
      lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
      swift_allocError();
      *v23 = v22;
      *(v23 + 8) = 0;
      *(v23 + 16) = 0;
      swift_willThrow();
    }

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a1 + 32);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  v12 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_hasRBSAssertion;
  if (*(a1 + OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_hasRBSAssertion) == 1)
  {
    swift_beginAccess();
    return sqlite3_step(*(a2 + 24));
  }

  v34[1] = v2;
  v35 = a2;
  *(a1 + OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_hasRBSAssertion) = 1;
  v14 = *(a1 + OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_runningboardAssertionExplanation);
  v15 = *(a1 + OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_runningboardAssertionExplanation + 8);
  v16 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_3A870;
  v18 = String._bridgeToObjectiveC()();
  v19 = String._bridgeToObjectiveC()();
  v20 = [objc_opt_self() attributeWithDomain:v18 name:v19];

  *(v17 + 32) = v20;
  *(v17 + 40) = [objc_opt_self() attributeWithCompletionPolicy:1];
  v21 = objc_allocWithZone(RBSAssertion);
  v22 = String._bridgeToObjectiveC()();
  type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for RBSAttribute, RBSAttribute_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v21 initWithExplanation:v22 target:v16 attributes:isa];

  v38[0] = 0;
  if (([v5 acquireWithError:v38] & 1) == 0)
  {
    v25 = v38[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for crlDefault == -1)
    {
LABEL_7:
      v26 = static OS_os_log.crlDefault;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_3A860;
      swift_getErrorValue();
      v28 = Error.publicDescription.getter(v36, v37);
      v30 = v29;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(inited + 32) = v28;
      *(inited + 40) = v30;
      v31 = static os_log_type_t.error.getter();
      _CRLLog(_:dso:type:format:_:)(v26, &dword_0, v31, "Failed to acquire RBS assertion to perform database operation. Still performing the operation. Error: %{public}@", 112, 2, inited);

      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_0((inited + 32));
      goto LABEL_8;
    }

LABEL_10:
    swift_once();
    goto LABEL_7;
  }

  v24 = v38[0];
LABEL_8:
  v32 = v35;
  swift_beginAccess();
  v33 = sqlite3_step(*(v32 + 24));
  [v5 invalidate];

  result = v33;
  *(v10 + a1) = 0;
  return result;
}

{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a1 + 32);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  v12 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_hasRBSAssertion;
  if (*(a1 + OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_hasRBSAssertion) == 1)
  {
    swift_beginAccess();
    return sqlite3_close_v2(*(a2 + 16));
  }

  v34[1] = v2;
  v35 = a2;
  *(a1 + OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_hasRBSAssertion) = 1;
  v14 = *(a1 + OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_runningboardAssertionExplanation);
  v15 = *(a1 + OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_runningboardAssertionExplanation + 8);
  v16 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_3A870;
  v18 = String._bridgeToObjectiveC()();
  v19 = String._bridgeToObjectiveC()();
  v20 = [objc_opt_self() attributeWithDomain:v18 name:v19];

  *(v17 + 32) = v20;
  *(v17 + 40) = [objc_opt_self() attributeWithCompletionPolicy:1];
  v21 = objc_allocWithZone(RBSAssertion);
  v22 = String._bridgeToObjectiveC()();
  type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for RBSAttribute, RBSAttribute_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v21 initWithExplanation:v22 target:v16 attributes:isa];

  v38[0] = 0;
  if (([v5 acquireWithError:v38] & 1) == 0)
  {
    v25 = v38[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for crlDefault == -1)
    {
LABEL_7:
      v26 = static OS_os_log.crlDefault;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_3A860;
      swift_getErrorValue();
      v28 = Error.publicDescription.getter(v36, v37);
      v30 = v29;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(inited + 32) = v28;
      *(inited + 40) = v30;
      v31 = static os_log_type_t.error.getter();
      _CRLLog(_:dso:type:format:_:)(v26, &dword_0, v31, "Failed to acquire RBS assertion to perform database operation. Still performing the operation. Error: %{public}@", 112, 2, inited);

      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_0((inited + 32));
      goto LABEL_8;
    }

LABEL_10:
    swift_once();
    goto LABEL_7;
  }

  v24 = v38[0];
LABEL_8:
  v32 = v35;
  swift_beginAccess();
  v33 = sqlite3_close_v2(*(v32 + 16));
  [v5 invalidate];

  result = v33;
  *(v10 + a1) = 0;
  return result;
}

{
  return sub_1D8AC(a1, a2);
}

uint64_t specialized static SQLiteStatement.execute(database:query:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v11 = specialized SQLiteStatement.init(database:query:)(v10, a2, a3);

  v12 = *(*(v11 + 16) + 32);
  *v9 = v12;
  v13 = enum case for DispatchPredicate.onQueue(_:);
  v14 = v6[13];
  v14(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v15 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  v16 = v6[1];
  v16(v9, v5);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  v17 = *(v11 + 16);

  v18 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v17, v11);

  v19 = *(*(v11 + 16) + 32);
  *v9 = v19;
  v14(v9, v13, v5);
  v20 = v19;
  v21 = _dispatchPreconditionTest(_:)();
  v16(v9, v5);
  if ((v21 & 1) == 0)
  {
    goto LABEL_7;
  }

  swift_beginAccess();
  v22 = *(v11 + 24);
  if (v22)
  {
    sqlite3_finalize(v22);
    *(v11 + 24) = 0;
  }

  return v18;
}

uint64_t specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(uint64_t a1, const char *a2, uint64_t a3, int a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a1 + 32);
  *v12 = v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_hasRBSAssertion;
  if (*(a1 + OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_hasRBSAssertion) != 1)
  {
    v36 = a4;
    *(a1 + OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_hasRBSAssertion) = 1;
    v17 = *(a1 + OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_runningboardAssertionExplanation);
    v34 = *(a1 + OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_runningboardAssertionExplanation + 8);
    v35 = a2;
    v18 = [objc_opt_self() currentProcess];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_3A870;
    v20 = String._bridgeToObjectiveC()();
    v21 = String._bridgeToObjectiveC()();
    v22 = [objc_opt_self() attributeWithDomain:v20 name:v21];

    *(v19 + 32) = v22;
    *(v19 + 40) = [objc_opt_self() attributeWithCompletionPolicy:1];
    v23 = objc_allocWithZone(RBSAssertion);
    v24 = String._bridgeToObjectiveC()();
    type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for RBSAttribute, RBSAttribute_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v8 = [v23 initWithExplanation:v24 target:v18 attributes:isa];

    v40[0] = 0;
    if ([v8 acquireWithError:v40])
    {
      v26 = v40[0];
LABEL_8:
      swift_beginAccess();
      v16 = sqlite3_open_v2(v35, (a3 + 16), v36, 0);
      swift_endAccess();
      [v8 invalidate];

      *(a1 + v15) = 0;
      return v16;
    }

    v27 = v40[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for crlDefault == -1)
    {
LABEL_7:
      v37 = static OS_os_log.crlDefault;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_3A860;
      swift_getErrorValue();
      v29 = Error.publicDescription.getter(v38, v39);
      v31 = v30;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(inited + 32) = v29;
      *(inited + 40) = v31;
      v32 = static os_log_type_t.error.getter();
      _CRLLog(_:dso:type:format:_:)(v37, &dword_0, v32, "Failed to acquire RBS assertion to perform database operation. Still performing the operation. Error: %{public}@", 112, 2, inited);

      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_0((inited + 32));
      goto LABEL_8;
    }

LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  swift_beginAccess();
  v16 = sqlite3_open_v2(a2, (a3 + 16), a4, 0);
  swift_endAccess();
  return v16;
}

unint64_t lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError()
{
  result = lazy protocol witness table cache variable for type SQLiteError and conformance SQLiteError;
  if (!lazy protocol witness table cache variable for type SQLiteError and conformance SQLiteError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLiteError and conformance SQLiteError);
  }

  return result;
}

uint64_t type metadata accessor for RBSAttribute(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSString and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSString and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSString and conformance NSObject)
  {
    type metadata accessor for RBSAttribute(255, &lazy cache variable for type metadata for NSString, NSString_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSString and conformance NSObject);
  }

  return result;
}

uint64_t outlined consume of SQLiteError?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void specialized withVaList<A>(_:_:)(uint64_t a1, id *a2)
{
  type metadata accessor for __VaListBuilder();
  v3 = swift_allocObject();
  v3[2] = 8;
  v3[3] = 0;
  v4 = v3 + 3;
  v3[4] = 0;
  v3[5] = 0;
  v5 = *(a1 + 16);
  if (!v5)
  {
LABEL_26:
    v25 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    v27 = [objc_opt_self() crl_redactedStringWithFormat:v26 arguments:v25];

    v28 = *a2;
    *a2 = v27;

    return;
  }

  v6 = 0;
  v7 = a1 + 32;
  while (1)
  {
    v8 = (v7 + 40 * v6);
    v9 = v8[4];
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v10 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v11 = *v4;
    v12 = *(v10 + 16);
    v13 = __OFADD__(*v4, v12);
    v14 = *v4 + v12;
    if (v13)
    {
      break;
    }

    v15 = v3[4];
    if (v15 >= v14)
    {
      goto LABEL_18;
    }

    if (v15 + 0x4000000000000000 < 0)
    {
      goto LABEL_31;
    }

    v16 = v3[5];
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    v3[4] = v14;
    if ((v14 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_32;
    }

    v17 = v10;
    v18 = swift_slowAlloc();
    v19 = v18;
    v3[5] = v18;
    if (v16)
    {
      if (v18 != v16 || v18 >= &v16[8 * v11])
      {
        memmove(v18, v16, 8 * v11);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v10 = v17;
LABEL_18:
      v19 = v3[5];
      if (!v19)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    v10 = v17;
    if (!v19)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v21 = *(v10 + 16);
    if (v21)
    {
      v22 = (v10 + 32);
      v23 = *v4;
      while (1)
      {
        v24 = *v22++;
        *&v19[8 * v23] = v24;
        v23 = *v4 + 1;
        if (__OFADD__(*v4, 1))
        {
          break;
        }

        *v4 = v23;
        if (!--v21)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v6 == v5)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t specialized withVaList<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for __VaListBuilder();
  v3 = swift_allocObject();
  v3[2] = 8;
  v3[3] = 0;
  v4 = v3 + 3;
  v3[4] = 0;
  v3[5] = 0;
  v5 = *(a1 + 16);
  if (!v5)
  {
LABEL_26:
    v25 = __VaListBuilder.va_list()();
    CRLSetCrashReporterInfov(a2, v25);
  }

  v6 = 0;
  v7 = a1 + 32;
  while (1)
  {
    v8 = (v7 + 40 * v6);
    v9 = v8[4];
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    result = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v11 = *v4;
    v12 = *(result + 16);
    v13 = __OFADD__(*v4, v12);
    v14 = *v4 + v12;
    if (v13)
    {
      break;
    }

    v15 = v3[4];
    if (v15 >= v14)
    {
      goto LABEL_18;
    }

    if (v15 + 0x4000000000000000 < 0)
    {
      goto LABEL_31;
    }

    v16 = v3[5];
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    v3[4] = v14;
    if ((v14 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_32;
    }

    v17 = result;
    v18 = swift_slowAlloc();
    v19 = v18;
    v3[5] = v18;
    if (v16)
    {
      if (v18 != v16 || v18 >= &v16[8 * v11])
      {
        memmove(v18, v16, 8 * v11);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      result = v17;
LABEL_18:
      v19 = v3[5];
      if (!v19)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v17;
    if (!v19)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v21 = *(result + 16);
    if (v21)
    {
      v22 = (result + 32);
      v23 = *v4;
      while (1)
      {
        v24 = *v22++;
        *&v19[8 * v23] = v24;
        v23 = *v4 + 1;
        if (__OFADD__(*v4, 1))
        {
          break;
        }

        *v4 = v23;
        if (!--v21)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v6 == v5)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(void (*a1)(void *__return_ptr, id), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v5 + 32);
  *v12 = v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  v16 = (*(v9 + 8))(v12, v8);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (*(v5 + OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_hasRBSAssertion) == 1)
  {
    a1(v44, v16);
    if (v3)
    {
      return v17 & 1;
    }

    goto LABEL_13;
  }

  v39 = a2;
  v40 = a1;
  v38 = OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_hasRBSAssertion;
  *(v5 + OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_hasRBSAssertion) = 1;
  v18 = *(v5 + OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_runningboardAssertionExplanation);
  v19 = *(v5 + OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_runningboardAssertionExplanation + 8);
  v20 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_3A870;
  v22 = String._bridgeToObjectiveC()();
  v23 = String._bridgeToObjectiveC()();
  v24 = [objc_opt_self() attributeWithDomain:v22 name:v23];

  *(v21 + 32) = v24;
  *(v21 + 40) = [objc_opt_self() attributeWithCompletionPolicy:1];
  v25 = objc_allocWithZone(RBSAssertion);
  v26 = String._bridgeToObjectiveC()();
  type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for RBSAttribute, RBSAttribute_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v25 initWithExplanation:v26 target:v20 attributes:isa];

  v43 = 0;
  if (([v12 acquireWithError:&v43] & 1) == 0)
  {
    v29 = v43;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for crlDefault == -1)
    {
LABEL_8:
      v30 = static OS_os_log.crlDefault;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_3A860;
      swift_getErrorValue();
      v32 = Error.publicDescription.getter(v41, v42);
      v34 = v33;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(inited + 32) = v32;
      *(inited + 40) = v34;
      v35 = static os_log_type_t.error.getter();
      _CRLLog(_:dso:type:format:_:)(v30, &dword_0, v35, "Failed to acquire RBS assertion to perform database operation. Still performing the operation. Error: %{public}@", 112, 2, inited);

      swift_setDeallocating();
      v28 = __swift_destroy_boxed_opaque_existential_0((inited + 32));
      v4 = 0;
      goto LABEL_9;
    }

LABEL_16:
    swift_once();
    goto LABEL_8;
  }

  v28 = v43;
LABEL_9:
  v40(v44, v28);
  if (v4)
  {
    [v12 invalidate];

    v17 = v38;
    *(v5 + v38) = 0;
    return v17 & 1;
  }

  [v12 invalidate];

  *(v5 + v38) = 0;
LABEL_13:
  v17 = v44[0];
  return v17 & 1;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id CRLBoardDataStore.assetFileManager.getter()
{
  v1 = *&v0[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore__assetFileManagerLock];
  os_unfair_lock_lock(*(v1 + 16));
  v2 = OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore__assetFileManager;
  v3 = *&v0[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore__assetFileManager];
  if (v3)
  {
    v4 = *&v0[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore__assetFileManager];
  }

  else
  {
    v5 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
    v6 = v0;
    v7 = v0;
    v8 = specialized CRLAssetFileManager.init(store:)();

    v9 = *&v0[v2];
    *&v7[v2] = v8;
    v4 = v8;

    v3 = 0;
  }

  v10 = *(v1 + 16);
  v11 = v3;
  os_unfair_lock_unlock(v10);
  return v4;
}

uint64_t CRLBoardDataStore._openDatabase(isReadOnlyMode:)(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = (v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v61 = v4[13];
  v61(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = v4[1];
  v11(v7, v3);
  if (v8)
  {
    if (one-time initialization token for boardStore == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = static OS_os_log.boardStore;
  v13 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v12, &dword_0, v13, "Opening the board database", 26, 2, &_swiftEmptyArrayStorage);
  v59 = v12;
  if (a1)
  {
    v14 = *(v1 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_readQueue);
    *v7 = v14;
    v15 = v61;
    v61(v7, v9, v3);
    v16 = v14;
    LOBYTE(v14) = _dispatchPreconditionTest(_:)();
    result = (v11)(v7, v3);
    if (v14)
    {
      v18 = *(v1 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
      v19 = *(v18 + 32);
      *v7 = v19;
      LODWORD(v58) = v9;
      v15(v7, v9, v3);
      v20 = v19;
      LOBYTE(v19) = _dispatchPreconditionTest(_:)();
      result = (v11)(v7, v3);
      if (v19)
      {
        v57[1] = v4 + 13;
        URL.absoluteString.getter();
        v21 = String._bridgeToObjectiveC()();

        v22 = [v21 fileSystemRepresentation];
        v23 = v21;

        v25 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v24, v22, v18, 3178497);

        if (v25)
        {
          goto LABEL_10;
        }

        v52 = *(v18 + 32);
        *v7 = v52;
        v53 = v61;
        v61(v7, v58, v3);
        v54 = v52;
        LOBYTE(v52) = _dispatchPreconditionTest(_:)();
        result = (v11)(v7, v3);
        if (v52)
        {
          specialized static SQLiteStatement.execute(database:query:)(v18, 0xD00000000000001ALL, 0x800000000003EB00);
          v55 = *(v18 + 32);
          *v7 = v55;
          v53(v7, v58, v3);
          v56 = v55;
          LOBYTE(v55) = _dispatchPreconditionTest(_:)();
          result = (v11)(v7, v3);
          if (v55)
          {
            specialized static SQLiteStatement.execute(database:query:)(v18, 0xD000000000000019, 0x800000000003EB20);
            return SQLiteDatabase.setBusyTimeout(timeoutInMilliseconds:)(5000);
          }

          goto LABEL_29;
        }

        goto LABEL_27;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = *(v1 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
  v26 = *(v18 + 32);
  *v7 = v26;
  v61(v7, v9, v3);
  v27 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  result = (v11)(v7, v3);
  if ((v26 & 1) == 0)
  {
    goto LABEL_23;
  }

  v28 = v11;
  v58 = v1;
  URL.absoluteString.getter();
  v29 = String._bridgeToObjectiveC()();

  v30 = [v29 fileSystemRepresentation];
  v31 = v29;

  v33 = v30;
  v34 = v60;
  v25 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v32, v33, v18, 3178502);

  if (v25)
  {
LABEL_10:

    specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v35, v18);

    swift_beginAccess();
    *(v18 + 16) = 0;
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v36 = v25;
    *(v36 + 8) = 0;
    *(v36 + 16) = 0;
    swift_willThrow();
    v37 = v59;
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_3A860;
    swift_getErrorValue();
    v39 = Error.localizedDescription.getter();
    v41 = v40;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(inited + 32) = v39;
    *(inited + 40) = v41;
    v42 = static os_log_type_t.error.getter();
    _CRLLog(_:dso:type:format:_:)(v37, &dword_0, v42, "Opening the board database failed with error: %@", 48, 2, inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_0((inited + 32));
    return swift_willThrow();
  }

  v60 = v34;
  v43 = *(v18 + 32);
  *v7 = v43;
  v44 = v61;
  v61(v7, v9, v3);
  v45 = v43;
  LOBYTE(v43) = _dispatchPreconditionTest(_:)();
  result = v28(v7, v3);
  if ((v43 & 1) == 0)
  {
    goto LABEL_25;
  }

  specialized static SQLiteStatement.execute(database:query:)(v18, 0xD00000000000001CLL, 0x800000000003EAE0);
  SQLiteDatabase.enableIncrementalAutoVacuum()();
  v46 = *(v18 + 32);
  *v7 = v46;
  v44(v7, v9, v3);
  v47 = v46;
  LOBYTE(v46) = _dispatchPreconditionTest(_:)();
  result = v28(v7, v3);
  if ((v46 & 1) == 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  specialized static SQLiteStatement.execute(database:query:)(v18, 0xD00000000000001ALL, 0x800000000003EB00);
  v48 = *(v18 + 32);
  *v7 = v48;
  v44(v7, v9, v3);
  v49 = v48;
  LOBYTE(v48) = _dispatchPreconditionTest(_:)();
  result = v28(v7, v3);
  if ((v48 & 1) == 0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return result;
  }

  specialized static SQLiteStatement.execute(database:query:)(v18, 0xD000000000000019, 0x800000000003EB20);
  SQLiteDatabase.setBusyTimeout(timeoutInMilliseconds:)(5000);
  v50 = static os_log_type_t.info.getter();
  v37 = v59;
  _CRLLog(_:dso:type:format:_:)(v59, &dword_0, v50, "Checking for schema version", 27, 2, &_swiftEmptyArrayStorage);
  v51 = v60;
  result = CRLBoardDataStore._performSchemaMigrationIfNeeded()();
  if (v51)
  {
    goto LABEL_11;
  }

  return result;
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t closure #1 in CRLBoardDataStore.openDatabase()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  CRLBoardDataStore.openDatabase(completion:)(partial apply for closure #1 in closure #1 in CRLBoardDataStore.openDatabase(), v8, &unk_4E5B0, partial apply for closure #1 in CRLBoardDataStore.openDatabase(completion:), &block_descriptor_63);
}

uint64_t closure #1 in closure #1 in CRLBoardDataStore.openDatabase()(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t @objc closure #1 in CRLBoardDataStore.openDatabase()(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(@objc closure #1 in CRLBoardDataStore.openDatabase(), 0, 0);
}

uint64_t @objc closure #1 in CRLBoardDataStore.openDatabase()()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = @objc closure #1 in CRLBoardDataStore.openDatabase();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = @objc closure #1 in CRLBoardDataStore.openDatabase();
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = @objc closure #1 in CRLBoardDataStore.openDatabase();
  }

  return _swift_task_switch(v4, 0, 0);
}

{
  v1 = *(v0 + 24);

  (*(v1 + 16))(v1, 0);
  _Block_release(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  v4 = _convertErrorToNSError(_:)();

  (*(v3 + 16))(v3, v4);

  _Block_release(*(v0 + 24));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t CRLBoardDataStore.openDatabase(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[0] = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v14 = *(v23 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v23);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *&v5[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_writeQueue];
  v18 = swift_allocObject();
  v18[2] = v5;
  v18[3] = a1;
  v18[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v22[0];
  v19 = _Block_copy(aBlock);
  v20 = v5;

  static DispatchQoS.unspecified.getter();
  v24 = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [CRLBoardDataStore.Table] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v23);
}

uint64_t closure #1 in CRLBoardDataStore.closeDatabase()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  CRLBoardDataStore.openDatabase(completion:)(partial apply for closure #1 in closure #1 in CRLBoardDataStore.closeDatabase(), v8, &unk_4E498, partial apply for closure #1 in CRLBoardDataStore.closeDatabase(completion:), &block_descriptor_0);
}

uint64_t @objc closure #1 in CRLBoardDataStore.closeDatabase()(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(@objc closure #1 in CRLBoardDataStore.closeDatabase(), 0, 0);
}

uint64_t @objc closure #1 in CRLBoardDataStore.closeDatabase()()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = @objc closure #1 in CRLBoardDataStore.closeDatabase();

  return withCheckedContinuation<A>(isolation:function:_:)();
}

{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(@objc closure #1 in CRLBoardDataStore.closeDatabase(), 0, 0);
}

{
  v1 = *(v0 + 24);

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t CRLBoardDataStore._performSchemaMigrationIfNeeded()()
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v194 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  v11 = _dispatchPreconditionTest(_:)();
  v12 = (*(v5 + 8))(v8, v4);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_83;
  }

  v19 = specialized CRLStore._schemaVersion()();
  if (v1)
  {
    v199 = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (!swift_dynamicCast())
    {
    }

    goto LABEL_110;
  }

  v22 = &CRLErrorCat;
  v3 = &CRLErrorCat;
  v23 = vdup_n_s16(0);
  v24 = &dword_4DC99;
  v25 = -8;
  do
  {
    v26 = *v24++;
    v20.i32[0] = v26;
    v20 = vmovl_u8(v20).u64[0];
    v23 = vmax_u16((*&v23 & 0xFF00FF00FF00FFLL), v20);
    v25 += 4;
  }

  while (v25);
  v27 = vmaxv_u16(v23);
  v28 = 1;
  v29 = &byte_4DCA1;
  do
  {
    v31 = *v29++;
    v30 = v31;
    if (v27 <= v31)
    {
      v27 = v30;
    }

    --v28;
  }

  while (v28);
  if (v27 == 10)
  {
    __break(1u);
LABEL_110:
    v115 = v198[15];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_3A290;
    *(inited + 32) = v115;
    v197 = inited + 32;
    v64 = &type metadata for Int;
    v67 = &protocol witness table for Int;
    *(inited + 56) = &type metadata for Int;
    *(inited + 64) = &protocol witness table for Int;
    v71 = 10;
    v0 = inited;
    LODWORD(v59) = 0;
    v33 = 9;
    v68 = &outlined read-only object #0 of static CRLBoardDataStore.SchemaVersion.allCases.getter;
    goto LABEL_112;
  }

  if (v19 != v27)
  {
    if (v19 > 4u)
    {
      if (v19 > 6u)
      {
        if (v19 != 7)
        {
          if (v19 != 8)
          {
LABEL_38:
            if (one-time initialization token for boardStore != -1)
            {
              swift_once();
            }

            v197 = static OS_os_log.boardStore;
            v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
            v66 = swift_initStackObject();
            *(v66 + 16) = xmmword_3A860;
            v64 = v22[401];
            if (!v64)
            {
              goto LABEL_114;
            }

            v67 = 0;
            v71 = v64 - 1;
            if (v64 == 1)
            {
LABEL_66:
              v64 = v67;
              if (v67 != 10)
              {
                v196 = v65;
                v84 = v22;
                v8 = &type metadata for Int;
                v2 = &protocol witness table for Int;
                *(v66 + 56) = &type metadata for Int;
                *(v66 + 64) = &protocol witness table for Int;
                *(v66 + 32) = v67;
                v85 = (v66 + 32);
                v86 = v66;
                v87 = static os_log_type_t.default.getter();
                _CRLLog(_:dso:type:format:_:)(v197, &dword_0, v87, "Done migrating database schema, on latest version %{public}d", 60, 2, v86);
                swift_setDeallocating();
                __swift_destroy_boxed_opaque_existential_0(v85);
                v11 = specialized CRLStore._schemaVersion()();
                v12 = swift_initStackObject();
                *(v12 + 16) = xmmword_3A290;
                *(v12 + 32) = v11;
                v0 = v12 + 32;
                *(v12 + 56) = &type metadata for Int;
                *(v12 + 64) = &protocol witness table for Int;
                v13 = v84[401];
                if (!v13)
                {
                  goto LABEL_155;
                }

                v14 = 0;
                v15 = v13 - 1;
                if (v13 == 1)
                {
                  *(v12 + 96) = &type metadata for Int;
                  *(v12 + 104) = &protocol witness table for Int;
                  *(v12 + 72) = 0;
LABEL_107:
                  if (v11 != v14)
                  {
                    goto LABEL_156;
                  }

                  swift_setDeallocating();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
                  return swift_arrayDestroy();
                }

                if (v13 < 5)
                {
                  v88 = 1;
                  LOBYTE(v16) = 0;
                  goto LABEL_84;
                }

                if (v13 < 0x21)
                {
                  v17 = 0;
                  v16 = 0;
LABEL_78:
                  v93 = vdup_n_s16(v16);
                  v88 = v15 & 0xFFFFFFFFFFFFFFFCLL | 1;
                  v94 = (&outlined read-only object #0 of static CRLBoardDataStore.SchemaVersion.allCases.getter + v17 + 33);
                  v95 = v17 - (v15 & 0xFFFFFFFFFFFFFFFCLL);
                  do
                  {
                    v96 = *v94++;
                    v18.i32[0] = v96;
                    v18.i64[0] = vmovl_u8(*v18.i8).u64[0];
                    v93 = vmax_u16((*&v93 & 0xFF00FF00FF00FFLL), *v18.i8);
                    v95 += 4;
                  }

                  while (v95);
                  LOBYTE(v16) = vmaxv_u16(v93);
                  if (v15 == (v15 & 0xFFFFFFFFFFFFFFFCLL))
                  {
                    goto LABEL_88;
                  }

                  goto LABEL_84;
                }

                v17 = v15 & 0xFFFFFFFFFFFFFFE0;
                v89 = (&outlined read-only object #0 of static CRLBoardDataStore.Table.allCases.getter + 1);
                v90 = vdupq_n_s8(0);
                v91 = v15 & 0xFFFFFFFFFFFFFFE0;
                v18 = v90;
                do
                {
                  v90 = vmaxq_u8(v90, v89[-1]);
                  v18 = vmaxq_u8(v18, *v89);
                  v89 += 2;
                  v91 -= 32;
                }

                while (v91);
                v92 = vmaxq_u8(v90, v18);
                v92.i8[0] = vmaxvq_u8(v92);
                v16 = v92.i32[0];
                if (v15 == v17)
                {
                  goto LABEL_88;
                }

                if ((v15 & 0x1C) != 0)
                {
                  goto LABEL_78;
                }

LABEL_83:
                v88 = v17 | 1;
LABEL_84:
                v97 = v13 - v88;
                v98 = &outlined read-only object #0 of static CRLBoardDataStore.SchemaVersion.allCases.getter + v88 + 32;
                do
                {
                  v100 = *v98++;
                  v99 = v100;
                  if (v16 <= v100)
                  {
                    LOBYTE(v16) = v99;
                  }

                  --v97;
                }

                while (v97);
LABEL_88:
                if (v16 == 10)
                {
                  goto LABEL_155;
                }

                *(v12 + 96) = v8;
                *(v12 + 104) = v2;
                *(v12 + 72) = v16;
                if (v13 < 5)
                {
                  v101 = 1;
                  goto LABEL_102;
                }

                if (v13 >= 0x21)
                {
                  v102 = v15 & 0xFFFFFFFFFFFFFFE0;
                  v103 = (&outlined read-only object #0 of static CRLBoardDataStore.Table.allCases.getter + 1);
                  v104 = vdupq_n_s8(v14);
                  v105 = v15 & 0xFFFFFFFFFFFFFFE0;
                  v18 = v104;
                  do
                  {
                    v104 = vmaxq_u8(v104, v103[-1]);
                    v18 = vmaxq_u8(v18, *v103);
                    v103 += 2;
                    v105 -= 32;
                  }

                  while (v105);
                  v106 = vmaxq_u8(v104, v18);
                  v106.i8[0] = vmaxvq_u8(v106);
                  v14 = v106.i32[0];
                  if (v15 == v102)
                  {
                    goto LABEL_106;
                  }

                  if ((v15 & 0x1C) == 0)
                  {
                    v101 = v102 | 1;
LABEL_102:
                    v111 = v13 - v101;
                    v112 = &outlined read-only object #0 of static CRLBoardDataStore.SchemaVersion.allCases.getter + v101 + 32;
                    do
                    {
                      v114 = *v112++;
                      v113 = v114;
                      if (v14 <= v114)
                      {
                        LOBYTE(v14) = v113;
                      }

                      --v111;
                    }

                    while (v111);
LABEL_106:
                    if (v14 == 10)
                    {
                      goto LABEL_183;
                    }

                    goto LABEL_107;
                  }
                }

                else
                {
                  v102 = 0;
                }

                v107 = vdup_n_s16(v14);
                v101 = v15 & 0xFFFFFFFFFFFFFFFCLL | 1;
                v108 = (&outlined read-only object #0 of static CRLBoardDataStore.SchemaVersion.allCases.getter + v102 + 33);
                v109 = v102 - (v15 & 0xFFFFFFFFFFFFFFFCLL);
                do
                {
                  v110 = *v108++;
                  v18.i32[0] = v110;
                  v18.i64[0] = vmovl_u8(*v18.i8).u64[0];
                  v107 = vmax_u16((*&v107 & 0xFF00FF00FF00FFLL), *v18.i8);
                  v109 += 4;
                }

                while (v109);
                LOBYTE(v14) = vmaxv_u16(v107);
                if (v15 == (v15 & 0xFFFFFFFFFFFFFFFCLL))
                {
                  goto LABEL_106;
                }

                goto LABEL_102;
              }

LABEL_114:
              __break(1u);
              goto LABEL_115;
            }

            if (v64 < 5)
            {
              v68 = 1;
              goto LABEL_61;
            }

            if (v64 >= 0x21)
            {
              v59 = v71 & 0xFFFFFFFFFFFFFFE0;
              v68 = &outlined read-only object #0 of static CRLBoardDataStore.Table.allCases.getter + 1;
              v76 = vdupq_n_s8(0);
              v77 = v71 & 0xFFFFFFFFFFFFFFE0;
              v69 = v76;
              do
              {
                v76 = vmaxq_u8(v76, *(v68 - 16));
                v69 = vmaxq_u8(v69, *v68);
                v68 += 32;
                v77 -= 32;
              }

              while (v77);
              v78 = vmaxq_u8(v76, v69);
              v78.i8[0] = vmaxvq_u8(v78);
              v67 = v78.u32[0];
              if (v71 == v59)
              {
                goto LABEL_66;
              }

              if ((v71 & 0x1C) == 0)
              {
                v68 = v59 | 1;
LABEL_61:
                v82 = v64 - v68;
                v71 = &outlined read-only object #0 of static CRLBoardDataStore.SchemaVersion.allCases.getter + v68 + 32;
                do
                {
                  v83 = *v71++;
                  v68 = v83;
                  if (v67 <= v83)
                  {
                    v67 = v68;
                  }

                  else
                  {
                    v67 = v67;
                  }

                  --v82;
                }

                while (v82);
                goto LABEL_66;
              }
            }

            else
            {
              v59 = 0;
            }

            v33 = v71 & 0xFFFFFFFFFFFFFFFCLL;
            v79 = vdup_n_s16(v67);
            v68 = v71 & 0xFFFFFFFFFFFFFFFCLL | 1;
            v80 = (&outlined read-only object #0 of static CRLBoardDataStore.SchemaVersion.allCases.getter + v59 + 33);
            v59 -= v71 & 0xFFFFFFFFFFFFFFFCLL;
            do
            {
              v81 = *v80++;
              v69.i32[0] = v81;
              v69.i64[0] = vmovl_u8(*v69.i8).u64[0];
              v79 = vmax_u16((*&v79 & 0xFF00FF00FF00FFLL), *v69.i8);
              v59 += 4;
            }

            while (v59);
            v79.i16[0] = vmaxv_u16(v79);
            v67 = v79.u32[0];
            if (v71 == v33)
            {
              goto LABEL_66;
            }

            goto LABEL_61;
          }

LABEL_35:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
          v55 = swift_initStackObject();
          *(v55 + 16) = xmmword_3A890;
          v56 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_addBoardItemSubItemTypeMigrationQuery + 8);
          *(v55 + 32) = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_addBoardItemSubItemTypeMigrationQuery);
          *(v55 + 40) = v56;
          v57 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_addBoardItemCapsuleDataMigrationQuery + 8);
          *(v55 + 48) = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_addBoardItemCapsuleDataMigrationQuery);
          *(v55 + 56) = v57;
          v58 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_addBoardItemCKMergeableRecordValueMigrationQuery + 8);
          *(v55 + 64) = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_addBoardItemCKMergeableRecordValueMigrationQuery);
          *(v55 + 72) = v58;

          specialized CRLStore._migrate(toNewSchemaVersion:fromOldSchemaVersion:viaQueries:)(9, &dword_8, v55);
          swift_setDeallocating();
          swift_arrayDestroy();
          goto LABEL_38;
        }

LABEL_34:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
        v51 = swift_initStackObject();
        *(v51 + 16) = xmmword_3A890;
        v52 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_lastCloudKitFetchVersionBoardMigrationQuery + 8);
        *(v51 + 32) = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_lastCloudKitFetchVersionBoardMigrationQuery);
        *(v51 + 40) = v52;
        v53 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_lastCloudKitFetchVersionBoardItemMigrationQuery + 8);
        *(v51 + 48) = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_lastCloudKitFetchVersionBoardItemMigrationQuery);
        *(v51 + 56) = v53;
        v54 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_lastCloudKitFetchVersionFreehandItemMigrationQuery + 8);
        *(v51 + 64) = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_lastCloudKitFetchVersionFreehandItemMigrationQuery);
        *(v51 + 72) = v54;

        specialized CRLStore._migrate(toNewSchemaVersion:fromOldSchemaVersion:viaQueries:)(8, &dword_4 + 3, v51);
        swift_setDeallocating();
        swift_arrayDestroy();
        goto LABEL_35;
      }

      if (v19 != 5)
      {
LABEL_33:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
        v49 = swift_initStackObject();
        *(v49 + 16) = xmmword_3A860;
        v50 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_lastUpgradedVersionPerBoardMigrationQuery + 8);
        *(v49 + 32) = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_lastUpgradedVersionPerBoardMigrationQuery);
        *(v49 + 40) = v50;

        specialized CRLStore._migrate(toNewSchemaVersion:fromOldSchemaVersion:viaQueries:)(7, &dword_4 + 2, v49);
        swift_setDeallocating();
        outlined destroy of String(v49 + 32);
        goto LABEL_34;
      }

LABEL_32:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_3A290;
      v46 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_foldersTableCreationSQLQuery + 8);
      *(v45 + 32) = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_foldersTableCreationSQLQuery);
      v47 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_foldersMetadataTableCreationSQLQuery);
      v48 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_foldersMetadataTableCreationSQLQuery + 8);
      *(v45 + 40) = v46;
      *(v45 + 48) = v47;
      *(v45 + 56) = v48;

      specialized CRLStore._migrate(toNewSchemaVersion:fromOldSchemaVersion:viaQueries:)(6, &dword_4 + 1, v45);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      goto LABEL_33;
    }

    if (v19 <= 1u)
    {
      if (!v19)
      {
        CRLBoardDataStore._createDatabaseSchema()();
      }

      CRLBoardDataStore._migrateToMinRequiredVersionForGoodEnoughFidelitySchema()();
    }

    else if (v19 != 2)
    {
      if (v19 != 3)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    CRLBoardDataStore._migrateToMinRequiredVersionForFullFidelitySchema()();
LABEL_29:
    CRLBoardDataStore._migrateToOptimizedSubtreeQuerySchema()();
LABEL_30:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v35 = swift_allocObject();
    v36 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_ckRecordCacheTableCreationSQLQuery + 8);
    *(v35 + 32) = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_ckRecordCacheTableCreationSQLQuery);
    *(v35 + 16) = xmmword_3AA20;
    v37 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_ckZoneCacheTableCreationSQLQuery);
    v38 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_ckZoneCacheTableCreationSQLQuery + 8);
    *(v35 + 40) = v36;
    *(v35 + 48) = v37;
    v39 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_purgedCKRecordCacheTableCreationSQLQuery);
    v40 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_purgedCKRecordCacheTableCreationSQLQuery + 8);
    *(v35 + 56) = v38;
    *(v35 + 64) = v39;
    v41 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_ckRecordCacheZoneIdIndexSQLQuery);
    v42 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_ckRecordCacheZoneIdIndexSQLQuery + 8);
    *(v35 + 72) = v40;
    *(v35 + 80) = v41;
    v43 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_purgedCKRecordCacheZoneIdIndexSQLQuery);
    v44 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_purgedCKRecordCacheZoneIdIndexSQLQuery + 8);
    *(v35 + 88) = v42;
    *(v35 + 96) = v43;
    *(v35 + 104) = v44;

    specialized CRLStore._migrate(toNewSchemaVersion:fromOldSchemaVersion:viaQueries:)(5, &dword_4, v35);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v22 = &CRLErrorCat;
    goto LABEL_32;
  }

  if (one-time initialization token for boardStore != -1)
  {
    swift_once();
  }

  v0 = static OS_os_log.boardStore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_3A860;
  LODWORD(v59) = 8;
  v60 = vdup_n_s16(0);
  v61 = &dword_4DC99;
  v62 = -8;
  do
  {
    v63 = *v61++;
    v34.i32[0] = v63;
    v34.i64[0] = vmovl_u8(*v34.i8).u64[0];
    v60 = vmax_u16((*&v60 & 0xFF00FF00FF00FFLL), *v34.i8);
    v62 += 4;
  }

  while (v62);
  LOBYTE(v64) = vmaxv_u16(v60);
  v70 = 1;
  v71 = &byte_4DCA1;
  do
  {
    v72 = *v71++;
    v68 = v72;
    if (v64 <= v72)
    {
      v64 = v68;
    }

    else
    {
      v64 = v64;
    }

    --v70;
  }

  while (v70);
  v67 = v64;
  if (v64 == 10)
  {
    __break(1u);
LABEL_112:
    if (v71 < 0x21)
    {
      v117 = 0;
      goto LABEL_120;
    }

LABEL_115:
    v117 = v33 & 0xFFFFFFFFFFFFFFE0;
    v118 = (v68 + 49);
    v119 = vdupq_n_s8(v59);
    v120 = v33 & 0xFFFFFFFFFFFFFFE0;
    v34 = v119;
    do
    {
      v119 = vmaxq_u8(v119, v118[-1]);
      v34 = vmaxq_u8(v34, *v118);
      v118 += 2;
      v120 -= 32;
    }

    while (v120);
    v121 = vmaxq_u8(v119, v34);
    v121.i8[0] = vmaxvq_u8(v121);
    LODWORD(v59) = v121.i32[0];
    if (v33 == v117)
    {
      goto LABEL_127;
    }

    if ((v33 & 0x1C) == 0)
    {
      v122 = v117 | 1;
LABEL_123:
      v127 = v71 - v122;
      v128 = (v122 + v68 + 32);
      do
      {
        v130 = *v128++;
        v129 = v130;
        if (v59 <= v130)
        {
          LOBYTE(v59) = v129;
        }

        --v127;
      }

      while (v127);
LABEL_127:
      if (v59 == 10)
      {
        __break(1u);
      }

      *(v0 + 96) = v64;
      *(v0 + 104) = v67;
      *(v0 + 72) = v59;
      v196 = objc_opt_self();
      LODWORD(v8) = [v196 _atomicIncrementAssertCount];
      v198[0] = [objc_allocWithZone(NSString) init];
      specialized withVaList<A>(_:_:)(v0, v198);
      StaticString.description.getter();
      v3 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v131 = String._bridgeToObjectiveC()();

      v132 = [v131 lastPathComponent];

      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v133;

      if (one-time initialization token for crlAssert != -1)
      {
        goto LABEL_189;
      }

      while (1)
      {
        v134 = static OS_os_log.crlAssert;
        v135 = swift_initStackObject();
        *(v135 + 16) = xmmword_3AA20;
        *(v135 + 56) = &type metadata for Int32;
        *(v135 + 64) = &protocol witness table for Int32;
        *(v135 + 32) = v8;
        v136 = type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
        *(v135 + 96) = v136;
        v137 = lazy protocol witness table accessor for type NSString and conformance NSObject();
        *(v135 + 104) = v137;
        *(v135 + 72) = v3;
        *(v135 + 136) = &type metadata for String;
        v138 = lazy protocol witness table accessor for type String and conformance String();
        *(v135 + 112) = v2;
        *(v135 + 120) = v11;
        *(v135 + 176) = &type metadata for UInt;
        *(v135 + 184) = &protocol witness table for UInt;
        *(v135 + 144) = v138;
        *(v135 + 152) = 403;
        v139 = v198[0];
        *(v135 + 216) = v136;
        *(v135 + 224) = v137;
        *(v135 + 192) = v139;
        v140 = v3;
        v141 = v139;
        v142 = static os_log_type_t.error.getter();
        v11 = &dword_0;
        _CRLLog(_:dso:type:format:_:)(v134, &dword_0, v142, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v135);

        v143 = static os_log_type_t.error.getter();
        _CRLLog(_:dso:type:format:_:)(v134, &dword_0, v143, "Encountered an unknown schema version during possible migration, found value %{public}d is greater than latest known value %{public}d. You are probably trying to open a newer database on an older client, but this is not supported.", 230, 2, v0);

        specialized withVaList<A>(_:_:)(v0, "Encountered an unknown schema version during possible migration, found value %{public}d is greater than latest known value %{public}d. You are probably trying to open a newer database on an older client, but this is not supported.");
        type metadata accessor for __VaListBuilder();
        v144 = swift_allocObject();
        v144[2] = 8;
        v144[3] = 0;
        v145 = v144 + 3;
        v144[4] = 0;
        v144[5] = 0;
        v2 = *(v0 + 16);
        if (!v2)
        {
LABEL_193:
          v186 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v187 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v188 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v189 = String._bridgeToObjectiveC()();

          [v196 handleFailureInFunction:v187 file:v188 lineNumber:403 isFatal:1 format:v189 args:v186];

          while (1)
          {
            CRLCrashBreakpoint();
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
LABEL_195:
            v190 = __VaListBuilder.va_list()();
            StaticString.description.getter();
            v191 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v192 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v193 = String._bridgeToObjectiveC()();

            [v194 handleFailureInFunction:v191 file:v192 lineNumber:445 isFatal:1 format:v193 args:v190];
          }
        }

        v3 = 0;
        while (1)
        {
          v146 = (v197 + 40 * v3);
          v8 = v146[4];
          v0 = __swift_project_boxed_opaque_existential_1(v146, v146[3]);
          v147 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v148 = *v145;
          v149 = *(v147 + 16);
          v150 = __OFADD__(*v145, v149);
          v151 = *v145 + v149;
          if (v150)
          {
            goto LABEL_182;
          }

          v8 = v147;
          v0 = v144[4];
          if (v0 >= v151)
          {
            goto LABEL_147;
          }

          if (v0 + 0x4000000000000000 < 0)
          {
            goto LABEL_184;
          }

          v11 = v144[5];
          if (2 * v0 > v151)
          {
            v151 = 2 * v0;
          }

          v144[4] = v151;
          if ((v151 - 0x1000000000000000) >> 61 != 7)
          {
            break;
          }

          v12 = swift_slowAlloc();
          v144[5] = v12;
          if (!v11)
          {
            goto LABEL_148;
          }

          if (v12 != v11 || v12 >= v11 + 8 * v148)
          {
            memmove(v12, v11, 8 * v148);
          }

          v0 = v144;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_147:
          v12 = v144[5];
LABEL_148:
          if (!v12)
          {
            __break(1u);
            goto LABEL_191;
          }

          v153 = v8[2];
          if (v153)
          {
            v154 = v8 + 4;
            v155 = *v145;
            while (1)
            {
              v156 = *v154++;
              *(v12 + 8 * v155) = v156;
              v155 = *v145 + 1;
              if (__OFADD__(*v145, 1))
              {
                break;
              }

              *v145 = v155;
              if (!--v153)
              {
                goto LABEL_132;
              }
            }

            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            v197 = v0;
            v157 = v12;
            v194 = objc_opt_self();
            LODWORD(v0) = [v194 _atomicIncrementAssertCount];
            v199 = [objc_allocWithZone(NSString) init];
            v195 = v157;
            specialized withVaList<A>(_:_:)(v157, &v199);
            StaticString.description.getter();
            v8 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v158 = String._bridgeToObjectiveC()();

            v159 = [v158 lastPathComponent];

            v145 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v2 = v160;

            if (one-time initialization token for crlAssert == -1)
            {
LABEL_157:
              v161 = static OS_os_log.crlAssert;
              v162 = swift_initStackObject();
              *(v162 + 16) = xmmword_3AA20;
              *(v162 + 56) = &type metadata for Int32;
              *(v162 + 64) = &protocol witness table for Int32;
              *(v162 + 32) = v0;
              v163 = type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
              *(v162 + 96) = v163;
              v164 = lazy protocol witness table accessor for type NSString and conformance NSObject();
              *(v162 + 104) = v164;
              *(v162 + 72) = v8;
              *(v162 + 136) = &type metadata for String;
              v165 = lazy protocol witness table accessor for type String and conformance String();
              *(v162 + 112) = v145;
              *(v162 + 120) = v2;
              *(v162 + 176) = &type metadata for UInt;
              *(v162 + 184) = &protocol witness table for UInt;
              *(v162 + 144) = v165;
              *(v162 + 152) = 445;
              v166 = v199;
              *(v162 + 216) = v163;
              *(v162 + 224) = v164;
              *(v162 + 192) = v166;
              v167 = v8;
              v168 = v166;
              v169 = static os_log_type_t.error.getter();
              _CRLLog(_:dso:type:format:_:)(v161, &dword_0, v169, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v162);

              v170 = static os_log_type_t.error.getter();
              v171 = v161;
              v172 = v195;
              _CRLLog(_:dso:type:format:_:)(v171, &dword_0, v170, "Current schema version %{public}d after all migrations is not the same as the defined latest schema version %{public}d", 118, 2, v195);

              specialized withVaList<A>(_:_:)(v172, "Current schema version %{public}d after all migrations is not the same as the defined latest schema version %{public}d");
              type metadata accessor for __VaListBuilder();
              v173 = swift_allocObject();
              v173[2] = 8;
              v173[3] = 0;
              v174 = v173 + 3;
              v173[4] = 0;
              v173[5] = 0;
              v2 = *(v172 + 16);
              if (!v2)
              {
                goto LABEL_195;
              }

              v3 = 0;
              while (1)
              {
                v175 = (v197 + 40 * v3);
                v8 = v175[3];
                v11 = v175[4];
                v0 = __swift_project_boxed_opaque_existential_1(v175, v8);
                v176 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
                v177 = *v174;
                v178 = *(v176 + 16);
                v150 = __OFADD__(*v174, v178);
                v179 = *v174 + v178;
                if (v150)
                {
                  goto LABEL_186;
                }

                v8 = v176;
                v0 = v173[4];
                if (v0 >= v179)
                {
                  goto LABEL_174;
                }

                if (v0 + 0x4000000000000000 < 0)
                {
                  goto LABEL_187;
                }

                v11 = v173[5];
                if (2 * v0 > v179)
                {
                  v179 = 2 * v0;
                }

                v173[4] = v179;
                if ((v179 - 0x1000000000000000) >> 61 != 7)
                {
                  goto LABEL_188;
                }

                v180 = swift_slowAlloc();
                v173[5] = v180;
                if (v11)
                {
                  break;
                }

LABEL_175:
                if (!v180)
                {
                  __break(1u);
                  goto LABEL_193;
                }

                v182 = v8[2];
                if (v182)
                {
                  v183 = v8 + 4;
                  v184 = *v174;
                  while (1)
                  {
                    v185 = *v183++;
                    v180[v184] = v185;
                    v184 = *v174 + 1;
                    if (__OFADD__(*v174, 1))
                    {
                      break;
                    }

                    *v174 = v184;
                    if (!--v182)
                    {
                      goto LABEL_159;
                    }
                  }

                  __break(1u);
LABEL_182:
                  __break(1u);
LABEL_183:
                  __break(1u);
LABEL_184:
                  __break(1u);
                  goto LABEL_185;
                }

LABEL_159:

                v3 = (v3 + 1);
                if (v3 == v2)
                {
                  goto LABEL_195;
                }
              }

              if (v180 != v11 || v180 >= v11 + 8 * v177)
              {
                memmove(v180, v11, 8 * v177);
              }

              v0 = v173;
              __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_174:
              v180 = v173[5];
              goto LABEL_175;
            }

LABEL_191:
            swift_once();
            goto LABEL_157;
          }

LABEL_132:

          v3 = (v3 + 1);
          if (v3 == v2)
          {
            goto LABEL_193;
          }
        }

LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        swift_once();
      }
    }

LABEL_120:
    v122 = v33 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v123 = vdup_n_s16(v59);
    v124 = (v117 + v68 + 33);
    v125 = v117 - (v33 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v126 = *v124++;
      v34.i32[0] = v126;
      v34.i64[0] = vmovl_u8(*v34.i8).u64[0];
      v123 = vmax_u16((*&v123 & 0xFF00FF00FF00FFLL), *v34.i8);
      v125 += 4;
    }

    while (v125);
    LOBYTE(v59) = vmaxv_u16(v123);
    if (v33 == (v33 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_127;
    }

    goto LABEL_123;
  }

  *(v32 + 56) = &type metadata for Int;
  *(v32 + 64) = &protocol witness table for Int;
  *(v32 + 32) = v64;
  v73 = (v32 + 32);
  v74 = v32;
  v75 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v0, &dword_0, v75, "No need to migrate database schema, already on latest version %{public}d", 72, 2, v74);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0(v73);
  return swift_deallocClassInstance();
}