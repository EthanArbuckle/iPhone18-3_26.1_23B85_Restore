@interface PhotosCustomNotificationsController
- (PHPhotoLibrary)systemPhotoLibrary;
- (id)memoriesNotificationEnabledForSpecifier:(id)specifier;
- (id)sharedAlbumsNotificationEnabledForSpecifier:(id)specifier;
- (id)sharedLibraryDeletionNotificationsNotificationEnabledForSpecifier:(id)specifier;
- (id)sharedLibrarySuggestionsNotificationEnabledForSpecifier:(id)specifier;
- (id)sharingSuggestionsNotificationEnabledForSpecifier:(id)specifier;
- (id)specifiers;
- (void)photoLibraryDidBecomeUnavailable:(id)unavailable;
- (void)setMemoriesNotificationEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)setSharedAlbumsNotificationEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)setSharedLibraryDeletionNotificationsNotificationEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)setSharedLibrarySuggestionsNotificationEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)setSharingSuggestionsNotificationEnabled:(id)enabled forSpecifier:(id)specifier;
@end

@implementation PhotosCustomNotificationsController

- (void)photoLibraryDidBecomeUnavailable:(id)unavailable
{
  unavailableCopy = unavailable;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [unavailableCopy unregisterAvailabilityObserver:selfCopy];
  systemPhotoLibrary = selfCopy->_systemPhotoLibrary;
  selfCopy->_systemPhotoLibrary = 0;

  objc_sync_exit(selfCopy);
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = [PSSpecifier groupSpecifierWithID:@"PhotosGroup" name:0];
    [v5 addObject:v6];

    v7 = PLLocalizedFrameworkString();
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:"setMemoriesNotificationEnabled:forSpecifier:" get:"memoriesNotificationEnabledForSpecifier:" detail:0 cell:6 edit:0];

    v9 = PSAllowMultilineTitleKey;
    [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];
    v10 = PLLocalizedFrameworkString();
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:"setSharedAlbumsNotificationEnabled:forSpecifier:" get:"sharedAlbumsNotificationEnabledForSpecifier:" detail:0 cell:6 edit:0];

    [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:v9];
    v27[0] = v8;
    v27[1] = v11;
    v12 = [NSArray arrayWithObjects:v27 count:2];
    [v5 addObjectsFromArray:v12];

    systemPhotoLibrary = [(PhotosCustomNotificationsController *)self systemPhotoLibrary];
    v14 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:systemPhotoLibrary];

    if (PXSharedLibraryShouldDisplaySettings())
    {
      PLLocalizedFrameworkString();
      v15 = v25 = v5;
      v16 = [PSSpecifier groupSpecifierWithID:@"SharedLibraryGroup" name:v15];

      [v16 setObject:? forKeyedSubscript:?];
      v17 = PLLocalizedFrameworkString();
      v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:self set:"setSharedLibrarySuggestionsNotificationEnabled:forSpecifier:" get:"sharedLibrarySuggestionsNotificationEnabledForSpecifier:" detail:0 cell:6 edit:0];

      [v18 setObject:&__kCFBooleanTrue forKeyedSubscript:v9];
      v19 = PLLocalizedFrameworkString();
      v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:self set:"setSharedLibraryDeletionNotificationsNotificationEnabled:forSpecifier:" get:"sharedLibraryDeletionNotificationsNotificationEnabledForSpecifier:" detail:0 cell:6 edit:0];

      [v20 setObject:&__kCFBooleanTrue forKeyedSubscript:v9];
      v26[0] = v16;
      v26[1] = v18;
      v26[2] = v20;
      v21 = [NSArray arrayWithObjects:v26 count:3];
      [v25 addObjectsFromArray:v21];

      v5 = v25;
    }

    v22 = [v5 copy];
    v23 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v22;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)setSharedLibraryDeletionNotificationsNotificationEnabled:(id)enabled forSpecifier:(id)specifier
{
  v4 = kNotificationEnablementKeySharedLibraryDeletionNotifications;
  bOOLValue = [enabled BOOLValue];

  _PLSetNotificationTypeEnabledForKey(v4, bOOLValue);
}

