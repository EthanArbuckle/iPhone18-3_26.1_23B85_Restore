@interface CNCapabilitiesManager
+ (id)defaultCapabilitiesManager;
- (BOOL)_isAppAvailable:(id)available;
- (BOOL)areFavoritesAvailable;
- (BOOL)hasCellularTelephonyCapability;
- (BOOL)hasPreviouslyConferencedWithID:(id)d;
- (BOOL)hasVibratorCapability;
- (BOOL)isConferencingAvailable;
- (BOOL)isConferencingEverGonnaBeAvailable;
- (BOOL)isDefaultPhoneCallAppThirdParty;
- (BOOL)isEmailConfigured;
- (BOOL)isFaceTimeAudioAvailable;
- (BOOL)isMadridConfigured;
- (BOOL)isWeiboServiceAvailable;
- (id)conferenceURLForDestinationID:(id)d;
- (id)conferenceURLForPhoneNumber:(id)number;
- (id)defaultPhoneCallAppBundleIdentifier;
- (void)_startListeningToIDSIDQueryControllerIfNecessary;
- (void)_startListeningToIDSServiceAvailabilityIfNecessary;
- (void)addIDSServiceAvailabilityListener:(id)listener selector:(SEL)selector;
- (void)dealloc;
- (void)idStatusUpdatedForDestinations:(id)destinations service:(id)service;
- (void)removeIDSServiceAvailabilityListener:(id)listener;
@end

@implementation CNCapabilitiesManager

+ (id)defaultCapabilitiesManager
{
  v2 = _sharedCapabilitiesManager;
  if (!_sharedCapabilitiesManager)
  {
    v3 = objc_alloc_init(CNCapabilitiesManager);
    v4 = _sharedCapabilitiesManager;
    _sharedCapabilitiesManager = v3;

    v2 = _sharedCapabilitiesManager;
  }

  return v2;
}

- (id)defaultPhoneCallAppBundleIdentifier
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

id __60__CNCapabilitiesManager_defaultPhoneCallAppBundleIdentifier__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 32) copy];

  return v1;
}

- (BOOL)isDefaultPhoneCallAppThirdParty
{
  v2 = cn_objectResultWithObjectLock();
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

id __56__CNCapabilitiesManager_isDefaultPhoneCallAppThirdParty__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (!v3)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __56__CNCapabilitiesManager_isDefaultPhoneCallAppThirdParty__block_invoke_2;
    aBlock[3] = &unk_1E74E1620;
    aBlock[4] = v2;
    v4 = _Block_copy(aBlock);
    v5 = v4[2]();
    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    *(v6 + 24) = v5;

    v3 = *(*(a1 + 32) + 24);
  }

  return v3;
}

uint64_t __56__CNCapabilitiesManager_isDefaultPhoneCallAppThirdParty__block_invoke_2(uint64_t a1)
{
  v2 = +[CNUIContactsEnvironment currentEnvironment];
  v3 = [v2 applicationWorkspace];

  v4 = [v3 defaultApplicationForDefaultAppCategory:1];
  v5 = v4;
  if (!v4 || ([v4 bundleIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E695C140]), v6, (v7 & 1) != 0) || (objc_msgSend(v5, "bundleIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E695C118]), v8, (v9 & 1) != 0))
  {
    v10 = MEMORY[0x1E695E110];
  }

  else
  {
    v12 = [v5 bundleIdentifier];
    v13 = *(a1 + 32);
    v14 = *(v13 + 32);
    *(v13 + 32) = v12;

    v10 = MEMORY[0x1E695E118];
  }

  return v10;
}

- (BOOL)areFavoritesAvailable
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:18];

  if (v5)
  {
    LOBYTE(hasCellularTelephonyCapability) = 1;
  }

  else
  {
    hasCellularTelephonyCapability = [(CNCapabilitiesManager *)self hasCellularTelephonyCapability];
    if (hasCellularTelephonyCapability)
    {

      LOBYTE(hasCellularTelephonyCapability) = [(CNCapabilitiesManager *)self hasCellularTelephonyHardwareCapability];
    }
  }

  return hasCellularTelephonyCapability;
}

