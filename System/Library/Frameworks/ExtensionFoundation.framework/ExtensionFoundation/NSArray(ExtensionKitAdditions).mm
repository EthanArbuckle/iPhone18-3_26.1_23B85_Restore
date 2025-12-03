@interface NSArray(ExtensionKitAdditions)
- (id)_EX_objectAtIndex:()ExtensionKitAdditions ofClass:;
- (uint64_t)_EX_BOOLAtIndex:()ExtensionKitAdditions;
- (uint64_t)_EX_BOOLAtIndex:()ExtensionKitAdditions defaultValue:;
- (uint64_t)_EX_arrayAtIndex:()ExtensionKitAdditions;
- (uint64_t)_EX_dictionaryAtIndex:()ExtensionKitAdditions;
- (uint64_t)_EX_stringAtIndex:()ExtensionKitAdditions;
@end

@implementation NSArray(ExtensionKitAdditions)

- (id)_EX_objectAtIndex:()ExtensionKitAdditions ofClass:
{
  v1 = [self objectAtIndex:?];
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)_EX_dictionaryAtIndex:()ExtensionKitAdditions
{
  v5 = objc_opt_class();

  return [self _EX_objectAtIndex:a3 ofClass:v5];
}

- (uint64_t)_EX_arrayAtIndex:()ExtensionKitAdditions
{
  v5 = objc_opt_class();

  return [self _EX_objectAtIndex:a3 ofClass:v5];
}

- (uint64_t)_EX_stringAtIndex:()ExtensionKitAdditions
{
  v5 = objc_opt_class();

  return [self _EX_objectAtIndex:a3 ofClass:v5];
}

- (uint64_t)_EX_BOOLAtIndex:()ExtensionKitAdditions
{
  v3 = [self _EX_objectAtIndex:a3 ofClass:objc_opt_class()];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (uint64_t)_EX_BOOLAtIndex:()ExtensionKitAdditions defaultValue:
{
  v5 = [self _EX_objectAtIndex:a3 ofClass:objc_opt_class()];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 BOOLValue];
  }

  return a4;
}

@end