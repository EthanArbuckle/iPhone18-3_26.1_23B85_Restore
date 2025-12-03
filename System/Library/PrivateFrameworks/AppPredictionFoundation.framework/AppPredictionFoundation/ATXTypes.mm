@interface ATXTypes
+ (id)consumerMapping;
+ (id)consumerSubtypeMapping;
+ (id)inverseConsumerSubtypeMapping;
+ (id)safeStringForConsumerSubtype:(unsigned __int8)subtype;
+ (id)stringForConsumerSubtype:(unsigned __int8)subtype;
+ (id)stringForConsumerType:(unint64_t)type;
+ (id)stringForEngagementType:(unint64_t)type;
+ (id)validConsumerSubTypeList;
+ (id)validConsumerSubTypes;
+ (id)validConsumerTypeList;
+ (id)validConsumerTypes;
+ (unint64_t)consumerTypeForString:(id)string found:(BOOL *)found;
+ (unint64_t)consumerTypeForSubType:(unsigned __int8)type;
+ (unint64_t)engagementTypeForString:(id)string found:(BOOL *)found;
+ (unsigned)consumerSubtypeForString:(id)string found:(BOOL *)found;
+ (void)iterConsumerSubTypesWithBlock:(id)block;
+ (void)iterConsumerTypesWithBlock:(id)block;
@end

@implementation ATXTypes

+ (id)stringForEngagementType:(unint64_t)type
{
  if (type < 7)
  {
    return off_278590078[type];
  }

  v5 = __atxlog_handle_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(ATXTypes *)type stringForEngagementType:v5];
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"stringForConsumerType called with invalid ATXEngagementType value of %lu", type}];
  return @"Error";
}

+ (id)stringForConsumerType:(unint64_t)type
{
  if (type < 0x18)
  {
    return off_2785900B0[type];
  }

  v5 = __atxlog_handle_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(ATXTypes *)type stringForConsumerType:v5];
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"stringForConsumerType called with invalid ATXConsumerType value of %lu", type}];
  return @"Error";
}

+ (id)stringForConsumerSubtype:(unsigned __int8)subtype
{
  subtypeCopy = subtype;
  v9 = *MEMORY[0x277D85DE8];
  if (subtype >= 0x32u)
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v8 = subtypeCopy;
      _os_log_error_impl(&dword_226368000, v5, OS_LOG_TYPE_ERROR, "stringForConsumerSubtype called with invalid ATXConsumerSubType value of %lu", buf, 0xCu);
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"stringForConsumerSubtype called with invalid ATXConsumerSubType value of %lu", subtypeCopy}];
    result = @"Error";
  }

  else
  {
    result = off_278590170[subtype];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)safeStringForConsumerSubtype:(unsigned __int8)subtype
{
  switch(subtype)
  {
    case '&':
      v5 = @"ActionSuggestionAvocado";

      break;
    case '%':
      v5 = @"AppSuggestionAvocado";

      break;
    case '#':
      v5 = @"Dewey";

      break;
    default:
      v5 = [ATXTypes stringForConsumerSubtype:v3];

      break;
  }

  return v5;
}

+ (id)consumerMapping
{
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:24];
  for (i = 0; i != 24; ++i)
  {
    v5 = [self stringForConsumerType:i];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
    [v3 setObject:v5 forKeyedSubscript:v6];
  }

  return v3;
}

+ (id)consumerSubtypeMapping
{
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:50];
  v4 = 0;
  do
  {
    v5 = v4;
    v6 = [self stringForConsumerSubtype:v4];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v4];
    [v3 setObject:v6 forKeyedSubscript:v7];

    ++v4;
  }

  while (v5 < 0x31);

  return v3;
}

+ (id)inverseConsumerSubtypeMapping
{
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:50];
  v4 = 0;
  do
  {
    v5 = v4;
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v4];
    v7 = [self stringForConsumerSubtype:v4];
    [v3 setObject:v6 forKeyedSubscript:v7];

    ++v4;
  }

  while (v5 < 0x31);

  return v3;
}

+ (id)validConsumerTypes
{
  v2 = objc_opt_new();
  for (i = 0; i != 24; ++i)
  {
    v4 = [ATXTypes stringForConsumerType:i];
    [v2 addObject:v4];
  }

  return v2;
}

+ (id)validConsumerTypeList
{
  validConsumerTypes = [objc_opt_class() validConsumerTypes];
  v3 = objc_opt_new();
  if ([validConsumerTypes count])
  {
    v4 = 0;
    do
    {
      v5 = [validConsumerTypes objectAtIndexedSubscript:v4];
      [v3 appendString:v5];

      if ([validConsumerTypes count] - 1 > v4)
      {
        [v3 appendString:{@", "}];
      }

      ++v4;
    }

    while ([validConsumerTypes count] > v4);
  }

  return v3;
}

