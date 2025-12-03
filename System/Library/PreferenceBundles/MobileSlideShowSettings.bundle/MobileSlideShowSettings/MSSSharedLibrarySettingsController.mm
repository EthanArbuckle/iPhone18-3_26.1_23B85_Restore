@interface MSSSharedLibrarySettingsController
- (MSSSharedLibrarySettingsController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_subtitleForParticipantSpecifier:(id)specifier;
- (id)deepLinkURL;
- (id)deletionNotificationEnabledSpecifier:(id)specifier;
- (id)pathComponentsLocalizedResource;
- (id)specifiers;
- (id)valueForCameraSpecifier:(id)specifier;
- (id)valueForSuggestionsSpecifier:(id)specifier;
- (void)_beginObservingPhotosAppPrefs;
- (void)_didSelectAddParticipantSpecifier:(id)specifier;
- (void)_didSelectExitLibrarySpecifier:(id)specifier;
- (void)_didSelectParticipantSpecifier:(id)specifier;
- (void)_didSelectSuggestionsSpecifier:(id)specifier;
- (void)_handleDidAddParticipantsWithEmailAddresses:(id)addresses phoneNumbers:(id)numbers success:(BOOL)success error:(id)error;
- (void)_stopObservingPhotosAppPrefs;
- (void)dealloc;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)photoRecipientViewController:(id)controller didCompleteWithRecipients:(id)recipients;
- (void)reloadSpecifiers;
- (void)setDeletionNotificationEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)setParentController:(id)controller;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation MSSSharedLibrarySettingsController

- (id)pathComponentsLocalizedResource
{
  v3 = +[MSSSettingsUtilities photosMainPaneLocalizedResource];
  v7[0] = v3;
  paneTitleLocalizedResource = [(MSSSharedLibrarySettingsController *)self paneTitleLocalizedResource];
  v7[1] = paneTitleLocalizedResource;
  v5 = [NSArray arrayWithObjects:v7 count:2];

  return v5;
}

- (id)deepLinkURL
{
  v2 = [NSString stringWithFormat:@"%@/%@/%@", @"settings-navigation://com.apple.Settings.Apps", @"com.apple.mobileslideshow", @"SharedStreamsTitleGroup"];
  v3 = [NSURL URLWithString:v2];

  return v3;
}

- (void)_stopObservingPhotosAppPrefs
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.mobileslideshow.PreferenceChanged", 0);
}

- (void)_beginObservingPhotosAppPrefs
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_1731C, @"com.apple.mobileslideshow.PreferenceChanged", 0, CFNotificationSuspensionBehaviorCoalesce);
}

- (void)_handleDidAddParticipantsWithEmailAddresses:(id)addresses phoneNumbers:(id)numbers success:(BOOL)success error:(id)error
{
  successCopy = success;
  addressesCopy = addresses;
  numbersCopy = numbers;
  errorCopy = error;
  statusProvider = [(MSSSharedLibrarySettingsController *)self statusProvider];
  sharedLibrary = [statusProvider sharedLibrary];

  if (sharedLibrary)
  {
    v15 = [PXViewControllerPresenter defaultPresenterWithViewController:self];
    if ([sharedLibrary isInLocalMode])
    {
      PXSharedLibraryHandleInvitationForLocalMode();
    }

    else if (successCopy)
    {
      PXSharedLibrarySendInvitation();
    }

    else
    {
      sourceLibraryInfo = [sharedLibrary sourceLibraryInfo];
      PXHandleErrorAddingParticipants();
    }
  }

  else
  {
    v16 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "Preferences: No Shared Library available after adding participants", v18, 2u);
    }
  }
}

- (void)photoRecipientViewController:(id)controller didCompleteWithRecipients:(id)recipients
{
  recipientsCopy = recipients;
  v5 = objc_alloc_init(NSMutableArray);
  v22 = objc_alloc_init(NSMutableArray);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = recipientsCopy;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      v10 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * v10);
        contact = [v11 contact];
        emailAddressString = [v11 emailAddressString];
        phoneNumberString = [v11 phoneNumberString];
        if ([emailAddressString length])
        {
          v15 = v5;
          v16 = emailAddressString;
LABEL_10:
          [v15 addObject:v16];
          goto LABEL_11;
        }

        if ([phoneNumberString length])
        {
          v15 = v22;
          v16 = phoneNumberString;
          goto LABEL_10;
        }

        v17 = PLSharedLibraryGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v31 = v11;
          v32 = 2112;
          v33 = contact;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "No invite address string for recipient: %@ contact: %@", buf, 0x16u);
        }

