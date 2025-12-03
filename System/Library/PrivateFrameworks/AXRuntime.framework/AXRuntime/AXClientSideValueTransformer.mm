@interface AXClientSideValueTransformer
+ (BOOL)canTransformAttribute:(int64_t)attribute;
+ (id)_transformArrayWithUserStrings:(id)strings;
+ (id)_transformAutomationDictionary:(id)dictionary;
+ (id)_transformUserString:(id)string;
+ (id)transformValue:(id)value forAttribute:(int64_t)attribute withElement:(__AXUIElement *)element;
+ (void)initialize;
@end

@implementation AXClientSideValueTransformer

+ (void)initialize
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___AXClientSideValueTransformer;
  objc_msgSendSuper2(&v2, sel_initialize);
}

+ (BOOL)canTransformAttribute:(int64_t)attribute
{
  result = 1;
  if (attribute > 2185)
  {
    if (attribute == 2186 || attribute == 5039 || attribute == 95006)
    {
      return result;
    }

    return 0;
  }

  if (attribute != 2001 && attribute != 2006)
  {
    return 0;
  }

  return result;
}

+ (id)transformValue:(id)value forAttribute:(int64_t)attribute withElement:(__AXUIElement *)element
{
  valueCopy = value;
  v8 = 0;
  if (attribute <= 2185)
  {
    if (attribute == 2001 || attribute == 2006)
    {
      v9 = [self _transformUserString:valueCopy];
      goto LABEL_10;
    }
  }

  else
  {
    if (attribute == 2186)
    {
      v9 = [self _transformArrayWithUserStrings:valueCopy];
      goto LABEL_10;
    }

    if (attribute == 5039 || attribute == 95006)
    {
      v9 = [self _transformAutomationDictionary:valueCopy];
LABEL_10:
      v8 = v9;
    }
  }

  return v8;
}

+ (id)_transformUserString:(id)string
{
  stringCopy = string;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = stringCopy;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v5 = getAXPerformPrivilegedAttributedStringTransformationsSymbolLoc_ptr;
    v12 = getAXPerformPrivilegedAttributedStringTransformationsSymbolLoc_ptr;
    if (!getAXPerformPrivilegedAttributedStringTransformationsSymbolLoc_ptr)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __getAXPerformPrivilegedAttributedStringTransformationsSymbolLoc_block_invoke;
      v8[3] = &unk_1E80D3D68;
      v8[4] = &v9;
      __getAXPerformPrivilegedAttributedStringTransformationsSymbolLoc_block_invoke(v8);
      v5 = v10[3];
    }

    _Block_object_dispose(&v9, 8);
    if (!v5)
    {
      +[AXClientSideValueTransformer _transformUserString:];
    }

    v6 = v5(v4, &unk_1F3E6C3A8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_transformArrayWithUserStrings:(id)strings
{
  stringsCopy = strings;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_autoreleasePoolPush();
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63__AXClientSideValueTransformer__transformArrayWithUserStrings___block_invoke;
    v8[3] = &__block_descriptor_40_e8__16__0_8l;
    v8[4] = self;
    v6 = [stringsCopy ax_mappedArrayUsingBlock:v8];
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __63__AXClientSideValueTransformer__transformArrayWithUserStrings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [*(a1 + 32) _transformUserString:v3];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

+ (id)_transformAutomationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    context = objc_autoreleasePoolPush();
    v5 = [dictionaryCopy mutableCopy];
    v6 = [v5 objectForKeyedSubscript:@"UIAccessibilitySnapshotKeyAttributes"];
    v7 = [v6 mutableCopy];

    v17 = [v7 objectForKeyedSubscript:&unk_1F3E6C300];
    v8 = [self _transformUserString:?];
    [v7 setObject:v8 forKeyedSubscript:&unk_1F3E6C300];

    v9 = [v7 objectForKeyedSubscript:&unk_1F3E6C318];
    v10 = [self _transformUserString:v9];
    [v7 setObject:v10 forKeyedSubscript:&unk_1F3E6C318];

    v11 = [v5 objectForKeyedSubscript:@"UIAccessibilitySnapshotKeyChildren"];
    v12 = [v11 mutableCopy];

    if ([v12 count])
    {
      v13 = 0;
      do
      {
        v14 = [v12 objectAtIndex:v13];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [self _transformUserString:v14];
        }

        else
        {
          [self _transformAutomationDictionary:v14];
        }
        v15 = ;
        if (v15)
        {
          [v12 replaceObjectAtIndex:v13 withObject:v15];
        }

        ++v13;
      }

      while (v13 < [v12 count]);
    }

    [v5 setObject:v7 forKeyedSubscript:@"UIAccessibilitySnapshotKeyAttributes"];
    [v5 setObject:v12 forKeyedSubscript:@"UIAccessibilitySnapshotKeyChildren"];

    objc_autoreleasePoolPop(context);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)_transformUserString:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString *soft_AXPerformPrivilegedAttributedStringTransformations(NSString *__strong, NSArray *__strong)"}];
  [v0 handleFailureInFunction:v1 file:@"AXClientSideValueTransformer.m" lineNumber:17 description:{@"%s", dlerror()}];

  __break(1u);
}

@end