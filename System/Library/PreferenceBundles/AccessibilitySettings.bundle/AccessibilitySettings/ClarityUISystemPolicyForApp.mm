@interface ClarityUISystemPolicyForApp
- (BOOL)_checkAccessForService:(id)service;
- (BOOL)_isSystemApplication;
- (BOOL)requiresBluetoothAccess;
- (BOOL)requiresLocationAccess;
- (ClarityUISystemPolicyForApp)initWithBundleIdentifier:(id)identifier;
- (id)_PSSystemPolicyOptionsAsArray:(unint64_t)array;
- (id)_PSSystemPolicyOptionsAsString:(unint64_t)string;
- (id)_axPSSystemPolicyOptions:(unint64_t)options;
- (id)_axSpecifiersForPolicyOptions:(unint64_t)options force:(BOOL)force;
- (id)_bundle;
- (id)_localizedExplanationsForServices:(id)services;
- (id)appInfo;
- (id)authLevelStringForStatus:(unint64_t)status;
- (id)contactsServicesSpecifier;
- (id)developerExplanationsForSpecifiers:(id)specifiers;
- (id)locationServicesSpecifier;
- (id)locationStatus:(id)status;
- (id)photosServicesSpecifier;
- (id)privacySpecifiersForPolicyOptions:(unint64_t)options;
- (id)record;
- (id)systemPolicySpecifiersIncludingForced:(BOOL)forced;
- (unint64_t)_axPolicyOptionsFromSpecifiers:(id)specifiers;
- (void)record;
@end

@implementation ClarityUISystemPolicyForApp

- (ClarityUISystemPolicyForApp)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = ClarityUISystemPolicyForApp;
  v5 = [(ClarityUISystemPolicyForApp *)&v15 init];
  v6 = v5;
  if (v5)
  {
    v5->_bundleIdentifier = identifierCopy;
    *&v5->_claritySupportedPolicyOptions = xmmword_1DAA00;
    appPolicy = v5->_appPolicy;
    v5->_appPolicy = 0;

    v8 = objc_opt_new();
    infoPlistCache = v6->_infoPlistCache;
    v6->_infoPlistCache = v8;

    appInfo = v6->_appInfo;
    v6->_appInfo = 0;

    record = v6->_record;
    v6->_record = 0;

    photosPrivacyController = v6->_photosPrivacyController;
    v6->_photosPrivacyController = 0;

    contactsPrivacyController = v6->_contactsPrivacyController;
    v6->_contactsPrivacyController = 0;

    if (!TCCKeyToPolicyMap)
    {
      InitializeMap();
    }
  }

  return v6;
}

- (id)record
{
  record = self->_record;
  if (!record)
  {
    v4 = [LSApplicationRecord alloc];
    bundleIdentifier = self->_bundleIdentifier;
    v11 = 0;
    v6 = [v4 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:&v11];
    v7 = v11;
    if (v7)
    {
      v8 = CLFLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(ClarityUISystemPolicyForApp *)&self->_bundleIdentifier record];
      }
    }

    v9 = self->_record;
    self->_record = v6;

    record = self->_record;
  }

  return record;
}