LABEL_11:
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v18 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
      v8 = v18;
    }

    while (v18);
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_177D0;
  v23[3] = &unk_2D338;
  v23[4] = self;
  v24 = v5;
  v25 = v22;
  v19 = v22;
  v20 = v5;
  [(MSSSharedLibrarySettingsController *)self dismissViewControllerAnimated:1 completion:v23];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (off_33430 != context)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MSSSharedLibrarySettingsController.m" lineNumber:299 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 0x30) != 0)
  {
    v13 = observableCopy;
    statusProvider = [(MSSSharedLibrarySettingsController *)self statusProvider];
    ShouldDisplaySettings = PXSharedLibraryShouldDisplaySettings();

    observableCopy = v13;
    if (ShouldDisplaySettings)
    {
      [(MSSSharedLibrarySettingsController *)self reloadSpecifiers];
      observableCopy = v13;
    }
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = cellCopy;
  }

  else
  {
    v8 = 0;
  }

  specifier = [v8 specifier];
  if (specifier)
  {
    PXSizeMakeSquare();
    v11 = v10;
    v13 = v12;
    [viewCopy px_screenScale];
    v15 = v14;
    v16 = [viewCopy effectiveUserInterfaceLayoutDirection] == &dword_0 + 1;
    v17 = [specifier objectForKeyedSubscript:@"SharedLibraryParticipant"];
    imageProvider = [v17 imageProvider];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_17C70;
    v19[3] = &unk_2D2E8;
    v20 = specifier;
    v21 = v8;
    v22 = cellCopy;
    [imageProvider requestImageWithTargetSize:v16 displayScale:v19 isRTL:v11 completionHandler:{v13, v15}];
  }
}

