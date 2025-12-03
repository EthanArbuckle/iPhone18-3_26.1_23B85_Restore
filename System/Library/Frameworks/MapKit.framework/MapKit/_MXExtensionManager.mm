@interface _MXExtensionManager
+ (id)_extensionsWithLookupPolicy:(id)policy;
+ (id)_lookupPolicyForAllExtensions;
+ (id)_lookupPolicyForExtensionWithContainingAppIdentifier:(id)identifier supportsIntentClassNames:(id)names;
+ (id)_lookupPolicyForExtensionWithContainingAppIdentifiers:(id)identifiers supportsIntentClassNames:(id)names;
+ (id)_lookupPolicyForExtensionWithIdentifier:(id)identifier;
+ (id)_lookupPolicyForIntentsExtensions;
+ (id)_lookupPolicyForNonUIExtension;
+ (id)_lookupPolicyForUIExtension;
+ (id)_lookupPolicyWithBlock:(id)block;
+ (id)_lookupPolicyWithExtensionPointNames:(id)names;
+ (id)_maps_lookupPolicyForEnabledRidesharingNonUIExtensions;
+ (id)_maps_lookupPolicyForRidesharingNonUIExtensions;
+ (id)_maps_ridesharingAllIntentClassesForNonUIHandling;
+ (id)_maps_ridesharingIntentClassesForUIInteraction;
+ (id)_maps_ridesharingOptionalIntentClassesForNonUIHandling;
+ (id)_maps_ridesharingRequiredIntentClassesForNonUIHandling;
+ (id)_queue;
+ (id)lookupPolicyForExtensionWithCapabilities:(id)capabilities;
+ (id)lookupPolicyForExtensionWithCapability:(id)capability;
+ (id)lookupPolicyForRestaurantQueueingExtensionWithContainingAppIdentifier:(id)identifier;
+ (id)lookupPolicyForRestaurantQueueingExtensions;
+ (id)lookupPolicyForRestaurantReservationExtensionWithContainingAppIdentifier:(id)identifier;
+ (id)lookupPolicyForRestaurantReservationExtensionWithContainingAppIdentifiers:(id)identifiers;
+ (id)lookupPolicyForRestaurantReservationExtensions;
+ (id)managerWithExtensionLookupPolicy:(id)policy updateHandler:(id)handler;
+ (id)managerWithLookupPolicy:(id)policy delegate:(id)delegate;
+ (void)_maps_updateRideBookingExtensions:(id)extensions;
+ (void)imageForKey:(id)key extension:(id)extension completion:(id)completion;
- (_MXExtensionManager)initWithLookupPolicy:(id)policy delegate:(id)delegate extensionProvider:(id)provider;
- (_MXExtensionManagerDelegate)delegate;
- (id)_applyExtensionPredicateWithExtensionsIfNeeded:(id)needed;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _MXExtensionManager

+ (id)_queue
{
  if (_queue_onceToken != -1)
  {
    dispatch_once(&_queue_onceToken, &__block_literal_global_31496);
  }

  v3 = _queue_queue;

  return v3;
}

- (_MXExtensionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (void)_maps_updateRideBookingExtensions:(id)extensions
{
  v26 = *MEMORY[0x1E69E9840];
  extensionsCopy = extensions;
  v4 = GEOConfigGetArray();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;

  v20 = v7;
  v8 = [MEMORY[0x1E695DFA8] setWithArray:v7];
  v9 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = extensionsCopy;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        _containingAppIdentifer = [v15 _containingAppIdentifer];
        if (_containingAppIdentifer)
        {
          [v9 addObject:_containingAppIdentifer];
          v17 = [v8 containsObject:_containingAppIdentifer];
          BOOL = GEOConfigGetBOOL();
          if ((v17 & 1) == 0)
          {
            if (BOOL)
            {
              [v15 _setEnabled:1 error:0];
            }
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  [v8 unionSet:v9];
  allObjects = [v8 allObjects];
  GEOConfigSetArray();
}

+ (id)_maps_lookupPolicyForRidesharingNonUIExtensions
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __83___MXExtensionManager_Ridesharing___maps_lookupPolicyForRidesharingNonUIExtensions__block_invoke;
  v4[3] = &__block_descriptor_40_e22_B16__0___MXExtension_8l;
  v4[4] = self;
  v2 = [self _lookupPolicyWithBlock:v4];

  return v2;
}

+ (id)_maps_lookupPolicyForEnabledRidesharingNonUIExtensions
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __90___MXExtensionManager_Ridesharing___maps_lookupPolicyForEnabledRidesharingNonUIExtensions__block_invoke;
  v4[3] = &__block_descriptor_40_e22_B16__0___MXExtension_8l;
  v4[4] = self;
  v2 = [self _lookupPolicyWithBlock:v4];

  return v2;
}

+ (id)_maps_ridesharingIntentClassesForUIInteraction
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];

  return v2;
}

+ (id)_maps_ridesharingRequiredIntentClassesForNonUIHandling
{
  v4[3] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];

  return v2;
}

