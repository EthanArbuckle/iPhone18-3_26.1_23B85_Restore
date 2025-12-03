@interface REMSettingsUtilities
+ (id)groupSpecifierWithHeader:(id)header footer:(id)footer;
+ (id)linkListPreferenceSpecifierNamed:(id)named target:(id)target keyName:(id)name defaultValue:(id)value scope:(unint64_t)scope titles:(id)titles values:(id)values;
+ (id)radioGroupSpecifierWithHeader:(id)header footer:(id)footer keyName:(id)name scope:(unint64_t)scope;
+ (id)standardButtonSpecifierNamed:(id)named target:(id)target selector:(SEL)selector;
+ (id)standardPreferenceSpecifierNamed:(id)named target:(id)target cell:(int64_t)cell detail:(Class)detail keyName:(id)name defaultValue:(id)value scope:(unint64_t)scope set:(SEL)self0 get:(SEL)self1;
+ (void)_applyKey:(id)key scope:(unint64_t)scope toSpecifier:(id)specifier;
@end

@implementation REMSettingsUtilities

+ (id)groupSpecifierWithHeader:(id)header footer:(id)footer
{
  footerCopy = footer;
  v6 = [PSSpecifier groupSpecifierWithName:header];
  v7 = v6;
  if (footerCopy)
  {
    [v6 setProperty:footerCopy forKey:PSFooterTextGroupKey];
  }

  return v7;
}

+ (id)radioGroupSpecifierWithHeader:(id)header footer:(id)footer keyName:(id)name scope:(unint64_t)scope
{
  footerCopy = footer;
  nameCopy = name;
  v12 = [PSSpecifier groupSpecifierWithName:header];
  v13 = v12;
  if (footerCopy)
  {
    [v12 setProperty:footerCopy forKey:PSFooterTextGroupKey];
  }

  [v13 setObject:&__kCFBooleanTrue forKeyedSubscript:PSIsRadioGroupKey];
  [self _applyKey:nameCopy scope:scope toSpecifier:v13];

  return v13;
}

+ (id)standardPreferenceSpecifierNamed:(id)named target:(id)target cell:(int64_t)cell detail:(Class)detail keyName:(id)name defaultValue:(id)value scope:(unint64_t)scope set:(SEL)self0 get:(SEL)self1
{
  setCopy = set;
  valueCopy = value;
  if (!set)
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

  nameCopy = name;
  v20 = [PSSpecifier preferenceSpecifierNamed:named target:target set:setCopy get:getCopy detail:detail cell:cell edit:detail];
  v21 = v20;
  if (valueCopy)
  {
    [v20 setObject:valueCopy forKeyedSubscript:PSDefaultValueKey];
  }

  [v21 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  [self _applyKey:nameCopy scope:scope toSpecifier:v21];

  return v21;
}

+ (id)standardButtonSpecifierNamed:(id)named target:(id)target selector:(SEL)selector
{
  v6 = [PSSpecifier preferenceSpecifierNamed:named target:target set:0 get:0 detail:0 cell:13 edit:0];
  [v6 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  [v6 setButtonAction:selector];

  return v6;
}

+ (id)linkListPreferenceSpecifierNamed:(id)named target:(id)target keyName:(id)name defaultValue:(id)value scope:(unint64_t)scope titles:(id)titles values:(id)values
{
  valuesCopy = values;
  titlesCopy = titles;
  valueCopy = value;
  nameCopy = name;
  targetCopy = target;
  namedCopy = named;
  v22 = [self standardPreferenceSpecifierNamed:namedCopy target:targetCopy cell:2 detail:objc_opt_class() keyName:nameCopy defaultValue:valueCopy scope:scope];

  [v22 setValues:valuesCopy titles:titlesCopy];

  return v22;
}

+ (void)_applyKey:(id)key scope:(unint64_t)scope toSpecifier:(id)specifier
{
  specifierCopy = specifier;
  [specifierCopy setObject:key forKeyedSubscript:PSKeyNameKey];
  if (!scope)
  {
    v9 = &REMDaemonBundleIdentifier;
LABEL_7:
    v10 = *v9;
    v11 = &PSDefaultsKey;
    goto LABEL_8;
  }

  if (scope != 1)
  {
    v7 = specifierCopy;
    if (scope != 2)
    {
      goto LABEL_9;
    }

    v8 = REMAppGroupBundleIdentifier;
    [specifierCopy setObject:REMAppGroupBundleIdentifier forKeyedSubscript:PSAppGroupBundleIDKey];
    [specifierCopy setObject:v8 forKeyedSubscript:PSContainerBundleIDKey];
    v9 = &REMAppBundleIdentifier;
    goto LABEL_7;
  }

  v10 = REMAppBundleIdentifier;
  [specifierCopy setObject:REMAppBundleIdentifier forKeyedSubscript:PSDefaultsKey];
  v11 = &PSContainerBundleIDKey;
LABEL_8:
  [specifierCopy setObject:v10 forKeyedSubscript:*v11];
  v7 = specifierCopy;
LABEL_9:
}

@end