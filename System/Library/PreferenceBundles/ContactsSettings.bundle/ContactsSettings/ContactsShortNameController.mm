@interface ContactsShortNameController
- (id)preferNicknames;
- (id)shortNameEnabled;
- (id)shortNameFormat;
- (id)specifiers;
- (void)provideSettingsNavigationDonation;
- (void)setPreferNicknames:(id)nicknames;
- (void)setShortNameEnabled:(id)enabled;
- (void)setShortNameFormat:(id)format;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation ContactsShortNameController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = ContactsShortNameController;
  [(ContactsShortNameController *)&v5 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Short Name" value:&stru_14F18 table:@"Contacts"];
  [(ContactsShortNameController *)self setTitle:v4];
}

- (void)setShortNameEnabled:(id)enabled
{
  bOOLValue = [enabled BOOLValue];
  ABPersonSetShortNameFormatEnabled();
  shortNameFormatsSpecifiers = self->_shortNameFormatsSpecifiers;
  if (bOOLValue)
  {
    shortNameEnabledSpecifier = self->_shortNameEnabledSpecifier;

    [(ContactsShortNameController *)self insertContiguousSpecifiers:shortNameFormatsSpecifiers afterSpecifier:shortNameEnabledSpecifier animated:1];
  }

  else
  {

    [(ContactsShortNameController *)self removeContiguousSpecifiers:shortNameFormatsSpecifiers animated:1, v5];
  }
}

- (id)shortNameEnabled
{
  ShortNameFormatEnabled = ABPersonGetShortNameFormatEnabled();

  return [NSNumber numberWithBool:ShortNameFormatEnabled];
}

- (void)setShortNameFormat:(id)format
{
  intValue = [format intValue];

  _ABPersonSetShortNameFormat(intValue);
}

- (id)shortNameFormat
{
  ShortNameFormat = ABPersonGetShortNameFormat();

  return [NSNumber numberWithInt:ShortNameFormat];
}

- (void)setPreferNicknames:(id)nicknames
{
  bOOLValue = [nicknames BOOLValue];

  _ABPersonSetShortNamePreferNicknames(bOOLValue);
}