+ (id)_maps_ridesharingOptionalIntentClassesForNonUIHandling
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];

  return v2;
}

+ (id)_maps_ridesharingAllIntentClassesForNonUIHandling
{
  _maps_ridesharingOptionalIntentClassesForNonUIHandling = [objc_opt_class() _maps_ridesharingOptionalIntentClassesForNonUIHandling];
  _maps_ridesharingRequiredIntentClassesForNonUIHandling = [objc_opt_class() _maps_ridesharingRequiredIntentClassesForNonUIHandling];
  v4 = [_maps_ridesharingOptionalIntentClassesForNonUIHandling arrayByAddingObjectsFromArray:_maps_ridesharingRequiredIntentClassesForNonUIHandling];

  return v4;
}

+ (id)lookupPolicyForRestaurantQueueingExtensions
{
  restaurantQueueingIntentClassNames = [self restaurantQueueingIntentClassNames];
  v3 = [_MXExtensionManager _lookupPolicyForExtensionSupportsIntentClassNames:restaurantQueueingIntentClassNames];

  return v3;
}

+ (id)lookupPolicyForRestaurantQueueingExtensionWithContainingAppIdentifier:(id)identifier
{
  identifierCopy = identifier;
  restaurantQueueingIntentClassNames = [self restaurantQueueingIntentClassNames];
  v6 = [_MXExtensionManager _lookupPolicyForExtensionWithContainingAppIdentifier:identifierCopy supportsIntentClassNames:restaurantQueueingIntentClassNames];

  return v6;
}

+ (id)lookupPolicyForRestaurantReservationExtensions
{
  restaurantReservationIntentClassNames = [self restaurantReservationIntentClassNames];
  v3 = [_MXExtensionManager _lookupPolicyForExtensionSupportsIntentClassNames:restaurantReservationIntentClassNames];

  return v3;
}

+ (id)lookupPolicyForRestaurantReservationExtensionWithContainingAppIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  restaurantReservationIntentClassNames = [self restaurantReservationIntentClassNames];
  v6 = [_MXExtensionManager _lookupPolicyForExtensionWithContainingAppIdentifiers:identifiersCopy supportsIntentClassNames:restaurantReservationIntentClassNames];

  return v6;
}

+ (id)lookupPolicyForRestaurantReservationExtensionWithContainingAppIdentifier:(id)identifier
{
  identifierCopy = identifier;
  restaurantReservationIntentClassNames = [self restaurantReservationIntentClassNames];
  v6 = [_MXExtensionManager _lookupPolicyForExtensionWithContainingAppIdentifier:identifierCopy supportsIntentClassNames:restaurantReservationIntentClassNames];

  return v6;
}