+ (id)validConsumerSubTypes
{
  v2 = objc_opt_new();
  v3 = 0;
  do
  {
    v4 = v3;
    v5 = [ATXTypes stringForConsumerSubtype:v3];
    [v2 addObject:v5];

    ++v3;
  }

  while (v4 < 0x31);

  return v2;
}

+ (id)validConsumerSubTypeList
{
  validConsumerSubTypes = [objc_opt_class() validConsumerSubTypes];
  v3 = objc_opt_new();
  if ([validConsumerSubTypes count])
  {
    v4 = 0;
    do
    {
      v5 = [validConsumerSubTypes objectAtIndexedSubscript:v4];
      [v3 appendString:v5];

      if ([validConsumerSubTypes count] - 1 > v4)
      {
        [v3 appendString:{@", "}];
      }

      ++v4;
    }

    while ([validConsumerSubTypes count] > v4);
  }

  return v3;
}

+ (unint64_t)engagementTypeForString:(id)string found:(BOOL *)found
{
  stringCopy = string;
  v7 = 0;
  while (1)
  {
    v8 = [self stringForEngagementType:v7];
    v9 = [v8 isEqualToString:stringCopy];

    if (v9)
    {
      break;
    }

    if (++v7 == 7)
    {
      v7 = 0;
      if (!found)
      {
        goto LABEL_9;
      }

      v10 = 0;
      goto LABEL_8;
    }
  }

  if (!found)
  {
    goto LABEL_9;
  }

  v10 = 1;
LABEL_8:
  *found = v10;
LABEL_9:

  return v7;
}

+ (unint64_t)consumerTypeForString:(id)string found:(BOOL *)found
{
  stringCopy = string;
  v7 = 0;
  while (1)
  {
    v8 = [self stringForConsumerType:v7];
    v9 = [v8 isEqualToString:stringCopy];

    if (v9)
    {
      break;
    }

    if (++v7 == 24)
    {
      v7 = 0;
      if (!found)
      {
        goto LABEL_9;
      }

      v10 = 0;
      goto LABEL_8;
    }
  }

  if (!found)
  {
    goto LABEL_9;
  }

  v10 = 1;
LABEL_8:
  *found = v10;
LABEL_9:

  return v7;
}

+ (unsigned)consumerSubtypeForString:(id)string found:(BOOL *)found
{
  stringCopy = string;
  v7 = 0;
  while (1)
  {
    v8 = v7;
    v9 = [self stringForConsumerSubtype:v7];
    v10 = [v9 isEqualToString:stringCopy];

    if (v10)
    {
      break;
    }

    ++v7;
    if (v8 >= 0x31)
    {
      v11 = 0;
      v7 = 0;
      if (!found)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  if (!found)
  {
    goto LABEL_9;
  }

  v11 = 1;
LABEL_8:
  *found = v11;
LABEL_9:

  return v7;
}

+ (unint64_t)consumerTypeForSubType:(unsigned __int8)type
{
  if (type > 0x32u)
  {
    return 0;
  }

  else
  {
    return qword_22638AAC0[type];
  }
}

+ (void)iterConsumerTypesWithBlock:(id)block
{
  blockCopy = block;
  v4 = 0;
  v8 = 0;
  do
  {
    v5 = objc_autoreleasePoolPush();
    blockCopy[2](blockCopy, v4, &v8);
    v6 = v8;
    objc_autoreleasePoolPop(v5);
    if (v6)
    {
      break;
    }
  }

  while (v4++ != 23);
}

+ (void)iterConsumerSubTypesWithBlock:(id)block
{
  blockCopy = block;
  v4 = 0;
  v8 = 0;
  do
  {
    v5 = objc_autoreleasePoolPush();
    blockCopy[2](blockCopy, v4, &v8);
    v6 = v8;
    objc_autoreleasePoolPop(v5);
    if (v6)
    {
      break;
    }
  }

  while (v4++ != 49);
}

+ (void)stringForEngagementType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_226368000, a2, OS_LOG_TYPE_ERROR, "stringForConsumerType called with invalid ATXEngagementType value of %lu", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)stringForConsumerType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_226368000, a2, OS_LOG_TYPE_ERROR, "stringForConsumerType called with invalid ATXConsumerType value of %lu", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)uiTypeForActionConsumerSubType:(NSObject *)a3 .cold.1(void *a1, unsigned __int8 a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = [a1 stringForConsumerSubtype:a2];
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_226368000, a3, OS_LOG_TYPE_ERROR, "unsupported consumerSubType of %@ passed into uiTypeForActionConsumerSubType", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end