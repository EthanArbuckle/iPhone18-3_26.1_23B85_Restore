@interface MusicSettingsOptimizeStorageController
+ (id)_minimumStorageOption;
+ (id)_supportedStorageOptions;
+ (id)optimizeStorageStateDescription;
+ (void)_setMinimumStorageOption:(id)option;
- (MusicSettingsOptimizeStorageController)init;
- (id)minimumStorageGroupFooterText;
- (id)minimumStorageTierDescriptionForSpecifier:(id)specifier;
- (id)minimumStorageTierEnabledForSpecifier:(id)specifier;
- (id)minimumStorageTierIconImageForSpecifier:(id)specifier;
- (id)minimumStorageTierLabelForSpecifier:(id)specifier;
- (id)optimizeStorageGroupFooterText;
- (id)spacerImage;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)setPreferenceValue:(id)value specifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation MusicSettingsOptimizeStorageController

+ (id)optimizeStorageStateDescription
{
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"OptimizeStorage", @"com.apple.Music", 0);
  _minimumStorageOption = [self _minimumStorageOption];
  v5 = _minimumStorageOption;
  if (AppBooleanValue)
  {
    if (!_minimumStorageOption)
    {
      v5 = [NSBundle bundleForClass:objc_opt_class()];
      v10 = [v5 localizedStringForKey:@"ON" value:&stru_25A88 table:@"MusicSettingsOptimizeStorage"];
      goto LABEL_12;
    }

    _supportedStorageOptions = [self _supportedStorageOptions];
    if (([_supportedStorageOptions containsObject:v5] & 1) == 0)
    {
      longLongValue = [v5 longLongValue];
      lastObject = [_supportedStorageOptions lastObject];
      longLongValue2 = [lastObject longLongValue];

      if (longLongValue <= longLongValue2)
      {
        [_supportedStorageOptions firstObject];
      }

      else
      {
        [_supportedStorageOptions lastObject];
      }
      v11 = ;

      [self _setMinimumStorageOption:v11];
      v5 = v11;
    }

    v12 = objc_alloc_init(NSByteCountFormatter);
    [v12 setCountStyle:3];
    [v12 setAllowedUnits:8];
    v10 = [v12 stringFromByteCount:{objc_msgSend(v5, "unsignedLongLongValue") << 30}];
  }

  else
  {
    _supportedStorageOptions = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [_supportedStorageOptions localizedStringForKey:@"OFF" value:&stru_25A88 table:@"MusicSettingsOptimizeStorage"];
  }

LABEL_12:

  return v10;
}

- (MusicSettingsOptimizeStorageController)init
{
  v20.receiver = self;
  v20.super_class = MusicSettingsOptimizeStorageController;
  v2 = [(MusicSettingsOptimizeStorageController *)&v20 init];
  if (v2)
  {
    v3 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleBody scale:2];
    v4 = [UIImageSymbolConfiguration configurationWithWeight:6];
    v5 = [v3 configurationByApplyingConfiguration:v4];

    v6 = [UIImage systemImageNamed:@"checkmark"];
    v7 = [v6 imageByApplyingSymbolConfiguration:v5];
    checkmarkImage = v2->_checkmarkImage;
    v2->_checkmarkImage = v7;

    v9 = objc_alloc_init(NSByteCountFormatter);
    formatter = v2->_formatter;
    v2->_formatter = v9;

    [(NSByteCountFormatter *)v2->_formatter setCountStyle:3];
    [(NSByteCountFormatter *)v2->_formatter setAllowedUnits:8];
    _supportedStorageOptions = [objc_opt_class() _supportedStorageOptions];
    v12 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [_supportedStorageOptions count]);
    [v12 setObject:&__NSDictionary0__struct forKeyedSubscript:@"com.apple.Music:MinimumStorageTier0"];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_582C;
    v18[3] = &unk_24F48;
    v13 = v12;
    v19 = v13;
    [_supportedStorageOptions enumerateObjectsUsingBlock:v18];
    storageTierSpecifierID = v2->_storageTierSpecifierID;
    v2->_storageTierSpecifierID = v13;
    v15 = v13;

    v16 = [(MusicSettingsOptimizeStorageController *)v2 loadSpecifiersFromPlistName:@"MusicSettingsOptimizeStorage" target:v2];
    [(MusicSettingsOptimizeStorageController *)v2 setAllSpecifiers:v16];
  }

  return v2;
}

