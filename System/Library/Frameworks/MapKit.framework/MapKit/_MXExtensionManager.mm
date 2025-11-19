@interface _MXExtensionManager
+ (id)_extensionsWithLookupPolicy:(id)a3;
+ (id)_lookupPolicyForAllExtensions;
+ (id)_lookupPolicyForExtensionWithContainingAppIdentifier:(id)a3 supportsIntentClassNames:(id)a4;
+ (id)_lookupPolicyForExtensionWithContainingAppIdentifiers:(id)a3 supportsIntentClassNames:(id)a4;
+ (id)_lookupPolicyForExtensionWithIdentifier:(id)a3;
+ (id)_lookupPolicyForIntentsExtensions;
+ (id)_lookupPolicyForNonUIExtension;
+ (id)_lookupPolicyForUIExtension;
+ (id)_lookupPolicyWithBlock:(id)a3;
+ (id)_lookupPolicyWithExtensionPointNames:(id)a3;
+ (id)_maps_lookupPolicyForEnabledRidesharingNonUIExtensions;
+ (id)_maps_lookupPolicyForRidesharingNonUIExtensions;
+ (id)_maps_ridesharingAllIntentClassesForNonUIHandling;
+ (id)_maps_ridesharingIntentClassesForUIInteraction;
+ (id)_maps_ridesharingOptionalIntentClassesForNonUIHandling;
+ (id)_maps_ridesharingRequiredIntentClassesForNonUIHandling;
+ (id)_queue;
+ (id)lookupPolicyForExtensionWithCapabilities:(id)a3;
+ (id)lookupPolicyForExtensionWithCapability:(id)a3;
+ (id)lookupPolicyForRestaurantQueueingExtensionWithContainingAppIdentifier:(id)a3;
+ (id)lookupPolicyForRestaurantQueueingExtensions;
+ (id)lookupPolicyForRestaurantReservationExtensionWithContainingAppIdentifier:(id)a3;
+ (id)lookupPolicyForRestaurantReservationExtensionWithContainingAppIdentifiers:(id)a3;
+ (id)lookupPolicyForRestaurantReservationExtensions;
+ (id)managerWithExtensionLookupPolicy:(id)a3 updateHandler:(id)a4;
+ (id)managerWithLookupPolicy:(id)a3 delegate:(id)a4;
+ (void)_maps_updateRideBookingExtensions:(id)a3;
+ (void)imageForKey:(id)a3 extension:(id)a4 completion:(id)a5;
- (_MXExtensionManager)initWithLookupPolicy:(id)a3 delegate:(id)a4 extensionProvider:(id)a5;
- (_MXExtensionManagerDelegate)delegate;
- (id)_applyExtensionPredicateWithExtensionsIfNeeded:(id)a3;
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

+ (void)_maps_updateRideBookingExtensions:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
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
  v10 = v3;
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
        v16 = [v15 _containingAppIdentifer];
        if (v16)
        {
          [v9 addObject:v16];
          v17 = [v8 containsObject:v16];
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
  v19 = [v8 allObjects];
  GEOConfigSetArray();
}

+ (id)_maps_lookupPolicyForRidesharingNonUIExtensions
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __83___MXExtensionManager_Ridesharing___maps_lookupPolicyForRidesharingNonUIExtensions__block_invoke;
  v4[3] = &__block_descriptor_40_e22_B16__0___MXExtension_8l;
  v4[4] = a1;
  v2 = [a1 _lookupPolicyWithBlock:v4];

  return v2;
}

+ (id)_maps_lookupPolicyForEnabledRidesharingNonUIExtensions
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __90___MXExtensionManager_Ridesharing___maps_lookupPolicyForEnabledRidesharingNonUIExtensions__block_invoke;
  v4[3] = &__block_descriptor_40_e22_B16__0___MXExtension_8l;
  v4[4] = a1;
  v2 = [a1 _lookupPolicyWithBlock:v4];

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
  v2 = [objc_opt_class() _maps_ridesharingOptionalIntentClassesForNonUIHandling];
  v3 = [objc_opt_class() _maps_ridesharingRequiredIntentClassesForNonUIHandling];
  v4 = [v2 arrayByAddingObjectsFromArray:v3];

  return v4;
}

+ (id)lookupPolicyForRestaurantQueueingExtensions
{
  v2 = [a1 restaurantQueueingIntentClassNames];
  v3 = [_MXExtensionManager _lookupPolicyForExtensionSupportsIntentClassNames:v2];

  return v3;
}

+ (id)lookupPolicyForRestaurantQueueingExtensionWithContainingAppIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 restaurantQueueingIntentClassNames];
  v6 = [_MXExtensionManager _lookupPolicyForExtensionWithContainingAppIdentifier:v4 supportsIntentClassNames:v5];

  return v6;
}

+ (id)lookupPolicyForRestaurantReservationExtensions
{
  v2 = [a1 restaurantReservationIntentClassNames];
  v3 = [_MXExtensionManager _lookupPolicyForExtensionSupportsIntentClassNames:v2];

  return v3;
}

+ (id)lookupPolicyForRestaurantReservationExtensionWithContainingAppIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [a1 restaurantReservationIntentClassNames];
  v6 = [_MXExtensionManager _lookupPolicyForExtensionWithContainingAppIdentifiers:v4 supportsIntentClassNames:v5];

  return v6;
}

+ (id)lookupPolicyForRestaurantReservationExtensionWithContainingAppIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 restaurantReservationIntentClassNames];
  v6 = [_MXExtensionManager _lookupPolicyForExtensionWithContainingAppIdentifier:v4 supportsIntentClassNames:v5];

  return v6;
}

