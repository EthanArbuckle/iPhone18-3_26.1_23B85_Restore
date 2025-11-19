@interface TIDictationShortcutController
+ (id)attributedTitleForDictationShortcutValue:(int64_t)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updatePreferenceForParent;
@end

@implementation TIDictationShortcutController

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v3 = objc_alloc_init(NSMutableArray);
    v5 = [PSSpecifier groupSpecifierWithName:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"DICTATION_SHORTCUT_EXPLANATION", &stru_49C80, @"Dictation"]];
    [v5 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    [v3 addObject:v5];
    v6 = [(TIDictationShortcutController *)self specifier];
    [v6 setProperty:&off_4DA48 forKey:PSDefaultValueKey];
    v7 = [+[TIPreferencesController sharedPreferencesController](TIPreferencesController "sharedPreferencesController")];
    if (v7)
    {
      v8 = v7;
      v9 = [(TIDictationShortcutController *)self specifier];
      v10 = PSValueKey;
      [v9 setProperty:v8 forKey:PSValueKey];
    }

    else
    {
      v10 = PSValueKey;
    }

    v11 = [PSSpecifier preferenceSpecifierNamed:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"Control"] target:self set:0 get:0 detail:0 cell:3 edit:0];
    v12 = PSTitleKey;
    [v11 setProperty:@"control" forKey:PSTitleKey];
    [v11 setProperty:&off_4DA48 forKey:v10];
    [v3 addObject:v11];
    v13 = [PSSpecifier preferenceSpecifierNamed:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"Command" target:&stru_49C80 set:@"Keyboard"] get:self detail:0 cell:0 edit:0, 3, 0];
    [v13 setProperty:@"command" forKey:v12];
    [v13 setProperty:&off_4DA60 forKey:v10];
    [v3 addObject:v13];
    v14 = [PSSpecifier preferenceSpecifierNamed:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"NO_SHORTCUT" target:&stru_49C80 set:@"Keyboard"] get:self detail:0 cell:0 edit:0, 3, 0];
    [v14 setProperty:@"noshortcut" forKey:v12];
    [v14 setProperty:&off_4DA78 forKey:v10];
    [v3 addObject:v14];
    *&self->PSListController_opaque[v2] = v3;
  }

  return v3;
}

+ (id)attributedTitleForDictationShortcutValue:(int64_t)a3
{
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = @"noshortcut";
  v6 = @"NO_SHORTCUT";
  if (a3 == 1)
  {
    v6 = @"Command";
    v5 = @"command";
  }

  if (a3)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"Control";
  }

  if (a3)
  {
    v8 = v5;
  }

  else
  {
    v8 = @"control";
  }

  v9 = [(NSBundle *)v4 localizedStringForKey:v7 value:&stru_49C80 table:@"Keyboard"];

  return [TIKeyboardListController attributedTitleForSymbolName:v8 cellTitle:v9];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v14.receiver = self;
  v14.super_class = TIDictationShortcutController;
  v6 = [(TIDictationShortcutController *)&v14 tableView:a3 cellForRowAtIndexPath:?];
  v7 = [(TIDictationShortcutController *)self specifierAtIndexPath:a4];
  v8 = [v7 propertyForKey:PSTitleKey];
  if (v8)
  {
    [objc_msgSend(v6 "titleLabel")];
  }

  else
  {
    [objc_msgSend(v6 "titleLabel")];
  }

  v9 = [(TIDictationShortcutController *)self specifier];
  v10 = PSValueKey;
  v11 = [v9 propertyForKey:PSValueKey];
  if (!v11)
  {
    v12 = [(TIDictationShortcutController *)self specifier];
    v11 = [v12 propertyForKey:PSDefaultValueKey];
  }

  [v6 setChecked:{objc_msgSend(objc_msgSend(v7, "propertyForKey:", v10), "isEqualToNumber:", v11)}];
  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v7 = [(TIDictationShortcutController *)self specifierAtIndexPath:a4];
  v8 = PSValueKey;
  v9 = [v7 propertyForKey:PSValueKey];
  [-[TIDictationShortcutController specifier](self "specifier")];
  [(TIDictationShortcutController *)self setPreferenceValue:v9 specifier:[(TIDictationShortcutController *)self specifier]];
  [+[TIPreferencesController sharedPreferencesController](TIPreferencesController "sharedPreferencesController")];
  [(TIDictationShortcutController *)self reloadSpecifiers];
  [(TIDictationShortcutController *)self updatePreferenceForParent];

  [a3 deselectRowAtIndexPath:a4 animated:1];
}

- (void)updatePreferenceForParent
{
  v2 = [(TIDictationShortcutController *)self parentController];
  if (objc_opt_respondsToSelector())
  {

    [v2 setNeedsReloadSpecifiers:1];
  }
}

@end