@interface PSSpecifier
+ (id)_hkGroupSpecifier:(id)a3;
+ (id)_hkGroupSpecifier:(id)a3 footer:(id)a4;
+ (id)_hkGroupSpecifier:(id)a3 footerText:(id)a4 linkText:(id)a5 actionURL:(id)a6;
+ (id)_hkPreferenceNamed:(id)a3 value:(id)a4;
- (id)_hkSpecifierValue:(id)a3;
@end

@implementation PSSpecifier

+ (id)_hkPreferenceNamed:(id)a3 value:(id)a4
{
  v5 = a4;
  v6 = [PSSpecifier preferenceSpecifierNamed:a3 target:0 set:0 get:"_hkSpecifierValue:" detail:0 cell:4 edit:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v6 setTarget:v6];
    [v6 setProperty:v5 forKey:PSValueKey];
  }

  return v6;
}

- (id)_hkSpecifierValue:(id)a3
{
  v3 = [a3 propertyForKey:PSValueKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = +[NSByteCountFormatter stringFromByteCount:countStyle:](NSByteCountFormatter, "stringFromByteCount:countStyle:", [v3 longLongValue], 0);
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    goto LABEL_5;
  }

  v5 = &stru_8778;
LABEL_7:

  return v5;
}

+ (id)_hkGroupSpecifier:(id)a3
{
  v3 = [PSSpecifier groupSpecifierWithName:a3];
  [v3 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];

  return v3;
}

+ (id)_hkGroupSpecifier:(id)a3 footer:(id)a4
{
  v5 = a4;
  v6 = [PSSpecifier groupSpecifierWithName:a3];
  [v6 setProperty:v5 forKey:PSFooterTextGroupKey];

  [v6 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];

  return v6;
}

+ (id)_hkGroupSpecifier:(id)a3 footerText:(id)a4 linkText:(id)a5 actionURL:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = [NSString stringWithFormat:@"%@ %@", a4, v10];
  v13 = [PSSpecifier groupSpecifierWithName:v11];

  [v13 setProperty:v12 forKey:PSFooterTextGroupKey];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [v13 setProperty:v15 forKey:PSFooterCellClassGroupKey];

  [v13 setProperty:v12 forKey:PSFooterHyperlinkViewTitleKey];
  v16 = [v12 rangeOfString:v10];
  v18 = v17;

  v22.location = v16;
  v22.length = v18;
  v19 = NSStringFromRange(v22);
  [v13 setProperty:v19 forKey:PSFooterHyperlinkViewLinkRangeKey];

  [v13 setProperty:v9 forKey:PSFooterHyperlinkViewURLKey];

  return v13;
}

@end