@interface MapsSettingsController
+ (id)parkedCarEnabled:(id)enabled;
- (BOOL)_shouldShowUKRegulatorySection;
- (MapsSettingsController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_allowEmailCorrespondence:(id)correspondence;
- (id)_enableAutomaticUpdates:(id)updates;
- (id)_enableOfflineSyncToWatch:(id)watch;
- (id)_enableOnlyUseOfflineMaps:(id)maps;
- (id)_enableOptimizeStorage:(id)storage;
- (id)_offlineDownloadSettingsMenu;
- (id)_privacyIdentifiersForContributeToMapsSection;
- (id)_showAirQualityIndex:(id)index;
- (id)_showWeatherConditions:(id)conditions;
- (id)_specifierIDForTransportType:(int64_t)type;
- (id)_thirdPartyPhotoSharingEnabled:(id)enabled;
- (id)allowsAddingRatingsAndPhotos:(id)photos;
- (id)enableImproveEVRouting:(id)routing;
- (id)lagunaBeachSiriSuggestionsEnabled:(id)enabled;
- (id)parkedCarEnabled:(id)enabled;
- (id)selectSpecifier:(id)specifier;
- (id)specifiers;
- (void)_addOfflineSpecifiers:(id)specifiers;
- (void)_addShareETASpecifiers:(id)specifiers;
- (void)_appendPrivacyFooterFromBundleIdentifiers:(id)identifiers toGroupSpecifier:(id)specifier selector:(SEL)selector;
- (void)_presentContributeToMapsPrivacySplashViewController;
- (void)_presentMapsAppPrivacySplashViewController;
- (void)_presentPrivacySplashViewControllerForIdentifiers:(id)identifiers;
- (void)_refreshThirdPartyPhotoSharingStatus;
- (void)_setAllowEmailCorrespondence:(id)correspondence specifier:(id)specifier;
- (void)_setAllowsAddingRatingsAndPhotos:(id)photos specifier:(id)specifier;
- (void)_setEnableAutomaticUpdates:(id)updates specifier:(id)specifier;
- (void)_setEnableOfflineSyncToWatch:(id)watch specifier:(id)specifier;
- (void)_setEnableOnlyUseOfflineMaps:(id)maps specifier:(id)specifier;
- (void)_setEnableOptimizeStorage:(id)storage specifier:(id)specifier;
- (void)_setEnableShareETA:(id)a specifier:(id)specifier;
- (void)_setLagunaBeachSiriSuggestionsEnabled:(id)enabled specifier:(id)specifier;
- (void)_setParkedCarEnabled:(id)enabled specifier:(id)specifier;
- (void)_setShowAirQualityIndex:(id)index specifier:(id)specifier;
- (void)_setShowWeatherConditions:(id)conditions specifier:(id)specifier;
- (void)_setThirdPartyPhotoSharingEnabled:(id)enabled specifier:(id)specifier;
- (void)_showUKRegulatoryWebPage:(id)page;
- (void)dealloc;
- (void)didUpdateEVApplications:(id)applications;
- (void)didUpdateElectricVehicleCount:(unint64_t)count;
- (void)setEnableImproveEVRouting:(id)routing specifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)valueChangedForGEOConfigKey:(id)key;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation MapsSettingsController