- (BOOL)_isAppAvailable:(id)available
{
  availableCopy = available;
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  if ([mEMORY[0x1E69ADFB8] appWhitelistState] == 2)
  {
    effectiveWhitelistedAppBundleIDs = [mEMORY[0x1E69ADFB8] effectiveWhitelistedAppBundleIDs];
    v6 = [effectiveWhitelistedAppBundleIDs containsObject:availableCopy];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)isFaceTimeAudioAvailable
{
  TUCallCapabilitiesClass = getTUCallCapabilitiesClass();

  return [TUCallCapabilitiesClass supportsFaceTimeAudioCalls];
}

- (BOOL)isWeiboServiceAvailable
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v2 = getSLComposeViewControllerClass_softClass;
  v18 = getSLComposeViewControllerClass_softClass;
  if (!getSLComposeViewControllerClass_softClass)
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __getSLComposeViewControllerClass_block_invoke;
    v13 = &unk_1E74E7518;
    v14 = &v15;
    __getSLComposeViewControllerClass_block_invoke(&v10);
    v2 = v16[3];
  }

  v3 = v2;
  _Block_object_dispose(&v15, 8);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v4 = getSLServiceTypeSinaWeiboSymbolLoc_ptr;
  v18 = getSLServiceTypeSinaWeiboSymbolLoc_ptr;
  if (!getSLServiceTypeSinaWeiboSymbolLoc_ptr)
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __getSLServiceTypeSinaWeiboSymbolLoc_block_invoke;
    v13 = &unk_1E74E7518;
    v14 = &v15;
    v5 = SocialLibrary();
    v6 = dlsym(v5, "SLServiceTypeSinaWeibo");
    *(v14[1] + 24) = v6;
    getSLServiceTypeSinaWeiboSymbolLoc_ptr = *(v14[1] + 24);
    v4 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (v4)
  {
    return [v2 isAvailableForServiceType:*v4];
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSLServiceTypeSinaWeibo(void)"];
  [currentHandler handleFailureInFunction:v9 file:@"CNSocial.h" lineNumber:17 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (void)idStatusUpdatedForDestinations:(id)destinations service:(id)service
{
  destinationsCopy = destinations;
  serviceCopy = service;
  v7 = getIDSServiceNameFaceTime();
  v8 = [serviceCopy isEqualToString:v7];

  if (v8)
  {
    [(NSMutableDictionary *)self->_destinationStatus addEntriesFromDictionary:destinationsCopy];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:ABCapabilitiesConferenceHistoryChanged object:self];
  }
}

- (void)_startListeningToIDSIDQueryControllerIfNecessary
{
  if (!self->_isListeningToIDSQueryController)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    destinationStatus = self->_destinationStatus;
    self->_destinationStatus = v4;

    sharedInstance = [getIDSIDQueryControllerClass() sharedInstance];
    v6 = getIDSServiceNameFaceTime();
    [sharedInstance addDelegate:self forService:v6 listenerID:@"com.apple.addressbookui" queue:MEMORY[0x1E69E96A0]];

    self->_isListeningToIDSQueryController = 1;
  }
}

- (void)_startListeningToIDSServiceAvailabilityIfNecessary
{
  if (!self->_isListeningToIDSServiceAvailability)
  {
    sharedInstance = [getIDSServiceAvailabilityControllerClass() sharedInstance];
    v4 = getIDSServiceNameiMessage();
    [sharedInstance addListenerID:@"com.apple.addressbookui" forService:v4];

    v5 = getIDSServiceNameFaceTime();
    [sharedInstance addListenerID:@"com.apple.addressbookui" forService:v5];

    self->_isListeningToIDSServiceAvailability = 1;
  }
}

- (void)removeIDSServiceAvailabilityListener:(id)listener
{
  v3 = MEMORY[0x1E696AD88];
  listenerCopy = listener;
  defaultCenter = [v3 defaultCenter];
  v5 = getIDSServiceAvailabilityDidChangeNotification();
  [defaultCenter removeObserver:listenerCopy name:v5 object:0];
}

- (void)addIDSServiceAvailabilityListener:(id)listener selector:(SEL)selector
{
  listenerCopy = listener;
  [(CNCapabilitiesManager *)self _startListeningToIDSServiceAvailabilityIfNecessary];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = getIDSServiceAvailabilityDidChangeNotification();
  [defaultCenter addObserver:listenerCopy selector:selector name:v7 object:0];
}

