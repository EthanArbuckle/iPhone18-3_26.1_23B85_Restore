@interface AccessoryDeveloperSettingsController
- (id)_carPlayLogsFolderURL;
- (id)_carplayLibraryURL;
- (id)_overrideAssetDestinationURLForAssetFolder:(id)a3;
- (id)airPlayCarPlayReceiverLogsForSpecifier:(id)a3;
- (id)alwaysAcceptHeadUnitPairingForSpecifier:(id)a3;
- (id)getAlwaysUpdateAssetForSpecifier:(id)a3;
- (id)getFerriteEnabledForSpecifier:(id)a3;
- (id)headUnitPairingPreviewEnabledForSpecifier:(id)a3;
- (id)specifiers;
- (void)_didSelectLogArchiveSpecifier:(id)a3;
- (void)_enumerateCurrentAccessoryLogsUsingBlock:(id)a3;
- (void)_enumerateCurrentOverrideAssetsUsingBlock:(id)a3;
- (void)dealloc;
- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)initDefaultsKeys;
- (void)presentThemePickerFromSpecifier:(id)a3;
- (void)removeAllAssetsForSpecifier:(id)a3;
- (void)resetUserAppearancePrefs:(id)a3;
- (void)setAirPlayCarPlayReceiverLogs:(id)a3 specifier:(id)a4;
- (void)setAlwaysAcceptHeadUnitPairing:(id)a3 specifier:(id)a4;
- (void)setAlwaysUpdateAsset:(id)a3 specifier:(id)a4;
- (void)setDefaultKeyIfNotPresent:(__CFString *)a3 value:(__CFString *)a4 applicationID:(__CFString *)a5;
- (void)setFerriteEnabled:(id)a3 specifier:(id)a4;
- (void)setHeadUnitPairingPreviewEnabled:(id)a3 specifier:(id)a4;
@end

@implementation AccessoryDeveloperSettingsController

- (void)_didSelectLogArchiveSpecifier:(id)a3
{
  v4 = [a3 userInfo];
  if (v4)
  {
    v5 = v4;
    -[AccessoryDeveloperSettingsController presentViewController:animated:completion:](self, "presentViewController:animated:completion:", [[UIActivityViewController alloc] initWithActivityItems:+[NSArray arrayWithObjects:count:](NSArray applicationActivities:{"arrayWithObjects:count:", &v5, 1), 0}], 1, &stru_8488);
  }
}

