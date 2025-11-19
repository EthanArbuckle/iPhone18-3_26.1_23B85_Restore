@interface VNClassRegistrar
+ (BOOL)getClassCode:(unsigned int *)a3 forClass:(Class)a4 error:(id *)a5;
+ (BOOL)getClassCode:(unsigned int *)a3 forClassName:(id)a4 error:(id *)a5;
+ (BOOL)observationBoundsAreNormalizedToROIForRequestClassCode:(unsigned int)a3 revision:(unint64_t)a4;
+ (BOOL)validateRequestClassName:(id)a3 error:(id *)a4;
+ (Class)classForClassCode:(unsigned int)a3 error:(id *)a4;
+ (id)classNameForClassCode:(unsigned int)a3 error:(id *)a4;
+ (unsigned)entryTypeForClassCode:(unsigned int)a3;
+ (unsigned)entryTypeForClassName:(id)a3;
+ (void)enumerateEntriesUsingBlock:(id)a3;
@end

@implementation VNClassRegistrar

+ (BOOL)validateRequestClassName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9 = 0;
  if (![a1 getClassCode:&v9 forClassName:v6 error:a4])
  {
    goto LABEL_12;
  }

  if ((![v6 hasPrefix:@"VN"] || (objc_msgSend(v6, "hasSuffix:", @"Request") & 1) == 0) && (objc_msgSend(v6, "isEqualToString:", @"VNVYvzEtX1JlUdu8xx5qhDI") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"VN6kBnCOr2mZlSV6yV1dLwB") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"VN5kJNH3eYuyaLxNpZr5Z7zi") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"VN6Mb1ME89lyW3HpahkEygIG") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"VN1JC7R3k4455fKQz0dY1VhQ") & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_13;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not a VNRequest subclass", v6];
    *a4 = [VNError errorForInvalidArgumentWithLocalizedDescription:v7];

LABEL_12:
    LOBYTE(a4) = 0;
    goto LABEL_13;
  }

  LOBYTE(a4) = 1;
LABEL_13:

  return a4;
}

+ (BOOL)getClassCode:(unsigned int *)a3 forClassName:(id)a4 error:(id *)a5
{
  v7 = a4;
  if (getClassCode_forClassName_error__onceToken != -1)
  {
    dispatch_once(&getClassCode_forClassName_error__onceToken, &__block_literal_global_41);
  }

  v8 = [getClassCode_forClassName_error__ourClassCodeForNameDictionary objectForKeyedSubscript:v7];
  v9 = v8;
  if (v8)
  {
    *a3 = [v8 unsignedIntValue];
  }

  else if (a5)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ does not have a registry entry", v7];
    *a5 = [VNError errorForDataUnavailableWithLocalizedDescription:v10];
  }

  return v9 != 0;
}

void __52__VNClassRegistrar_getClassCode_forClassName_error___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = 184;
  v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:184];
  v3 = &off_1E77B1258;
  do
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:*v3];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v3 - 2)];
    [v2 setObject:v5 forKeyedSubscript:v4];

    v3 += 3;
    --v1;
  }

  while (v1);
  v6 = [v2 copy];
  v7 = getClassCode_forClassName_error__ourClassCodeForNameDictionary;
  getClassCode_forClassName_error__ourClassCodeForNameDictionary = v6;

  objc_autoreleasePoolPop(v0);
}

+ (BOOL)getClassCode:(unsigned int *)a3 forClass:(Class)a4 error:(id *)a5
{
  v8 = NSStringFromClass(a4);
  LOBYTE(a5) = [a1 getClassCode:a3 forClassName:v8 error:a5];

  return a5;
}

+ (id)classNameForClassCode:(unsigned int)a3 error:(id *)a4
{
  v5 = *&a3;
  if (classNameForClassCode_error__onceToken != -1)
  {
    dispatch_once(&classNameForClassCode_error__onceToken, &__block_literal_global_34);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
  v7 = [classNameForClassCode_error__ourClassNameForCodeMap objectForKeyedSubscript:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else if (a4)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not a registered class code", VisionCoreFourCharCodeToString()];
    *a4 = [VNError errorForDataUnavailableWithLocalizedDescription:v10];
  }

  return v8;
}

void __48__VNClassRegistrar_classNameForClassCode_error___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = 184;
  v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:184];
  v3 = &off_1E77B1258;
  do
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v3 - 2)];
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = *v3;
    v3 += 3;
    v7 = [v5 initWithUTF8String:v6];
    [v2 setObject:v7 forKeyedSubscript:v4];

    --v1;
  }

  while (v1);
  v8 = [v2 copy];
  v9 = classNameForClassCode_error__ourClassNameForCodeMap;
  classNameForClassCode_error__ourClassNameForCodeMap = v8;

  objc_autoreleasePoolPop(v0);
}

