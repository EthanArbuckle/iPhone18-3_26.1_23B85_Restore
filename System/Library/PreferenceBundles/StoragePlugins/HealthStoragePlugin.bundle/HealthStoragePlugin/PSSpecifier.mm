@interface PSSpecifier
+ (id)_hkGroupSpecifier:(id)specifier;
+ (id)_hkGroupSpecifier:(id)specifier footer:(id)footer;
+ (id)_hkGroupSpecifier:(id)specifier footerText:(id)text linkText:(id)linkText actionURL:(id)l;
+ (id)_hkPreferenceNamed:(id)named value:(id)value;
- (id)_hkSpecifierValue:(id)value;
@end

@implementation PSSpecifier

+ (id)_hkPreferenceNamed:(id)named value:(id)value
{
  valueCopy = value;
  v6 = [PSSpecifier preferenceSpecifierNamed:named target:0 set:0 get:"_hkSpecifierValue:" detail:0 cell:4 edit:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v6 setTarget:v6];
    [v6 setProperty:valueCopy forKey:PSValueKey];
  }

  return v6;
}

- (id)_hkSpecifierValue:(id)value
{
  v3 = [value propertyForKey:PSValueKey];
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

+ (id)_hkGroupSpecifier:(id)specifier
{
  v3 = [PSSpecifier groupSpecifierWithName:specifier];
  [v3 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];

  return v3;
}

+ (id)_hkGroupSpecifier:(id)specifier footer:(id)footer
{
  footerCopy = footer;
  v6 = [PSSpecifier groupSpecifierWithName:specifier];
  [v6 setProperty:footerCopy forKey:PSFooterTextGroupKey];

  [v6 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];

  return v6;
}

+ (id)_hkGroupSpecifier:(id)specifier footerText:(id)text linkText:(id)linkText actionURL:(id)l
{
  lCopy = l;
  linkTextCopy = linkText;
  specifierCopy = specifier;
  linkTextCopy = [NSString stringWithFormat:@"%@ %@", text, linkTextCopy];
  v13 = [PSSpecifier groupSpecifierWithName:specifierCopy];

  [v13 setProperty:linkTextCopy forKey:PSFooterTextGroupKey];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [v13 setProperty:v15 forKey:PSFooterCellClassGroupKey];

  [v13 setProperty:linkTextCopy forKey:PSFooterHyperlinkViewTitleKey];
  v16 = [linkTextCopy rangeOfString:linkTextCopy];
  v18 = v17;

  v22.location = v16;
  v22.length = v18;
  v19 = NSStringFromRange(v22);
  [v13 setProperty:v19 forKey:PSFooterHyperlinkViewLinkRangeKey];

  [v13 setProperty:lCopy forKey:PSFooterHyperlinkViewURLKey];

  return v13;
}

@end