@interface QuoteSettingsPane
- (id)indentQuoteLevel:(id)level;
- (id)specifiers;
- (void)setIndentQuoteLevel:(id)level withSpecifier:(id)specifier;
@end

@implementation QuoteSettingsPane

- (void)setIndentQuoteLevel:(id)level withSpecifier:(id)specifier
{
  levelCopy = level;
  bOOLValue = [levelCopy BOOLValue];
  v6 = +[NSUserDefaults em_userDefaults];
  [v6 setBool:bOOLValue ^ 1 forKey:@"DisableQuoteIncrease"];

  parentController = [(QuoteSettingsPane *)self parentController];
  [parentController reloadSpecifier:*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier]];
}

- (id)indentQuoteLevel:(id)level
{
  v3 = +[NSUserDefaults em_userDefaults];
  v4 = [v3 valueForKey:@"DisableQuoteIncrease"];

  LODWORD(v3) = [v4 BOOLValue];
  v5 = [NSNumber numberWithBool:v3 ^ 1];

  return v5;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = [PSSpecifier groupSpecifierWithName:0];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"QUOTE_SETTING_EXPLANATION" value:&stru_3D2B0 table:@"Preferences"];
    [v6 setProperty:v8 forKey:PSFooterTextGroupKey];

    [v5 addObject:v6];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"INCREASE_QUOTE_LEVEL" value:&stru_3D2B0 table:@"Preferences"];
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:"setIndentQuoteLevel:withSpecifier:" get:"indentQuoteLevel:" detail:0 cell:6 edit:0];

    [v5 addObject:v11];
    v12 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v5;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

@end