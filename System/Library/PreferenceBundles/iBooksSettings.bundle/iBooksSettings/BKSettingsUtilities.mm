@interface BKSettingsUtilities
+ (id)linkListPreferenceSpecifierNamed:(id)a3 target:(id)a4 keyName:(id)a5 defaultValue:(id)a6 titles:(id)a7 values:(id)a8 readFromAppGroupContainer:(BOOL)a9;
+ (id)linkListPreferenceSpecifierNamed:(id)a3 target:(id)a4 keyName:(id)a5 defaultValue:(id)a6 titles:(id)a7 values:(id)a8 syncToWatch:(BOOL)a9;
+ (id)standardButtonSpecifierNamed:(id)a3 target:(id)a4 selector:(SEL)a5;
+ (id)standardPreferenceSpecifierNamed:(id)a3 target:(id)a4 cell:(int64_t)a5 detail:(Class)a6 keyName:(id)a7 defaultValue:(id)a8 readFromAppGroupContainer:(BOOL)a9 set:(SEL)a10 get:(SEL)a11;
+ (id)standardPreferenceSpecifierNamed:(id)a3 target:(id)a4 cell:(int64_t)a5 detail:(Class)a6 keyName:(id)a7 defaultValue:(id)a8 readFromAppGroupContainer:(BOOL)a9 syncToWatch:(BOOL)a10;
+ (id)standardPreferenceSpecifierNamed:(id)a3 target:(id)a4 cell:(int64_t)a5 detail:(Class)a6 keyName:(id)a7 defaultValue:(id)a8 syncToWatch:(BOOL)a9;
+ (id)subtitleSwitchSpecifierNamed:(id)a3 target:(id)a4 keyName:(id)a5 defaultValue:(id)a6;
@end

@implementation BKSettingsUtilities

+ (id)standardPreferenceSpecifierNamed:(id)a3 target:(id)a4 cell:(int64_t)a5 detail:(Class)a6 keyName:(id)a7 defaultValue:(id)a8 syncToWatch:(BOOL)a9
{
  BYTE1(v10) = a9;
  LOBYTE(v10) = 0;
  return [a1 standardPreferenceSpecifierNamed:a3 target:a4 cell:a5 detail:a6 keyName:a7 defaultValue:a8 readFromAppGroupContainer:v10 syncToWatch:?];
}

+ (id)standardPreferenceSpecifierNamed:(id)a3 target:(id)a4 cell:(int64_t)a5 detail:(Class)a6 keyName:(id)a7 defaultValue:(id)a8 readFromAppGroupContainer:(BOOL)a9 syncToWatch:(BOOL)a10
{
  v10 = &selRef_bk_setAndSyncPreferenceToWatch_specifier_;
  if (!a10)
  {
    v10 = &selRef_setPreferenceValue_specifier_;
  }

  LOBYTE(v12) = a9;
  return [a1 standardPreferenceSpecifierNamed:a3 target:a4 cell:a5 detail:a6 keyName:a7 defaultValue:a8 readFromAppGroupContainer:v12 set:*v10 get:"readPreferenceValue:"];
}

+ (id)standardPreferenceSpecifierNamed:(id)a3 target:(id)a4 cell:(int64_t)a5 detail:(Class)a6 keyName:(id)a7 defaultValue:(id)a8 readFromAppGroupContainer:(BOOL)a9 set:(SEL)a10 get:(SEL)a11
{
  if (a10)
  {
    v16 = a10;
  }

  else
  {
    v16 = "setPreferenceValue:specifier:";
  }

  if (a11)
  {
    v17 = a11;
  }

  else
  {
    v17 = "readPreferenceValue:";
  }

  v18 = a8;
  v19 = a7;
  v20 = [PSSpecifier preferenceSpecifierNamed:a3 target:a4 set:v16 get:v17 detail:a6 cell:a5 edit:0];
  [v20 setObject:v19 forKeyedSubscript:PSKeyNameKey];

  [v20 setObject:v18 forKeyedSubscript:PSDefaultValueKey];
  [v20 setObject:@"com.apple.iBooks" forKeyedSubscript:PSDefaultsKey];
  v21 = PSContainerBundleIDKey;
  [v20 setObject:@"com.apple.iBooks" forKeyedSubscript:PSContainerBundleIDKey];
  if (a9)
  {
    [v20 setObject:@"group.com.apple.iBooks" forKeyedSubscript:PSAppGroupBundleIDKey];
    [v20 setObject:@"group.com.apple.iBooks" forKeyedSubscript:v21];
  }

  return v20;
}

+ (id)subtitleSwitchSpecifierNamed:(id)a3 target:(id)a4 keyName:(id)a5 defaultValue:(id)a6
{
  LOBYTE(v8) = 0;
  v6 = [a1 standardPreferenceSpecifierNamed:a3 target:a4 cell:6 detail:0 keyName:a5 defaultValue:a6 syncToWatch:v8];
  [v6 setObject:objc_opt_class() forKeyedSubscript:PSCellClassKey];

  return v6;
}

+ (id)standardButtonSpecifierNamed:(id)a3 target:(id)a4 selector:(SEL)a5
{
  v6 = [PSSpecifier preferenceSpecifierNamed:a3 target:a4 set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:13 edit:0];
  [v6 setButtonAction:a5];

  return v6;
}

+ (id)linkListPreferenceSpecifierNamed:(id)a3 target:(id)a4 keyName:(id)a5 defaultValue:(id)a6 titles:(id)a7 values:(id)a8 syncToWatch:(BOOL)a9
{
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  LOBYTE(v23) = a9;
  v21 = [a1 standardPreferenceSpecifierNamed:v20 target:v19 cell:2 detail:objc_opt_class() keyName:v18 defaultValue:v17 syncToWatch:v23];

  [v21 setValues:v15 titles:v16];

  return v21;
}

+ (id)linkListPreferenceSpecifierNamed:(id)a3 target:(id)a4 keyName:(id)a5 defaultValue:(id)a6 titles:(id)a7 values:(id)a8 readFromAppGroupContainer:(BOOL)a9
{
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  LOWORD(v23) = a9;
  v21 = [a1 standardPreferenceSpecifierNamed:v20 target:v19 cell:2 detail:objc_opt_class() keyName:v18 defaultValue:v17 readFromAppGroupContainer:v23 syncToWatch:?];

  [v21 setValues:v15 titles:v16];

  return v21;
}

@end