- (id)_bundle
{
  record = [(ClarityUISystemPolicyForApp *)self record];
  v3 = record;
  if (record)
  {
    v4 = [record URL];
    v5 = [NSBundle bundleWithURL:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)appInfo
{
  appInfo = self->_appInfo;
  if (!appInfo)
  {
    _bundle = [(ClarityUISystemPolicyForApp *)self _bundle];
    v5 = [_bundle pathForResource:@"Info" ofType:@"plist"];

    v6 = [[NSDictionary alloc] initWithContentsOfFile:v5];
    v7 = self->_appInfo;
    self->_appInfo = v6;

    appInfo = self->_appInfo;
  }

  return appInfo;
}

- (BOOL)_isSystemApplication
{
  record = [(ClarityUISystemPolicyForApp *)self record];
  v4 = [record developerType] == 1;

  record2 = [(ClarityUISystemPolicyForApp *)self record];
  LOBYTE(record) = [record2 hasSettingsBundle];

  return v4 & (record ^ 1);
}

- (BOOL)_checkAccessForService:(id)service
{
  serviceCopy = service;
  v5 = [(NSMutableDictionary *)self->_infoPlistCache objectForKey:serviceCopy];

  if (v5)
  {
    appInfo = [(NSMutableDictionary *)self->_infoPlistCache objectForKey:serviceCopy];
    LOBYTE(v7) = [appInfo BOOLValue];
  }

  else
  {
    appInfo = [(ClarityUISystemPolicyForApp *)self appInfo];
    v8 = [appInfo objectForKey:serviceCopy];
    v7 = v8 != 0;

    infoPlistCache = self->_infoPlistCache;
    v10 = [NSNumber numberWithBool:v7];
    [(NSMutableDictionary *)infoPlistCache setObject:v10 forKey:serviceCopy];
  }

  return v7;
}

- (BOOL)requiresLocationAccess
{
  v3 = [(ClarityUISystemPolicyForApp *)self _checkAccessForService:@"NSLocationWhenInUseUsageDescription"];
  v4 = [(ClarityUISystemPolicyForApp *)self _checkAccessForService:@"NSLocationAlwaysAndWhenInUseUsageDescription"];
  return (v3 | v4 | [(ClarityUISystemPolicyForApp *)self _checkAccessForService:@"NSLocationTemporaryUsageDescriptionDictionary"]) & 1;
}

- (BOOL)requiresBluetoothAccess
{
  if ([(ClarityUISystemPolicyForApp *)self _checkAccessForService:@"NSBluetoothAlwaysUsageDescription"])
  {
    return 1;
  }

  return [(ClarityUISystemPolicyForApp *)self _checkAccessForService:@"NSBluetoothPeripheralUsageDescription"];
}

- (id)systemPolicySpecifiersIncludingForced:(BOOL)forced
{
  forcedCopy = forced;
  appPolicy = [(ClarityUISystemPolicyForApp *)self appPolicy];

  if (!appPolicy)
  {
    v6 = [[PSSystemPolicyForApp alloc] initWithBundleIdentifier:self->_bundleIdentifier];
    [(ClarityUISystemPolicyForApp *)self setAppPolicy:v6];
  }

  v7 = [(ClarityUISystemPolicyForApp *)self _axSpecifiersForPolicyOptions:self->_tccPolicyOptions force:0];
  v8 = [NSMutableArray arrayWithArray:v7];

  if (forcedCopy && ![(ClarityUISystemPolicyForApp *)self _isSystemApplication])
  {
    v10 = [(ClarityUISystemPolicyForApp *)self _axPolicyOptionsFromSpecifiers:v8];
    tccPolicyOptions = self->_tccPolicyOptions;
    v12 = CLFLogSettings();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier = self->_bundleIdentifier;
      v14 = [(ClarityUISystemPolicyForApp *)self _PSSystemPolicyOptionsAsString:v10];
      v17 = 138412546;
      v18 = bundleIdentifier;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Bundle ID: %@ - Current Options from Preferences: %@", &v17, 0x16u);
    }

    v15 = [(ClarityUISystemPolicyForApp *)self privacySpecifiersForPolicyOptions:tccPolicyOptions & ~v10];
    [v8 addObjectsFromArray:v15];
    v9 = [(ClarityUISystemPolicyForApp *)self developerExplanationsForSpecifiers:v8];
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

- (id)_axSpecifiersForPolicyOptions:(unint64_t)options force:(BOOL)force
{
  forceCopy = force;
  v37 = objc_opt_new();
  selfCopy = self;
  v7 = [(ClarityUISystemPolicyForApp *)self _axPSSystemPolicyOptions:options];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v41 = [v7 countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (v41)
  {
    v40 = *v49;
    *&v8 = 138412290;
    v36 = v8;
    v39 = forceCopy;
    v38 = v7;
    do
    {
      for (i = 0; i != v41; i = i + 1)
      {
        if (*v49 != v40)
        {
          objc_enumerationMutation(v7);
        }

        v10 = *(*(&v48 + 1) + 8 * i);
        v11 = [v7 valueForKey:{v10, v36}];
        v12 = v11;
        if (v11)
        {
          v43 = v11;
          integerValue = [v11 integerValue];
          appPolicy = [(ClarityUISystemPolicyForApp *)selfCopy appPolicy];
          v15 = [appPolicy specifiersForPolicyOptions:integerValue force:forceCopy];

          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v16 = v15;
          v17 = [v16 countByEnumeratingWithState:&v44 objects:v56 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = 0;
            v20 = *v45;
            do
            {
              for (j = 0; j != v18; j = j + 1)
              {
                if (*v45 != v20)
                {
                  objc_enumerationMutation(v16);
                }

                v22 = *(*(&v44 + 1) + 8 * j);
                if ([v22 cellType])
                {
                  if (v19)
                  {
                    v23 = CLFLogSettings();
                    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      v53 = v22;
                      v54 = 2112;
                      v55 = v19;
                      _os_log_error_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "Found more than one specifier! Something is wrong! \n\t New Specifier: %@. \n\t Previously Found Specifier: %@", buf, 0x16u);
                    }
                  }

                  else
                  {
                    v19 = v22;
                  }
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v44 objects:v56 count:16];
            }

            while (v18);
          }

          else
          {
            v19 = 0;
          }

          forceCopy = v39;
          if (v39)
          {
            v12 = v43;
            if (!v19)
            {
              if ([v10 isEqualToString:@"PSSystemPolicyOptionsPrivacyPhotos"])
              {
                photosServicesSpecifier = [(ClarityUISystemPolicyForApp *)selfCopy photosServicesSpecifier];
                v19 = photosServicesSpecifier;
                if (photosServicesSpecifier)
                {
                  v25 = photosServicesSpecifier;
                }
              }

              else
              {
                v19 = 0;
              }

              if ([v10 isEqualToString:@"PSSystemPolicyOptionsPrivacyAddressBook"])
              {
                contactsServicesSpecifier = [(ClarityUISystemPolicyForApp *)selfCopy contactsServicesSpecifier];
                v27 = contactsServicesSpecifier;
                if (contactsServicesSpecifier)
                {
                  v28 = contactsServicesSpecifier;

                  v19 = v28;
                }
              }

              if ([v10 isEqualToString:@"PSSystemPolicyOptionsLocation"])
              {
                locationServicesSpecifier = [(ClarityUISystemPolicyForApp *)selfCopy locationServicesSpecifier];
                v30 = locationServicesSpecifier;
                if (locationServicesSpecifier)
                {
                  v31 = locationServicesSpecifier;

                  v19 = v31;
                }
              }
            }
          }

          else
          {
            v12 = v43;
          }

          if (v19)
          {
            [v19 setProperty:v10 forKey:@"ClarityIDKey"];
            [v19 setProperty:v12 forKey:@"ClarityPSPolicyOption"];
            v32 = [SpecifierIdentifierToTCCAuthPromptIcon objectForKeyedSubscript:v10];
            [v19 setProperty:v32 forKey:@"ClarityTCCIconKey"];
            v33 = [SpecifierIdentifierToTCCKeyMap objectForKeyedSubscript:v10];
            [v19 setProperty:v33 forKey:@"ClarityTCCIdentifier"];
            [v37 addObject:v19];

            goto LABEL_45;
          }

          if (v39)
          {
            v32 = CLFLogSettings();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              *buf = v36;
              v53 = v10;
              _os_log_error_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "Forcing policyKey: %@, but no specifier was found!", buf, 0xCu);
            }

LABEL_45:
          }

          v7 = v38;
          goto LABEL_47;
        }

        v16 = CLFLogSettings();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = v36;
          v53 = v10;
          _os_log_error_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "No PSSystemPolicyOption found policyKey: %@", buf, 0xCu);
        }

LABEL_47:
      }

      v41 = [v7 countByEnumeratingWithState:&v48 objects:v57 count:16];
    }

    while (v41);
  }

  v34 = [(ClarityUISystemPolicyForApp *)selfCopy developerExplanationsForSpecifiers:v37];

  return v34;
}