- (void)reloadSpecifiers
{
  v3 = objc_alloc_init(NSMutableDictionary);
  participantImageCache = self->_participantImageCache;
  self->_participantImageCache = v3;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  selfCopy = self;
  obj = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    v9 = PSIconImageKey;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:@"SharedLibraryParticipant"];
        if (v12)
        {
          v13 = [v11 objectForKeyedSubscript:v9];
          v14 = selfCopy->_participantImageCache;
          localIdentifier = [v12 localIdentifier];
          [(NSMutableDictionary *)v14 setObject:v13 forKeyedSubscript:localIdentifier];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v18.receiver = selfCopy;
  v18.super_class = MSSSharedLibrarySettingsController;
  [(MSSSharedLibrarySettingsController *)&v18 reloadSpecifiers];
  v16 = selfCopy->_participantImageCache;
  selfCopy->_participantImageCache = 0;
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v50 = OBJC_IVAR___PSListController__specifiers;
    selfCopy = self;
    statusProvider = [(MSSSharedLibrarySettingsController *)self statusProvider];
    v5 = objc_opt_new();
    v62 = statusProvider;
    sharedLibrary = [statusProvider sharedLibrary];
    PXLocalizedSharedLibraryString();
    v49 = v7 = &PXAssertGetLog_ptr;
    v8 = [PSSpecifier groupSpecifierWithID:@"SharedLibraryParticipantsGroup" name:?];
    v52 = v5;
    [v5 addObject:v8];

    v63 = objc_opt_new();
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v51 = sharedLibrary;
    obj = [sharedLibrary participants];
    v9 = [obj countByEnumeratingWithState:&v66 objects:v70 count:16];
    if (v9)
    {
      v10 = v9;
      v60 = *v67;
      v58 = PSAllowMultilineTitleKey;
      v56 = PSCellClassKey;
      v54 = PSIconImageKey;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v67 != v60)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v66 + 1) + 8 * i);
          v13 = PXSharedLibraryAnnotatedDisplayNameForParticipant();
          v14 = v7;
          v15 = [v7[262] preferenceSpecifierNamed:v13 target:selfCopy set:0 get:"_subtitleForParticipantSpecifier:" detail:0 cell:2 edit:0];
          [v15 setControllerLoadAction:"_didSelectParticipantSpecifier:"];
          [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:v58];
          [v15 setObject:objc_opt_class() forKeyedSubscript:v56];
          participantImageCache = selfCopy->_participantImageCache;
          localIdentifier = [v12 localIdentifier];
          v18 = [(NSMutableDictionary *)participantImageCache objectForKeyedSubscript:localIdentifier];
          defaultParticipantImage = v18;
          if (!v18)
          {
            defaultParticipantImage = selfCopy->_defaultParticipantImage;
          }

          [v15 setObject:defaultParticipantImage forKeyedSubscript:v54];

          [v15 setObject:v12 forKeyedSubscript:@"SharedLibraryParticipant"];
          [v63 addObject:v15];

          v7 = v14;
        }

        v10 = [obj countByEnumeratingWithState:&v66 objects:v70 count:16];
      }

      while (v10);
    }

    v20 = v52;
    [v52 addObjectsFromArray:v63];
    if ([v51 canEditParticipants])
    {
      v21 = PXLocalizedSharedLibraryString();
      v22 = selfCopy;
      v23 = [v7[262] preferenceSpecifierNamed:v21 target:selfCopy set:0 get:0 detail:0 cell:13 edit:0];
      [v23 setButtonAction:"_didSelectAddParticipantSpecifier:"];
      v24 = PSAllowMultilineTitleKey;
      [v23 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];
      [v23 setObject:objc_opt_class() forKeyedSubscript:PSCellClassKey];
      [v23 setObject:selfCopy->_addParticipantImage forKeyedSubscript:PSIconImageKey];
      participants = [v51 participants];
      v26 = [participants count];
      pXSharedLibraryParticipantsMaxCount = [NSNumber numberWithInt:v26 <= PXSharedLibraryParticipantsMaxCount];
      [v23 setObject:pXSharedLibraryParticipantsMaxCount forKeyedSubscript:PSEnabledKey];

      [v52 addObject:v23];
      v20 = v52;
    }

    else
    {
      v24 = PSAllowMultilineTitleKey;
      v22 = selfCopy;
    }

    v65 = [v7[262] groupSpecifierWithID:@"SharedLibraryOptionsGroup"];
    [v20 addObject:?];
    v61 = PXLocalizedSharedLibraryString();
    v28 = [v7[262] preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
    [v28 setControllerLoadAction:"_didSelectSuggestionsSpecifier:"];
    [v28 setObject:&__kCFBooleanTrue forKeyedSubscript:v24];
    [v20 addObject:v28];
    v59 = PXLocalizedSharedLibraryString();
    v29 = [v7[262] preferenceSpecifierNamed:v59 target:v22 set:0 get:"valueForCameraSpecifier:" detail:objc_opt_class() cell:2 edit:0];
    [v29 setObject:&__kCFBooleanTrue forKeyedSubscript:v24];
    [v52 addObject:v29];
    v57 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.mobileslideshow"];
    notificationSettings = [v57 notificationSettings];
    authorizationStatus = [notificationSettings authorizationStatus];
    [v7[262] groupSpecifierWithID:@"SharedLibraryDeletionNotificationGroup"];
    v32 = v31 = v7;
    PXLocalizedSharedLibraryString();
    if (authorizationStatus == &dword_0 + 1)
      v33 = {;
      v34 = PSFooterTextGroupKey;
      [v32 setObject:v33 forKeyedSubscript:PSFooterTextGroupKey];

      [v52 addObject:v32];
      v35 = PXLocalizedSharedLibraryString();
      v36 = [v31[262] preferenceSpecifierNamed:v35 target:v22 set:0 get:0 detail:0 cell:6 edit:0];
      [v36 setObject:&__kCFBooleanTrue forKeyedSubscript:v24];
      v37 = PSEnabledKey;
      v38 = &__kCFBooleanFalse;
      v39 = v36;
    }

    else
      v40 = {;
      v34 = PSFooterTextGroupKey;
      [v32 setObject:v40 forKeyedSubscript:PSFooterTextGroupKey];

      [v52 addObject:v32];
      v35 = PXLocalizedSharedLibraryString();
      v39 = [v31[262] preferenceSpecifierNamed:v35 target:v22 set:"setDeletionNotificationEnabled:forSpecifier:" get:"deletionNotificationEnabledSpecifier:" detail:0 cell:6 edit:0];
      v36 = v39;
      v38 = &__kCFBooleanTrue;
      v37 = v24;
    }

    [v39 setObject:v38 forKeyedSubscript:v37];
    [v52 addObject:v36];

    v41 = [v31[262] groupSpecifierWithID:@"SharedLibraryExitGroup"];
    if (PLHasInternalUI() && [v51 isInLocalMode])
    {
      if (_os_feature_enabled_impl())
      {
        v42 = @"INTERNAL: This Shared Library was created with LocalMode and does not actually sync or publish any changes to the server. Please delete this Shared Library, enable Goldilocks FF and start over with a new one if you'd like to use the real feature";
      }

      else
      {
        v42 = @"INTERNAL: This Shared Library was created with LocalMode and does not actually sync or publish any changes to the server. Please delete this Shared Library and start over with a new one if you'd like to use the real feature";
      }

      [v41 setObject:v42 forKeyedSubscript:v34];
    }

    [v52 addObject:v41];
    v43 = v31[262];
    v44 = PXSharedLibraryExitButtonTitle();
    v45 = [v43 deleteButtonSpecifierWithName:v44 target:v22 action:"_didSelectExitLibrarySpecifier:"];

    [v45 setObject:&off_2FB28 forKeyedSubscript:PSAlignmentKey];
    [v52 addObject:v45];
    v46 = [v52 copy];
    v47 = *&v22->PSListController_opaque[v50];
    *&v22->PSListController_opaque[v50] = v46;

    v3 = *&v22->PSListController_opaque[v50];
  }

  return v3;
}