- (void)_enumerateCurrentAccessoryLogsUsingBlock:(id)a3
{
  v19[0] = NSURLNameKey;
  v19[1] = NSURLIsDirectoryKey;
  v4 = [+[NSFileManager defaultManager](NSFileManager enumeratorAtURL:"enumeratorAtURL:includingPropertiesForKeys:options:errorHandler:" includingPropertiesForKeys:[(AccessoryDeveloperSettingsController *)self _carPlayLogsFolderURL] options:[NSArray errorHandler:"arrayWithObjects:count:" arrayWithObjects:v19 count:2], 4, &stru_8468];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(NSDirectoryEnumerator *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v13 = 0;
        [v10 getResourceValue:&v13 forKey:NSURLIsDirectoryKey error:0];
        v12 = 0;
        [v10 getResourceValue:&v12 forKey:NSURLNameKey error:0];
        if (v12)
        {
          if ([v13 BOOLValue])
          {
            v7 = v12;
          }

          else if (v7)
          {
            v11 = [v12 isEqualToString:@"VehicleLogs.tar.gz"];
            if (a3)
            {
              if (v11)
              {
                (*(a3 + 2))(a3, v7, v10);
              }
            }
          }
        }

        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [(NSDirectoryEnumerator *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (id)_carPlayLogsFolderURL
{
  v2 = -[NSArray firstObject]([+[NSFileManager defaultManager](NSFileManager URLsForDirectory:"URLsForDirectory:inDomains:" inDomains:5, 1], "firstObject");

  return [v2 URLByAppendingPathComponent:@"Logs/com.apple.CarPlay" isDirectory:1];
}

- (void)_enumerateCurrentOverrideAssetsUsingBlock:(id)a3
{
  v4 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1104;
  v3[3] = &unk_8428;
  v3[4] = a3;
  -[NSArray enumerateObjectsUsingBlock:]([+[NSFileManager defaultManager](NSFileManager contentsOfDirectoryAtURL:"contentsOfDirectoryAtURL:includingPropertiesForKeys:options:error:" includingPropertiesForKeys:[(AccessoryDeveloperSettingsController *)self _carplayLibraryURL] options:0 error:0, &v4], "enumerateObjectsUsingBlock:", v3);
}

- (id)_overrideAssetDestinationURLForAssetFolder:(id)a3
{
  v4 = [(AccessoryDeveloperSettingsController *)self _carplayLibraryURL];
  if (!-[NSFileManager fileExistsAtPath:isDirectory:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:isDirectory:", [v4 path], 0))
  {
    v9 = 0;
    if (!-[NSFileManager createDirectoryAtPath:withIntermediateDirectories:attributes:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", [v4 path], 1, 0, &v9))
    {
      v8 = [v4 path];
      NSLog(@"failed to create %@: %@", v8, v9);
      return 0;
    }
  }

  v5 = [a3 lastPathComponent];
  if (([v5 hasSuffix:@".zip"] & 1) == 0)
  {
    NSLog(@"invalid asset filename, not a zip file: %@", v5);
    return 0;
  }

  v6 = [objc_msgSend(v4 URLByAppendingPathComponent:v5 isDirectory:{0), "URLByStandardizingPath"}];
  if (([objc_msgSend(v6 "path")] & 1) == 0)
  {
    NSLog(@"invalid asset filename %@", v5);
    return 0;
  }

  return v6;
}

- (id)_carplayLibraryURL
{
  v2 = -[NSArray firstObject]([+[NSFileManager defaultManager](NSFileManager URLsForDirectory:"URLsForDirectory:inDomains:" inDomains:5, 1], "firstObject");

  return [v2 URLByAppendingPathComponent:@"CarPlay" isDirectory:1];
}

- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  v5 = [a4 firstObject];
  if (v5)
  {
    v6 = v5;
    v7 = [(AccessoryDeveloperSettingsController *)self _overrideAssetDestinationURLForAssetFolder:v5];
    if (v7)
    {
      v8 = v7;
      global_queue = dispatch_get_global_queue(17, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1504;
      block[3] = &unk_8400;
      block[4] = v6;
      block[5] = v8;
      block[6] = self;
      dispatch_async(global_queue, block);
    }
  }
}

- (void)removeAllAssetsForSpecifier:(id)a3
{
  v4 = 0;
  if (![+[NSFileManager removeItemAtURL:"removeItemAtURL:error:"]
  {
    NSLog(@"failed to remove CarPlay library directory: %@", v4);
  }

  [(AccessoryDeveloperSettingsController *)self reloadSpecifiers];
}

- (void)presentThemePickerFromSpecifier:(id)a3
{
  v5 = UTTypeZIP;
  v4 = [[UIDocumentPickerViewController alloc] initForOpeningContentTypes:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v5, 1)}];
  [v4 setAllowsMultipleSelection:0];
  [v4 setDelegate:self];
  [(AccessoryDeveloperSettingsController *)self presentViewController:v4 animated:1 completion:&stru_8388];
}

- (id)getAlwaysUpdateAssetForSpecifier:(id)a3
{
  v3 = CFPreferencesCopyValue(@"AlwaysUpdateAsset", @"com.apple.carplay", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    v6 = v5 == CFBooleanGetTypeID() && CFBooleanGetValue(v4) != 0;
    CFRelease(v4);
  }

  else
  {
    v6 = 0;
  }

  return [NSNumber numberWithBool:v6];
}

- (void)setAlwaysUpdateAsset:(id)a3 specifier:(id)a4
{
  v6 = [a3 BOOLValue];
  v7 = &kCFBooleanTrue;
  if (!v6)
  {
    v7 = &kCFBooleanFalse;
  }

  CFPreferencesSetValue(@"AlwaysUpdateAsset", *v7, @"com.apple.carplay", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  CFPreferencesSynchronize(@"com.apple.carplay", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);

  [(AccessoryDeveloperSettingsController *)self removeAllAssetsForSpecifier:a4];
}

- (id)getFerriteEnabledForSpecifier:(id)a3
{
  v3 = CFPreferencesCopyValue(@"EnableFerrite", @"com.apple.carplay", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    v6 = v5 == CFBooleanGetTypeID() && CFBooleanGetValue(v4) != 0;
    CFRelease(v4);
  }

  else
  {
    v6 = 0;
  }

  return [NSNumber numberWithBool:v6];
}

- (void)setFerriteEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = &kCFBooleanTrue;
  if (!v4)
  {
    v5 = &kCFBooleanFalse;
  }

  CFPreferencesSetValue(@"EnableFerrite", *v5, @"com.apple.carplay", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);

  CFPreferencesSynchronize(@"com.apple.carplay", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
}

- (void)setAlwaysAcceptHeadUnitPairing:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = &kCFBooleanTrue;
  if (!v4)
  {
    v5 = &kCFBooleanFalse;
  }

  CFPreferencesSetValue(@"AlwaysAcceptHeadUnitPairing", *v5, @"com.apple.carplay", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);

  CFPreferencesSynchronize(@"com.apple.carplay", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
}

- (id)alwaysAcceptHeadUnitPairingForSpecifier:(id)a3
{
  v3 = CFPreferencesCopyValue(@"AlwaysAcceptHeadUnitPairing", @"com.apple.carplay", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    v6 = v5 == CFBooleanGetTypeID() && CFBooleanGetValue(v4) != 0;
    CFRelease(v4);
  }

  else
  {
    v6 = 0;
  }

  return [NSNumber numberWithBool:v6];
}

- (void)setHeadUnitPairingPreviewEnabled:(id)a3 specifier:(id)a4
{
  v6 = [a3 BOOLValue];
  v7 = &kCFBooleanTrue;
  if (!v6)
  {
    v7 = &kCFBooleanFalse;
  }

  CFPreferencesSetValue(@"EnableHeadUnitPairingPreview", *v7, @"com.apple.carplay", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  CFPreferencesSynchronize(@"com.apple.carplay", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  v8 = [(AccessoryDeveloperSettingsController *)self specifierForID:@"ALWAYS_ACCEPT_HEAD_UNIT_PAIRING"];
  [v8 setProperty:a3 forKey:PSEnabledKey];

  [(AccessoryDeveloperSettingsController *)self reloadSpecifier:v8];
}

- (id)headUnitPairingPreviewEnabledForSpecifier:(id)a3
{
  v3 = CFPreferencesCopyValue(@"EnableHeadUnitPairingPreview", @"com.apple.carplay", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    v6 = v5 == CFBooleanGetTypeID() && CFBooleanGetValue(v4) != 0;
    CFRelease(v4);
  }

  else
  {
    v6 = 0;
  }

  return [NSNumber numberWithBool:v6];
}

- (void)setAirPlayCarPlayReceiverLogs:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = &kCFBooleanTrue;
  if (!v4)
  {
    v5 = &kCFBooleanFalse;
  }

  CFPreferencesSetValue(@"airPlayCarPlayReceiverLogs", *v5, @"com.apple.airplay", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);

  CFPreferencesSynchronize(@"com.apple.airplay", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
}

- (id)airPlayCarPlayReceiverLogsForSpecifier:(id)a3
{
  v3 = CFPreferencesGetAppBooleanValue(@"airPlayCarPlayReceiverLogs", @"com.apple.airplay", 0) != 0;

  return [NSNumber numberWithBool:v3];
}

- (void)resetUserAppearancePrefs:(id)a3
{
  CFPreferencesSetValue(@"CarPlayUserInterfaceStyle", 0, @"com.apple.UIKit", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  CFPreferencesSynchronize(@"com.apple.UIKit", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  CFPreferencesSetValue(@"CarCapabilities", 0, kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);

  CFPreferencesSynchronize(kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  if (!*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers])
  {
    v4 = [-[AccessoryDeveloperSettingsController loadSpecifiersFromPlistName:target:](self loadSpecifiersFromPlistName:@"AccessoryDeveloperSettings" target:{self), "mutableCopy"}];
    self->_airPlayCarPlayReceiverLogsSpecifiers = +[NSMutableArray array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v5)
    {
      v6 = *v26;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v26 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v25 + 1) + 8 * i);
          if (([objc_msgSend(v8 "identifier")] & 1) != 0 || objc_msgSend(objc_msgSend(v8, "identifier"), "hasPrefix:", @"OEMCarPlayReceiverLog"))
          {
            [(NSMutableArray *)self->_airPlayCarPlayReceiverLogsSpecifiers addObject:v8];
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v5);
    }

    [v4 addObject:{+[PSSpecifier groupSpecifierWithName:](PSSpecifier, "groupSpecifierWithName:", @"CCC Head Unit Pairing Preview"}];
    [v4 addObject:{+[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", @"Enable Preview", self, "setHeadUnitPairingPreviewEnabled:specifier:", "headUnitPairingPreviewEnabledForSpecifier:", 0, 6, 0)}];
    v9 = [PSSpecifier preferenceSpecifierNamed:@"Always Accept Pairing" target:self set:"setAlwaysAcceptHeadUnitPairing:specifier:" get:"alwaysAcceptHeadUnitPairingForSpecifier:" detail:0 cell:6 edit:0];
    [v9 setIdentifier:@"ALWAYS_ACCEPT_HEAD_UNIT_PAIRING"];
    v10 = [(AccessoryDeveloperSettingsController *)self headUnitPairingPreviewEnabledForSpecifier:0];
    v11 = PSEnabledKey;
    [v9 setProperty:v10 forKey:PSEnabledKey];
    [v4 addObject:v9];
    [v4 addObject:{+[PSSpecifier groupSpecifierWithID:](PSSpecifier, "groupSpecifierWithID:", @"FERRITE_GROUP"}];
    [v4 addObject:{+[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", @"Next generation of CarPlay", self, "setFerriteEnabled:specifier:", "getFerriteEnabledForSpecifier:", 0, 6, 0)}];
    v12 = [PSSpecifier groupSpecifierWithName:@"Display Assets"];
    v13 = PSFooterTextGroupKey;
    [v12 setProperty:@"When enabled only a single display asset may be selected. The display asset version will increment on every connection." forKey:PSFooterTextGroupKey];
    [v4 addObject:v12];
    [v4 addObject:{+[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", @"Always Update Display Asset", self, "setAlwaysUpdateAsset:specifier:", "getAlwaysUpdateAssetForSpecifier:", 0, 6, 0)}];
    v14 = [PSSpecifier groupSpecifierWithName:&stru_8788];
    [v14 setProperty:@"Remove all CarPlay pairings after making any changes to display assets." forKey:v13];
    [v4 addObject:v14];
    v15 = [PSSpecifier preferenceSpecifierNamed:@"Remove All Display Assets" target:self set:0 get:0 detail:0 cell:13 edit:0];
    [v15 setButtonAction:"removeAllAssetsForSpecifier:"];
    [v4 addObject:v15];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_303C;
    v20[3] = &unk_8320;
    v20[5] = v4;
    v20[6] = &v21;
    v20[4] = self;
    [(AccessoryDeveloperSettingsController *)self _enumerateCurrentOverrideAssetsUsingBlock:v20];
    v16 = [PSSpecifier preferenceSpecifierNamed:@"Add Display Asset…" target:self set:0 get:0 detail:0 cell:13 edit:0];
    [v16 setButtonAction:"presentThemePickerFromSpecifier:"];
    if (*(v22 + 24) == 1)
    {
      v17 = [-[AccessoryDeveloperSettingsController getAlwaysUpdateAssetForSpecifier:](self getAlwaysUpdateAssetForSpecifier:{0), "BOOLValue"}];
    }

    else
    {
      v17 = 0;
    }

    [v16 setProperty:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", v17 ^ 1), v11}];
    [v4 addObject:v16];
    [v4 addObject:{+[PSSpecifier groupSpecifierWithName:](PSSpecifier, "groupSpecifierWithName:", @"Accessory Logs"}];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_3160;
    v19[3] = &unk_8348;
    v19[4] = self;
    v19[5] = v4;
    [(AccessoryDeveloperSettingsController *)self _enumerateCurrentAccessoryLogsUsingBlock:v19];
    *&self->PSListController_opaque[v3] = v4;
    _Block_object_dispose(&v21, 8);
  }

  [(AccessoryDeveloperSettingsController *)self initDefaultsKeys];
  return *&self->PSListController_opaque[v3];
}

- (void)initDefaultsKeys
{
  [(AccessoryDeveloperSettingsController *)self setDefaultKeyIfNotPresent:@"jarvisVoiceModelLanguage" value:@"en-US" applicationID:@"com.apple.airplay"];
  [(AccessoryDeveloperSettingsController *)self setDefaultKeyIfNotPresent:@"airPlayCarPlayReceiverLogLevel" value:@"info" applicationID:@"com.apple.airplay"];
  [(AccessoryDeveloperSettingsController *)self setDefaultKeyIfNotPresent:@"airPlayCarPlayReceiverLogCategory" value:@"All" applicationID:@"com.apple.airplay"];
  [(AccessoryDeveloperSettingsController *)self setDefaultKeyIfNotPresent:@"dpCarPlayReceiverLogLevel" value:@"info" applicationID:@"com.apple.airplay"];
  [(AccessoryDeveloperSettingsController *)self setDefaultKeyIfNotPresent:@"dpCarPlayReceiverLogCategory" value:@"All" applicationID:@"com.apple.airplay"];
  [(AccessoryDeveloperSettingsController *)self setDefaultKeyIfNotPresent:@"OEMCarPlayReceiverLogLevel" value:@"info" applicationID:@"com.apple.airplay"];
  [(AccessoryDeveloperSettingsController *)self setDefaultKeyIfNotPresent:@"OEMCarPlayReceiverLogCategory" value:@"All" applicationID:@"com.apple.airplay"];

  CFPreferencesSynchronize(kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
}

- (void)setDefaultKeyIfNotPresent:(__CFString *)a3 value:(__CFString *)a4 applicationID:(__CFString *)a5
{
  v8 = CFPreferencesCopyAppValue(a3, a5);
  if (v8)
  {

    CFRelease(v8);
  }

  else
  {

    CFPreferencesSetValue(a3, a4, a5, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AccessoryDeveloperSettingsController;
  [(AccessoryDeveloperSettingsController *)&v3 dealloc];
}

@end