- (unint64_t)_axPolicyOptionsFromSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [specifiersCopy countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v17;
    *&v5 = 138412290;
    v15 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(specifiersCopy);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 propertyForKey:{@"ClarityPSPolicyOption", v15}];
        v12 = v11;
        if (v11)
        {
          v7 |= [v11 integerValue];
        }

        else
        {
          v13 = CLFLogSettings();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = v15;
            v21 = v10;
            _os_log_error_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "Specifier property for ClarityPSPolicyOptionKey is nil! Specifier: %@", buf, 0xCu);
          }
        }
      }

      v6 = [specifiersCopy countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)privacySpecifiersForPolicyOptions:(unint64_t)options
{
  v5 = CLFLogSettings();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Checking which System Policy Specifiers we will need to force to appear.", buf, 2u);
  }

  v6 = CLFLogSettings();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v8 = [(ClarityUISystemPolicyForApp *)self _PSSystemPolicyOptionsAsString:options];
    *buf = 138412546;
    v38 = bundleIdentifier;
    v39 = 2112;
    v40 = v8;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Bundle ID: %@ - Policy Options to check for: %@", buf, 0x16u);
  }

  v9 = [(ClarityUISystemPolicyForApp *)self _axPSSystemPolicyOptions:options];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v10)
  {
    v13 = 0;
    goto LABEL_24;
  }

  v12 = v10;
  v13 = 0;
  v14 = *v33;
  v15 = &unk_2BA000;
  *&v11 = 138412290;
  v30 = v11;
  v31 = v9;
  do
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v33 != v14)
      {
        objc_enumerationMutation(v9);
      }

      v17 = *(*(&v32 + 1) + 8 * i);
      v18 = [v15[102] objectForKey:{v17, v30}];
      if (v18)
      {
        if (![(ClarityUISystemPolicyForApp *)self _checkAccessForService:v18])
        {
          goto LABEL_20;
        }

        v19 = [v9 objectForKey:v17];
        v20 = v19;
        if (v19)
        {
          v13 |= [v19 integerValue];
        }

        else
        {
          v21 = v15;
          selfCopy = self;
          v23 = v13;
          v24 = CLFLogSettings();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = v30;
            v38 = v17;
            _os_log_error_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "No Policy Option Number found for policyKey: %@", buf, 0xCu);
          }

          v13 = v23;
          self = selfCopy;
          v15 = v21;
          v9 = v31;
        }
      }

      else
      {
        v20 = CLFLogSettings();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = v30;
          v38 = v17;
          _os_log_error_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "No TCC Key found for policyKey: %@", buf, 0xCu);
        }
      }