- (id)valueForCameraSpecifier:(id)specifier
{
  IsCameraSharingEnabled = PXPreferencesIsCameraSharingEnabled();

  return SettingsBaseStringForSwitchValue(IsCameraSharingEnabled);
}

- (id)deletionNotificationEnabledSpecifier:(id)specifier
{
  IsSharedLibraryDeletionNotificationEnabled = PXPreferencesIsSharedLibraryDeletionNotificationEnabled();

  return [NSNumber numberWithBool:IsSharedLibraryDeletionNotificationEnabled];
}

- (void)setDeletionNotificationEnabled:(id)enabled forSpecifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];

  _PXPreferencesSetSharedLibraryDeletionNotificationEnabled(bOOLValue);
}

- (id)valueForSuggestionsSpecifier:(id)specifier
{
  IsSharedLibrarySuggestionsEnabled = PXPreferencesIsSharedLibrarySuggestionsEnabled();

  return SettingsBaseStringForSwitchValue(IsSharedLibrarySuggestionsEnabled);
}

- (void)_didSelectExitLibrarySpecifier:(id)specifier
{
  v5 = [PXViewControllerPresenter defaultPresenterWithViewController:self];
  statusProvider = [(MSSSharedLibrarySettingsController *)self statusProvider];
  PXSharedLibraryExitSharedLibraryOrPreview();
}

- (void)_didSelectSuggestionsSpecifier:(id)specifier
{
  v4 = [PXSharedLibrarySuggestionsSettingsViewController alloc];
  statusProvider = [(MSSSharedLibrarySettingsController *)self statusProvider];
  v7 = [v4 initWithSharedLibraryStatusProvider:statusProvider];

  v6 = PXLocalizedSharedLibraryString();
  [v7 setTitle:v6];

  [(MSSSharedLibrarySettingsController *)self showController:v7];
}

- (void)_didSelectAddParticipantSpecifier:(id)specifier
{
  statusProvider = [(MSSSharedLibrarySettingsController *)self statusProvider];
  sharedLibrary = [statusProvider sharedLibrary];

  v5 = PXLocalizedSharedLibraryString();
  v6 = PXLocalizedSharedLibraryString();
  participants = [sharedLibrary participants];
  v8 = PXMap();

  v9 = PXSharedLibraryParticipantsMaxCount;
  participants2 = [sharedLibrary participants];
  v11 = ~[participants2 count];

  v12 = [NSSet setWithArray:v8];
  v13 = [PXPhotoRecipientViewController recipientPickerViewControllerWithTitle:v5 toLabel:v6 usedAddresses:v12 maxRecipients:v9 + v11 verificationType:1 delegate:self];

  [(MSSSharedLibrarySettingsController *)self presentViewController:v13 animated:1 completion:0];
}

- (void)_didSelectParticipantSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = [specifierCopy objectForKeyedSubscript:@"SharedLibraryParticipant"];
  if (v5)
  {
    v6 = [PXSharedLibraryParticipantActionCoordinator alloc];
    statusProvider = [(MSSSharedLibrarySettingsController *)self statusProvider];
    sharedLibrary = [statusProvider sharedLibrary];
    v9 = [v6 initWithParticipant:v5 sharedLibrary:sharedLibrary];
    currentParticipantActionCoordinator = self->_currentParticipantActionCoordinator;
    self->_currentParticipantActionCoordinator = v9;

    navigationItem = [(MSSSharedLibrarySettingsController *)self navigationItem];
    [navigationItem setBackButtonDisplayMode:1];

    actionViewController = [(PXSharedLibraryParticipantActionCoordinator *)self->_currentParticipantActionCoordinator actionViewController];
    [(MSSSharedLibrarySettingsController *)self showController:actionViewController];
  }

  else
  {
    v13 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = specifierCopy;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "No participant available in specifier %@", &v14, 0xCu);
    }
  }
}