- (void)setPreferenceValue:(id)value specifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = MusicSettingsOptimizeStorageController;
  [(MusicSettingsOptimizeStorageController *)&v7 setPreferenceValue:value specifier:specifier];
  WeakRetained = objc_loadWeakRetained(&self->MusicSettingsListViewController_opaque[OBJC_IVAR___PSViewController__parentController]);
  specifier = [(MusicSettingsOptimizeStorageController *)self specifier];
  [WeakRetained reloadSpecifier:specifier];
}

- (id)minimumStorageTierLabelForSpecifier:(id)specifier
{
  storageTierSpecifierID = self->_storageTierSpecifierID;
  identifier = [specifier identifier];
  v6 = [(NSDictionary *)storageTierSpecifierID objectForKeyedSubscript:identifier];
  v7 = [v6 objectForKeyedSubscript:@"capacity"];

  v8 = -[NSByteCountFormatter stringFromByteCount:](self->_formatter, "stringFromByteCount:", [v7 unsignedLongLongValue] << 30);

  return v8;
}

- (id)minimumStorageTierEnabledForSpecifier:(id)specifier
{
  storageTierSpecifierID = self->_storageTierSpecifierID;
  identifier = [specifier identifier];
  v5 = [(NSDictionary *)storageTierSpecifierID objectForKeyedSubscript:identifier];
  if (v5)
  {
    v6 = &__kCFBooleanTrue;
  }

  else
  {
    v6 = &__kCFBooleanFalse;
  }

  v7 = v6;

  return v6;
}

- (id)minimumStorageTierIconImageForSpecifier:(id)specifier
{
  storageTierSpecifierID = self->_storageTierSpecifierID;
  identifier = [specifier identifier];
  v6 = [(NSDictionary *)storageTierSpecifierID objectForKeyedSubscript:identifier];
  v7 = [v6 objectForKeyedSubscript:@"capacity"];

  _minimumStorageOption = [objc_opt_class() _minimumStorageOption];
  if (v7 | _minimumStorageOption && ![v7 isEqual:_minimumStorageOption])
  {
    spacerImage = [(MusicSettingsOptimizeStorageController *)self spacerImage];
  }

  else
  {
    spacerImage = self->_checkmarkImage;
  }

  v10 = spacerImage;

  return v10;
}

- (id)spacerImage
{
  spacerImage = self->_spacerImage;
  if (!spacerImage)
  {
    v4 = [[UIGraphicsImageRenderer alloc] initWithSize:{24.0, 1.0}];
    v5 = [v4 imageWithActions:&stru_24F88];
    v6 = self->_spacerImage;
    self->_spacerImage = v5;

    spacerImage = self->_spacerImage;
  }

  return spacerImage;
}

- (id)minimumStorageGroupFooterText
{
  _minimumStorageOption = [objc_opt_class() _minimumStorageOption];
  if (_minimumStorageOption)
  {
    v4 = MGGetSInt32Answer();
    v5 = @"MINIMUM_STORAGE_SUMMARY_FORMAT_IPHONE";
    if (v4 == 2)
    {
      v5 = @"MINIMUM_STORAGE_SUMMARY_FORMAT_IPOD";
    }

    if (v4 == 3)
    {
      v5 = @"MINIMUM_STORAGE_SUMMARY_FORMAT_IPAD";
    }

    if (v4 == 11)
    {
      v6 = @"MINIMUM_STORAGE_SUMMARY_FORMAT_VISION";
    }

    else
    {
      v6 = v5;
    }

    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:v6 value:&stru_25A88 table:@"MusicSettingsOptimizeStorage"];
    v9 = -[NSByteCountFormatter stringFromByteCount:](self->_formatter, "stringFromByteCount:", [_minimumStorageOption unsignedLongLongValue] << 30);
    v10 = [NSString stringWithFormat:v8, v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)optimizeStorageGroupFooterText
{
  v2 = MGGetSInt32Answer();
  v3 = @"OPTIMIZE_STORAGE_MESSAGE_IPHONE";
  if (v2 == 2)
  {
    v3 = @"OPTIMIZE_STORAGE_MESSAGE_IPOD";
  }

  if (v2 == 3)
  {
    v3 = @"OPTIMIZE_STORAGE_MESSAGE_IPAD";
  }

  if (v2 == 11)
  {
    v4 = @"OPTIMIZE_STORAGE_MESSAGE_VISION";
  }

  else
  {
    v4 = v3;
  }

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:v4 value:&stru_25A88 table:@"MusicSettingsOptimizeStorage"];

  return v6;
}

