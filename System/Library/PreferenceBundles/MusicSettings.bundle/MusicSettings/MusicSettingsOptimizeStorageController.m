@interface MusicSettingsOptimizeStorageController
+ (id)_minimumStorageOption;
+ (id)_supportedStorageOptions;
+ (id)optimizeStorageStateDescription;
+ (void)_setMinimumStorageOption:(id)a3;
- (MusicSettingsOptimizeStorageController)init;
- (id)minimumStorageGroupFooterText;
- (id)minimumStorageTierDescriptionForSpecifier:(id)a3;
- (id)minimumStorageTierEnabledForSpecifier:(id)a3;
- (id)minimumStorageTierIconImageForSpecifier:(id)a3;
- (id)minimumStorageTierLabelForSpecifier:(id)a3;
- (id)optimizeStorageGroupFooterText;
- (id)spacerImage;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)setPreferenceValue:(id)a3 specifier:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation MusicSettingsOptimizeStorageController

+ (id)optimizeStorageStateDescription
{
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"OptimizeStorage", @"com.apple.Music", 0);
  v4 = [a1 _minimumStorageOption];
  v5 = v4;
  if (AppBooleanValue)
  {
    if (!v4)
    {
      v5 = [NSBundle bundleForClass:objc_opt_class()];
      v10 = [v5 localizedStringForKey:@"ON" value:&stru_25A88 table:@"MusicSettingsOptimizeStorage"];
      goto LABEL_12;
    }

    v6 = [a1 _supportedStorageOptions];
    if (([v6 containsObject:v5] & 1) == 0)
    {
      v7 = [v5 longLongValue];
      v8 = [v6 lastObject];
      v9 = [v8 longLongValue];

      if (v7 <= v9)
      {
        [v6 firstObject];
      }

      else
      {
        [v6 lastObject];
      }
      v11 = ;

      [a1 _setMinimumStorageOption:v11];
      v5 = v11;
    }

    v12 = objc_alloc_init(NSByteCountFormatter);
    [v12 setCountStyle:3];
    [v12 setAllowedUnits:8];
    v10 = [v12 stringFromByteCount:{objc_msgSend(v5, "unsignedLongLongValue") << 30}];
  }

  else
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v6 localizedStringForKey:@"OFF" value:&stru_25A88 table:@"MusicSettingsOptimizeStorage"];
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
    v11 = [objc_opt_class() _supportedStorageOptions];
    v12 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v11 count]);
    [v12 setObject:&__NSDictionary0__struct forKeyedSubscript:@"com.apple.Music:MinimumStorageTier0"];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_582C;
    v18[3] = &unk_24F48;
    v13 = v12;
    v19 = v13;
    [v11 enumerateObjectsUsingBlock:v18];
    storageTierSpecifierID = v2->_storageTierSpecifierID;
    v2->_storageTierSpecifierID = v13;
    v15 = v13;

    v16 = [(MusicSettingsOptimizeStorageController *)v2 loadSpecifiersFromPlistName:@"MusicSettingsOptimizeStorage" target:v2];
    [(MusicSettingsOptimizeStorageController *)v2 setAllSpecifiers:v16];
  }

  return v2;
}

- (void)setPreferenceValue:(id)a3 specifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = MusicSettingsOptimizeStorageController;
  [(MusicSettingsOptimizeStorageController *)&v7 setPreferenceValue:a3 specifier:a4];
  WeakRetained = objc_loadWeakRetained(&self->MusicSettingsListViewController_opaque[OBJC_IVAR___PSViewController__parentController]);
  v6 = [(MusicSettingsOptimizeStorageController *)self specifier];
  [WeakRetained reloadSpecifier:v6];
}

- (id)minimumStorageTierLabelForSpecifier:(id)a3
{
  storageTierSpecifierID = self->_storageTierSpecifierID;
  v5 = [a3 identifier];
  v6 = [(NSDictionary *)storageTierSpecifierID objectForKeyedSubscript:v5];
  v7 = [v6 objectForKeyedSubscript:@"capacity"];

  v8 = -[NSByteCountFormatter stringFromByteCount:](self->_formatter, "stringFromByteCount:", [v7 unsignedLongLongValue] << 30);

  return v8;
}