- (id)conferenceURLForDestinationID:(id)d
{
  dCopy = d;
  if ([(CNCapabilitiesManager *)self isConferencingEverGonnaBeAvailable])
  {
    v5 = [objc_alloc(MEMORY[0x1E6996A90]) initWithStringValue:dCopy type:2];
    v6 = [MEMORY[0x1E695DFF8] _cnui_faceTimeVideoURLWithHandle:v5 contact:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)conferenceURLForPhoneNumber:(id)number
{
  numberCopy = number;
  if ([(CNCapabilitiesManager *)self isConferencingEverGonnaBeAvailable])
  {
    v5 = [objc_alloc(MEMORY[0x1E6996A90]) initWithStringValue:numberCopy type:2];
    v6 = [MEMORY[0x1E695DFF8] _cnui_faceTimeVideoURLWithHandle:v5 contact:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasPreviouslyConferencedWithID:(id)d
{
  dCopy = d;
  if (dCopy && [(CNCapabilitiesManager *)self isConferencingEverGonnaBeAvailable])
  {
    [(CNCapabilitiesManager *)self _startListeningToIDSIDQueryControllerIfNecessary];
    v5 = [(NSMutableDictionary *)self->_destinationStatus objectForKey:dCopy];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 intValue] == 1;
    }

    else
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 0;
      v8 = dispatch_semaphore_create(0);
      sharedInstance = [getIDSIDQueryControllerClass() sharedInstance];
      v10 = getIDSServiceNameFaceTime();
      v11 = dispatch_get_global_queue(0, 0);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __56__CNCapabilitiesManager_hasPreviouslyConferencedWithID___block_invoke;
      v16[3] = &unk_1E74E15F8;
      v18 = &v19;
      v12 = v8;
      v17 = v12;
      v13 = [sharedInstance currentIDStatusForDestination:dCopy service:v10 listenerID:@"com.apple.addressbookui" queue:v11 completionBlock:v16];

      if (v13)
      {
        v14 = dispatch_time(0xFFFFFFFFFFFFFFFFLL, 0);
        dispatch_semaphore_wait(v12, v14);
      }

      v7 = *(v20 + 24);
      _Block_object_dispose(&v19, 8);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (BOOL)isConferencingEverGonnaBeAvailable
{
  v2 = isConferencingEverGonnaBeAvailable_sIsConferencingEverGonnaBeAvailable;
  if (isConferencingEverGonnaBeAvailable_sIsConferencingEverGonnaBeAvailable == -1)
  {
    v2 = MGGetBoolAnswer();
    isConferencingEverGonnaBeAvailable_sIsConferencingEverGonnaBeAvailable = v2;
  }

  return v2 != 0;
}

- (BOOL)isConferencingAvailable
{
  if (![(CNCapabilitiesManager *)self isConferencingEverGonnaBeAvailable])
  {
    return 0;
  }

  [(CNCapabilitiesManager *)self _startListeningToIDSServiceAvailabilityIfNecessary];
  sharedInstance = [getIDSServiceAvailabilityControllerClass() sharedInstance];
  v4 = getIDSServiceNameFaceTime();
  v5 = [sharedInstance availabilityForListenerID:@"com.apple.addressbookui" forService:v4] == 1;

  return v5;
}

- (BOOL)isMadridConfigured
{
  [(CNCapabilitiesManager *)self _startListeningToIDSServiceAvailabilityIfNecessary];
  sharedInstance = [getIDSServiceAvailabilityControllerClass() sharedInstance];
  v3 = getIDSServiceNameiMessage();
  v4 = [sharedInstance availabilityForListenerID:@"com.apple.addressbookui" forService:v3] == 1;

  return v4;
}

- (BOOL)isEmailConfigured
{
  if (!isEmailConfigured_lastCheckDate || ([isEmailConfigured_lastCheckDate timeIntervalSinceNow], v2 < -30.0))
  {
    date = [MEMORY[0x1E695DF00] date];
    if (dyld_program_sdk_at_least())
    {
      v4 = CPCanSendMail() != 0;
    }

    else
    {
      v4 = 0;
    }

    isEmailConfigured_isConfigured = v4;
    v5 = isEmailConfigured_lastCheckDate;
    isEmailConfigured_lastCheckDate = date;
  }

  return isEmailConfigured_isConfigured;
}

- (BOOL)hasVibratorCapability
{
  if (!MGGetBoolAnswer())
  {
    return 0;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 0;

  return v3;
}

- (BOOL)hasCellularTelephonyCapability
{
  TUCallCapabilitiesClass = getTUCallCapabilitiesClass();

  return [TUCallCapabilitiesClass supportsTelephonyCalls];
}

void __35__CNCapabilitiesManager_resetCache__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = 0;
}

- (void)dealloc
{
  if (self->_isListeningToIDSServiceAvailability)
  {
    sharedInstance = [getIDSServiceAvailabilityControllerClass() sharedInstance];
    v4 = getIDSServiceNameiMessage();
    [sharedInstance removeListenerID:@"com.apple.addressbookui" forService:v4];

    v5 = getIDSServiceNameFaceTime();
    [sharedInstance removeListenerID:@"com.apple.addressbookui" forService:v5];
  }

  if (self->_isListeningToIDSQueryController)
  {
    sharedInstance2 = [getIDSIDQueryControllerClass() sharedInstance];
    v7 = getIDSServiceNameFaceTime();
    [sharedInstance2 removeDelegate:self forService:v7 listenerID:@"com.apple.addressbookui"];
  }

  v8.receiver = self;
  v8.super_class = CNCapabilitiesManager;
  [(CNCapabilitiesManager *)&v8 dealloc];
}

@end