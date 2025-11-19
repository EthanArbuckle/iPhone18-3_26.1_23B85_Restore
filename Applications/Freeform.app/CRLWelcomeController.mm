@interface CRLWelcomeController
+ (BOOL)didShowForAnyVersion:(int64_t)a3;
+ (BOOL)shouldShow:(int64_t)a3 forVersion:(unsigned int)a4 userDefaultsVersion:(unsigned int *)a5;
+ (id)keyForWelcomeType:(int64_t)a3;
+ (int64_t)firstLaunchActionForVersion:(unsigned int)a3 userDefaultsVersion:(unsigned int *)a4;
+ (void)deleteUserDefaultsVersion:(int64_t)a3;
+ (void)setUserDefaultsVersion:(unsigned int)a3 forType:(int64_t)a4;
@end

@implementation CRLWelcomeController

+ (id)keyForWelcomeType:(int64_t)a3
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return @"CRLWelcomeVersion";
  }
}

+ (BOOL)didShowForAnyVersion:(int64_t)a3
{
  v4 = [a1 keyForWelcomeType:a3];
  v5 = [a1 userDefaults];
  v6 = [v5 objectForKey:v4];

  return v6 != 0;
}

+ (int64_t)firstLaunchActionForVersion:(unsigned int)a3 userDefaultsVersion:(unsigned int *)a4
{
  v8 = 0;
  v6 = [a1 shouldShow:0 forVersion:*&a3 userDefaultsVersion:&v8];
  result = 0;
  if (v6)
  {
    if (HIWORD(v8) < HIWORD(a3))
    {
      result = 1;
    }

    else
    {
      result = 2;
    }
  }

  if (a4)
  {
    *a4 = v8;
  }

  return result;
}

+ (BOOL)shouldShow:(int64_t)a3 forVersion:(unsigned int)a4 userDefaultsVersion:(unsigned int *)a5
{
  v8 = [a1 keyForWelcomeType:a3];
  v9 = [a1 userDefaults];
  v10 = [v9 objectForKey:v8];
  v11 = [v10 unsignedIntValue];

  if (a5)
  {
    *a5 = v11;
  }

  v12 = v11 < a4;
  if (v11 < a4 && a4 == 65539 && v11 == 65538)
  {
    v12 = +[_TtC8Freeform19CRLFeatureFlagGroup isGenerativePlaygroundEnabled];
  }

  return v12;
}

+ (void)setUserDefaultsVersion:(unsigned int)a3 forType:(int64_t)a4
{
  v4 = *&a3;
  v8 = [a1 keyForWelcomeType:a4];
  v6 = [a1 userDefaults];
  v7 = [NSNumber numberWithUnsignedInt:v4];
  [v6 setObject:v7 forKey:v8];
}

+ (void)deleteUserDefaultsVersion:(int64_t)a3
{
  v5 = [a1 keyForWelcomeType:a3];
  v4 = [a1 userDefaults];
  [v4 removeObjectForKey:v5];
}

@end