@interface COSBuiltinAppsPane
- (id)markupString;
- (id)title;
@end

@implementation COSBuiltinAppsPane

- (id)title
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"BUILTIN_APPS" value:&stru_10026E598 table:@"Legal"];

  return v3;
}

- (id)markupString
{
  WeakRetained = objc_loadWeakRetained(&qword_1002BD2D0);
  builtinAppsMarkup = [WeakRetained builtinAppsMarkup];

  return builtinAppsMarkup;
}

@end