- (id)minimumStorageTierDescriptionForSpecifier:(id)specifier
{
  storageTierSpecifierID = self->_storageTierSpecifierID;
  identifier = [specifier identifier];
  v5 = [(NSDictionary *)storageTierSpecifierID objectForKeyedSubscript:identifier];
  v6 = [v5 objectForKeyedSubscript:@"capacity"];

  if (v6)
  {
    v7 = 200 * [v6 intValue];
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"MINIMUM_STORAGE_DESCRIPTION_FORMAT" value:&stru_25A88 table:@"MusicSettingsOptimizeStorage"];
    v10 = [NSString localizedStringWithFormat:v9, v7];
  }

  else
  {
    v10 = &stru_25A88;
  }

  return v10;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v13.receiver = self;
  v13.super_class = MusicSettingsOptimizeStorageController;
  pathCopy = path;
  v7 = [(MusicSettingsOptimizeStorageController *)&v13 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(MusicSettingsOptimizeStorageController *)self specifierAtIndexPath:pathCopy, v13.receiver, v13.super_class];

  storageTierSpecifierID = self->_storageTierSpecifierID;
  identifier = [v8 identifier];
  v11 = [(NSDictionary *)storageTierSpecifierID objectForKey:identifier];

  if (v11)
  {
    [v7 setSelectionStyle:1];
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v21.receiver = self;
  v21.super_class = MusicSettingsOptimizeStorageController;
  [(MusicSettingsOptimizeStorageController *)&v21 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = [(MusicSettingsOptimizeStorageController *)self specifierAtIndexPath:pathCopy];
  storageTierSpecifierID = self->_storageTierSpecifierID;
  identifier = [v8 identifier];
  v11 = [(NSDictionary *)storageTierSpecifierID objectForKey:identifier];

  if (v11)
  {
    v12 = self->_storageTierSpecifierID;
    identifier2 = [v8 identifier];
    v14 = [(NSDictionary *)v12 objectForKeyedSubscript:identifier2];
    v15 = [v14 objectForKeyedSubscript:@"capacity"];

    [objc_opt_class() _setMinimumStorageOption:v15];
    WeakRetained = objc_loadWeakRetained(&self->MusicSettingsListViewController_opaque[OBJC_IVAR___PSViewController__parentController]);
    specifier = [(MusicSettingsOptimizeStorageController *)self specifier];
    [WeakRetained reloadSpecifier:specifier];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_64A4;
    v18[3] = &unk_24EA8;
    v18[4] = self;
    v19 = viewCopy;
    v20 = pathCopy;
    [UIView performWithoutAnimation:v18];
  }
}

+ (id)_minimumStorageOption
{
  v2 = CFPreferencesCopyAppValue(@"MinimumStorageOption", @"com.apple.Music");

  return v2;
}

+ (void)_setMinimumStorageOption:(id)option
{
  optionCopy = option;
  CFPreferencesSetAppValue(@"MinimumStorageOption", optionCopy, @"com.apple.Music");
  unsignedLongLongValue = [optionCopy unsignedLongLongValue];

  CFPreferencesSetAppValue(@"MinimumStorageSize", [NSNumber numberWithUnsignedLongLong:unsignedLongLongValue << 30], @"com.apple.Music");

  CFPreferencesAppSynchronize(@"com.apple.Music");
}

+ (id)_supportedStorageOptions
{
  v3 = MGCopyAnswer();
  v4 = [v3 objectForKey:kMGQDiskUsageTotalDataCapacity];
  v5 = v4;
  if (v4)
  {
    v6 = log2(([v4 longLongValue] >> 30));
    LODWORD(v2) = llround(exp2(floor(v6)));
    v7 = [NSMutableArray arrayWithCapacity:6];
    if (v2 >= 1)
    {
      do
      {
        if ([v7 count] > 5)
        {
          break;
        }

        v8 = [NSNumber numberWithInteger:v2];
        [v7 insertObject:v8 atIndex:0];

        v9 = v2 > 1;
        v2 >>= 1;
      }

      while (v9);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end