- (id)_applyExtensionPredicateWithExtensionsIfNeeded:(id)a3
{
  if (a3)
  {
    lookupPolicy = self->_lookupPolicy;
    v4 = a3;
    v5 = [(_MXExtensionLookupPolicy *)lookupPolicy extensionPredicate];
    v6 = [v4 filteredArrayUsingPredicate:v5];
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

- (_MXExtensionManager)initWithLookupPolicy:(id)a3 delegate:(id)a4 extensionProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    v11 = +[_MXExtensionProvider sharedProvider];
  }

  v15.receiver = self;
  v15.super_class = _MXExtensionManager;
  v12 = [(_MXExtensionManager *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_delegate, v10);
    objc_storeStrong(&v13->_lookupPolicy, a3);
    objc_storeStrong(&v13->_extensionProvider, v11);
  }

  return v13;
}

+ (id)_lookupPolicyWithBlock:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E696AE18];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46___MXExtensionManager__lookupPolicyWithBlock___block_invoke;
  v9[3] = &unk_1E76CA5D0;
  v10 = v3;
  v5 = v3;
  v6 = [v4 predicateWithBlock:v9];
  v7 = [[_MXExtensionLookupPolicy alloc] initWithPredicate:v6];

  return v7;
}

+ (void)imageForKey:(id)a3 extension:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[_MXExtensionProvider sharedProvider];
  [v10 imageForKey:v9 extension:v8 completion:v7];
}

+ (id)_lookupPolicyForExtensionWithContainingAppIdentifier:(id)a3 supportsIntentClassNames:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v11[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v9 = [a1 _lookupPolicyForExtensionWithContainingAppIdentifiers:v8 supportsIntentClassNames:v7];

  return v9;
}

+ (id)_lookupPolicyForExtensionWithContainingAppIdentifiers:(id)a3 supportsIntentClassNames:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __102___MXExtensionManager__lookupPolicyForExtensionWithContainingAppIdentifiers_supportsIntentClassNames___block_invoke;
  v11[3] = &unk_1E76CA5A8;
  v12 = v6;
  v13 = v5;
  v7 = v5;
  v8 = v6;
  v9 = [_MXExtensionManager _lookupPolicyWithBlock:v11];

  return v9;
}

+ (id)_lookupPolicyForExtensionWithIdentifier:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63___MXExtensionManager__lookupPolicyForExtensionWithIdentifier___block_invoke;
  v8[3] = &unk_1E76CA558;
  v9 = v4;
  v5 = v4;
  v6 = [a1 _lookupPolicyWithBlock:v8];

  return v6;
}

+ (id)lookupPolicyForExtensionWithCapabilities:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64___MXExtensionManager_lookupPolicyForExtensionWithCapabilities___block_invoke;
  v8[3] = &unk_1E76CA558;
  v9 = v4;
  v5 = v4;
  v6 = [a1 _lookupPolicyWithBlock:v8];

  return v6;
}

+ (id)lookupPolicyForExtensionWithCapability:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62___MXExtensionManager_lookupPolicyForExtensionWithCapability___block_invoke;
  v8[3] = &unk_1E76CA558;
  v9 = v4;
  v5 = v4;
  v6 = [a1 _lookupPolicyWithBlock:v8];

  return v6;
}

+ (id)_lookupPolicyWithExtensionPointNames:(id)a3
{
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"extensionPointIdentifier", a3];
  v4 = [[_MXExtensionLookupPolicy alloc] initWithPredicate:v3];

  return v4;
}

+ (id)_lookupPolicyForIntentsExtensions
{
  v7[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E696E588];
  v7[0] = *MEMORY[0x1E696E580];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v5 = [a1 _lookupPolicyWithExtensionPointNames:v4];

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
  v5 = [a1 _lookupPolicyWithExtensionPointNames:v4];

  return v5;
}

+ (id)_lookupPolicyForNonUIExtension
{
  v7[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E696E580];
  v7[0] = @"com.apple.maps.services";
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v5 = [a1 _lookupPolicyWithExtensionPointNames:v4];

  return v5;
}

+ (id)_lookupPolicyForUIExtension
{
  v7[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E696E588];
  v7[0] = @"com.apple.maps.ui-services";
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v5 = [a1 _lookupPolicyWithExtensionPointNames:v4];

  return v5;
}

+ (id)_extensionsWithLookupPolicy:(id)a3
{
  v3 = a3;
  v4 = +[_MXExtensionProvider sharedProvider];
  v5 = [v4 _currentExtensions];

  if (v5)
  {
    v6 = [v3 extensionPredicate];
    v7 = [v5 filteredArrayUsingPredicate:v6];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

+ (id)managerWithExtensionLookupPolicy:(id)a3 updateHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[_MXExtensionManager alloc] initWithLookupPolicy:v7 delegate:0];

  v9 = [a1 _queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70___MXExtensionManager_managerWithExtensionLookupPolicy_updateHandler___block_invoke;
  v15[3] = &unk_1E76CDA20;
  v10 = v8;
  v16 = v10;
  v17 = v6;
  v11 = v6;
  dispatch_async(v9, v15);

  v12 = v17;
  v13 = v10;

  return v10;
}

+ (id)managerWithLookupPolicy:(id)a3 delegate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[_MXExtensionManager alloc] initWithLookupPolicy:v7 delegate:v6];

  v9 = [a1 _queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56___MXExtensionManager_managerWithLookupPolicy_delegate___block_invoke;
  block[3] = &unk_1E76CDB38;
  v10 = v8;
  v13 = v10;
  dispatch_async(v9, block);

  return v10;
}

@end