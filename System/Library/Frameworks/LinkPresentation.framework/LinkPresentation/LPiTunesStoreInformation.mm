@interface LPiTunesStoreInformation
+ (id)_convertNewStorefrontIdentifier:(id)identifier;
+ (id)shared;
- (LPiTunesStoreInformation)init;
- (unint64_t)userStateForMediaStorefrontIdentifier:(id)identifier;
- (void)_capabilitiesDidChangeNotification;
- (void)_notifyChangeHandlers;
- (void)_setCapabilities:(unint64_t)capabilities;
- (void)_setStorefrontIdentifier:(id)identifier;
- (void)_setupCloudServiceController;
- (void)_storefrontDidChangeNotification;
- (void)registerForStoreAvailablityChangesWithToken:(id)token handler:(id)handler;
@end

@implementation LPiTunesStoreInformation

+ (id)shared
{
  v2 = shared_singleton;
  if (!shared_singleton)
  {
    v3 = objc_alloc_init(LPiTunesStoreInformation);
    v4 = shared_singleton;
    shared_singleton = v3;

    v2 = shared_singleton;
  }

  return v2;
}

- (LPiTunesStoreInformation)init
{
  v7.receiver = self;
  v7.super_class = LPiTunesStoreInformation;
  v2 = [(LPiTunesStoreInformation *)&v7 init];
  if (v2)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    changeHandlers = v2->_changeHandlers;
    v2->_changeHandlers = weakToStrongObjectsMapTable;

    v2->_capabilities = 0;
    [(LPiTunesStoreInformation *)v2 _setupCloudServiceController];
    v5 = v2;
  }

  return v2;
}

- (void)_setupCloudServiceController
{
  v3 = cloudServiceControllerQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__LPiTunesStoreInformation__setupCloudServiceController__block_invoke;
  block[3] = &unk_1E7A35450;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __56__LPiTunesStoreInformation__setupCloudServiceController__block_invoke(uint64_t a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v2 = getSKCloudServiceControllerClass_softClass;
  v18 = getSKCloudServiceControllerClass_softClass;
  if (!getSKCloudServiceControllerClass_softClass)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __getSKCloudServiceControllerClass_block_invoke;
    v14[3] = &unk_1E7A35518;
    v14[4] = &v15;
    __getSKCloudServiceControllerClass_block_invoke(v14);
    v2 = v16[3];
  }

  v3 = v2;
  _Block_object_dispose(&v15, 8);
  v4 = [[v2 alloc] init];
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  *(v5 + 8) = v4;

  [*(*(a1 + 32) + 8) _setAllowsPromptingForPrivacyAcknowledgement:0];
  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__LPiTunesStoreInformation__setupCloudServiceController__block_invoke_2;
  v13[3] = &unk_1E7A36038;
  v13[4] = v7;
  [v8 requestStorefrontIdentifierWithCompletionHandler:v13];
  v9 = *(a1 + 32);
  v10 = *(v9 + 8);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__LPiTunesStoreInformation__setupCloudServiceController__block_invoke_4;
  v12[3] = &unk_1E7A36088;
  v12[4] = v9;
  return [v10 requestCapabilitiesWithCompletionHandler:v12];
}

void __56__LPiTunesStoreInformation__setupCloudServiceController__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__LPiTunesStoreInformation__setupCloudServiceController__block_invoke_3;
  v5[3] = &unk_1E7A35478;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __56__LPiTunesStoreInformation__setupCloudServiceController__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[49] & 1) == 0)
  {
    [v2 _setStorefrontIdentifier:*(a1 + 40)];
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    v4 = *(a1 + 32);
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v5 = getSKStorefrontIdentifierDidChangeNotificationSymbolLoc_ptr;
    v12 = getSKStorefrontIdentifierDidChangeNotificationSymbolLoc_ptr;
    if (!getSKStorefrontIdentifierDidChangeNotificationSymbolLoc_ptr)
    {
      v6 = StoreKitLibrary();
      v10[3] = dlsym(v6, "SKStorefrontIdentifierDidChangeNotification");
      getSKStorefrontIdentifierDidChangeNotificationSymbolLoc_ptr = v10[3];
      v5 = v10[3];
    }

    _Block_object_dispose(&v9, 8);
    if (v5)
    {
      [v3 addObserver:v4 selector:sel__storefrontDidChangeNotification name:*v5 object:*(*(a1 + 32) + 8)];
    }

    else
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSNotificationName getSKStorefrontIdentifierDidChangeNotification(void)"];
      [v7 handleFailureInFunction:v8 file:@"LPiTunesStoreInformation.m" lineNumber:19 description:{@"%s", dlerror()}];

      __break(1u);
    }
  }
}

void __56__LPiTunesStoreInformation__setupCloudServiceController__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v5[6] = v3;
    v5[7] = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__LPiTunesStoreInformation__setupCloudServiceController__block_invoke_5;
    v5[3] = &unk_1E7A36060;
    v5[4] = *(a1 + 32);
    v5[5] = a2;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

