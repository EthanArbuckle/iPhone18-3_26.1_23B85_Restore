@interface PHMemoryRelevanceHelper
+ (BOOL)_isDate:(id)date inSameDayAndMonthAsDate:(id)asDate;
+ (BOOL)_isMemoryTemporal:(id)temporal;
+ (BOOL)isMemory:(id)memory proactiveWorthyAtDate:(id)date;
+ (BOOL)isMemory:(id)memory relevantAtDate:(id)date;
+ (double)_categoryScoreComponentForMemory:(id)memory;
+ (double)_categoryWeightForMemory:(id)memory;
+ (double)_memoryTriggerTierScoreByTriggerType:(unint64_t)type;
+ (double)_notificationLevelWeightForMemory:(id)memory;
+ (double)_subcategoryWeightForMemory:(id)memory;
+ (double)_triggerScoreForMemory:(id)memory;
+ (double)relevanceScoreForMemory:(id)memory atDate:(id)date;
@end

@implementation PHMemoryRelevanceHelper

+ (double)_memoryTriggerTierScoreByTriggerType:(unint64_t)type
{
  result = 0.0;
  if (type <= 0x1B)
  {
    return dbl_19CB29940[type];
  }

  return result;
}

+ (double)_subcategoryWeightForMemory:(id)memory
{
  subcategory = [memory subcategory];
  result = 1.0;
  if (subcategory <= 300)
  {
    if (subcategory <= 204)
    {
      if (subcategory <= 200)
      {
        if ((subcategory - 101) < 2)
        {
          return 0.8;
        }

        if (!subcategory)
        {
          return 0.2;
        }

        if (subcategory != 103)
        {
          return result;
        }

        return 0.4;
      }
    }

    else
    {
      v5 = subcategory + 48;
      if ((subcategory - 208) > 0xA)
      {
        goto LABEL_7;
      }

      if (((1 << v5) & 0x5A3) == 0)
      {
        if (((1 << v5) & 0x250) != 0)
        {
          return 0.8;
        }

        if (subcategory != 211)
        {
LABEL_7:
          if ((subcategory - 205) >= 2)
          {
            if (subcategory != 207)
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

  if (subcategory > 403)
  {
    if ((subcategory - 1000) < 4)
    {
      return 0.2;
    }

    if (subcategory == 404)
    {
      return 0.6;
    }

    if (subcategory == 1100)
    {
      return 0.2;
    }
  }

  else
  {
    if ((subcategory - 301) < 3 || (subcategory - 402) < 2)
    {
      return 0.2;
    }

    if (subcategory == 401)
    {
      return 0.6;
    }
  }

  return result;
}

+ (double)_categoryWeightForMemory:(id)memory
{
  category = [memory category];
  result = 1.0;
  if (category > 202)
  {
    if (category <= 300)
    {
      v5 = category + 53;
      if ((category - 203) > 0x12)
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

    if (category == 401 || category == 302)
    {
      return 0.2;
    }

    if (category != 301)
    {
      return result;
    }

    return 0.8;
  }

  if (category > 100)
  {
    if (category != 101)
    {
      if (category == 102)
      {
        return 0.2;
      }

      if (category != 201)
      {
        return result;
      }
    }

    return 0.8;
  }

  if (!category || category == 100)
  {
    return 0.2;
  }

  return result;
}

+ (double)_triggerScoreForMemory:(id)memory
{
  v21 = *MEMORY[0x1E69E9840];
  triggerTypes = [memory triggerTypes];
  v4 = triggerTypes;
  v5 = MEMORY[0x1E695E0F0];
  if (triggerTypes)
  {
    v5 = triggerTypes;
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

+ (double)_notificationLevelWeightForMemory:(id)memory
{
  memoryCopy = memory;
  v4 = 1.0;
  if (([memoryCopy isMustSee] & 1) == 0)
  {
    if ([memoryCopy isStellar])
    {
      v4 = 0.8;
    }

    else if ([memoryCopy isGreat])
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

+ (double)_categoryScoreComponentForMemory:(id)memory
{
  memoryCopy = memory;
  if ([memoryCopy subcategory])
  {
    [PHMemoryRelevanceHelper _subcategoryWeightForMemory:memoryCopy];
  }

  else
  {
    [PHMemoryRelevanceHelper _categoryWeightForMemory:memoryCopy];
  }

  v5 = v4;

  return v5 * 0.5;
}

+ (BOOL)_isDate:(id)date inSameDayAndMonthAsDate:(id)asDate
{
  dateCopy = date;
  asDateCopy = asDate;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  if ([currentCalendar isDate:dateCopy inSameDayAsDate:asDateCopy])
  {
    v8 = 1;
  }

  else
  {
    v9 = [currentCalendar components:24 fromDate:dateCopy];
    v10 = [currentCalendar components:24 fromDate:asDateCopy];
    month = [v9 month];
    if (month == [v10 month])
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

+ (BOOL)_isMemoryTemporal:(id)temporal
{
  temporalCopy = temporal;
  v4 = +[PHMemoryRelevanceHelper _isMemoryCategoryTemporal:](PHMemoryRelevanceHelper, "_isMemoryCategoryTemporal:", [temporalCopy category]) || +[PHMemoryRelevanceHelper _isMemorySubcategoryTemporal:](PHMemoryRelevanceHelper, "_isMemorySubcategoryTemporal:", objc_msgSend(temporalCopy, "subcategory"));

  return v4;
}

+ (BOOL)isMemory:(id)memory proactiveWorthyAtDate:(id)date
{
  memoryCopy = memory;
  dateCopy = date;
  if ([memoryCopy featuredState] == 1 && (objc_msgSend(memoryCopy, "creationDate"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(dateCopy, "timeIntervalSinceDate:", v8), v10 = v9, v8, v10 <= 86400.0))
  {
    v11 = [self isMemory:memoryCopy relevantAtDate:dateCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)isMemory:(id)memory relevantAtDate:(id)date
{
  memoryCopy = memory;
  dateCopy = date;
  if ([PHMemoryRelevanceHelper _isMemoryTemporal:memoryCopy])
  {
    creationDate = [memoryCopy creationDate];
    v8 = [PHMemoryRelevanceHelper _isDate:creationDate inSameDayAndMonthAsDate:dateCopy];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (double)relevanceScoreForMemory:(id)memory atDate:(id)date
{
  memoryCopy = memory;
  v6 = 0.0;
  if ([PHMemoryRelevanceHelper isMemory:memoryCopy relevantAtDate:date])
  {
    [PHMemoryRelevanceHelper _notificationScoreComponentForMemory:memoryCopy];
    v8 = v7;
    [PHMemoryRelevanceHelper _categoryScoreComponentForMemory:memoryCopy];
    v10 = v9;
    [PHMemoryRelevanceHelper _triggerScoreComponentForMemory:memoryCopy];
    v6 = v8 + v10 + v11;
  }

  return v6;
}

@end