@interface BKSettingsUtilities
+ (id)linkListPreferenceSpecifierNamed:(id)named target:(id)target keyName:(id)name defaultValue:(id)value titles:(id)titles values:(id)values readFromAppGroupContainer:(BOOL)container;
+ (id)linkListPreferenceSpecifierNamed:(id)named target:(id)target keyName:(id)name defaultValue:(id)value titles:(id)titles values:(id)values syncToWatch:(BOOL)watch;
+ (id)standardButtonSpecifierNamed:(id)named target:(id)target selector:(SEL)selector;
+ (id)standardPreferenceSpecifierNamed:(id)named target:(id)target cell:(int64_t)cell detail:(Class)detail keyName:(id)name defaultValue:(id)value readFromAppGroupContainer:(BOOL)container set:(SEL)self0 get:(SEL)self1;
+ (id)standardPreferenceSpecifierNamed:(id)named target:(id)target cell:(int64_t)cell detail:(Class)detail keyName:(id)name defaultValue:(id)value readFromAppGroupContainer:(BOOL)container syncToWatch:(BOOL)self0;
+ (id)standardPreferenceSpecifierNamed:(id)named target:(id)target cell:(int64_t)cell detail:(Class)detail keyName:(id)name defaultValue:(id)value syncToWatch:(BOOL)watch;
+ (id)subtitleSwitchSpecifierNamed:(id)named target:(id)target keyName:(id)name defaultValue:(id)value;
@end

@implementation BKSettingsUtilities

+ (id)standardPreferenceSpecifierNamed:(id)named target:(id)target cell:(int64_t)cell detail:(Class)detail keyName:(id)name defaultValue:(id)value syncToWatch:(BOOL)watch
{
  BYTE1(v10) = watch;
  LOBYTE(v10) = 0;
  return [self standardPreferenceSpecifierNamed:named target:target cell:cell detail:detail keyName:name defaultValue:value readFromAppGroupContainer:v10 syncToWatch:?];
}

+ (id)standardPreferenceSpecifierNamed:(id)named target:(id)target cell:(int64_t)cell detail:(Class)detail keyName:(id)name defaultValue:(id)value readFromAppGroupContainer:(BOOL)container syncToWatch:(BOOL)self0
{
  v10 = &selRef_bk_setAndSyncPreferenceToWatch_specifier_;
  if (!watch)
  {
    v10 = &selRef_setPreferenceValue_specifier_;
  }

  LOBYTE(v12) = container;
  return [self standardPreferenceSpecifierNamed:named target:target cell:cell detail:detail keyName:name defaultValue:value readFromAppGroupContainer:v12 set:*v10 get:"readPreferenceValue:"];
}

+ (id)standardPreferenceSpecifierNamed:(id)named target:(id)target cell:(int64_t)cell detail:(Class)detail keyName:(id)name defaultValue:(id)value readFromAppGroupContainer:(BOOL)container set:(SEL)self0 get:(SEL)self1
{
  if (set)
  {
    setCopy = set;
  }

  else
  {
    setCopy = "setPreferenceValue:specifier:";
  }

  if (get)
  {
    getCopy = get;
  }

  else
  {
    getCopy = "readPreferenceValue:";
  }

  valueCopy = value;
  nameCopy = name;
  v20 = [PSSpecifier preferenceSpecifierNamed:named target:target set:setCopy get:getCopy detail:detail cell:cell edit:0];
  [v20 setObject:nameCopy forKeyedSubscript:PSKeyNameKey];

  [v20 setObject:valueCopy forKeyedSubscript:PSDefaultValueKey];
  [v20 setObject:@"com.apple.iBooks" forKeyedSubscript:PSDefaultsKey];
  v21 = PSContainerBundleIDKey;
  [v20 setObject:@"com.apple.iBooks" forKeyedSubscript:PSContainerBundleIDKey];
  if (container)
  {
    [v20 setObject:@"group.com.apple.iBooks" forKeyedSubscript:PSAppGroupBundleIDKey];
    [v20 setObject:@"group.com.apple.iBooks" forKeyedSubscript:v21];
  }

  return v20;
}

+ (id)subtitleSwitchSpecifierNamed:(id)named target:(id)target keyName:(id)name defaultValue:(id)value
{
  LOBYTE(v8) = 0;
  v6 = [self standardPreferenceSpecifierNamed:named target:target cell:6 detail:0 keyName:name defaultValue:value syncToWatch:v8];
  [v6 setObject:objc_opt_class() forKeyedSubscript:PSCellClassKey];

  return v6;
}

+ (id)standardButtonSpecifierNamed:(id)named target:(id)target selector:(SEL)selector
{
  v6 = [PSSpecifier preferenceSpecifierNamed:named target:target set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:13 edit:0];
  [v6 setButtonAction:selector];

  return v6;
}

+ (id)linkListPreferenceSpecifierNamed:(id)named target:(id)target keyName:(id)name defaultValue:(id)value titles:(id)titles values:(id)values syncToWatch:(BOOL)watch
{
  valuesCopy = values;
  titlesCopy = titles;
  valueCopy = value;
  nameCopy = name;
  targetCopy = target;
  namedCopy = named;
  LOBYTE(v23) = watch;
  v21 = [self standardPreferenceSpecifierNamed:namedCopy target:targetCopy cell:2 detail:objc_opt_class() keyName:nameCopy defaultValue:valueCopy syncToWatch:v23];

  [v21 setValues:valuesCopy titles:titlesCopy];

  return v21;
}

+ (id)linkListPreferenceSpecifierNamed:(id)named target:(id)target keyName:(id)name defaultValue:(id)value titles:(id)titles values:(id)values readFromAppGroupContainer:(BOOL)container
{
  valuesCopy = values;
  titlesCopy = titles;
  valueCopy = value;
  nameCopy = name;
  targetCopy = target;
  namedCopy = named;
  LOWORD(v23) = container;
  v21 = [self standardPreferenceSpecifierNamed:namedCopy target:targetCopy cell:2 detail:objc_opt_class() keyName:nameCopy defaultValue:valueCopy readFromAppGroupContainer:v23 syncToWatch:?];

  [v21 setValues:valuesCopy titles:titlesCopy];

  return v21;
}

@end