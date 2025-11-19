@interface PHMemoryRelevanceHelper
+ (BOOL)_isDate:(id)a3 inSameDayAndMonthAsDate:(id)a4;
+ (BOOL)_isMemoryTemporal:(id)a3;
+ (BOOL)isMemory:(id)a3 proactiveWorthyAtDate:(id)a4;
+ (BOOL)isMemory:(id)a3 relevantAtDate:(id)a4;
+ (double)_categoryScoreComponentForMemory:(id)a3;
+ (double)_categoryWeightForMemory:(id)a3;
+ (double)_memoryTriggerTierScoreByTriggerType:(unint64_t)a3;
+ (double)_notificationLevelWeightForMemory:(id)a3;
+ (double)_subcategoryWeightForMemory:(id)a3;
+ (double)_triggerScoreForMemory:(id)a3;
+ (double)relevanceScoreForMemory:(id)a3 atDate:(id)a4;
@end

@implementation PHMemoryRelevanceHelper

+ (double)_memoryTriggerTierScoreByTriggerType:(unint64_t)a3
{
  result = 0.0;
  if (a3 <= 0x1B)
  {
    return dbl_19CB29940[a3];
  }

  return result;
}

+ (double)_subcategoryWeightForMemory:(id)a3
{
  v3 = [a3 subcategory];
  result = 1.0;
  if (v3 <= 300)
  {
    if (v3 <= 204)
    {
      if (v3 <= 200)
      {
        if ((v3 - 101) < 2)
        {
          return 0.8;
        }

        if (!v3)
        {
          return 0.2;
        }

        if (v3 != 103)
        {
          return result;
        }

        return 0.4;
      }
    }

    else
    {
      v5 = v3 + 48;
      if ((v3 - 208) > 0xA)
      {
        goto LABEL_7;
      }

      if (((1 << v5) & 0x5A3) == 0)
      {
        if (((1 << v5) & 0x250) != 0)
        {
          return 0.8;
        }

        if (v3 != 211)
        {
LABEL_7:
          if ((v3 - 205) >= 2)
          {
            if (v3 != 207)
            {
              return result;
            }

            return 0.2;
          }

          return 0.8;
        }

        return 0.4;
      }
    }

    return 0.6;
  }

  if (v3 > 403)
  {
    if ((v3 - 1000) < 4)
    {
      return 0.2;
    }

    if (v3 == 404)
    {
      return 0.6;
    }

    if (v3 == 1100)
    {
      return 0.2;
    }
  }

  else
  {
    if ((v3 - 301) < 3 || (v3 - 402) < 2)
    {
      return 0.2;
    }

    if (v3 == 401)
    {
      return 0.6;
    }
  }

  return result;
}

+ (double)_categoryWeightForMemory:(id)a3
{
  v3 = [a3 category];
  result = 1.0;
  if (v3 > 202)
  {
    if (v3 <= 300)
    {
      v5 = v3 + 53;
      if ((v3 - 203) > 0x12)
      {
        return result;
      }

      if (((1 << v5) & 0x213F) == 0)
      {
        if (((1 << v5) & 0x74800) != 0)
        {
          return 0.4;
        }

        if (((1 << v5) & 0x90C0) != 0)
        {
          return 0.6;
        }

        return result;
      }

      return 0.2;
    }

    if (v3 == 401 || v3 == 302)
    {
      return 0.2;
    }

    if (v3 != 301)
    {
      return result;
    }

    return 0.8;
  }

  if (v3 > 100)
  {
    if (v3 != 101)
    {
      if (v3 == 102)
      {
        return 0.2;
      }

      if (v3 != 201)
      {
        return result;
      }
    }

    return 0.8;
  }

  if (!v3 || v3 == 100)
  {
    return 0.2;
  }

  return result;
}

+ (double)_triggerScoreForMemory:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [a3 triggerTypes];
  v4 = v3;
  v5 = MEMORY[0x1E695E0F0];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    v11 = 0.0;
LABEL_5:
    v12 = 0;
    while (1)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(v7);
      }

      +[PHMemoryRelevanceHelper _memoryTriggerTierScoreByTriggerType:](PHMemoryRelevanceHelper, "_memoryTriggerTierScoreByTriggerType:", [*(*(&v16 + 1) + 8 * v12) unsignedIntValue]);
      if (v11 < v13)
      {
        v11 = v13;
      }

      v14 = 1.0;
      if (v11 == 1.0)
      {
        break;
      }

      if (v9 == ++v12)
      {
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        v14 = v11;
        if (v9)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  else
  {
    v14 = 0.0;
  }

  return v14;
}

+ (double)_notificationLevelWeightForMemory:(id)a3
{
  v3 = a3;
  v4 = 1.0;
  if (([v3 isMustSee] & 1) == 0)
  {
    if ([v3 isStellar])
    {
      v4 = 0.8;
    }

    else if ([v3 isGreat])
    {
      v4 = 0.6;
    }

    else
    {
      v4 = 0.4;
    }
  }

  return v4;
}

+ (double)_categoryScoreComponentForMemory:(id)a3
{
  v3 = a3;
  if ([v3 subcategory])
  {
    [PHMemoryRelevanceHelper _subcategoryWeightForMemory:v3];
  }

  else
  {
    [PHMemoryRelevanceHelper _categoryWeightForMemory:v3];
  }

  v5 = v4;

  return v5 * 0.5;
}

+ (BOOL)_isDate:(id)a3 inSameDayAndMonthAsDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DEE8] currentCalendar];
  if ([v7 isDate:v5 inSameDayAsDate:v6])
  {
    v8 = 1;
  }

  else
  {
    v9 = [v7 components:24 fromDate:v5];
    v10 = [v7 components:24 fromDate:v6];
    v11 = [v9 month];
    if (v11 == [v10 month])
    {
      v12 = [v9 day];
      v8 = v12 == [v10 day];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (BOOL)_isMemoryTemporal:(id)a3
{
  v3 = a3;
  v4 = +[PHMemoryRelevanceHelper _isMemoryCategoryTemporal:](PHMemoryRelevanceHelper, "_isMemoryCategoryTemporal:", [v3 category]) || +[PHMemoryRelevanceHelper _isMemorySubcategoryTemporal:](PHMemoryRelevanceHelper, "_isMemorySubcategoryTemporal:", objc_msgSend(v3, "subcategory"));

  return v4;
}

+ (BOOL)isMemory:(id)a3 proactiveWorthyAtDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 featuredState] == 1 && (objc_msgSend(v6, "creationDate"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "timeIntervalSinceDate:", v8), v10 = v9, v8, v10 <= 86400.0))
  {
    v11 = [a1 isMemory:v6 relevantAtDate:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)isMemory:(id)a3 relevantAtDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([PHMemoryRelevanceHelper _isMemoryTemporal:v5])
  {
    v7 = [v5 creationDate];
    v8 = [PHMemoryRelevanceHelper _isDate:v7 inSameDayAndMonthAsDate:v6];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (double)relevanceScoreForMemory:(id)a3 atDate:(id)a4
{
  v5 = a3;
  v6 = 0.0;
  if ([PHMemoryRelevanceHelper isMemory:v5 relevantAtDate:a4])
  {
    [PHMemoryRelevanceHelper _notificationScoreComponentForMemory:v5];
    v8 = v7;
    [PHMemoryRelevanceHelper _categoryScoreComponentForMemory:v5];
    v10 = v9;
    [PHMemoryRelevanceHelper _triggerScoreComponentForMemory:v5];
    v6 = v8 + v10 + v11;
  }

  return v6;
}

@end