+ (Class)classForClassCode:(unsigned int)a3 error:(id *)a4
{
  v5 = [a1 classNameForClassCode:*&a3 error:?];
  v6 = v5;
  if (v5)
  {
    v7 = NSClassFromString(v5);
    v8 = v7;
    if (a4 && !v7)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is no longer supported by Vision", v6];
      *a4 = [VNError errorForDataUnavailableWithLocalizedDescription:v9];
    }

    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (unsigned)entryTypeForClassCode:(unsigned int)a3
{
  objc_opt_self();
  if (_entryForClassCode__onceToken != -1)
  {
    dispatch_once(&_entryForClassCode__onceToken, &__block_literal_global_27);
  }

  value = 0;
  if (!NSMapMember(_entryForClassCode__ourClassCodeToRegistryEntryTable, a3, 0, &value) || value == 0)
  {
    return 0;
  }

  else
  {
    return *(value + 16);
  }
}

void __39__VNClassRegistrar__entryForClassCode___block_invoke()
{
  v0 = 184;
  v1 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:1282 valueOptions:2 capacity:184];
  v2 = _entryForClassCode__ourClassCodeToRegistryEntryTable;
  _entryForClassCode__ourClassCodeToRegistryEntryTable = v1;

  v3 = "fgla";
  v4 = "fgla";
  do
  {
    v5 = *v4;
    v4 += 24;
    NSMapInsertKnownAbsent(_entryForClassCode__ourClassCodeToRegistryEntryTable, v5, v3);
    v3 = v4;
    --v0;
  }

  while (v0);
}

+ (unsigned)entryTypeForClassName:(id)a3
{
  v3 = a3;
  objc_opt_self();
  if (_entryForClassName__onceToken != -1)
  {
    dispatch_once(&_entryForClassName__onceToken, &__block_literal_global_519);
  }

  value = 0;
  v4 = _entryForClassName__ourClassNameToRegistryEntryTable;
  v5 = [v3 UTF8String];

  v6 = NSMapMember(v4, v5, 0, &value);
  result = 0;
  if (v6)
  {
    if (value)
    {
      return *(value + 16);
    }
  }

  return result;
}

void __39__VNClassRegistrar__entryForClassName___block_invoke()
{
  v0 = 184;
  v1 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:770 valueOptions:2 capacity:184];
  v2 = _entryForClassName__ourClassNameToRegistryEntryTable;
  _entryForClassName__ourClassNameToRegistryEntryTable = v1;

  v3 = "fgla";
  do
  {
    NSMapInsertKnownAbsent(_entryForClassName__ourClassNameToRegistryEntryTable, v3[1], v3);
    v3 += 3;
    --v0;
  }

  while (v0);
}

+ (void)enumerateEntriesUsingBlock:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v11 = 0;
  v5 = 183;
  v6 = &off_1E77B1258;
  do
  {
    v7 = v5;
    v8 = *(v6 + 8);
    v9 = *(v6 - 2);
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*v6];
    v3[2](v3, v8, v9, v10, &v11);

    if (v11)
    {
      break;
    }

    v5 = v7 - 1;
    v6 += 3;
  }

  while (v7);
  objc_autoreleasePoolPop(v4);
}

+ (BOOL)observationBoundsAreNormalizedToROIForRequestClassCode:(unsigned int)a3 revision:(unint64_t)a4
{
  result = 0;
  if (a3 > 1146386547)
  {
    if (a3 <= 1196384850)
    {
      if (a3 == 1146386548)
      {
        return result;
      }

      if (a3 == 1195471955)
      {
        result = 0;
        v6 = -61441;
LABEL_22:
        if (a4 + (v6 & 0xFFFFFFFF0000FFFFLL | 0x21350000) >= 2 && a4 != 1)
        {
          return 1;
        }

        return result;
      }

      v5 = 1195994451;
    }

    else
    {
      if (a3 <= 1752327526)
      {
        if (a3 != 1196384851)
        {
          v5 = 1380019817;
          goto LABEL_18;
        }

        result = 0;
        v6 = -61440;
        goto LABEL_22;
      }

      if (a3 == 1752327527)
      {
        return result;
      }

      v5 = 1768777584;
    }

LABEL_18:
    if (a3 == v5)
    {
      return result;
    }

    return 1;
  }

  if (a3 <= 1145463138)
  {
    if (a3 == 1145201010)
    {
      return a4 != 1;
    }

    if (a3 == 1145455441)
    {
      return result;
    }

    v5 = 1145457773;
    goto LABEL_18;
  }

  if (a3 != 1145463139 && a3 != 1145599314)
  {
    v5 = 1146250595;
    goto LABEL_18;
  }

  return result;
}

@end