- (id)preferNicknames
{
  ShortNamePreferNicknames = ABPersonGetShortNamePreferNicknames();

  return [NSNumber numberWithBool:ShortNamePreferNicknames];
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v47 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"Short Name" value:&stru_14F18 table:@"Contacts"];
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:"setShortNameEnabled:" get:"shortNameEnabled" detail:0 cell:6 edit:0];
    shortNameEnabledSpecifier = self->_shortNameEnabledSpecifier;
    self->_shortNameEnabledSpecifier = v7;

    v9 = self->_shortNameEnabledSpecifier;
    v10 = [NSNumber numberWithBool:1];
    v49 = PSDefaultValueKey;
    [(PSSpecifier *)v9 setProperty:v10 forKey:?];

    v50 = v4;
    [v4 addObject:self->_shortNameEnabledSpecifier];
    v11 = [[NSMutableArray alloc] initWithCapacity:6];
    shortNameFormatsSpecifiers = self->_shortNameFormatsSpecifiers;
    self->_shortNameFormatsSpecifiers = v11;

    v13 = +[PSSpecifier emptyGroupSpecifier];
    shortNameFormatsGroup = self->_shortNameFormatsGroup;
    self->_shortNameFormatsGroup = v13;

    v15 = self->_shortNameFormatsGroup;
    v16 = [NSNumber numberWithBool:1];
    [(PSSpecifier *)v15 setProperty:v16 forKey:PSIsRadioGroupKey];

    v17 = self->_shortNameFormatsGroup;
    v18 = [NSBundle bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"SHORT_NAME_FORMAT_EXPLANATORY" value:&stru_14F18 table:@"Contacts"];
    v48 = PSFooterTextGroupKey;
    [(PSSpecifier *)v17 setProperty:v19 forKey:?];

    [(NSMutableArray *)self->_shortNameFormatsSpecifiers addObject:self->_shortNameFormatsGroup];
    v20 = [NSBundle bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"SHORT_NAME_FORMAT_INITIAL_LAST" value:&stru_14F18 table:@"Contacts"];
    v22 = [PSSpecifier preferenceSpecifierNamed:v21 target:self set:0 get:0 detail:0 cell:3 edit:0];

    v23 = [NSNumber numberWithInt:0];
    [v22 setUserInfo:v23];

    if (!ABPersonGetShortNameFormat())
    {
      [(PSSpecifier *)self->_shortNameFormatsGroup setProperty:v22 forKey:PSRadioGroupCheckedSpecifierKey];
    }

    [(NSMutableArray *)self->_shortNameFormatsSpecifiers addObject:v22];
    v24 = [NSBundle bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"SHORT_NAME_FORMAT_INITIAL_FIRST" value:&stru_14F18 table:@"Contacts"];
    v26 = [PSSpecifier preferenceSpecifierNamed:v25 target:self set:0 get:0 detail:0 cell:3 edit:0];

    v27 = [NSNumber numberWithInt:1];
    [v26 setUserInfo:v27];

    if (ABPersonGetShortNameFormat() == 1)
    {
      [(PSSpecifier *)self->_shortNameFormatsGroup setProperty:v26 forKey:PSRadioGroupCheckedSpecifierKey];
    }

    [(NSMutableArray *)self->_shortNameFormatsSpecifiers addObject:v26];
    v28 = [NSBundle bundleForClass:objc_opt_class()];
    v29 = [v28 localizedStringForKey:@"SHORT_NAME_FORMAT_FIRST_ONLY" value:&stru_14F18 table:@"Contacts"];
    v30 = [PSSpecifier preferenceSpecifierNamed:v29 target:self set:0 get:0 detail:0 cell:3 edit:0];

    v31 = [NSNumber numberWithInt:2];
    [v30 setUserInfo:v31];

    if (ABPersonGetShortNameFormat() == 2)
    {
      [(PSSpecifier *)self->_shortNameFormatsGroup setProperty:v30 forKey:PSRadioGroupCheckedSpecifierKey];
    }

    [(NSMutableArray *)self->_shortNameFormatsSpecifiers addObject:v30];
    v32 = [NSBundle bundleForClass:objc_opt_class()];
    v33 = [v32 localizedStringForKey:@"SHORT_NAME_FORMAT_LAST_ONLY" value:&stru_14F18 table:@"Contacts"];
    v34 = [PSSpecifier preferenceSpecifierNamed:v33 target:self set:0 get:0 detail:0 cell:3 edit:0];

    v35 = [NSNumber numberWithInt:3];
    [v34 setUserInfo:v35];

    if (ABPersonGetShortNameFormat() == 3)
    {
      [(PSSpecifier *)self->_shortNameFormatsGroup setProperty:v34 forKey:PSRadioGroupCheckedSpecifierKey];
    }

    [(NSMutableArray *)self->_shortNameFormatsSpecifiers addObject:v34];
    shortNameEnabled = [(ContactsShortNameController *)self shortNameEnabled];
    bOOLValue = [shortNameEnabled BOOLValue];

    if (bOOLValue)
    {
      [v50 addObjectsFromArray:self->_shortNameFormatsSpecifiers];
    }

    v38 = +[PSSpecifier emptyGroupSpecifier];

    v39 = [NSBundle bundleForClass:objc_opt_class()];
    v40 = [v39 localizedStringForKey:@"PREFER_NICKNAMES_EXPLANTORY" value:&stru_14F18 table:@"Contacts"];
    [v38 setProperty:v40 forKey:v48];

    [v50 addObject:v38];
    v41 = [NSBundle bundleForClass:objc_opt_class()];
    v42 = [v41 localizedStringForKey:@"Prefer Nicknames" value:&stru_14F18 table:@"Contacts"];
    v43 = [PSSpecifier preferenceSpecifierNamed:v42 target:self set:"setPreferNicknames:" get:"preferNicknames" detail:0 cell:6 edit:0];

    v44 = [NSNumber numberWithBool:1];
    [v43 setProperty:v44 forKey:v49];

    [v50 addObject:v43];
    v45 = *&self->PSListController_opaque[v47];
    *&self->PSListController_opaque[v47] = v50;

    v3 = *&self->PSListController_opaque[v47];
  }

  return v3;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = ContactsShortNameController;
  [(ContactsShortNameController *)&v12 tableView:view didSelectRowAtIndexPath:pathCopy];
  section = [pathCopy section];
  v8 = [(ContactsShortNameController *)self indexPathForIndex:[(ContactsShortNameController *)self indexOfSpecifier:self->_shortNameFormatsGroup]];
  section2 = [v8 section];

  if (section == section2)
  {
    v10 = [(ContactsShortNameController *)self specifierAtIndex:[(ContactsShortNameController *)self indexForIndexPath:pathCopy]];
    userInfo = [v10 userInfo];
    [(ContactsShortNameController *)self setShortNameFormat:userInfo];

    [(PSSpecifier *)self->_shortNameFormatsGroup setProperty:v10 forKey:PSRadioGroupCheckedSpecifierKey];
  }
}

- (void)provideSettingsNavigationDonation
{
  v19 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.MobileAddressBook"];
  v3 = [_NSLocalizedStringResource alloc];
  v4 = +[NSLocale currentLocale];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v5 bundleURL];
  v7 = [v3 initWithKey:@"Short Name" table:@"Contacts" locale:v4 bundleURL:bundleURL];

  v8 = [_NSLocalizedStringResource alloc];
  v9 = +[NSLocale currentLocale];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL2 = [v10 bundleURL];
  v12 = [v8 initWithKey:@"CONTACTS" table:@"Contacts" locale:v9 bundleURL:bundleURL2];

  v13 = [_NSLocalizedStringResource alloc];
  v14 = +[NSLocale currentLocale];
  v15 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL3 = [v15 bundleURL];
  v17 = [v13 initWithKey:@"Short Name" table:@"Contacts" locale:v14 bundleURL:bundleURL3];

  v20[0] = v12;
  v20[1] = v17;
  v18 = [NSArray arrayWithObjects:v20 count:2];
  [(ContactsShortNameController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.MobileAddressBook" title:v7 localizedNavigationComponents:v18 deepLink:v19];
}

@end