- (id)minimumStorageTierEnabledForSpecifier:(id)a3
{
  storageTierSpecifierID = self->_storageTierSpecifierID;
  v4 = [a3 identifier];
  v5 = [(NSDictionary *)storageTierSpecifierID objectForKeyedSubscript:v4];
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

- (id)minimumStorageTierIconImageForSpecifier:(id)a3
{
  storageTierSpecifierID = self->_storageTierSpecifierID;
  v5 = [a3 identifier];
  v6 = [(NSDictionary *)storageTierSpecifierID objectForKeyedSubscript:v5];
  v7 = [v6 objectForKeyedSubscript:@"capacity"];

  v8 = [objc_opt_class() _minimumStorageOption];
  if (v7 | v8 && ![v7 isEqual:v8])
  {
    v9 = [(MusicSettingsOptimizeStorageController *)self spacerImage];
  }

  else
  {
    v9 = self->_checkmarkImage;
  }

  v10 = v9;

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
  v3 = [objc_opt_class() _minimumStorageOption];
  if (v3)
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
    v9 = -[NSByteCountFormatter stringFromByteCount:](self->_formatter, "stringFromByteCount:", [v3 unsignedLongLongValue] << 30);
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

- (id)minimumStorageTierDescriptionForSpecifier:(id)a3
{
  storageTierSpecifierID = self->_storageTierSpecifierID;
  v4 = [a3 identifier];
  v5 = [(NSDictionary *)storageTierSpecifierID objectForKeyedSubscript:v4];
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v13.receiver = self;
  v13.super_class = MusicSettingsOptimizeStorageController;
  v6 = a4;
  v7 = [(MusicSettingsOptimizeStorageController *)&v13 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(MusicSettingsOptimizeStorageController *)self specifierAtIndexPath:v6, v13.receiver, v13.super_class];

  storageTierSpecifierID = self->_storageTierSpecifierID;
  v10 = [v8 identifier];
  v11 = [(NSDictionary *)storageTierSpecifierID objectForKey:v10];

  if (v11)
  {
    [v7 setSelectionStyle:1];
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = MusicSettingsOptimizeStorageController;
  [(MusicSettingsOptimizeStorageController *)&v21 tableView:v6 didSelectRowAtIndexPath:v7];
  v8 = [(MusicSettingsOptimizeStorageController *)self specifierAtIndexPath:v7];
  storageTierSpecifierID = self->_storageTierSpecifierID;
  v10 = [v8 identifier];
  v11 = [(NSDictionary *)storageTierSpecifierID objectForKey:v10];

  if (v11)
  {
    v12 = self->_storageTierSpecifierID;
    v13 = [v8 identifier];
    v14 = [(NSDictionary *)v12 objectForKeyedSubscript:v13];
    v15 = [v14 objectForKeyedSubscript:@"capacity"];

    [objc_opt_class() _setMinimumStorageOption:v15];
    WeakRetained = objc_loadWeakRetained(&self->MusicSettingsListViewController_opaque[OBJC_IVAR___PSViewController__parentController]);
    v17 = [(MusicSettingsOptimizeStorageController *)self specifier];
    [WeakRetained reloadSpecifier:v17];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_64A4;
    v18[3] = &unk_24EA8;
    v18[4] = self;
    v19 = v6;
    v20 = v7;
    [UIView performWithoutAnimation:v18];
  }
}

+ (id)_minimumStorageOption
{
  v2 = CFPreferencesCopyAppValue(@"MinimumStorageOption", @"com.apple.Music");

  return v2;
}

+ (void)_setMinimumStorageOption:(id)a3
{
  v3 = a3;
  CFPreferencesSetAppValue(@"MinimumStorageOption", v3, @"com.apple.Music");
  v4 = [v3 unsignedLongLongValue];

  CFPreferencesSetAppValue(@"MinimumStorageSize", [NSNumber numberWithUnsignedLongLong:v4 << 30], @"com.apple.Music");

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