- (id)sharedLibraryDeletionNotificationsNotificationEnabledForSpecifier:(id)specifier
{
  v3 = PLIsNotificationTypeEnabledForKey();

  return [NSNumber numberWithBool:v3];
}

- (void)setSharedLibrarySuggestionsNotificationEnabled:(id)enabled forSpecifier:(id)specifier
{
  v4 = kNotificationEnablementKeySharedLibrarySuggestions;
  bOOLValue = [enabled BOOLValue];

  _PLSetNotificationTypeEnabledForKey(v4, bOOLValue);
}

- (id)sharedLibrarySuggestionsNotificationEnabledForSpecifier:(id)specifier
{
  v3 = PLIsNotificationTypeEnabledForKey();

  return [NSNumber numberWithBool:v3];
}

- (void)setSharingSuggestionsNotificationEnabled:(id)enabled forSpecifier:(id)specifier
{
  v4 = kNotificationEnablementKeySharingSuggestions;
  bOOLValue = [enabled BOOLValue];

  _PLSetNotificationTypeEnabledForKey(v4, bOOLValue);
}

- (id)sharingSuggestionsNotificationEnabledForSpecifier:(id)specifier
{
  v3 = PLIsNotificationTypeEnabledForKey();

  return [NSNumber numberWithBool:v3];
}

- (void)setSharedAlbumsNotificationEnabled:(id)enabled forSpecifier:(id)specifier
{
  v4 = kNotificationEnablementKeySharedAlbums;
  bOOLValue = [enabled BOOLValue];

  _PLSetNotificationTypeEnabledForKey(v4, bOOLValue);
}

- (id)sharedAlbumsNotificationEnabledForSpecifier:(id)specifier
{
  v3 = PLIsNotificationTypeEnabledForKey();

  return [NSNumber numberWithBool:v3];
}

- (void)setMemoriesNotificationEnabled:(id)enabled forSpecifier:(id)specifier
{
  v4 = kNotificationEnablementKeyMemories;
  bOOLValue = [enabled BOOLValue];

  _PLSetNotificationTypeEnabledForKey(v4, bOOLValue);
}

- (id)memoriesNotificationEnabledForSpecifier:(id)specifier
{
  v3 = PLIsNotificationTypeEnabledForKey();

  return [NSNumber numberWithBool:v3];
}

- (PHPhotoLibrary)systemPhotoLibrary
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  systemPhotoLibrary = selfCopy->_systemPhotoLibrary;
  if (!systemPhotoLibrary)
  {
    v4 = [PHPhotoLibrary alloc];
    v5 = +[PHPhotoLibrary systemPhotoLibraryURL];
    v6 = [v4 initWithPhotoLibraryURL:v5];
    v7 = selfCopy->_systemPhotoLibrary;
    selfCopy->_systemPhotoLibrary = v6;

    v8 = selfCopy->_systemPhotoLibrary;
    v18 = 0;
    LODWORD(v4) = [(PHPhotoLibrary *)v8 openAndWaitWithUpgrade:0 error:&v18];
    v9 = v18;
    v10 = v9;
    if (v4)
    {
      [(PHPhotoLibrary *)selfCopy->_systemPhotoLibrary registerAvailabilityObserver:selfCopy];
LABEL_11:

      systemPhotoLibrary = selfCopy->_systemPhotoLibrary;
      goto LABEL_12;
    }

    if (v9)
    {
      v11 = PLUIGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = v10;
        v12 = "Failed to open system photo library with error: %@";
        v13 = v11;
        v14 = 12;
LABEL_9:
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
      }
    }

    else
    {
      v11 = PLUIGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v12 = "Failed to open system photo library";
        v13 = v11;
        v14 = 2;
        goto LABEL_9;
      }
    }

    v15 = selfCopy->_systemPhotoLibrary;
    selfCopy->_systemPhotoLibrary = 0;

    goto LABEL_11;
  }

LABEL_12:
  v16 = systemPhotoLibrary;
  objc_sync_exit(selfCopy);

  return v16;
}

@end