void __56__LPiTunesStoreInformation__setupCloudServiceController__block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[48] & 1) == 0)
  {
    [v2 _setCapabilities:*(a1 + 40)];
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    v4 = *(a1 + 32);
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v5 = getSKCloudServiceCapabilitiesDidChangeNotificationSymbolLoc_ptr;
    v12 = getSKCloudServiceCapabilitiesDidChangeNotificationSymbolLoc_ptr;
    if (!getSKCloudServiceCapabilitiesDidChangeNotificationSymbolLoc_ptr)
    {
      v6 = StoreKitLibrary();
      v10[3] = dlsym(v6, "SKCloudServiceCapabilitiesDidChangeNotification");
      getSKCloudServiceCapabilitiesDidChangeNotificationSymbolLoc_ptr = v10[3];
      v5 = v10[3];
    }

    _Block_object_dispose(&v9, 8);
    if (v5)
    {
      [v3 addObserver:v4 selector:sel__capabilitiesDidChangeNotification name:*v5 object:*(*(a1 + 32) + 8)];
    }

    else
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSNotificationName getSKCloudServiceCapabilitiesDidChangeNotification(void)"];
      [v7 handleFailureInFunction:v8 file:@"LPiTunesStoreInformation.m" lineNumber:18 description:{@"%s", dlerror()}];

      __break(1u);
    }
  }
}

- (unint64_t)userStateForMediaStorefrontIdentifier:(id)identifier
{
  identifierCopy = identifier;
  storefrontIdentifier = self->_storefrontIdentifier;
  if (storefrontIdentifier && self->_hasUpdatedCapabilities)
  {
    if ([(NSString *)storefrontIdentifier isEqualToString:identifierCopy])
    {
      if (self->_capabilities)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }
    }

    else
    {
      v6 = 4;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_setCapabilities:(unint64_t)capabilities
{
  self->_hasUpdatedCapabilities = 1;
  v4 = [objc_opt_class() _convertCapabilities:capabilities];
  if (self->_capabilities != v4)
  {
    self->_capabilities = v4;

    [(LPiTunesStoreInformation *)self _notifyChangeHandlers];
  }
}

+ (id)_convertNewStorefrontIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length] >= 6)
  {
    v4 = [identifierCopy substringToIndex:6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_setStorefrontIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [objc_opt_class() _convertNewStorefrontIdentifier:identifierCopy];
  if (![(NSString *)self->_storefrontIdentifier isEqualToString:v4])
  {
    objc_storeStrong(&self->_storefrontIdentifier, v4);
    [(LPiTunesStoreInformation *)self _notifyChangeHandlers];
  }
}

- (void)_capabilitiesDidChangeNotification
{
  v3 = cloudServiceControllerQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__LPiTunesStoreInformation__capabilitiesDidChangeNotification__block_invoke;
  block[3] = &unk_1E7A35450;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __62__LPiTunesStoreInformation__capabilitiesDidChangeNotification__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__LPiTunesStoreInformation__capabilitiesDidChangeNotification__block_invoke_2;
  v4[3] = &unk_1E7A36088;
  v4[4] = v1;
  return [v2 requestCapabilitiesWithCompletionHandler:v4];
}

void __62__LPiTunesStoreInformation__capabilitiesDidChangeNotification__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v5[6] = v3;
    v5[7] = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __62__LPiTunesStoreInformation__capabilitiesDidChangeNotification__block_invoke_3;
    v5[3] = &unk_1E7A36060;
    v5[4] = *(a1 + 32);
    v5[5] = a2;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

_BYTE *__62__LPiTunesStoreInformation__capabilitiesDidChangeNotification__block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[48] & 1) == 0)
  {
    return [result _setCapabilities:*(a1 + 40)];
  }

  return result;
}

- (void)_storefrontDidChangeNotification
{
  v3 = cloudServiceControllerQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__LPiTunesStoreInformation__storefrontDidChangeNotification__block_invoke;
  block[3] = &unk_1E7A35450;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __60__LPiTunesStoreInformation__storefrontDidChangeNotification__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__LPiTunesStoreInformation__storefrontDidChangeNotification__block_invoke_2;
  v4[3] = &unk_1E7A36038;
  v4[4] = v1;
  return [v2 requestStorefrontIdentifierWithCompletionHandler:v4];
}

void __60__LPiTunesStoreInformation__storefrontDidChangeNotification__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__LPiTunesStoreInformation__storefrontDidChangeNotification__block_invoke_3;
  v5[3] = &unk_1E7A35478;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

_BYTE *__60__LPiTunesStoreInformation__storefrontDidChangeNotification__block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[49] & 1) == 0)
  {
    return [result _setStorefrontIdentifier:*(a1 + 40)];
  }

  return result;
}

- (void)_notifyChangeHandlers
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  objectEnumerator = [(NSMapTable *)self->_changeHandlers objectEnumerator];
  v3 = [objectEnumerator countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        (*(*(*(&v6 + 1) + 8 * v5++) + 16))();
      }

      while (v3 != v5);
      v3 = [objectEnumerator countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)registerForStoreAvailablityChangesWithToken:(id)token handler:(id)handler
{
  changeHandlers = self->_changeHandlers;
  tokenCopy = token;
  v7 = _Block_copy(handler);
  [NSMapTable setObject:"setObject:forKey:" forKey:?];
}

@end