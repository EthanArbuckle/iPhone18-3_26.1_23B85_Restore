@interface NSObject(HealthKit)
- (BOOL)hk_expectMissingKeyPath:()HealthKit error:;
- (BOOL)hk_hasValueForKeyPath:()HealthKit;
- (id)hk_classNameWithTag:()HealthKit;
- (id)hk_safeArrayForKeyPath:()HealthKit error:;
- (id)hk_safeArrayIfExistsForKeyPath:()HealthKit error:;
- (id)hk_safeDictionaryForKeyPath:()HealthKit error:;
- (id)hk_safeDictionaryIfExistsForKeyPath:()HealthKit error:;
- (id)hk_safeNumberForKeyPath:()HealthKit error:;
- (id)hk_safeNumberIfExistsForKeyPath:()HealthKit error:;
- (id)hk_safeStringForKeyPath:()HealthKit error:;
- (id)hk_safeStringIfExistsForKeyPath:()HealthKit error:;
- (id)hk_safeValueForKeyPath:()HealthKit class:error:;
- (id)hk_safeValueIfExistsForKeyPath:()HealthKit class:error:;
@end

@implementation NSObject(HealthKit)

- (BOOL)hk_hasValueForKeyPath:()HealthKit
{
  v1 = [self valueForKeyPath:?];
  v2 = v1 != 0;

  return v2;
}

- (id)hk_safeValueForKeyPath:()HealthKit class:error:
{
  v8 = a3;
  v9 = [self _hk_valueForSafeValueForKeyPath:v8];
  v10 = HKSafeObject(v9, a4, v8, a5);

  return v10;
}

- (id)hk_safeArrayForKeyPath:()HealthKit error:
{
  v6 = a3;
  v7 = [self _hk_valueForSafeValueForKeyPath:v6];
  v8 = objc_opt_class();
  v9 = HKSafeObject(v7, v8, v6, a4);

  return v9;
}

- (id)hk_safeDictionaryForKeyPath:()HealthKit error:
{
  v6 = a3;
  v7 = [self _hk_valueForSafeValueForKeyPath:v6];
  v8 = objc_opt_class();
  v9 = HKSafeObject(v7, v8, v6, a4);

  return v9;
}

- (id)hk_safeStringForKeyPath:()HealthKit error:
{
  v6 = a3;
  v7 = [self _hk_valueForSafeValueForKeyPath:v6];
  v8 = objc_opt_class();
  v9 = HKSafeObject(v7, v8, v6, a4);

  return v9;
}

- (id)hk_safeNumberForKeyPath:()HealthKit error:
{
  v6 = a3;
  v7 = [self _hk_valueForSafeValueForKeyPath:v6];
  v8 = objc_opt_class();
  v9 = HKSafeObject(v7, v8, v6, a4);

  return v9;
}

- (id)hk_safeValueIfExistsForKeyPath:()HealthKit class:error:
{
  v8 = a3;
  v9 = [self _hk_valueForSafeValueForKeyPath:v8];
  v10 = v9;
  if (v9)
  {
    v11 = HKSafeObject(v9, a4, v8, a5);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)hk_safeArrayIfExistsForKeyPath:()HealthKit error:
{
  v6 = a3;
  v7 = [self hk_safeValueIfExistsForKeyPath:v6 class:objc_opt_class() error:a4];

  return v7;
}

- (id)hk_safeDictionaryIfExistsForKeyPath:()HealthKit error:
{
  v6 = a3;
  v7 = [self hk_safeValueIfExistsForKeyPath:v6 class:objc_opt_class() error:a4];

  return v7;
}

- (id)hk_safeStringIfExistsForKeyPath:()HealthKit error:
{
  v6 = a3;
  v7 = [self hk_safeValueIfExistsForKeyPath:v6 class:objc_opt_class() error:a4];

  return v7;
}

- (id)hk_safeNumberIfExistsForKeyPath:()HealthKit error:
{
  v6 = a3;
  v7 = [self hk_safeValueIfExistsForKeyPath:v6 class:objc_opt_class() error:a4];

  return v7;
}

- (BOOL)hk_expectMissingKeyPath:()HealthKit error:
{
  v6 = a3;
  v7 = [self valueForKeyPath:v6];
  if (v7)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a4 code:3 format:{@"Unexpected key path %@", v6}];
  }

  return v7 == 0;
}

- (id)hk_classNameWithTag:()HealthKit
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v3 stringWithFormat:@"%@.%@", v6, v4];

  return v7;
}

@end