LABEL_20:
    }

    v12 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
  }

  while (v12);
LABEL_24:
  v25 = CLFLogSettings();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = self->_bundleIdentifier;
    v27 = [(ClarityUISystemPolicyForApp *)self _PSSystemPolicyOptionsAsString:v13];
    *buf = 138412546;
    v38 = v26;
    v39 = 2112;
    v40 = v27;
    _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "Bundle ID: %@ - Forcing Specifiers for Policy Options: %@", buf, 0x16u);
  }

  v28 = [(ClarityUISystemPolicyForApp *)self _axSpecifiersForPolicyOptions:v13 force:1];

  return v28;
}

- (id)_localizedExplanationsForServices:(id)services
{
  bundleIdentifier = self->_bundleIdentifier;
  servicesCopy = services;
  v5 = [LSApplicationProxy applicationProxyForIdentifier:bundleIdentifier];
  v6 = [NSSet setWithArray:servicesCopy];

  v7 = [v5 localizedValuesForKeys:v6 fromTable:0];

  return v7;
}

- (id)developerExplanationsForSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  allKeys = [TCCKeyToSpecifierIdentifierMap allKeys];
  v19 = [(ClarityUISystemPolicyForApp *)self _localizedExplanationsForServices:allKeys];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = specifiersCopy;
  v5 = [obj countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v5)
  {
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        name = [v8 name];
        v10 = [v8 propertyForKey:@"ClarityTCCIdentifier"];
        if (v10)
        {
          *v29 = 0;
          *&v29[8] = v29;
          *&v29[16] = 0x3032000000;
          v30 = __Block_byref_object_copy__3;
          v31 = __Block_byref_object_dispose__3;
          v32 = 0;
          v20 = v19;
          v11 = v10;
          AXPerformSafeBlock();
          if (*(*&v29[8] + 40))
          {
            v12 = CLFLogSettings();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = *(*&v29[8] + 40);
              *buf = 138412546;
              v26 = v13;
              v27 = 2112;
              v28 = v11;
              _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Found explanation: %@ for TCCKey: %@.", buf, 0x16u);
            }

            [v8 setProperty:*(*&v29[8] + 40) forKey:@"ClarityTCCExplanation"];
          }

          else
          {
            v15 = CLFLogSettings();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v26 = v11;
              _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "No explanation found for TCCKey: %@", buf, 0xCu);
            }
          }

          _Block_object_dispose(v29, 8);
        }

        else
        {
          v14 = CLFLogSettings();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *v29 = 138412546;
            *&v29[4] = name;
            *&v29[12] = 2112;
            *&v29[14] = v8;
            _os_log_error_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "A valid tcc key was not found for tcc title: %@, specifier: %@", v29, 0x16u);
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v5);
  }

  return obj;
}