- (id)_subtitleForParticipantSpecifier:(id)specifier
{
  v3 = [specifier objectForKeyedSubscript:@"SharedLibraryParticipant"];
  if (v3)
  {
    v4 = PXSharedLibrarySettingsSubtitleForParticipant();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setParentController:(id)controller
{
  controllerCopy = controller;
  v6 = OBJC_IVAR___PSViewController__parentController;
  WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__parentController]);

  if (WeakRetained != controllerCopy)
  {
    v8 = objc_loadWeakRetained(&self->PSListController_opaque[v6]);

    if (v8)
    {
      [(PXSharedLibraryStatusProvider *)self->_statusProvider unregisterChangeObserver:self context:off_33430];
      statusProvider = self->_statusProvider;
      self->_statusProvider = 0;
    }

    v20.receiver = self;
    v20.super_class = MSSSharedLibrarySettingsController;
    [(MSSSharedLibrarySettingsController *)&v20 setParentController:controllerCopy];
    v10 = objc_loadWeakRetained(&self->PSListController_opaque[v6]);

    if (v10)
    {
      v11 = controllerCopy;
      if (v11)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
LABEL_7:
          systemPhotoLibrary = [v11 systemPhotoLibrary];
          v13 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:systemPhotoLibrary];
          v14 = self->_statusProvider;
          self->_statusProvider = v13;

          [(PXSharedLibraryStatusProvider *)self->_statusProvider registerChangeObserver:self context:off_33430];
          goto LABEL_8;
        }

        v15 = +[NSAssertionHandler currentHandler];
        v18 = objc_opt_class();
        v17 = NSStringFromClass(v18);
        px_descriptionForAssertionMessage = [v11 px_descriptionForAssertionMessage];
        [v15 handleFailureInMethod:a2 object:self file:@"MSSSharedLibrarySettingsController.m" lineNumber:97 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"parentController", v17, px_descriptionForAssertionMessage}];
      }

      else
      {
        v15 = +[NSAssertionHandler currentHandler];
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        [v15 handleFailureInMethod:a2 object:self file:@"MSSSharedLibrarySettingsController.m" lineNumber:97 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"parentController", v17}];
      }

      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)dealloc
{
  [(MSSSharedLibrarySettingsController *)self _stopObservingPhotosAppPrefs];
  v3.receiver = self;
  v3.super_class = MSSSharedLibrarySettingsController;
  [(MSSSharedLibrarySettingsController *)&v3 dealloc];
}

- (MSSSharedLibrarySettingsController)initWithNibName:(id)name bundle:(id)bundle
{
  v22.receiver = self;
  v22.super_class = MSSSharedLibrarySettingsController;
  v4 = [(MSSSharedLibrarySettingsController *)&v22 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = PXLocalizedSharedLibraryString();
    [(MSSSharedLibrarySettingsController *)v4 setTitle:v5];

    v6 = [UIImageSymbolConfiguration configurationWithPointSize:38.0];
    v7 = +[UIColor systemGrayColor];
    v8 = [UIImageSymbolConfiguration configurationWithHierarchicalColor:v7];

    v9 = [v6 configurationByApplyingConfiguration:v8];
    v10 = [UIImage systemImageNamed:@"person.circle.fill" withConfiguration:v9];
    defaultParticipantImage = v4->_defaultParticipantImage;
    v4->_defaultParticipantImage = v10;

    v12 = +[UIColor tintColor];
    v23[0] = v12;
    v13 = +[UIColor systemFillColor];
    v23[1] = v13;
    v14 = [NSArray arrayWithObjects:v23 count:2];
    v15 = [UIImageSymbolConfiguration configurationWithPaletteColors:v14];

    v16 = [UIImageSymbolConfiguration configurationWithWeight:2];
    v17 = [v6 configurationByApplyingConfiguration:v15];
    v18 = [v17 configurationByApplyingConfiguration:v16];

    v19 = [UIImage systemImageNamed:@"plus.circle.fill" withConfiguration:v18];
    addParticipantImage = v4->_addParticipantImage;
    v4->_addParticipantImage = v19;

    [(MSSSharedLibrarySettingsController *)v4 _beginObservingPhotosAppPrefs];
  }

  return v4;
}

@end