- (MapsSettingsController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v28.receiver = self;
  v28.super_class = MapsSettingsController;
  v8 = [(MapsSettingBaseController *)&v28 initWithNibName:nameCopy bundle:bundleCopy];
  if (v8)
  {
    objc_initWeak(&location, v8);
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_209E4;
    v25 = &unk_800A0;
    objc_copyWeak(&v26, &location);
    v9 = objc_retainBlock(&v22);
    v10 = [MapsSettingsRideBookingController alloc];
    v11 = [(MapsSettingsExtensionBaseController *)v10 initWithUpdateHandler:v9, v22, v23, v24, v25];
    v12 = *(v8 + 195);
    *(v8 + 195) = v11;

    v13 = [(MapsSettingsExtensionBaseController *)[MapsSettingsRestaurantBookingController alloc] initWithUpdateHandler:v9];
    v14 = *(v8 + 203);
    *(v8 + 203) = v13;

    v15 = objc_opt_new();
    v16 = *(v8 + 211);
    *(v8 + 211) = v15;

    [*(v8 + 211) setDelegate:v8];
    v17 = objc_alloc_init(MapsOfflineUIHelper);
    v18 = *(v8 + 219);
    *(v8 + 219) = v17;

    [GEOUserSession setInitialShareSessionWithMaps:1];
    v19 = &_dispatch_main_q;
    _GEOConfigAddDelegateListenerForKey();

    _GEOConfigAddDelegateListenerForKey();
    _GEOConfigAddDelegateListenerForKey();

    _GEOConfigAddDelegateListenerForKey();
    _GEOConfigAddDelegateListenerForKey();

    v20 = v8;
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v8;
}

- (void)dealloc
{
  GEOConfigRemoveDelegateListenerForAllKeys();
  v3.receiver = self;
  v3.super_class = MapsSettingsController;
  [(MapsSettingBaseController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = MapsSettingsController;
  [(MapsSettingsController *)&v8 viewDidLoad];
  table = [(MapsSettingsController *)self table];
  v4 = objc_opt_class();
  v5 = +[MapsSettingsMenuTableCell cellReuseIdentifier];
  [table registerClass:v4 forCellReuseIdentifier:v5];

  v6 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v7 = [v6 localizedStringForKey:@"Maps [Settings]" value:@"localized string not found" table:0];
  [(MapsSettingsController *)self setTitle:v7];
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = MapsSettingsController;
  [(MapsSettingBaseController *)&v10 viewWillAppear:appear];
  v4 = MapsRAPContactBackEmailAddress();
  if (([v4 isEqualToString:*(&self->super + 1)] & 1) == 0)
  {
    objc_storeStrong((&self->super + 1), v4);
    [(MapsSettingsController *)self reloadSpecifiers];
  }

  [(MapsSettingsController *)self _refreshThirdPartyPhotoSharingStatus];
  v5 = +[NSNotificationCenter defaultCenter];
  view = [(MapsSettingsController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  [v5 addObserver:self selector:"_sceneWillEnterForeground:" name:UISceneWillEnterForegroundNotification object:windowScene];

  offlineHelper = [(MapsSettingsController *)self offlineHelper];
  [offlineHelper addObserver:self];
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = MapsSettingsController;
  [(MapsSettingsController *)&v8 viewDidAppear:appear];
  v4 = MapsSettingsRootTitle();
  v5 = AppsSettingsTitle();
  v9 = v5;
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  v7 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.Maps"];
  [(MapsSettingsController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.Maps" title:v4 localizedNavigationComponents:v6 deepLink:v7];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v9.receiver = self;
  v9.super_class = MapsSettingsController;
  [(MapsSettingsController *)&v9 viewWillDisappear:disappear];
  v4 = +[NSNotificationCenter defaultCenter];
  view = [(MapsSettingsController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  [v4 removeObserver:self name:UISceneWillEnterForegroundNotification object:windowScene];

  offlineHelper = [(MapsSettingsController *)self offlineHelper];
  [offlineHelper removeObserver:self];
}

- (id)_showAirQualityIndex:(id)index
{
  BOOL = GEOConfigGetBOOL();

  return [NSNumber numberWithBool:BOOL];
}

- (void)_setShowAirQualityIndex:(id)index specifier:(id)specifier
{
  [index BOOLValue];

  GEOConfigSetBOOL();
}

- (id)_showWeatherConditions:(id)conditions
{
  BOOL = GEOConfigGetBOOL();

  return [NSNumber numberWithBool:BOOL];
}

- (void)_setShowWeatherConditions:(id)conditions specifier:(id)specifier
{
  [conditions BOOLValue];

  GEOConfigSetBOOL();
}

- (id)_specifierIDForTransportType:(int64_t)type
{
  if ((type - 1) > 3)
  {
    return @"TransportTypePreferenceDrivingID";
  }

  else
  {
    return off_80138[type - 1];
  }
}

- (id)_allowEmailCorrespondence:(id)correspondence
{
  v3 = +[MapsSettings allowEmailCorrespondence];

  return [NSNumber numberWithBool:v3];
}

- (void)_setAllowEmailCorrespondence:(id)correspondence specifier:(id)specifier
{
  correspondenceCopy = correspondence;
  +[MapsSettings setAllowEmailCorrespondence:](MapsSettings, "setAllowEmailCorrespondence:", [correspondenceCopy BOOLValue]);
  bOOLValue = [correspondenceCopy BOOLValue];

  if (bOOLValue)
  {
    v6 = 17088;
  }

  else
  {
    v6 = 17089;
  }

  [GEOAPPortal captureUserAction:v6 target:0 value:0];
}

- (id)selectSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = specifierCopy;
  if (*(&self->_preferredTransportTypeSpecifiers + 3) == specifierCopy)
  {
    rideBookingController = [(MapsSettingsController *)self rideBookingController];
  }

  else if (*(&self->_rideBookingLinkSpecifier + 3) == specifierCopy)
  {
    rideBookingController = [(MapsSettingsController *)self restaurantBookingController];
  }

  else if (*(&self->_restaurantBookingLinkSpecifier + 3) == specifierCopy)
  {
    rideBookingController = [(MapsSettingsController *)self evRoutingController];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MapsSettingsController;
    rideBookingController = [(MapsSettingsController *)&v9 selectSpecifier:specifierCopy];
  }

  v7 = rideBookingController;

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v14.receiver = self;
  v14.super_class = MapsSettingsController;
  pathCopy = path;
  [(MapsSettingsController *)&v14 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(MapsSettingsController *)self indexForIndexPath:pathCopy, v14.receiver, v14.super_class];

  v8 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndexedSubscript:v7];
  v9 = [v8 propertyForKey:PSValueKey];
  if ([*(&self->_emailAddress + 3) containsObject:v8])
  {
    integerValue = [v9 integerValue];
    GEOSetUserTransportTypePreference();
    v11 = +[MKMapService sharedService];
    v12 = v11;
    if ((integerValue - 1) > 3)
    {
      v13 = 5025;
    }

    else
    {
      v13 = dword_48E50[(integerValue - 1)];
    }

    [v11 captureUserAction:v13 onTarget:602 eventValue:0];
  }
}

- (id)specifiers
{
  v189 = +[NSMutableArray array];
  v3 = [[AUSystemSettingsSpecifiersProvider alloc] initWithApplicationBundleIdentifier:@"com.apple.Maps"];
  [(MapsSettingsController *)self setSpecifiersProvider:v3];

  specifiersProvider = [(MapsSettingsController *)self specifiersProvider];
  specifiers = [specifiersProvider specifiers];
  v6 = [specifiers mutableCopy];

  v7 = +[NSMutableIndexSet indexSet];
  v8 = [v6 count];
  while (v8)
  {
    v9 = [v6 objectAtIndexedSubscript:--v8];
    identifier = [v9 identifier];
    v11 = [identifier isEqualToString:@"PREFERRED_LANGUAGE"];

    if (v11)
    {
      [v7 addIndex:v8];
      if (v8)
      {
        v12 = v8 - 1;
        v13 = [v6 objectAtIndexedSubscript:v12];
        cellType = [v13 cellType];

        if (!cellType)
        {
          [v7 addIndex:v12];
        }
      }

      break;
    }
  }

  v185 = v7;
  [v6 removeObjectsAtIndexes:v7];
  [v189 addObjectsFromArray:v6];
  v191 = @"com.apple.onboarding.maps";
  v15 = [NSArray arrayWithObjects:&v191 count:1];
  v186 = v6;
  firstObject = [v6 firstObject];
  [(MapsSettingsController *)self _appendPrivacyFooterFromBundleIdentifiers:v15 toGroupSpecifier:firstObject selector:"_presentMapsAppPrivacySplashViewController"];

  [(MapsSettingsController *)self _addOfflineSpecifiers:v189];
  v17 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v18 = [v17 localizedStringForKey:@"Maps" value:@"localized string not found" table:0];

  v19 = objc_alloc_init(NSMutableSet);
  v20 = *(&self->_emailAddress + 3);
  *(&self->_emailAddress + 3) = v19;

  v21 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v22 = [v21 localizedStringForKey:@"Default Transportation Mode Title [Settings]" value:@"localized string not found" table:0];
  v23 = [PSSpecifier preferenceSpecifierNamed:v22 target:0 set:0 get:0 detail:0 cell:0 edit:0];

  [v23 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
  v24 = PSIDKey;
  [v23 setProperty:@"TransportTypePreferenceGroupID" forKey:?];
  v25 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v26 = [v25 localizedStringForKey:@"Default Transportation Mode Footer [Settings]" value:@"localized string not found" table:0];
  v179 = PSFooterTextGroupKey;
  [v23 setProperty:v26 forKey:?];

  v184 = v23;
  [v189 addObject:v23];
  v27 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v28 = [v27 localizedStringForKey:@"Driving Transportation Mode Label [Settings]" value:@"localized string not found" table:0];
  v29 = [PSSpecifier preferenceSpecifierNamed:v28 target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v29 setProperty:@"TransportTypePreferenceDrivingID" forKey:v24];
  v30 = PSValueKey;
  [v29 setProperty:&off_8B650 forKey:PSValueKey];
  [v189 addObject:v29];
  [*(&self->_emailAddress + 3) addObject:v29];
  v31 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v32 = [v31 localizedStringForKey:@"Walking Transportation Mode Label [Settings]" value:@"localized string not found" table:0];
  v33 = [PSSpecifier preferenceSpecifierNamed:v32 target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v33 setProperty:@"TransportTypePreferenceWalkingID" forKey:v24];
  [v33 setProperty:&off_8B668 forKey:v30];
  [v189 addObject:v33];
  [*(&self->_emailAddress + 3) addObject:v33];
  v34 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v35 = [v34 localizedStringForKey:@"Transit Transportation Mode Label [Settings]" value:@"localized string not found" table:0];
  v36 = [PSSpecifier preferenceSpecifierNamed:v35 target:self set:0 get:0 detail:0 cell:3 edit:0];

  v188 = v24;
  [v36 setProperty:@"TransportTypePreferenceTransitID" forKey:v24];
  [v36 setProperty:&off_8B680 forKey:v30];
  [v189 addObject:v36];
  [*(&self->_emailAddress + 3) addObject:v36];
  v37 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v38 = [v37 localizedStringForKey:@"Cycling Transportation Mode Label [Settings]" value:@"localized string not found" table:0];
  selfCopy = self;
  v39 = [PSSpecifier preferenceSpecifierNamed:v38 target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v39 setProperty:@"TransportTypePreferenceBicycleID" forKey:v24];
  [v39 setProperty:&off_8B698 forKey:v30];
  [v189 addObject:v39];
  [*(&self->_emailAddress + 3) addObject:v39];
  v40 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v41 = [v40 localizedStringForKey:@"Default Transportation Mode" value:@"localized string not found" table:0];

  v42 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v43 = [v42 localizedStringForKey:@"Directions Group Label [Settings]" value:@"localized string not found" table:0];
  v44 = [PSSpecifier preferenceSpecifierNamed:v43 target:0 set:0 get:0 detail:0 cell:0 edit:0];

  v183 = v44;
  [v189 addObject:v44];
  v45 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v46 = [v45 localizedStringForKey:@"Driving Group Title [Settings]" value:@"localized string not found" table:0];

  v182 = v46;
  v47 = [PSSpecifier preferenceSpecifierNamed:v46 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

  [v47 setProperty:@"DrivingLinkPreferenceID" forKey:v24];
  [v189 addObject:v47];
  v48 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v49 = [v48 localizedStringForKey:@"Walking Label [Settings]" value:@"localized string not found" table:0];

  v181 = v49;
  v50 = [PSSpecifier preferenceSpecifierNamed:v49 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

  [v50 setProperty:@"WalkingLinkPreferenceID" forKey:v24];
  [v189 addObject:v50];
  v51 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v52 = [v51 localizedStringForKey:@"Transit Label [Settings]" value:@"localized string not found" table:0];
  v53 = [PSSpecifier preferenceSpecifierNamed:v52 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

  v54 = v24;
  [v53 setProperty:@"TransitLinkPreferenceID" forKey:v24];
  [v189 addObject:v53];
  v55 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v56 = [v55 localizedStringForKey:@"Cycling Label [Settings]" value:@"localized string not found" table:0];
  v57 = [PSSpecifier preferenceSpecifierNamed:v56 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

  [v57 setProperty:@"CyclingLinkPreferenceID" forKey:v54];
  [v189 addObject:v57];
  if ([(MapsSettingBaseController *)self supportsNavigation])
  {
    v58 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
    [v189 addObject:v58];
    v59 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v60 = [v59 localizedStringForKey:@"Spoken Directions Label [Settings]" value:@"localized string not found" table:0];
    v61 = [PSSpecifier preferenceSpecifierNamed:v60 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

    [v61 setProperty:@"NavigationGuidanceLinkPreferenceID" forKey:v54];
    [v189 addObject:v61];
    [(MapsSettingsController *)self _addShareETASpecifiers:v189];

    v57 = v61;
  }

  v62 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v63 = [v62 localizedStringForKey:@"Climate Group Label [Settings]" value:@"localized string not found" table:0];
  v64 = [PSSpecifier preferenceSpecifierNamed:v63 target:0 set:0 get:0 detail:0 cell:0 edit:0];

  v180 = v64;
  [v189 addObject:v64];
  v65 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v66 = [v65 localizedStringForKey:@"Air Quality Index Switch Label [Settings]" value:@"localized string not found" table:0];
  v67 = [PSSpecifier preferenceSpecifierNamed:v66 target:self set:"_setShowAirQualityIndex:specifier:" get:"_showAirQualityIndex:" detail:0 cell:6 edit:0];

  v68 = PSEnabledKey;
  [v67 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
  [v67 setProperty:@"AirQualityPreferenceID" forKey:v188];
  [v189 addObject:v67];
  v69 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v70 = [v69 localizedStringForKey:@"Air Quality Index" value:@"localized string not found" table:0];

  v71 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v72 = v68;
  v73 = [v71 localizedStringForKey:@"Weather Conditions Switch Label [Settings]" value:@"localized string not found" table:0];
  v74 = [PSSpecifier preferenceSpecifierNamed:v73 target:selfCopy set:"_setShowWeatherConditions:specifier:" get:"_showWeatherConditions:" detail:0 cell:6 edit:0];

  v75 = v189;
  [v74 setProperty:&__kCFBooleanTrue forKey:v68];
  [v74 setProperty:@"WeatherConditionsPreferenceID" forKey:v188];
  [v189 addObject:v74];
  v76 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v77 = [v76 localizedStringForKey:@"Weather Conditions" value:@"localized string not found" table:0];

  v78 = &PSBundlePathForPreferenceBundle_ptr;
  if ([(MapsSettingBaseController *)selfCopy canLocalizeLabels])
  {
    v79 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v80 = [v79 localizedStringForKey:@"Label Language Group Title [Settings]" value:@"localized string not found" table:0];
    v81 = [PSSpecifier preferenceSpecifierNamed:v80 target:0 set:0 get:0 detail:0 cell:0 edit:0];

    [v189 addObject:v81];
    v82 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v83 = [v82 localizedStringForKey:@"Label Language Switch Label [Settings]" value:@"localized string not found" table:0];
    v84 = [PSSpecifier preferenceSpecifierNamed:v83 target:selfCopy set:"_setLabelLanguageAlwaysUILanguage:specifier:" get:"_labelLanguageAlwaysUILanguage:" detail:0 cell:6 edit:0];

    v75 = v189;
    [v84 setProperty:&__kCFBooleanTrue forKey:v72];
    [v84 setProperty:@"LabelLanguageAlwaysUIPreferenceID" forKey:v188];
    [v189 addObject:v84];
    v78 = &PSBundlePathForPreferenceBundle_ptr;
    v85 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v86 = [v85 localizedStringForKey:@"Always in English" value:@"localized string not found" table:0];

    v187 = v84;
  }

  else
  {
    v187 = v74;
  }

  v87 = v72;
  if (MapsFeature_IsEnabled_EVRouting())
  {
    evRoutingController = [(MapsSettingsController *)selfCopy evRoutingController];
    v89 = [evRoutingController electricVehicleCount] != 0;
  }

  else
  {
    v89 = 0;
  }

  if (MapsFeature_IsEnabled_LagunaBeach())
  {
    HaveValidAccountForMakingContributions = GEODoesUserHaveValidAccountForMakingContributions();
  }

  else
  {
    HaveValidAccountForMakingContributions = 0;
  }

  if ((v89 | HaveValidAccountForMakingContributions))
  {
    v91 = [v78[415] bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v92 = [v91 localizedStringForKey:@"Contribute to Maps [Settings]" value:@"localized string not found" table:0];
    v93 = [PSSpecifier preferenceSpecifierNamed:v92 target:0 set:0 get:0 detail:0 cell:0 edit:0];

    [v75 addObject:v93];
    if (HaveValidAccountForMakingContributions)
    {
      v177 = v93;
      v94 = v78;
      v95 = [v78[415] bundleForClass:NSClassFromString(@"MapsSettingsController")];
      v96 = [v95 localizedStringForKey:@"Ratings and Photos [Laguna Beach][Settings]" value:@"localized string not found" table:0];
      v97 = [PSSpecifier preferenceSpecifierNamed:v96 target:selfCopy set:"_setAllowsAddingRatingsAndPhotos:specifier:" get:"allowsAddingRatingsAndPhotos:" detail:0 cell:6 edit:0];

      [v97 setProperty:&__kCFBooleanTrue forKey:v72];
      [v97 setProperty:@"RatingsAndPhotosPreferencesID" forKey:v188];
      [v189 addObject:v97];

      v98 = v78[415];
      v99 = NSClassFromString(@"MapsSettingsController");
      v100 = v98;
      v75 = v189;
      v101 = [v100 bundleForClass:v99];
      v102 = [v101 localizedStringForKey:@"Show Ratings and Photos Suggestions [Laguna Beach][Settings]" value:@"localized string not found" table:0];
      v103 = [PSSpecifier preferenceSpecifierNamed:v102 target:selfCopy set:"_setLagunaBeachSiriSuggestionsEnabled:specifier:" get:"lagunaBeachSiriSuggestionsEnabled:" detail:0 cell:6 edit:0];

      v78 = v94;
      v93 = v177;

      [v103 setProperty:&__kCFBooleanTrue forKey:v72];
      [v103 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
      v87 = v72;
      [v103 setProperty:@"ShowRatingsAndPhotosSuggestionsPreferencesID" forKey:v188];
      [v189 addObject:v103];
    }

    if (v89)
    {
      v104 = [v78[415] bundleForClass:NSClassFromString(@"MapsSettingsController")];
      v105 = [v104 localizedStringForKey:@"Improve EV Routing [Settings]" value:@"localized string not found" table:0];
      v106 = [PSSpecifier preferenceSpecifierNamed:v105 target:selfCopy set:"setEnableImproveEVRouting:specifier:" get:"enableImproveEVRouting:" detail:0 cell:6 edit:0];

      [v106 setProperty:&__kCFBooleanTrue forKey:v87];
      [v106 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
      [v106 setProperty:@"ImproveEVRoutingPreferencesID" forKey:v188];
      [v75 addObject:v106];
    }

    _privacyIdentifiersForContributeToMapsSection = [(MapsSettingsController *)selfCopy _privacyIdentifiersForContributeToMapsSection];
    if ([_privacyIdentifiersForContributeToMapsSection count])
    {
      [(MapsSettingsController *)selfCopy _appendPrivacyFooterFromBundleIdentifiers:_privacyIdentifiersForContributeToMapsSection toGroupSpecifier:v93 selector:"_presentContributeToMapsPrivacySplashViewController"];
    }
  }

  if ((MapsFeature_IsEnabled_SydneyARP() & HaveValidAccountForMakingContributions) == 1)
  {
    v108 = [v78[415] bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v109 = [v108 localizedStringForKey:@"Photo Use [Settings]" value:@"localized string not found" table:0];
    [PSSpecifier preferenceSpecifierNamed:v109 target:0 set:0 get:0 detail:0 cell:0 edit:0];
    v111 = v110 = v78;

    [v75 addObject:v111];
    v112 = [v110[415] bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v113 = [v112 localizedStringForKey:@"Allow Photo Providers to Use Your Photos [Settings]" value:@"localized string not found" table:0];
    v114 = [PSSpecifier preferenceSpecifierNamed:v113 target:selfCopy set:"_setThirdPartyPhotoSharingEnabled:specifier:" get:"_thirdPartyPhotoSharingEnabled:" detail:0 cell:6 edit:0];

    v75 = v189;
    [v114 setProperty:&__kCFBooleanTrue forKey:v87];
    [v114 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    v115 = [NSNumber numberWithBool:[(MapsSettingsController *)selfCopy isThirdPartyPhotoSharingStatusLoading]];
    [v114 setProperty:v115 forKey:PSControlIsLoadingKey];

    [v114 setProperty:@"AllowPhotoProvidersPreferencesID" forKey:v188];
    [v189 addObject:v114];
    v116 = [v110[415] bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v117 = [v116 localizedStringForKey:@"Photo Sharing Footer [Settings]" value:@"localized string not found" table:0];
    [v111 setProperty:v117 forKey:v179];
  }

  v118 = *(&selfCopy->_preferredTransportTypeSpecifiers + 3);
  *(&selfCopy->_preferredTransportTypeSpecifiers + 3) = 0;

  v119 = *(&selfCopy->_rideBookingLinkSpecifier + 3);
  *(&selfCopy->_rideBookingLinkSpecifier + 3) = 0;

  v120 = *(&selfCopy->_restaurantBookingLinkSpecifier + 3);
  *(&selfCopy->_restaurantBookingLinkSpecifier + 3) = 0;

  rideBookingController = [(MapsSettingsController *)selfCopy rideBookingController];
  hasInstalledApplications = [rideBookingController hasInstalledApplications];

  restaurantBookingController = [(MapsSettingsController *)selfCopy restaurantBookingController];
  hasInstalledApplications2 = [restaurantBookingController hasInstalledApplications];

  if (MapsFeature_IsEnabled_EVRouting())
  {
    evRoutingController2 = [(MapsSettingsController *)selfCopy evRoutingController];
    hasInstalledApplications3 = [evRoutingController2 hasInstalledApplications];
  }

  else
  {
    hasInstalledApplications3 = 0;
  }

  if (((hasInstalledApplications | hasInstalledApplications2) & 1) != 0 || hasInstalledApplications3)
  {
    v127 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v128 = [v127 localizedStringForKey:@"Extensions Group Title [Settings]" value:@"localized string not found" table:0];
    v129 = [PSSpecifier preferenceSpecifierNamed:v128 target:0 set:0 get:0 detail:0 cell:0 edit:0];

    v75 = v189;
    v178 = v129;
    [v189 addObject:v129];
    if (hasInstalledApplications)
    {
      v145 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
      v146 = [v145 localizedStringForKey:@"Ride Booking Row [Settings]" value:@"localized string not found" table:0];
      v147 = [PSSpecifier preferenceSpecifierNamed:v146 target:0 set:0 get:0 detail:0 cell:1 edit:0];

      [(NSMutableSet *)v147 setProperty:&__kCFBooleanTrue forKey:v72];
      [(NSMutableSet *)v147 setProperty:@"RideBookingPreferencesID" forKey:v188];
      [v189 addObject:v147];
      v148 = *(&selfCopy->_preferredTransportTypeSpecifiers + 3);
      *(&selfCopy->_preferredTransportTypeSpecifiers + 3) = v147;

      if (!hasInstalledApplications2)
      {
LABEL_35:
        if (!hasInstalledApplications3)
        {
LABEL_37:

          goto LABEL_38;
        }

LABEL_36:
        v130 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
        v131 = [v130 localizedStringForKey:@"EV Routing Row [Settings]" value:@"localized string not found" table:0];
        v132 = [PSSpecifier preferenceSpecifierNamed:v131 target:0 set:0 get:0 detail:0 cell:1 edit:0];

        [v189 addObject:v132];
        [v132 setProperty:&__kCFBooleanTrue forKey:v72];
        v133 = *(&selfCopy->_restaurantBookingLinkSpecifier + 3);
        *(&selfCopy->_restaurantBookingLinkSpecifier + 3) = v132;

        goto LABEL_37;
      }
    }

    else if (!hasInstalledApplications2)
    {
      goto LABEL_35;
    }

    v149 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v150 = [v149 localizedStringForKey:@"Restaurant Booking Row [Settings]" value:@"localized string not found" table:0];
    v151 = [PSSpecifier preferenceSpecifierNamed:v150 target:0 set:0 get:0 detail:0 cell:1 edit:0];

    [v189 addObject:v151];
    [v151 setProperty:&__kCFBooleanTrue forKey:v72];
    v152 = *(&selfCopy->_rideBookingLinkSpecifier + 3);
    *(&selfCopy->_rideBookingLinkSpecifier + 3) = v151;

    if (!hasInstalledApplications3)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_38:
  AutomaticParkedCarLocationSupported = IsFetchAutomaticParkedCarLocationSupported();
  v135 = +[MCProfileConnection sharedConnection];
  if ([v135 userMode] == 1)
  {
    v136 = &PSBundlePathForPreferenceBundle_ptr;
LABEL_52:

    goto LABEL_53;
  }

  isEphemeralMultiUser = [v135 isEphemeralMultiUser];

  v136 = &PSBundlePathForPreferenceBundle_ptr;
  if ((AutomaticParkedCarLocationSupported & (isEphemeralMultiUser ^ 1)) == 1)
  {
    v138 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v139 = [v138 localizedStringForKey:@"Parked Car Group Tile [Settings]" value:@"localized string not found" table:0];
    v135 = [PSSpecifier preferenceSpecifierNamed:v139 target:0 set:0 get:0 detail:0 cell:0 edit:0];

    v140 = [(MapsSettingsController *)selfCopy parkedCarEnabled:0];
    LOBYTE(v138) = [v140 BOOLValue];

    if (v138)
    {
      v141 = MGGetBoolAnswer();
      v142 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
      v143 = v142;
      if (v141)
      {
        v144 = @"Parked Car Footer [Settings]";
      }

      else
      {
        v144 = @"Parked Car Footer [No CarPlay support] [Settings]";
      }
    }

    else
    {
      v142 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
      v143 = v142;
      v144 = @"Parked Car Footer [Disabled] [Settings]";
    }

    v153 = [v142 localizedStringForKey:v144 value:@"localized string not found" table:0];
    [v135 setProperty:v153 forKey:v179];

    [v75 addObject:v135];
    v154 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v155 = [v154 localizedStringForKey:@"Parked Car Switch Title [Settings]" value:@"localized string not found" table:0];
    v156 = [PSSpecifier preferenceSpecifierNamed:v155 target:selfCopy set:"_setParkedCarEnabled:specifier:" get:"parkedCarEnabled:" detail:0 cell:6 edit:0];

    v157 = +[MCProfileConnection sharedConnection];
    LODWORD(v154) = [v157 BOOLRestrictionForFeature:MCFeatureFindMyCarAllowed];

    if (v154)
    {
      [v156 setProperty:&__kCFBooleanFalse forKey:v72];
    }

    [v156 setProperty:@"ParkedCarPreferenceID" forKey:v188];
    [v75 addObject:v156];
    v158 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v159 = [v158 localizedStringForKey:@"Parked Car" value:@"localized string not found" table:0];

    v187 = v156;
    goto LABEL_52;
  }

LABEL_53:
  if ((MapsFeature_IsEnabled_RAPCommunityID() & 1) == 0 && _MKRAPIsAvailable() && *(&selfCopy->super + 1))
  {
    v160 = [v136[415] bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v161 = [v160 localizedStringForKey:@"Report an Issue Group Title [Settings]" value:@"localized string not found" table:0];
    v162 = [PSSpecifier preferenceSpecifierNamed:v161 target:0 set:0 get:0 detail:0 cell:0 edit:0];

    [v189 addObject:v162];
    v163 = [v136[415] bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v164 = [v163 localizedStringForKey:@"Email Correspondence Switch Label [Settings]" value:@"localized string not found" table:0];
    v165 = [PSSpecifier preferenceSpecifierNamed:v164 target:selfCopy set:"_setAllowEmailCorrespondence:specifier:" get:"_allowEmailCorrespondence:" detail:0 cell:6 edit:0];

    [v165 setProperty:&__kCFBooleanTrue forKey:v72];
    v166 = [v136[415] bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v75 = v189;
    v167 = [v166 localizedStringForKey:@"Report an Issue Explanation (Format) [Settings]" value:@"localized string not found" table:0];
    v168 = [NSString stringWithFormat:v167, *(&selfCopy->super + 1)];

    [v165 setProperty:v168 forKey:v179];
    [v189 addObject:v165];

    v169 = v165;
  }

  else
  {
    v169 = v187;
  }

  if ([(MapsSettingsController *)selfCopy _shouldShowUKRegulatorySection])
  {
    v170 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
    [v75 addObject:v170];
    v171 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v172 = [v171 localizedStringForKey:@"UK Online Safety Regulatory Button [Settings]" value:@"localized string not found" table:0];
    v173 = [PSSpecifier preferenceSpecifierNamed:v172 target:selfCopy set:0 get:0 detail:0 cell:13 edit:0];

    [v173 setButtonAction:"_showUKRegulatoryWebPage:"];
    [v75 addObject:v173];

    v169 = v173;
  }

  [(MapsSettingsController *)selfCopy setSpecifiers:v75];
  v174 = [(MapsSettingsController *)selfCopy _specifierIDForTransportType:GEOGetUserTransportTypePreference()];
  v175 = [(MapsSettingsController *)selfCopy specifierForID:v174];
  [v184 setProperty:v175 forKey:PSRadioGroupCheckedSpecifierKey];

  return v75;
}

- (void)_addOfflineSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  if (GEOSupportsOfflineMaps())
  {
    offlineHelper = [(MapsSettingsController *)self offlineHelper];
    subscriptions = [offlineHelper subscriptions];
    v6 = [subscriptions count];

    if (v6)
    {
      v7 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
      v8 = [v7 localizedStringForKey:@"Offline Maps [Settings]" value:@"localized string not found" table:0];
      v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:0 set:0 get:0 detail:0 cell:0 edit:0];

      [specifiersCopy addObject:v9];
      _offlineDownloadSettingsMenu = [(MapsSettingsController *)self _offlineDownloadSettingsMenu];
      v59 = _offlineDownloadSettingsMenu;
      if (_offlineDownloadSettingsMenu)
      {
        v11 = _offlineDownloadSettingsMenu;
        v12 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
        v13 = [v12 localizedStringForKey:@"Downloads [Settings]" value:@"localized string not found" table:0];
        v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:-1 edit:0];

        v15 = objc_opt_class();
        v64 = PSCellClassKey;
        [v14 setProperty:v15 forKey:?];
        v16 = PSEnabledKey;
        [v14 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
        v17 = PSIDKey;
        [v14 setProperty:@"DownloadsPreferencesID" forKey:PSIDKey];
        [v14 setUserInfo:v11];
        [specifiersCopy addObject:v14];
        v9 = v14;
      }

      else
      {
        v16 = PSEnabledKey;
        v64 = PSCellClassKey;
        v17 = PSIDKey;
      }

      v61 = v17;
      offlineHelper2 = [(MapsSettingsController *)self offlineHelper];
      totalOfflineDataSize = [offlineHelper2 totalOfflineDataSize];
      updated = GEOMaximumAutomaticUpdateOfflineDataSize();

      v21 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
      v22 = [v21 localizedStringForKey:@"Automatic Updates [Settings]" value:@"localized string not found" table:0];
      v23 = [PSSpecifier preferenceSpecifierNamed:v22 target:self set:"_setEnableAutomaticUpdates:specifier:" get:"_enableAutomaticUpdates:" detail:0 cell:6 edit:0];

      updated = [NSNumber numberWithBool:totalOfflineDataSize <= updated];
      v63 = v16;
      [v23 setProperty:updated forKey:v16];

      v62 = PSAllowMultilineTitleKey;
      [v23 setProperty:&__kCFBooleanTrue forKey:?];
      [v23 setProperty:objc_opt_class() forKey:v64];
      [v23 setProperty:@"AutomaticUpdatesPreferencesID" forKey:v17];
      if (totalOfflineDataSize > updated)
      {
        v25 = objc_alloc_init(NSByteCountFormatter);
        v26 = [v25 stringFromByteCount:GEOMaximumAutomaticUpdateOfflineDataSize()];
        v28 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
        v29 = [v28 localizedStringForKey:@"Automatic Updates Subtitle Disabled [Settings]" value:@"localized string not found" table:0];
        v30 = [NSString localizedStringWithFormat:v29, v26];
        v27 = PSTableCellSubtitleTextKey;
        [v23 setProperty:v30 forKey:PSTableCellSubtitleTextKey];
      }

      else
      {
        v25 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
        v26 = [v25 localizedStringForKey:@"Automatic Updates Subtitle [Settings]" value:@"localized string not found" table:0];
        v27 = PSTableCellSubtitleTextKey;
        [v23 setProperty:v26 forKey:PSTableCellSubtitleTextKey];
      }

      [specifiersCopy addObject:v23];
      v31 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
      v32 = [v31 localizedStringForKey:@"Optimize Storage [Settings]" value:@"localized string not found" table:0];
      v33 = [PSSpecifier preferenceSpecifierNamed:v32 target:self set:"_setEnableOptimizeStorage:specifier:" get:"_enableOptimizeStorage:" detail:0 cell:6 edit:0];

      v34 = &PSBundlePathForPreferenceBundle_ptr;
      [v33 setProperty:&__kCFBooleanTrue forKey:v63];
      [v33 setProperty:&__kCFBooleanTrue forKey:v62];
      [v33 setProperty:objc_opt_class() forKey:v64];
      v35 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
      v36 = [v35 localizedStringForKey:@"Optimize Storage Subtitle [Settings]" value:@"localized string not found" table:0];
      [v33 setProperty:v36 forKey:v27];

      v37 = v61;
      [v33 setProperty:@"OptimizeStoragePreferencesID" forKey:v61];
      [specifiersCopy addObject:v33];
      v60 = v27;
      if (MapsFeature_IsEnabled_StandaloneWatchOffline())
      {
        v38 = +[NRPairedDeviceRegistry sharedInstance];
        getActivePairedDeviceExcludingAltAccount = [v38 getActivePairedDeviceExcludingAltAccount];

        if (getActivePairedDeviceExcludingAltAccount)
        {
          v40 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
          v41 = [v40 localizedStringForKey:@"Sync with Watch [Settings]" value:@"localized string not found" table:0];
          v42 = [PSSpecifier preferenceSpecifierNamed:v41 target:self set:"_setEnableOfflineSyncToWatch:specifier:" get:"_enableOfflineSyncToWatch:" detail:0 cell:6 edit:0];

          v43 = [[NSUUID alloc] initWithUUIDString:@"3B512C1E-F8D5-4FE7-B109-1AD8EF7F924D"];
          LODWORD(v40) = [getActivePairedDeviceExcludingAltAccount supportsCapability:v43];

          if (v40)
          {
            v44 = [getActivePairedDeviceExcludingAltAccount valueForProperty:NRDevicePropertyName];
            v45 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
            v46 = [v45 localizedStringForKey:@"Sync with Watch Subtitle [Settings]" value:@"localized string not found" table:0];
            v47 = [NSString localizedStringWithFormat:v46, v44];

            v34 = &PSBundlePathForPreferenceBundle_ptr;
            [v42 setProperty:v47 forKey:v27];
            [v42 setProperty:&__kCFBooleanTrue forKey:v63];
          }

          else
          {
            [v42 setProperty:&__kCFBooleanFalse forKey:v63];
          }

          v37 = v61;
          [v42 setProperty:&__kCFBooleanTrue forKey:v62];
          [v42 setProperty:objc_opt_class() forKey:v64];
          [v42 setProperty:@"SyncWithAppleWatchPreferencesID" forKey:v61];
          [specifiersCopy addObject:v42];
          v33 = v42;
        }

        v49 = &PSBundlePathForPreferenceBundle_ptr;
        v48 = v37;
      }

      else
      {
        v48 = v61;
        v49 = &PSBundlePathForPreferenceBundle_ptr;
      }

      v50 = v49[256];
      v51 = [v34[415] bundleForClass:NSClassFromString(@"MapsSettingsController")];
      [v51 localizedStringForKey:@"Only Use Offline Maps [Settings]" value:@"localized string not found" table:0];
      v53 = v52 = v34;
      v54 = [v50 preferenceSpecifierNamed:v53 target:self set:"_setEnableOnlyUseOfflineMaps:specifier:" get:"_enableOnlyUseOfflineMaps:" detail:0 cell:6 edit:0];

      offlineHelper3 = [(MapsSettingsController *)self offlineHelper];
      v56 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [offlineHelper3 hasFullyLoadedSubscriptions]);
      [v54 setProperty:v56 forKey:v63];

      [v54 setProperty:&__kCFBooleanTrue forKey:v62];
      [v54 setProperty:objc_opt_class() forKey:v64];
      v57 = [v52[415] bundleForClass:NSClassFromString(@"MapsSettingsController")];
      v58 = [v57 localizedStringForKey:@"Only Use Offline Maps Subtitle [Settings]" value:@"localized string not found" table:0];
      [v54 setProperty:v58 forKey:v60];

      [v54 setProperty:@"OnlyUseOfflineMapsPreferencesID" forKey:v48];
      [specifiersCopy addObject:v54];
    }
  }
}

- (id)_offlineDownloadSettingsMenu
{
  v3 = +[CellularReachability cellularStatus];
  if (v3)
  {
    v4 = MGGetBoolAnswer();
    v5 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v6 = v5;
    if (v4)
    {
      v7 = @"WLAN Only [menu option]";
    }

    else
    {
      v7 = @"Wi-Fi Only [menu option]";
    }

    if (v4)
    {
      v8 = @"WLAN + Cellular [menu option]";
    }

    else
    {
      v8 = @"Wi-Fi + Cellular [menu option]";
    }

    v9 = [v5 localizedStringForKey:v7 value:@"localized string not found" table:0];

    v10 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v11 = [v10 localizedStringForKey:v8 value:@"localized string not found" table:0];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_23FC4;
    v19[3] = &unk_800C8;
    v19[4] = self;
    v12 = [UIAction actionWithTitle:v9 image:0 identifier:0 handler:v19];
    [v12 setAccessibilityIdentifier:@"WifiOnlyAction"];
    [v12 setAccessibilityLabel:v9];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_2400C;
    v18[3] = &unk_800C8;
    v18[4] = self;
    v13 = [UIAction actionWithTitle:v11 image:0 identifier:0 handler:v18];
    [v13 setAccessibilityIdentifier:@"WifiAndCellularAction"];
    [v13 setAccessibilityLabel:v11];
    BOOL = GEOConfigGetBOOL();
    if (v3 == &dword_0 + 3 && BOOL)
    {
      [v13 setState:1];
      v15 = 0;
    }

    else
    {
      [v12 setState:1];
      if (v3 > 3)
      {
LABEL_14:
        v20[0] = v12;
        v20[1] = v13;
        v16 = [NSArray arrayWithObjects:v20 count:2];
        v3 = [UIMenu menuWithChildren:v16];

        goto LABEL_15;
      }

      v15 = qword_48E60[v3 - 1];
    }

    [v13 setAttributes:v15];
    goto LABEL_14;
  }

LABEL_15:

  return v3;
}

- (id)_enableAutomaticUpdates:(id)updates
{
  offlineHelper = [(MapsSettingsController *)self offlineHelper];
  totalOfflineDataSize = [offlineHelper totalOfflineDataSize];
  updated = GEOMaximumAutomaticUpdateOfflineDataSize();

  BOOL = GEOConfigGetBOOL();
  if (totalOfflineDataSize <= updated)
  {
    v7 = BOOL;
  }

  else
  {
    v7 = 0;
  }

  return [NSNumber numberWithInt:v7];
}

- (void)_setEnableAutomaticUpdates:(id)updates specifier:(id)specifier
{
  [updates BOOLValue];

  GEOConfigSetBOOL();
}

- (id)_enableOptimizeStorage:(id)storage
{
  BOOL = GEOConfigGetBOOL();

  return [NSNumber numberWithBool:BOOL];
}

- (void)_setEnableOptimizeStorage:(id)storage specifier:(id)specifier
{
  [storage BOOLValue];

  GEOConfigSetBOOL();
}

- (id)_enableOfflineSyncToWatch:(id)watch
{
  BOOL = GEOConfigGetBOOL();

  return [NSNumber numberWithBool:BOOL];
}

- (void)_setEnableOfflineSyncToWatch:(id)watch specifier:(id)specifier
{
  [watch BOOLValue];

  GEOConfigSetBOOL();
}

- (id)_enableOnlyUseOfflineMaps:(id)maps
{
  if (GEOConfigGetBOOL())
  {
    offlineHelper = [(MapsSettingsController *)self offlineHelper];
    v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [offlineHelper hasFullyLoadedSubscriptions]);
  }

  else
  {
    v5 = [NSNumber numberWithInt:0];
  }

  return v5;
}

- (void)_setEnableOnlyUseOfflineMaps:(id)maps specifier:(id)specifier
{
  [maps BOOLValue];

  GEOConfigSetBOOL();
}

- (id)parkedCarEnabled:(id)enabled
{
  enabledCopy = enabled;
  v4 = [objc_opt_class() parkedCarEnabled:enabledCopy];

  return v4;
}

+ (id)parkedCarEnabled:(id)enabled
{
  v3 = +[MCProfileConnection sharedConnection];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isFindMyCarAllowed]);

  return v4;
}

- (void)_setParkedCarEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  if ([enabledCopy BOOLValue])
  {
    v6 = 5029;
  }

  else
  {
    v6 = 5030;
  }

  v7 = +[MCProfileConnection sharedConnection];
  bOOLValue = [enabledCopy BOOLValue];

  [v7 setFindMyCarAllowed:bOOLValue];
  v9 = +[MKMapService sharedService];
  [v9 captureUserAction:v6 onTarget:602 eventValue:0];

  [(MapsSettingsController *)self reloadSpecifiers];
}

- (void)_addShareETASpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  if (MSPSharedTripNetworkEnabled())
  {
    v4 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v5 = [v4 localizedStringForKey:@"Share ETA [Settings]" value:@"localized string not found" table:0];
    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:0 set:0 get:0 detail:0 cell:0 edit:0];

    [specifiersCopy addObject:v6];
    v7 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v8 = [v7 localizedStringForKey:@"Enable Share ETA [Settings]" value:@"localized string not found" table:0];
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:"_setEnableShareETA:specifier:" get:"_enableShareETA:" detail:0 cell:6 edit:0];

    [v9 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    [v9 setProperty:@"MSPShareETAUserEnabledKey" forKey:PSDefaultsKey];
    v10 = PSIDKey;
    [v9 setProperty:@"ShareETAPreferenceID" forKey:PSIDKey];
    [specifiersCopy addObject:v9];
    v11 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v12 = [v11 localizedStringForKey:@"Share ETA" value:@"localized string not found" table:0];

    v13 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v14 = [v13 localizedStringForKey:@"Blocked Contacts [Settings]" value:@"localized string not found" table:0];
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:2 edit:0];

    v16 = PSBundlePathForPreferenceBundle();
    [v15 setProperty:v16 forKey:PSLazilyLoadedBundleKey];

    [v15 setProperty:@"PHBlocklistSettingsListController" forKey:PSDetailControllerClassKey];
    [v15 setProperty:&__kCFBooleanTrue forKey:PSBundleOverridePrincipalClassKey];
    [v15 setControllerLoadAction:"lazyLoadBundle:"];
    v17 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v18 = [v17 localizedStringForKey:@"Share ETA Footer [Settings]" value:@"localized string not found" table:0];
    [v15 setProperty:v18 forKey:PSFooterTextGroupKey];

    [v15 setProperty:@"BlockedContactsPreferenceID" forKey:v10];
    [specifiersCopy addObject:v15];
  }
}

- (void)_setEnableShareETA:(id)a specifier:(id)specifier
{
  [MapsSettings setValue:a forConfigKey:GEOConfigMSPShareETAUserEnabled[0], GEOConfigMSPShareETAUserEnabled[1]];

  notify_post("com.apple.maps.ShareETAUserEnabled");
}

- (id)lagunaBeachSiriSuggestionsEnabled:(id)enabled
{
  v3 = GEOAreLagunaBeachSiriSuggestionsEnabled();

  return [NSNumber numberWithBool:v3];
}

- (void)_setLagunaBeachSiriSuggestionsEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  [enabledCopy BOOLValue];
  GEOSetAreLagunaBeachSiriSuggestionsEnabled();
  bOOLValue = [enabledCopy BOOLValue];

  if (bOOLValue)
  {
    v6 = 322;
  }

  else
  {
    v6 = 321;
  }

  [GEOAPPortal captureUserAction:v6 target:602 value:0];
}

- (id)allowsAddingRatingsAndPhotos:(id)photos
{
  LagunaBeachContributions = GEOCanUserMakeLagunaBeachContributions();

  return [NSNumber numberWithBool:LagunaBeachContributions];
}

- (void)_setAllowsAddingRatingsAndPhotos:(id)photos specifier:(id)specifier
{
  photosCopy = photos;
  [photosCopy BOOLValue];
  GEOSetCanUserMakeLagunaBeachContributions();
  bOOLValue = [photosCopy BOOLValue];

  if (bOOLValue)
  {
    v6 = 324;
  }

  else
  {
    v6 = 330;
  }

  [GEOAPPortal captureUserAction:v6 target:602 value:0];
}

- (void)_appendPrivacyFooterFromBundleIdentifiers:(id)identifiers toGroupSpecifier:(id)specifier selector:(SEL)selector
{
  specifierCopy = specifier;
  identifiersCopy = identifiers;
  if ([identifiersCopy count] <= 1)
  {
    firstObject = [identifiersCopy firstObject];

    v9 = [OBPrivacyLinkController linkWithBundleIdentifier:firstObject];
    identifiersCopy = firstObject;
  }

  else
  {
    v9 = [OBPrivacyLinkController linkWithBundleIdentifiers:identifiersCopy];
  }

  flow = [v9 flow];
  localizedButtonTitle = [flow localizedButtonTitle];

  v13 = [specifierCopy propertyForKey:PSFooterTextGroupKey];
  if (v13)
  {
    [NSString stringWithFormat:@"%@ %@", v13, localizedButtonTitle];
  }

  else
  {
    [NSString stringWithFormat:@"%@", localizedButtonTitle, v23];
  }
  v14 = ;
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = PSFooterCellClassGroupKey;
  [specifierCopy setProperty:v16 forKey:PSFooterCellClassGroupKey];

  [specifierCopy setProperty:v14 forKey:PSFooterHyperlinkViewTitleKey];
  v26.location = [v14 rangeOfString:localizedButtonTitle];
  v18 = NSStringFromRange(v26);
  [specifierCopy setProperty:v18 forKey:PSFooterHyperlinkViewLinkRangeKey];

  v19 = [NSValue valueWithNonretainedObject:self];
  [specifierCopy setProperty:v19 forKey:PSFooterHyperlinkViewTargetKey];

  v20 = NSStringFromSelector(selector);
  [specifierCopy setProperty:v20 forKey:PSFooterHyperlinkViewActionKey];

  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  [specifierCopy setProperty:v22 forKey:v17];
}

- (id)_privacyIdentifiersForContributeToMapsSection
{
  v2 = +[NSMutableArray array];
  if (MapsFeature_IsEnabled_LagunaBeach() && GEODoesUserHaveValidAccountForMakingContributions())
  {
    [v2 addObject:@"com.apple.onboarding.ratingsAndPhotos"];
  }

  if (MapsFeature_IsEnabled_EVRouting() && GEOConfigGetBOOL())
  {
    [v2 addObject:@"com.apple.onboarding.improveEVRouting"];
  }

  v3 = [v2 copy];

  return v3;
}

- (void)_presentContributeToMapsPrivacySplashViewController
{
  _privacyIdentifiersForContributeToMapsSection = [(MapsSettingsController *)self _privacyIdentifiersForContributeToMapsSection];
  [(MapsSettingsController *)self _presentPrivacySplashViewControllerForIdentifiers:_privacyIdentifiersForContributeToMapsSection];
}

- (void)_presentMapsAppPrivacySplashViewController
{
  v4 = @"com.apple.onboarding.maps";
  v3 = [NSArray arrayWithObjects:&v4 count:1];
  [(MapsSettingsController *)self _presentPrivacySplashViewControllerForIdentifiers:v3];
}

- (void)_presentPrivacySplashViewControllerForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if ([identifiersCopy count] > 1)
  {
    v6 = [OBPrivacyPresenter presenterForPrivacyUnifiedAboutWithIdentifiers:identifiersCopy];
  }

  else
  {
    firstObject = [identifiersCopy firstObject];

    v6 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:firstObject];
    identifiersCopy = firstObject;
  }

  [v6 setPresentingViewController:self];
  [v6 present];
}

- (id)enableImproveEVRouting:(id)routing
{
  BOOL = GEOConfigGetBOOL();

  return [NSNumber numberWithBool:BOOL];
}

- (void)setEnableImproveEVRouting:(id)routing specifier:(id)specifier
{
  [routing BOOLValue];

  GEOConfigSetBOOL();
}

- (void)didUpdateEVApplications:(id)applications
{
  applicationsCopy = applications;
  v5 = applicationsCopy;
  v7 = applicationsCopy;
  if (!*(&self->_restaurantBookingLinkSpecifier + 3))
  {
    goto LABEL_4;
  }

  v6 = [applicationsCopy count];
  v5 = v7;
  if (v6)
  {
    if (*(&self->_restaurantBookingLinkSpecifier + 3))
    {
      goto LABEL_6;
    }

LABEL_4:
    if (![v5 count])
    {
      goto LABEL_6;
    }
  }

  [(MapsSettingsController *)self reloadSpecifiers];
LABEL_6:

  _objc_release_x1();
}

- (void)didUpdateElectricVehicleCount:(unint64_t)count
{
  if ((count == 0) != (*(&self->_restaurantBookingLinkSpecifier + 3) == 0))
  {
    [(MapsSettingsController *)self reloadSpecifiers];
  }
}

- (void)_refreshThirdPartyPhotoSharingStatus
{
  [(MapsSettingsController *)self setThirdPartyPhotoSharingStatusLoading:1];
  objc_initWeak(&location, self);
  v3 = +[UGCThirdPartyPhotoSharingPreferencesManager sharedManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_2508C;
  v4[3] = &unk_800F0;
  objc_copyWeak(&v5, &location);
  [v3 fetchThirdPartyPhotoSharingPreferencesWithCompletion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (id)_thirdPartyPhotoSharingEnabled:(id)enabled
{
  thirdPartyPhotoSharingPreference = [(MapsSettingsController *)self thirdPartyPhotoSharingPreference];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [thirdPartyPhotoSharingPreference optIn]);

  return v4;
}

- (void)_setThirdPartyPhotoSharingEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  [specifierCopy setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
  [(MapsSettingsController *)self reloadSpecifier:specifierCopy];
  objc_initWeak(&location, self);
  v8 = +[UGCThirdPartyPhotoSharingPreferencesManager sharedManager];
  bOOLValue = [enabledCopy BOOLValue];
  thirdPartyPhotoSharingPreference = [(MapsSettingsController *)self thirdPartyPhotoSharingPreference];
  version = [thirdPartyPhotoSharingPreference version];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_252E8;
  v13[3] = &unk_80118;
  objc_copyWeak(&v15, &location);
  v12 = specifierCopy;
  v14 = v12;
  [v8 updateThirdPartyPhotoSharingPreferences:bOOLValue versionID:version completion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (BOOL)_shouldShowUKRegulatorySection
{
  v2 = +[NSLocale currentLocale];
  regionCode = [v2 regionCode];
  v4 = [regionCode isEqualToString:@"GB"];

  return v4;
}

- (void)_showUKRegulatoryWebPage:(id)page
{
  v4 = [SFSafariViewController alloc];
  v5 = [NSURL URLWithString:@"https://www.apple.com/uk/legal/online-safety/index.html"];
  v6 = [v4 initWithURL:v5];

  [v6 setModalPresentationStyle:2];
  [(MapsSettingsController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)valueChangedForGEOConfigKey:(id)key
{
  var1 = key.var1;
  var0 = key.var0;
  v6 = key.var0 == 628 && key.var1 == &unk_74DF8;
  if (v6 || (key.var0 == GeoOfflineConfig_AutomaticUpdatesEnabled ? (v7 = key.var1 == *(&GeoOfflineConfig_AutomaticUpdatesEnabled + 1)) : (v7 = 0), v7 || (key.var0 == GeoOfflineConfig_OptimizeStorageEnabled ? (v8 = key.var1 == *(&GeoOfflineConfig_OptimizeStorageEnabled + 1)) : (v8 = 0), v8 || (key.var0 == GeoOfflineConfig_SyncToWatchEnabled ? (v9 = key.var1 == *(&GeoOfflineConfig_SyncToWatchEnabled + 1)) : (v9 = 0), v9 || (key.var0 == 569 ? (v10 = key.var1 == &unk_73E80) : (v10 = 0), v10)))))
  {
    [(MapsSettingsController *)self reloadSpecifiers];
  }

  if (var0 == 736 && var1 == &unk_76AF0)
  {

    [(MapsSettingsController *)self reloadSpecifiers];
  }
}

@end