uint64_t __66__ClarityUISystemPolicyForApp_developerExplanationsForSpecifiers___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stringForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

- (id)photosServicesSpecifier
{
  requiresPhotosAccess = [(ClarityUISystemPolicyForApp *)self requiresPhotosAccess];
  requiresPhotosAddAccess = [(ClarityUISystemPolicyForApp *)self requiresPhotosAddAccess];
  v5 = requiresPhotosAddAccess;
  if (requiresPhotosAccess || requiresPhotosAddAccess)
  {
    photosPrivacyController = self->_photosPrivacyController;
    if (!photosPrivacyController)
    {
      v8 = objc_opt_new();
      v9 = self->_photosPrivacyController;
      self->_photosPrivacyController = v8;

      photosPrivacyController = self->_photosPrivacyController;
    }

    v10 = settingsLocString(@"PHOTOS", @"ClarityUISettings");
    v6 = [(PSPhotosPolicyController *)photosPrivacyController appSpecifierWithName:v10 bundleID:self->_bundleIdentifier showPhotosAccess:requiresPhotosAccess showPhotosAddAccess:v5];

    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:PSLazyIconLoading];
    [v6 setObject:@"com.apple.mobileslideshow" forKeyedSubscript:PSLazyIconAppID];
    [v6 setProperty:@"Photos" forKey:@"ClarityIDKey"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)contactsServicesSpecifier
{
  if ([(ClarityUISystemPolicyForApp *)self requiresContactsAccess])
  {
    contactsPrivacyController = self->_contactsPrivacyController;
    if (!contactsPrivacyController)
    {
      v4 = objc_opt_new();
      v5 = self->_contactsPrivacyController;
      self->_contactsPrivacyController = v4;

      contactsPrivacyController = self->_contactsPrivacyController;
    }

    v6 = settingsLocString(@"CONTACTS", @"ClarityUISettings");
    v7 = [(PSContactsPolicyController *)contactsPrivacyController appSpecifierWithName:v6 bundleID:self->_bundleIdentifier showContactsAccess:1 showPickerUsage:0];

    [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:PSLazyIconLoading];
    [v7 setObject:@"com.apple.MobileAddressBook" forKeyedSubscript:PSLazyIconAppID];
    [v7 setProperty:@"Contacts" forKey:@"ClarityIDKey"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)locationServicesSpecifier
{
  v3 = settingsLocString(@"LOCATION_SERVICES", @"ClarityUISettings");
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:0 get:"locationStatus:" detail:NSClassFromString(@"PUILocationServicesAuthorizationLevelController") cell:2 edit:0];

  v5 = [NSNumber numberWithInt:[(ClarityUISystemPolicyForApp *)self _isLocationServicesRestricted]^ 1];
  [v4 setProperty:v5 forKey:PSEnabledKey];

  [v4 setProperty:self->_bundleIdentifier forKey:PSIDKey];
  [v4 setProperty:NSClassFromString(@"PSUILocationServicesAuthLevelCell") forKey:PSCellClassKey];
  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:PSLazyIconLoading];
  [v4 setObject:@"com.apple.graphic-icon.location" forKeyedSubscript:PSIconUTTypeIdentifierKey];
  [v4 setProperty:@"Location" forKey:@"ClarityIDKey"];

  return v4;
}

- (id)locationStatus:(id)status
{
  v4 = CLCopyAppsUsingLocation();
  v5 = [v4 objectForKey:self->_bundleIdentifier];
  v6 = [CLLocationManager entityAuthorizationForLocationDictionary:v5];

  v7 = [(ClarityUISystemPolicyForApp *)self authLevelStringForStatus:v6];

  return v7;
}

- (id)authLevelStringForStatus:(unint64_t)status
{
  if (status)
  {
    v6 = @"NEVER_AUTHORIZATION";
  }

  else if (status)
  {
    if ((status & 4) != 0)
    {
      v6 = @"ALWAYS_AUTHORIZATION";
    }

    else
    {
      if ((status & 2) == 0)
      {
        v4 = 0;

        return v4;
      }

      v6 = @"WHEN_IN_USE_AUTHORIZATION_SHORT";
    }
  }

  else
  {
    v6 = @"NOT_DETERMINED_AUTHORIZATION_SHORT";
  }

  v4 = settingsLocString(v6, @"ClarityUISettings");

  return v4;
}

- (id)_axPSSystemPolicyOptions:(unint64_t)options
{
  v4 = objc_opt_new();
  v5 = v4;
  if (options)
  {
    [v4 setObject:&off_27AA10 forKey:@"PSSystemPolicyOptionsNotifications"];
    if ((options & 2) == 0)
    {
LABEL_3:
      if ((options & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_42;
    }
  }

  else if ((options & 2) == 0)
  {
    goto LABEL_3;
  }

  [v5 setObject:&off_27A8A8 forKey:@"PSSystemPolicyOptionsBackgroundRefresh"];
  if ((options & 4) == 0)
  {
LABEL_4:
    if ((options & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_42:
  [v5 setObject:&off_27A908 forKey:@"PSSystemPolicyOptionsPrivacyAddressBook"];
  if ((options & 8) == 0)
  {
LABEL_5:
    if ((options & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

LABEL_43:
  [v5 setObject:&off_27A8D8 forKey:@"PSSystemPolicyOptionsPrivacyCalendar"];
  if ((options & 0x10) == 0)
  {
LABEL_6:
    if ((options & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

LABEL_44:
  [v5 setObject:&off_27AA40 forKey:@"PSSystemPolicyOptionsPrivacyReminders"];
  if ((options & 0x20) == 0)
  {
LABEL_7:
    if ((options & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_45:
  [v5 setObject:&off_27AA28 forKey:@"PSSystemPolicyOptionsPrivacyPhotos"];
  if ((options & 0x400) == 0)
  {
LABEL_8:
    if ((options & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_47;
  }

LABEL_46:
  [v5 setObject:&off_27A8C0 forKey:@"PSSystemPolicyOptionsBluetooth"];
  if ((options & 0x800) == 0)
  {
LABEL_9:
    if ((options & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

LABEL_47:
  [v5 setObject:&off_27A9C8 forKey:@"PSSystemPolicyOptionsMicrophone"];
  if ((options & 0x1000) == 0)
  {
LABEL_10:
    if ((options & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

LABEL_48:
  [v5 setObject:&off_27A9E0 forKey:@"PSSystemPolicyOptionsMotion"];
  if ((options & 0x2000) == 0)
  {
LABEL_11:
    if ((options & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_50;
  }

LABEL_49:
  [v5 setObject:&off_27A8F0 forKey:@"PSSystemPolicyOptionsCamera"];
  if ((options & 0x4000) == 0)
  {
LABEL_12:
    if ((options & 0x8000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_51;
  }

LABEL_50:
  [v5 setObject:&off_27AC08 forKey:@"PSSystemPolicyOptionsUbiquity"];
  if ((options & 0x8000) == 0)
  {
LABEL_13:
    if ((options & 0x10000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_52;
  }

LABEL_51:
  [v5 setObject:&off_27AC20 forKey:@"PSSystemPolicyOptionsCellularData"];
  if ((options & 0x10000) == 0)
  {
LABEL_14:
    if ((options & 0x20000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_53;
  }

LABEL_52:
  [v5 setObject:&off_27A998 forKey:@"PSSystemPolicyOptionsLocation"];
  if ((options & 0x20000) == 0)
  {
LABEL_15:
    if ((options & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_54;
  }

LABEL_53:
  [v5 setObject:&off_27AC38 forKey:@"PSSystemPolicyOptionsKeyboardNetworking"];
  if ((options & 0x40000) == 0)
  {
LABEL_16:
    if ((options & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_55;
  }

LABEL_54:
  [v5 setObject:&off_27A968 forKey:@"PSSystemPolicyOptionsWillow"];
  if ((options & 0x80000) == 0)
  {
LABEL_17:
    if ((options & 0x100000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_56;
  }

LABEL_55:
  [v5 setObject:&off_27A9B0 forKey:@"PSSystemPolicyOptionsMediaLibrary"];
  if ((options & 0x100000) == 0)
  {
LABEL_18:
    if ((options & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_57;
  }

LABEL_56:
  [v5 setObject:&off_27AA70 forKey:@"PSSystemPolicyOptionsSpeechRecognition"];
  if ((options & 0x200000) == 0)
  {
LABEL_19:
    if ((options & 0x400000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

LABEL_57:
  [v5 setObject:&off_27AC50 forKey:@"PSSystemPolicyOptionsVideoSubscriber"];
  if ((options & 0x400000) == 0)
  {
LABEL_20:
    if ((options & 0x800000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

LABEL_58:
  [v5 setObject:&off_27AC68 forKey:@"PSSystemPolicyOptionsDocumentsAndData"];
  if ((options & 0x800000) == 0)
  {
LABEL_21:
    if ((options & 0x1000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_59:
  [v5 setObject:&off_27AA58 forKey:@"PSSystemPolicyOptionsAssistantAndSearch"];
  if ((options & 0x1000000) == 0)
  {
LABEL_22:
    if ((options & 0x2000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_61;
  }

LABEL_60:
  [v5 setObject:&off_27A938 forKey:@"PSSystemPolicyOptionsFaceID"];
  if ((options & 0x2000000) == 0)
  {
LABEL_23:
    if ((options & 0x4000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_62;
  }

LABEL_61:
  [v5 setObject:&off_27AC80 forKey:@"PSSystemPolicyOptionsPreferredLanguage"];
  if ((options & 0x4000000) == 0)
  {
LABEL_24:
    if ((options & 0x8000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_63;
  }

LABEL_62:
  [v5 setObject:&off_27A980 forKey:@"PSSystemPolicyOptionsNetwork"];
  if ((options & 0x8000000) == 0)
  {
LABEL_25:
    if ((options & 0x10000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_64;
  }

LABEL_63:
  [v5 setObject:&off_27AC98 forKey:@"PSSystemPolicyOptionsAccounts"];
  if ((options & 0x10000000) == 0)
  {
LABEL_26:
    if ((options & 0x20000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_65;
  }

LABEL_64:
  [v5 setObject:&off_27AA88 forKey:@"PSSystemPolicyOptionsCrossSiteTracking"];
  if ((options & 0x20000000) == 0)
  {
LABEL_27:
    if ((options & 0x40000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_66;
  }

LABEL_65:
  [v5 setObject:&off_27ACB0 forKey:@"PSSystemPolicyOptionsDefaultBrowser"];
  if ((options & 0x40000000) == 0)
  {
LABEL_28:
    if ((options & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_67;
  }

LABEL_66:
  [v5 setObject:&off_27ACC8 forKey:@"PSSystemPolicyOptionsDefaultMailApp"];
  if ((options & 0x80000000) == 0)
  {
LABEL_29:
    if ((options & 0x100000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_68;
  }

LABEL_67:
  [v5 setObject:&off_27A920 forKey:@"PSSystemPolicyOptionsCrossAppTracking"];
  if ((options & 0x100000000) == 0)
  {
LABEL_30:
    if ((options & 0x400000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_69;
  }

LABEL_68:
  [v5 setObject:&off_27ACE0 forKey:@"PSSystemPolicyOptionsExposureNotification"];
  if ((options & 0x400000000) == 0)
  {
LABEL_31:
    if ((options & 0x800000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_70;
  }

LABEL_69:
  [v5 setObject:&off_27A950 forKey:@"PSSystemPolicyOptionsUserAvailability"];
  if ((options & 0x800000000) == 0)
  {
LABEL_32:
    if ((options & 0x1000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_71;
  }

LABEL_70:
  [v5 setObject:&off_27A9F8 forKey:@"PSSystemPolicyOptionsNearbyInteraction"];
  if ((options & 0x1000000000) == 0)
  {
LABEL_33:
    if ((options & 0x8000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_72;
  }

LABEL_71:
  [v5 setObject:&off_27ACF8 forKey:@"PSSystemPolicyOptionsFamilyControls"];
  if ((options & 0x8000000000) == 0)
  {
LABEL_34:
    if ((options & 0x10000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_73;
  }

LABEL_72:
  [v5 setObject:&off_27AD10 forKey:@"PSSystemPolicyOptionsTapToPayLock"];
  if ((options & 0x10000000000) == 0)
  {
LABEL_35:
    if ((options & 0x20000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_74;
  }

LABEL_73:
  [v5 setObject:&off_27AD28 forKey:@"PSSystemPolicyOptionsLiveActivities"];
  if ((options & 0x20000000000) == 0)
  {
LABEL_36:
    if ((options & 0x40000000000) == 0)
    {
      goto LABEL_37;
    }

LABEL_75:
    [v5 setObject:&off_27AD58 forKey:@"PSSystemPolicyOptionsTapToPaySound"];
    if ((options & 0x80000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_74:
  [v5 setObject:&off_27AD40 forKey:@"PSSystemPolicyOptionsPasteboard"];
  if ((options & 0x40000000000) != 0)
  {
    goto LABEL_75;
  }

LABEL_37:
  if ((options & 0x80000000000) != 0)
  {
LABEL_38:
    [v5 setObject:&off_27AD70 forKey:@"PSSystemPolicyOptionsNudityDetection"];
  }

LABEL_39:
  v6 = v5;

  return v5;
}

- (id)_PSSystemPolicyOptionsAsArray:(unint64_t)array
{
  v3 = [(ClarityUISystemPolicyForApp *)self _axPSSystemPolicyOptions:array];
  allValues = [v3 allValues];

  return allValues;
}

- (id)_PSSystemPolicyOptionsAsString:(unint64_t)string
{
  v3 = [(ClarityUISystemPolicyForApp *)self _axPSSystemPolicyOptions:string];
  allKeys = [v3 allKeys];
  v5 = [allKeys componentsJoinedByString:{@", "}];

  return v5;
}

- (void)record
{
  v3 = *self;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "LSApplicationRecord Lookup for Bundle ID: %@, encountered error: %@", &v4, 0x16u);
}

@end