- (id)_applyExtensionPredicateWithExtensionsIfNeeded:(id)needed
{
  if (needed)
  {
    lookupPolicy = self->_lookupPolicy;
    neededCopy = needed;
    extensionPredicate = [(_MXExtensionLookupPolicy *)lookupPolicy extensionPredicate];
    v6 = [neededCopy filteredArrayUsingPredicate:extensionPredicate];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (void)dealloc
{
  [(_MXExtensionManager *)self invalidate];
  v3.receiver = self;
  v3.super_class = _MXExtensionManager;
  [(_MXExtensionManager *)&v3 dealloc];
}

- (void)invalidate
{
  if (self->_matchingContext)
  {
    v3 = +[_MXExtensionProvider sharedProvider];
    [v3 removeExtensionUpdateHandler:self->_matchingContext];

    matchingContext = self->_matchingContext;
    self->_matchingContext = 0;
  }
}

- (_MXExtensionManager)initWithLookupPolicy:(id)policy delegate:(id)delegate extensionProvider:(id)provider
{
  policyCopy = policy;
  delegateCopy = delegate;
  providerCopy = provider;
  if (!providerCopy)
  {
    providerCopy = +[_MXExtensionProvider sharedProvider];
  }

  v15.receiver = self;
  v15.super_class = _MXExtensionManager;
  v12 = [(_MXExtensionManager *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_delegate, delegateCopy);
    objc_storeStrong(&v13->_lookupPolicy, policy);
    objc_storeStrong(&v13->_extensionProvider, providerCopy);
  }

  return v13;
}

+ (id)_lookupPolicyWithBlock:(id)block
{
  blockCopy = block;
  v4 = MEMORY[0x1E696AE18];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46___MXExtensionManager__lookupPolicyWithBlock___block_invoke;
  v9[3] = &unk_1E76CA5D0;
  v10 = blockCopy;
  v5 = blockCopy;
  v6 = [v4 predicateWithBlock:v9];
  v7 = [[_MXExtensionLookupPolicy alloc] initWithPredicate:v6];

  return v7;
}

+ (void)imageForKey:(id)key extension:(id)extension completion:(id)completion
{
  completionCopy = completion;
  extensionCopy = extension;
  keyCopy = key;
  v10 = +[_MXExtensionProvider sharedProvider];
  [v10 imageForKey:keyCopy extension:extensionCopy completion:completionCopy];
}

+ (id)_lookupPolicyForExtensionWithContainingAppIdentifier:(id)identifier supportsIntentClassNames:(id)names
{
  v11[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  namesCopy = names;
  if ([identifierCopy length])
  {
    v11[0] = identifierCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v9 = [self _lookupPolicyForExtensionWithContainingAppIdentifiers:v8 supportsIntentClassNames:namesCopy];

  return v9;
}

+ (id)_lookupPolicyForExtensionWithContainingAppIdentifiers:(id)identifiers supportsIntentClassNames:(id)names
{
  identifiersCopy = identifiers;
  namesCopy = names;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __102___MXExtensionManager__lookupPolicyForExtensionWithContainingAppIdentifiers_supportsIntentClassNames___block_invoke;
  v11[3] = &unk_1E76CA5A8;
  v12 = namesCopy;
  v13 = identifiersCopy;
  v7 = identifiersCopy;
  v8 = namesCopy;
  v9 = [_MXExtensionManager _lookupPolicyWithBlock:v11];

  return v9;
}

+ (id)_lookupPolicyForExtensionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63___MXExtensionManager__lookupPolicyForExtensionWithIdentifier___block_invoke;
  v8[3] = &unk_1E76CA558;
  v9 = identifierCopy;
  v5 = identifierCopy;
  v6 = [self _lookupPolicyWithBlock:v8];

  return v6;
}

+ (id)lookupPolicyForExtensionWithCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64___MXExtensionManager_lookupPolicyForExtensionWithCapabilities___block_invoke;
  v8[3] = &unk_1E76CA558;
  v9 = capabilitiesCopy;
  v5 = capabilitiesCopy;
  v6 = [self _lookupPolicyWithBlock:v8];

  return v6;
}

+ (id)lookupPolicyForExtensionWithCapability:(id)capability
{
  capabilityCopy = capability;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62___MXExtensionManager_lookupPolicyForExtensionWithCapability___block_invoke;
  v8[3] = &unk_1E76CA558;
  v9 = capabilityCopy;
  v5 = capabilityCopy;
  v6 = [self _lookupPolicyWithBlock:v8];

  return v6;
}

+ (id)_lookupPolicyWithExtensionPointNames:(id)names
{
  names = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"extensionPointIdentifier", names];
  v4 = [[_MXExtensionLookupPolicy alloc] initWithPredicate:names];

  return v4;
}

+ (id)_lookupPolicyForIntentsExtensions
{
  v7[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E696E588];
  v7[0] = *MEMORY[0x1E696E580];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v5 = [self _lookupPolicyWithExtensionPointNames:v4];

  return v5;
}

+ (id)_lookupPolicyForAllExtensions
{
  v7[4] = *MEMORY[0x1E69E9840];
  v7[0] = @"com.apple.maps.services";
  v7[1] = @"com.apple.maps.ui-services";
  v3 = *MEMORY[0x1E696E588];
  v7[2] = *MEMORY[0x1E696E580];
  v7[3] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v5 = [self _lookupPolicyWithExtensionPointNames:v4];

  return v5;
}

+ (id)_lookupPolicyForNonUIExtension
{
  v7[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E696E580];
  v7[0] = @"com.apple.maps.services";
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v5 = [self _lookupPolicyWithExtensionPointNames:v4];

  return v5;
}

+ (id)_lookupPolicyForUIExtension
{
  v7[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E696E588];
  v7[0] = @"com.apple.maps.ui-services";
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v5 = [self _lookupPolicyWithExtensionPointNames:v4];

  return v5;
}

+ (id)_extensionsWithLookupPolicy:(id)policy
{
  policyCopy = policy;
  v4 = +[_MXExtensionProvider sharedProvider];
  _currentExtensions = [v4 _currentExtensions];

  if (_currentExtensions)
  {
    extensionPredicate = [policyCopy extensionPredicate];
    v7 = [_currentExtensions filteredArrayUsingPredicate:extensionPredicate];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

+ (id)managerWithExtensionLookupPolicy:(id)policy updateHandler:(id)handler
{
  handlerCopy = handler;
  policyCopy = policy;
  v8 = [[_MXExtensionManager alloc] initWithLookupPolicy:policyCopy delegate:0];

  _queue = [self _queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70___MXExtensionManager_managerWithExtensionLookupPolicy_updateHandler___block_invoke;
  v15[3] = &unk_1E76CDA20;
  v10 = v8;
  v16 = v10;
  v17 = handlerCopy;
  v11 = handlerCopy;
  dispatch_async(_queue, v15);

  v12 = v17;
  v13 = v10;

  return v10;
}

+ (id)managerWithLookupPolicy:(id)policy delegate:(id)delegate
{
  delegateCopy = delegate;
  policyCopy = policy;
  v8 = [[_MXExtensionManager alloc] initWithLookupPolicy:policyCopy delegate:delegateCopy];

  _queue = [self _queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56___MXExtensionManager_managerWithLookupPolicy_delegate___block_invoke;
  block[3] = &unk_1E76CDB38;
  v10 = v8;
  v13 = v10;
  dispatch_async(_queue, block);

  return v10;
}

@end