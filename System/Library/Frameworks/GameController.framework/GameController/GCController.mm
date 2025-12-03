@interface GCController
+ (BOOL)_settingsSupportedForBLEDevice:(id)device settingsStore:(id)store;
+ (BOOL)_settingsSupportedForBTClassicDevice:(id)device settingsStore:(id)store;
+ (BOOL)settingsSupportedForCBDevice:(id)device;
+ (BOOL)shouldMonitorBackgroundEvents;
+ (BOOL)userHasPairedGameController;
+ (BOOL)userHasPairedGameControllerSupportingInteractionProfile:(id)profile;
+ (GCController)controllerWithExtendedGamepad;
+ (GCController)controllerWithMicroGamepad;
+ (GCController)current;
+ (NSArray)controllers;
+ (id)snapshotWithProfile:(id)profile;
+ (void)_startWirelessControllerDiscoveryWithBTClassic:(BOOL)classic btle:(BOOL)btle completionHandler:(id)handler;
+ (void)stopWirelessControllerDiscovery;
- (BOOL)_legacy_isAttachedToDevice;
- (BOOL)displayTrueSiriRemoteName;
- (BOOL)hasServiceRef:(__IOHIDServiceClient *)ref;
- (BOOL)isATVRemote;
- (BOOL)isAttachedToDevice;
- (GCController)capture;
- (GCController)initWithCoder:(id)coder;
- (GCController)initWithComponents:(id)components;
- (GCController)initWithIdentifier:(id)identifier queue:(id)queue components:(id)components;
- (GCController)initWithProfile:(id)profile;
- (GCController)initWithProfileClass:(Class)class service:(id)service;
- (GCControllerCoalescingDelegate)coalescingDelegate;
- (GCControllerLiveInput)input;
- (GCControllerPlayerIndex)playerIndex;
- (GCDeviceBattery)battery;
- (GCDeviceHaptics)haptics;
- (GCDeviceLight)light;
- (GCDeviceSpatial)spatial;
- (GCExtendedGamepad)extendedGamepad;
- (GCGamepad)gamepad;
- (GCMicroGamepad)microGamepad;
- (GCMotion)motion;
- (GCPhysicalInputProfile)physicalInputProfile;
- (NSString)anonymizedIdentifier;
- (NSString)debugDescription;
- (NSString)debugName;
- (NSString)description;
- (NSString)detailedProductCategory;
- (NSString)persistentIdentifier;
- (NSString)physicalInputProfileName;
- (NSString)productCategory;
- (NSString)vendorName;
- (id)_legacy_description;
- (id)_legacy_extendedGamepad;
- (id)_legacy_gamepad;
- (id)_legacy_input;
- (id)_legacy_microGamepad;
- (id)_legacy_motion;
- (id)_legacy_physicalInputProfileName;
- (id)_legacy_vendorName;
- (id)componentForClass:(Class)class;
- (id)componentForProtocol:(id)protocol;
- (id)hapticEngines;
- (unint64_t)deviceHash;
- (unsigned)sampleRate;
- (void)_addComponent:(id)component;
- (void)_becomeCurrent;
- (void)_legacy_dealloc;
- (void)_legacy_invalidateDescription;
- (void)_legacy_noteInputProfileAccess:(void *)access;
- (void)_legacy_setPlayerIndex:(int64_t)index;
- (void)addServiceRef:(id)ref;
- (void)addServiceRefs:(id)refs;
- (void)clearServiceRef;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)removeComponent:(id)component;
- (void)removeServiceRef:(__IOHIDServiceClient *)ref;
- (void)setComponents:(id)components;
- (void)setHandlerQueue:(id)queue;
- (void)setPlayerIndex:(GCControllerPlayerIndex)playerIndex;
@end

@implementation GCController

+ (NSArray)controllers
{
  v2 = +[_GCLegacyDeviceSession sharedInstance];
  controllers = [v2 controllers];
  orderedCollection = [(GCDeviceCollection *)controllers orderedCollection];
  v5 = orderedCollection;
  if (orderedCollection)
  {
    v6 = orderedCollection;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  return v6;
}

- (GCController)initWithIdentifier:(id)identifier queue:(id)queue components:(id)components
{
  identifierCopy = identifier;
  queueCopy = queue;
  componentsCopy = components;
  v20.receiver = self;
  v20.super_class = GCController;
  v11 = [(GCController *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_handlerQueue, queue);
    v13 = [identifierCopy copyWithZone:0];
    identifier = v12->_identifier;
    v12->_identifier = v13;

    v12->_playerIndex = -1;
    [(GCController *)v12 setComponents:componentsCopy];
    v15 = objc_opt_new();
    profile = v12->_profile;
    v12->_profile = v15;

    v17 = objc_opt_new();
    hidServices = v12->_hidServices;
    v12->_hidServices = v17;
  }

  return v12;
}

- (GCController)initWithComponents:(id)components
{
  v4 = MEMORY[0x1E696AFB0];
  componentsCopy = components;
  uUID = [v4 UUID];
  v7 = [(GCController *)self initWithIdentifier:uUID components:componentsCopy];

  return v7;
}

- (void)dealloc
{
  [(GCController *)self _legacy_dealloc];
  v3.receiver = self;
  v3.super_class = GCController;
  [(GCController *)&v3 dealloc];
}

- (void)removeComponent:(id)component
{
  components = self->_components;
  componentCopy = component;
  v6 = [(NSArray *)components mutableCopy];
  [(NSArray *)v6 removeObject:componentCopy];

  v7 = self->_components;
  self->_components = v6;
}

- (void)setComponents:(id)components
{
  v44 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = [(NSArray *)self->_components differenceFromArray:componentsCopy];
  removals = [v5 removals];

  v7 = [removals countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v7)
  {
    v8 = *v39;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(removals);
        }

        object = [*(*(&v38 + 1) + 8 * i) object];
        [object setController:0];
      }

      v7 = [removals countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v7);
  }

  v11 = [componentsCopy copy];
  components = self->_components;
  self->_components = v11;

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = componentsCopy;
  v13 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v13)
  {
    v14 = *v35;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v34 + 1) + 8 * j);
        [v16 setController:self];
        if ([v16 conformsToProtocol:&unk_1F4EA0998])
        {
          objc_storeStrong(&self->_info, v16);
        }

        if ([v16 conformsToProtocol:&unk_1F4EA8740])
        {
          spatialFacade = [v16 spatialFacade];
          spatial = self->_spatial;
          self->_spatial = spatialFacade;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&self->_input, v16);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&self->_physicalInput, v16);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&self->_motion, v16);
        }

        if ([v16 conformsToProtocol:&unk_1F4E98C20])
        {
          v19 = v16;
          if (GCCurrentProcessLinkedOnAfter(0x7E40901FFFFFFFFuLL))
          {
            v20 = v19;
          }

          else
          {
            [(GCController *)self removeComponent:v19];
            playerIndicator = self->_playerIndicator;
            if (playerIndicator)
            {
              playerIndex = [(GCControllerPlayerIndicator *)playerIndicator playerIndex];
            }

            else
            {
              playerIndex = self->_playerIndex;
            }

            v20 = [[GCLocalPlayerIndicator alloc] initWithInitialValue:playerIndex systemPlayerIndicatorProxy:v19];
            [(GCController *)self _addComponent:v20];
          }

          v23 = self->_playerIndicator;
          self->_playerIndicator = v20;
        }

        if ([v16 conformsToProtocol:&unk_1F4E976C8])
        {
          objc_storeStrong(&self->_hapticCapabilityInfo, v16);
        }

        if ([v16 conformsToProtocol:&unk_1F4E9EBE0])
        {
          objc_storeStrong(&self->_light, v16);
        }

        if ([v16 conformsToProtocol:&unk_1F4E98E90])
        {
          objc_storeStrong(&self->_motionConfigurableSensors, v16);
        }

        if ([v16 conformsToProtocol:&unk_1F4E92878])
        {
          objc_storeStrong(&self->_battery, v16);
        }

        if ([v16 conformsToProtocol:&unk_1F4EA0AC0])
        {
          objc_storeStrong(&self->_settings, v16);
        }

        if ([v16 conformsToProtocol:&unk_1F4EA6DF8])
        {
          objc_storeStrong(&self->_systemGesture, v16);
        }
      }

      v13 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v13);
  }

  if (self->_settings && (self->_physicalInput || self->_input))
  {
    objc_initWeak(&location, self);
    settings = self->_settings;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __30__GCController_setComponents___block_invoke;
    v31[3] = &unk_1E841A4C0;
    objc_copyWeak(&v32, &location);
    [(GCControllerSettingsComponent *)settings setChangedHandler:v31];
    physicalInput = self->_physicalInput;
    settingsProfile = [(GCControllerSettingsComponent *)self->_settings settingsProfile];
    [(GCPhysicalInputProfile *)physicalInput setSettingsProfile:settingsProfile];

    input = self->_input;
    settingsProfile2 = [(GCControllerSettingsComponent *)self->_settings settingsProfile];
    [(_GCControllerInputComponent *)input setSettingsProfile:settingsProfile2];

    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __30__GCController_setComponents___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = *(WeakRetained + 7);
    v6 = WeakRetained;
    v3 = [*(WeakRetained + 10) settingsProfile];
    [v2 setSettingsProfile:v3];

    v4 = *(v6 + 6);
    v5 = [*(v6 + 10) settingsProfile];
    [v4 setSettingsProfile:v5];

    WeakRetained = v6;
  }
}

- (void)_addComponent:(id)component
{
  components = self->_components;
  componentCopy = component;
  v6 = [(NSArray *)components mutableCopy];
  [componentCopy setController:self];
  [(NSArray *)v6 addObject:componentCopy];

  v7 = self->_components;
  self->_components = v6;
}

- (id)componentForProtocol:(id)protocol
{
  v17 = *MEMORY[0x1E69E9840];
  protocolCopy = protocol;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSArray *)self->_components mutableCopy];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 conformsToProtocol:protocolCopy])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)componentForClass:(Class)class
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(NSArray *)self->_components mutableCopy];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setHandlerQueue:(id)queue
{
  v18 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  if (self->_handlerQueue != queueCopy)
  {
    objc_storeStrong(&self->_handlerQueue, queue);
    if (self->_components)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      components = [(GCController *)self components];
      v7 = [components countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v14;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v14 != v9)
            {
              objc_enumerationMutation(components);
            }

            v11 = *(*(&v13 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v11 setDispatchQueue:queueCopy];
            }
          }

          v8 = [components countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v8);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (NSString)vendorName
{
  if (self->_components)
  {
    [(GCControllerProductInfo *)self->_info vendorName];
  }

  else
  {
    [(GCController *)self _legacy_vendorName];
  }
  v2 = ;

  return v2;
}

- (NSString)productCategory
{
  if (self->_components)
  {
    productCategory = [(GCControllerProductInfo *)self->_info productCategory];
    v3 = productCategory;
    v4 = @"Generic Game Controller";
    if (productCategory)
    {
      v4 = productCategory;
    }

    _legacy_productCategory = v4;
  }

  else
  {
    _legacy_productCategory = [(GCController *)self _legacy_productCategory];
  }

  return _legacy_productCategory;
}

- (NSString)detailedProductCategory
{
  if (self->_components)
  {
    detailedProductCategory = [(GCControllerProductInfo *)self->_info detailedProductCategory];
    v4 = detailedProductCategory;
    if (detailedProductCategory)
    {
      productCategory = detailedProductCategory;
    }

    else
    {
      productCategory = [(GCController *)self productCategory];
    }

    productCategory2 = productCategory;
  }

  else
  {
    productCategory2 = [(GCController *)self productCategory];
  }

  return productCategory2;
}

- (NSString)anonymizedIdentifier
{
  v2 = @"controller";
  if (self->_components)
  {
    anonymizedIdentifier = [(GCControllerProductInfo *)self->_info anonymizedIdentifier];
    v4 = anonymizedIdentifier;
    if (anonymizedIdentifier)
    {
      v5 = anonymizedIdentifier;
    }

    else
    {
      v5 = @"controller";
    }

    v2 = v5;
  }

  return v2;
}

- (NSString)persistentIdentifier
{
  identifier = self->_identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = self->_identifier;
  }

  else
  {
    v4 = @"controller";
  }

  return v4;
}

- (BOOL)isAttachedToDevice
{
  if (self->_components)
  {
    isAttachedToDevice = [(GCControllerProductInfo *)self->_info isAttachedToDevice];
    bOOLValue = [isAttachedToDevice BOOLValue];

    return bOOLValue;
  }

  else
  {

    return [(GCController *)self _legacy_isAttachedToDevice];
  }
}

- (GCControllerPlayerIndex)playerIndex
{
  if (!self->_components)
  {
    return [(GCController *)self _legacy_playerIndex];
  }

  if (self->_playerIndicator)
  {
    return [(GCControllerPlayerIndicator *)self->_playerIndicator playerIndex];
  }

  return self->_playerIndex;
}

- (void)setPlayerIndex:(GCControllerPlayerIndex)playerIndex
{
  if (self->_components)
  {
    if (playerIndex < GCControllerPlayerIndex1)
    {
      playerIndex = GCControllerPlayerIndexUnset;
    }

    if (self->_playerIndicator)
    {
      [(GCControllerPlayerIndicator *)self->_playerIndicator setPlayerIndex:playerIndex];
    }

    else
    {
      self->_playerIndex = playerIndex;
    }
  }

  else
  {
    [(GCController *)self _legacy_setPlayerIndex:playerIndex];
  }
}

- (GCDeviceBattery)battery
{
  if (self->_components)
  {
    battery = [(GCDeviceBatteryComponent *)self->_battery battery];
  }

  else
  {
    battery = 0;
  }

  return battery;
}

- (GCControllerLiveInput)input
{
  [(GCController *)self _legacy_noteInputProfileAccess:v2];
  if (self->_components)
  {
    defaultPhysicalInput = [(_GCDevicePhysicalInputComponent *)&self->_input->super.super.isa defaultPhysicalInput];
    facade = [(_GCDevicePhysicalInputBase *)defaultPhysicalInput facade];
    v7 = facade;
    if (facade)
    {
      _legacy_input = facade;
    }

    else
    {
      _legacy_input = [(GCController *)self _legacy_input];
    }

    _legacy_input2 = _legacy_input;
  }

  else
  {
    _legacy_input2 = [(GCController *)self _legacy_input];
  }

  return _legacy_input2;
}

- (NSString)physicalInputProfileName
{
  if (self->_components)
  {
    [(GCPhysicalInputProfile *)self->_physicalInput name];
  }

  else
  {
    [(GCController *)self _legacy_physicalInputProfileName];
  }
  v2 = ;

  return v2;
}

- (GCPhysicalInputProfile)physicalInputProfile
{
  [(GCController *)self _legacy_noteInputProfileAccess:v2];
  if (self->_components)
  {
    _legacy_physicalInputProfile = self->_physicalInput;
  }

  else
  {
    _legacy_physicalInputProfile = [(GCController *)self _legacy_physicalInputProfile];
  }

  return _legacy_physicalInputProfile;
}

- (GCExtendedGamepad)extendedGamepad
{
  [(GCController *)self _legacy_noteInputProfileAccess:v2];
  if (self->_components)
  {
    physicalInput = self->_physicalInput;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _legacy_extendedGamepad = self->_physicalInput;
    }

    else
    {
      _legacy_extendedGamepad = 0;
    }
  }

  else
  {
    _legacy_extendedGamepad = [(GCController *)self _legacy_extendedGamepad];
  }

  return _legacy_extendedGamepad;
}

- (GCGamepad)gamepad
{
  [(GCController *)self _legacy_noteInputProfileAccess:v2];
  if (self->_components)
  {
    physicalInput = self->_physicalInput;
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (v5 = self->_physicalInput, objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      _legacy_gamepad = self->_physicalInput;
    }

    else
    {
      _legacy_gamepad = 0;
    }
  }

  else
  {
    _legacy_gamepad = [(GCController *)self _legacy_gamepad];
  }

  return _legacy_gamepad;
}

- (GCMicroGamepad)microGamepad
{
  [(GCController *)self _legacy_noteInputProfileAccess:v2];
  if (self->_components)
  {
    physicalInput = self->_physicalInput;
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (v5 = self->_physicalInput, objc_opt_class(), (objc_opt_isKindOfClass()) || (v6 = self->_physicalInput, objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      _legacy_microGamepad = self->_physicalInput;
    }

    else
    {
      _legacy_microGamepad = 0;
    }
  }

  else
  {
    _legacy_microGamepad = [(GCController *)self _legacy_microGamepad];
  }

  return _legacy_microGamepad;
}

- (GCMotion)motion
{
  if (self->_components)
  {
    _legacy_motion = self->_motion;
  }

  else
  {
    _legacy_motion = [(GCController *)self _legacy_motion];
  }

  return _legacy_motion;
}

- (GCDeviceHaptics)haptics
{
  if (self->_components)
  {
    deviceHaptics = [(GCDeviceHapticCapabilityInfo *)self->_hapticCapabilityInfo deviceHaptics];
  }

  else
  {
    deviceHaptics = 0;
  }

  return deviceHaptics;
}

- (id)hapticEngines
{
  if (self->_components)
  {
    [(GCDeviceHapticCapabilityInfo *)self->_hapticCapabilityInfo hapticEngines];
  }

  else
  {
    [MEMORY[0x1E695DEC8] array];
  }
  v2 = ;

  return v2;
}

- (GCDeviceLight)light
{
  if (self->_components)
  {
    light = [(GCDeviceLightComponent *)self->_light light];
  }

  else
  {
    light = 0;
  }

  return light;
}

- (GCDeviceSpatial)spatial
{
  if (self->_components)
  {
    v3 = self->_spatial;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (GCController)current
{
  v2 = +[_GCLegacyDeviceSession sharedInstance];
  currentController = [v2 currentController];

  return currentController;
}

+ (BOOL)shouldMonitorBackgroundEvents
{
  v2 = +[_GCLegacyDeviceSession sharedInstance];
  configuration = [v2 configuration];
  monitorControllerEventsInBackground = [configuration monitorControllerEventsInBackground];

  return monitorControllerEventsInBackground;
}

- (NSString)description
{
  if (self->_components)
  {
    v3 = MEMORY[0x1E696AEC0];
    productCategory = [(GCController *)self productCategory];
    vendorName = [(GCController *)self vendorName];
    _legacy_description = [v3 stringWithFormat:@"<GCController %p '%@'/'%@'>", self, productCategory, vendorName];
  }

  else
  {
    _legacy_description = [(GCController *)self _legacy_description];
  }

  return _legacy_description;
}

- (NSString)debugDescription
{
  if (self->_components)
  {
    v3 = MEMORY[0x1E696AEC0];
    productCategory = [(GCController *)self productCategory];
    vendorName = [(GCController *)self vendorName];
    components = [(GCController *)self components];
    _legacy_description = [v3 stringWithFormat:@"<GCController %p '%@'/'%@'> %@", self, productCategory, vendorName, components];
  }

  else
  {
    _legacy_description = [(GCController *)self _legacy_description];
  }

  return _legacy_description;
}

+ (BOOL)_settingsSupportedForBLEDevice:(id)device settingsStore:(id)store
{
  v35 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  identifier = [device identifier];
  lowercaseString = [identifier lowercaseString];

  if (lowercaseString)
  {
    +[GCController controllers];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = v32 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v29 + 1) + 8 * i);
          persistentIdentifier = [v13 persistentIdentifier];
          if (__80__GCController_BluetoothSettings___settingsSupportedForBLEDevice_settingsStore___block_invoke(persistentIdentifier, persistentIdentifier, lowercaseString))
          {
            v15 = v13[10];

            if (v15)
            {
              LOBYTE(v21) = 1;
              values = v8;
              goto LABEL_24;
            }
          }

          else
          {
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v10);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    controllers = [storeCopy controllers];
    values = [controllers values];

    v21 = [values countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v21)
    {
      v17 = *v26;
      while (2)
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(values);
          }

          persistentIdentifier2 = [*(*(&v25 + 1) + 8 * j) persistentIdentifier];
          v20 = __80__GCController_BluetoothSettings___settingsSupportedForBLEDevice_settingsStore___block_invoke(persistentIdentifier2, persistentIdentifier2, lowercaseString);

          if (v20)
          {
            LOBYTE(v21) = 1;
            goto LABEL_24;
          }
        }

        v21 = [values countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

LABEL_24:
  }

  else
  {
    LOBYTE(v21) = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t __80__GCController_BluetoothSettings___settingsSupportedForBLEDevice_settingsStore___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 lowercaseString];
  v6 = [v5 containsString:v4];

  return v6;
}

+ (BOOL)_settingsSupportedForBTClassicDevice:(id)device settingsStore:(id)store
{
  v46 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  btAddressData = [device btAddressData];
  v7 = btAddressData;
  if (btAddressData)
  {
    if ([btAddressData length] == 6)
    {
      bytes = [v7 bytes];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02X-%02X-%02X-%02X-%02X-%02X", *bytes, bytes[1], bytes[2], bytes[3], bytes[4], bytes[5]];
      v10 = +[GCController controllers];
      v43 = 0;
      v11 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})" options:1 error:&v43];
      v12 = v43;
      if (v12)
      {
        LOBYTE(v13) = 0;
      }

      else
      {
        v32 = storeCopy;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __86__GCController_BluetoothSettings___settingsSupportedForBTClassicDevice_settingsStore___block_invoke;
        aBlock[3] = &unk_1E841A4E8;
        v30 = v11;
        v42 = v11;
        v14 = _Block_copy(aBlock);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v31 = v10;
        values = v10;
        v16 = [values countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v38;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v38 != v18)
              {
                objc_enumerationMutation(values);
              }

              v20 = *(*(&v37 + 1) + 8 * i);
              persistentIdentifier = [v20 persistentIdentifier];
              if (v14[2](v14, persistentIdentifier, v9))
              {
                v22 = v20[10];

                if (v22)
                {
                  goto LABEL_27;
                }
              }

              else
              {
              }
            }

            v17 = [values countByEnumeratingWithState:&v37 objects:v45 count:16];
          }

          while (v17);
        }

        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        storeCopy = v32;
        controllers = [v32 controllers];
        values = [controllers values];

        v13 = [values countByEnumeratingWithState:&v33 objects:v44 count:16];
        if (v13)
        {
          v24 = *v34;
LABEL_20:
          v25 = 0;
          while (1)
          {
            if (*v34 != v24)
            {
              objc_enumerationMutation(values);
            }

            persistentIdentifier2 = [*(*(&v33 + 1) + 8 * v25) persistentIdentifier];
            v27 = v14[2](v14, persistentIdentifier2, v9);

            if (v27)
            {
              break;
            }

            if (v13 == ++v25)
            {
              v13 = [values countByEnumeratingWithState:&v33 objects:v44 count:16];
              if (v13)
              {
                goto LABEL_20;
              }

              goto LABEL_28;
            }
          }

LABEL_27:
          LOBYTE(v13) = 1;
LABEL_28:
          storeCopy = v32;
        }

        v11 = v30;
        v10 = v31;
        v12 = 0;
      }

      goto LABEL_31;
    }

    if (gc_isInternalBuild())
    {
      v9 = getGCLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [GCController(BluetoothSettings) _settingsSupportedForBTClassicDevice:v7 settingsStore:v9];
      }

      LOBYTE(v13) = 0;
LABEL_31:

      goto LABEL_32;
    }
  }

  LOBYTE(v13) = 0;
LABEL_32:

  v28 = *MEMORY[0x1E69E9840];
  return v13;
}

BOOL __86__GCController_BluetoothSettings___settingsSupportedForBTClassicDevice_settingsStore___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) rangeOfFirstMatchInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL && v8 == 0)
  {
    v12 = 0;
  }

  else
  {
    v10 = [v5 substringWithRange:{v7, v8}];
    v11 = [v10 stringByReplacingOccurrencesOfString:@":" withString:@"-"];

    v12 = [v11 caseInsensitiveCompare:v6] == 0;
  }

  return v12;
}

+ (BOOL)settingsSupportedForCBDevice:(id)device
{
  deviceCopy = device;
  if (settingsSupportedForCBDevice__onceToken != -1)
  {
    +[GCController(BluetoothSettings) settingsSupportedForCBDevice:];
  }

  if (([deviceCopy deviceFlags] & 0x4000) != 0)
  {
    v6 = [self _settingsSupportedForBTClassicDevice:deviceCopy settingsStore:settingsSupportedForCBDevice___settingsStore];
LABEL_8:
    v5 = v6;
    goto LABEL_9;
  }

  if (([deviceCopy deviceFlags] & 0x2000) != 0)
  {
    v6 = [self _settingsSupportedForBLEDevice:deviceCopy settingsStore:settingsSupportedForCBDevice___settingsStore];
    goto LABEL_8;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

void __64__GCController_BluetoothSettings__settingsSupportedForCBDevice___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.GameController"];
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  }

  v5 = v2;

  v3 = [objc_alloc(MEMORY[0x1E69A0750]) initWithUserDefaults:v5];
  v4 = settingsSupportedForCBDevice___settingsStore;
  settingsSupportedForCBDevice___settingsStore = v3;
}

+ (BOOL)userHasPairedGameController
{
  if (userHasPairedGameController_onceToken != -1)
  {
    +[GCController(AppStore) userHasPairedGameController];
  }

  v3 = userHasPairedGameController__defaults;

  return [v3 BOOLForKey:@"showGCPrefsPane"];
}

void __53__GCController_AppStore__userHasPairedGameController__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.GameController"];
  v1 = userHasPairedGameController__defaults;
  userHasPairedGameController__defaults = v0;
}

+ (BOOL)userHasPairedGameControllerSupportingInteractionProfile:(id)profile
{
  profileCopy = profile;
  if (userHasPairedGameControllerSupportingInteractionProfile__onceToken != -1)
  {
    +[GCController(AppStore) userHasPairedGameControllerSupportingInteractionProfile:];
  }

  if ([profileCopy isEqualToString:@"SpatialGamepad"])
  {
    v4 = [userHasPairedGameControllerSupportingInteractionProfile___defaults BOOLForKey:@"hasPairedSpatialController"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __82__GCController_AppStore__userHasPairedGameControllerSupportingInteractionProfile___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.GameController"];
  v1 = userHasPairedGameControllerSupportingInteractionProfile___defaults;
  userHasPairedGameControllerSupportingInteractionProfile___defaults = v0;
}

void __68__GCController_Legacy____openXPC_and_CBApplicationDidBecomeActive____block_invoke()
{
  v0 = +[_GCLegacyDeviceSession sharedInstance];
  v1 = +[_GCCurrentApplicationForegroundMonitor sharedInstance];
  [v1 CBApplicationDidBecomeActive];
}

+ (id)snapshotWithProfile:(id)profile
{
  profileCopy = profile;
  v4 = [GCController alloc];
  v4->_snapshot = 1;
  v5 = [(GCController *)v4 initWithProfile:profileCopy];

  return v5;
}

- (GCController)initWithProfile:(id)profile
{
  profileCopy = profile;
  v13.receiver = self;
  v13.super_class = GCController;
  v6 = [(GCController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_handlerQueue, MEMORY[0x1E69E96A0]);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    hidServices = v7->_hidServices;
    v7->_hidServices = v8;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    [(GCController *)v7 setPhysicalDeviceUniqueID:uUIDString];

    objc_storeStrong(&v7->_profile, profile);
    [(GCNamedProfile *)v7->_profile setController:v7];
    if (gc_isInternalBuild())
    {
      [GCController(Legacy) initWithProfile:v7];
    }

    if (gc_isInternalBuild())
    {
      [GCController(Legacy) initWithProfile:v7];
    }

    if (gc_isInternalBuild())
    {
      [GCController(Legacy) initWithProfile:v7];
    }
  }

  return v7;
}

- (GCController)initWithProfileClass:(Class)class service:(id)service
{
  serviceCopy = service;
  v29.receiver = self;
  v29.super_class = GCController;
  v7 = [(GCController *)&v29 init];
  if (!v7)
  {
    goto LABEL_26;
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  hidServices = v7->_hidServices;
  v7->_hidServices = v8;

  [(NSMutableArray *)v7->_hidServices addObject:serviceCopy];
  v10 = [serviceCopy stringPropertyForKey:@"PhysicalDeviceUniqueID"];
  [(GCController *)v7 setPhysicalDeviceUniqueID:v10];

  v11 = [serviceCopy numberPropertyForKey:@"UsesCompass"];
  -[GCController setPhysicalDeviceUsesCompass:](v7, "setPhysicalDeviceUsesCompass:", [v11 BOOLValue]);

  v12 = [serviceCopy stringPropertyForKey:@"SerialNumber"];
  [(GCController *)v7 setUniqueIdentifier:v12];

  if (gc_isInternalBuild())
  {
    [GCController(Legacy) initWithProfileClass:serviceCopy service:v7];
    if (class)
    {
      goto LABEL_4;
    }

LABEL_25:
    objc_storeStrong(&v7->_handlerQueue, MEMORY[0x1E69E96A0]);
    [(GCController *)v7 setPlayerIndex:-1];
LABEL_26:
    v27 = v7;
    goto LABEL_27;
  }

  if (!class)
  {
    goto LABEL_25;
  }

LABEL_4:
  v13 = [[class alloc] initWithController:v7];
  profile = v7->_profile;
  v7->_profile = v13;

  v15 = v7->_profile;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(GCNamedProfile *)v7->_profile conformsToProtocol:&unk_1F4E9C418])
    {
      v24 = [serviceCopy numberPropertyForKey:@"ProductID"];
      unsignedIntValue = [v24 unsignedIntValue];

      if ((unsignedIntValue & 0xFFFFFFFE) == 0x314)
      {
        v26 = 5;
      }

      else
      {
        v26 = 4;
      }

      [(GCNamedProfile *)v7->_profile setDeviceType:v26];
    }

    goto LABEL_19;
  }

  v16 = v7->_profile;
  v17 = [serviceCopy numberPropertyForKey:@"VendorID"];
  unsignedIntValue2 = [v17 unsignedIntValue];

  v19 = [serviceCopy numberPropertyForKey:@"ProductID"];
  unsignedIntValue3 = [v19 unsignedIntValue];

  v21 = [serviceCopy stringPropertyForKey:@"Transport"];
  v22 = v21;
  if (unsignedIntValue2 != 76)
  {
    goto LABEL_16;
  }

  if (unsignedIntValue3 == 621)
  {
    v23 = 2;
    goto LABEL_15;
  }

  if (unsignedIntValue3 != 614)
  {
LABEL_16:

LABEL_19:
    if (gc_isInternalBuild())
    {
      [GCController(Legacy) initWithProfileClass:v7 service:?];
    }

    if (gc_isInternalBuild())
    {
      [GCController(Legacy) initWithProfile:v7];
    }

    if (gc_isInternalBuild())
    {
      [GCController(Legacy) initWithProfile:v7];
    }

    goto LABEL_25;
  }

  if ([v21 isEqualToString:@"Rapport"])
  {
    v23 = 3;
LABEL_15:
    [(GCNamedProfile *)v16 setDeviceType:v23];
    goto LABEL_16;
  }

  if ([v22 isEqualToString:@"BluetoothLowEnergy"])
  {
    v23 = 1;
    goto LABEL_15;
  }

  if (gc_isInternalBuild())
  {
    [GCController(Legacy) initWithProfileClass:service:];
  }

  v27 = 0;
LABEL_27:

  return v27;
}

- (GCController)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = GCController;
  v5 = [(GCController *)&v18 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    hidServices = v5->_hidServices;
    v5->_hidServices = v6;

    v8 = [coderCopy decodeBoolForKey:@"isExtended"];
    v9 = [coderCopy decodeBoolForKey:@"hasMotion"];
    v5->_deviceHash = [coderCopy decodeInt64ForKey:@"deviceHash"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vendorName"];
    vendorName = v5->_vendorName;
    v5->_vendorName = v10;

    if (gc_isInternalBuild())
    {
      [GCController(Legacy) initWithProfileClass:v5 service:?];
    }

    if (gc_isInternalBuild())
    {
      [GCController(Legacy) initWithProfile:v5];
    }

    if (gc_isInternalBuild())
    {
      [GCController(Legacy) initWithProfile:v5];
    }

    objc_storeStrong(&v5->_handlerQueue, MEMORY[0x1E69E96A0]);
    v12 = off_1E84180F0;
    if (!v8)
    {
      v12 = off_1E8418110;
    }

    v13 = [objc_alloc(*v12) initWithController:v5];
    profile = v5->_profile;
    v5->_profile = v13;

    if (v9 && [(GCNamedProfile *)v5->_profile conformsToProtocol:&unk_1F4E94D18])
    {
      v15 = v5->_profile;
      v16 = [[GCMotion alloc] initWithController:v5];
      if ([coderCopy decodeBoolForKey:@"hasCompass"])
      {
        [(GCMotion *)v16 _setCompassEnabled:1];
      }

      [(GCNamedProfile *)v15 set_motion:v16];
    }

    -[GCController setPlayerIndex:](v5, "setPlayerIndex:", [coderCopy decodeIntegerForKey:@"playerIndex"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  extendedGamepad = [(GCController *)self extendedGamepad];
  [coderCopy encodeBool:extendedGamepad != 0 forKey:@"isExtended"];

  motion = [(GCController *)self motion];
  [coderCopy encodeBool:motion != 0 forKey:@"hasMotion"];

  motion2 = [(GCController *)self motion];
  [coderCopy encodeBool:objc_msgSend(motion2 forKey:{"hasAttitudeAndRotationRate"), @"hasCompass"}];

  [coderCopy encodeInteger:-[GCController playerIndex](self forKey:{"playerIndex"), @"playerIndex"}];
  [coderCopy encodeInt64:-[GCController deviceHash](self forKey:{"deviceHash"), @"deviceHash"}];
  vendorName = [(GCController *)self vendorName];
  [coderCopy encodeObject:vendorName forKey:@"vendorName"];
}

- (void)_legacy_dealloc
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = __Block_byref_object_copy__8;
  v8[4] = __Block_byref_object_dispose__8;
  v9 = [(NSMutableArray *)self->_hidServices mutableCopy];
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = __Block_byref_object_copy__8;
  v6[4] = __Block_byref_object_dispose__8;
  v7 = self->_profile;
  hidServices = self->_hidServices;
  self->_hidServices = 0;

  profile = self->_profile;
  self->_profile = 0;

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__GCController_Legacy___legacy_dealloc__block_invoke;
  v5[3] = &unk_1E841B160;
  v5[4] = v8;
  v5[5] = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
  _Block_object_dispose(v6, 8);

  _Block_object_dispose(v8, 8);
}

void __39__GCController_Legacy___legacy_dealloc__block_invoke(uint64_t a1)
{
  if ([*(*(*(a1 + 32) + 8) + 40) count])
  {
    [*(*(*(a1 + 32) + 8) + 40) removeAllObjects];
  }

  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

- (GCControllerCoalescingDelegate)coalescingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_coalescingDelegate);

  return WeakRetained;
}

- (unint64_t)deviceHash
{
  if (!self->_profile)
  {
    return 0;
  }

  result = self->_deviceHash;
  if (result)
  {
    return result;
  }

  hidServices = [(GCController *)self hidServices];
  if ([hidServices count])
  {
    v5 = [hidServices objectAtIndexedSubscript:0];
    if (v5)
    {
      v6 = v5;
      if ([(GCController *)self isATVRemote])
      {
        profile = [(GCController *)self profile];
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);

        profile2 = [(GCController *)self profile];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
LABEL_15:
          if (gc_isInternalBuild())
          {
            [GCController(Legacy) deviceHash];
          }

          self->_deviceHash = [v9 hash];

          goto LABEL_18;
        }

        profile3 = [(GCController *)self profile];
        if ([profile3 deviceType] == 3)
        {
          hidServices2 = [(GCController *)self hidServices];
          firstObject = [hidServices2 firstObject];
          registryID = [firstObject registryID];
          v16 = [registryID description];

          v9 = v16;
        }
      }

      else
      {
        v17 = [v6 stringPropertyForKey:@"PhysicalDeviceUniqueID"];
        profile3 = v17;
        if (v17)
        {
          profile3 = v17;
          v9 = profile3;
        }

        else
        {
          v18 = [v6 numberPropertyForKey:@"LocationID"];
          v19 = [v6 numberPropertyForKey:@"VendorID"];
          v20 = [v6 numberPropertyForKey:@"ProductID"];
          registryID2 = [v6 registryID];
          v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ %@ %@", v19, v20, v18, registryID2];
        }
      }

      goto LABEL_15;
    }
  }

  self->_deviceHash = [(GCController *)self hash];
LABEL_18:

  return self->_deviceHash;
}

- (NSString)debugName
{
  if (self->_vendorName || self->_deviceHash)
  {
    debugName = self->_debugName;
    if (!debugName)
    {
      v4 = MEMORY[0x1E696AEC0];
      productCategory = [(GCController *)self productCategory];
      v6 = [v4 stringWithFormat:@"%@ (0x%02lx)", productCategory, self->_deviceHash];
      v7 = self->_debugName;
      self->_debugName = v6;

      debugName = self->_debugName;
    }

    v8 = debugName;
  }

  else
  {
    v8 = [(GCController *)self description];
  }

  return v8;
}

- (void)_becomeCurrent
{
  v3 = +[_GCLegacyDeviceSession weakSharedInstance];
  [v3 becomeCurrentController:self];
}

- (BOOL)_legacy_isAttachedToDevice
{
  hidServices = [(GCController *)self hidServices];
  if ([hidServices count])
  {
    v3 = [hidServices objectAtIndexedSubscript:0];
    v4 = [v3 numberPropertyForKey:@"GameControllerFormFitting"];

    if (v4)
    {
      bOOLValue = [v4 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    v6 = [hidServices objectAtIndexedSubscript:0];
    v7 = [v6 numberPropertyForKey:@"IAPHIDAccessoryCategory"];

    if ([v7 intValue] - 3 < 2)
    {
      bOOLValue = 1;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)_legacy_vendorName
{
  vendorName = self->_vendorName;
  if (vendorName)
  {
    goto LABEL_17;
  }

  hidServices = [(GCController *)self hidServices];
  profile = self->_profile;
  v6 = @"Generic Controller";
  if (!profile)
  {
    goto LABEL_14;
  }

  if ([(GCNamedProfile *)profile conformsToProtocol:&unk_1F4E9C418])
  {
    if (![(GCController *)self displayTrueSiriRemoteName])
    {
      v9 = self->_vendorName;
      self->_vendorName = @"Remote";
      goto LABEL_16;
    }

    allHIDDevicesConnected = self->_allHIDDevicesConnected;
    v8 = MEMORY[0x1E696AEC0];
    v9 = VendorNameForATVProfile(self->_profile);
    v6 = [v8 stringWithFormat:@"%@%@", v9, &stru_1F4E3B4E0];
    if (allHIDDevicesConnected)
    {
      v10 = self->_vendorName;
LABEL_9:
      self->_vendorName = &v6->isa;

      goto LABEL_16;
    }

LABEL_14:
    goto LABEL_18;
  }

  if (![hidServices count])
  {
    if ([(GCNamedProfile *)self->_profile conformsToProtocol:&unk_1F4E94D18])
    {
      name = [(GCNamedProfile *)self->_profile name];
      v9 = self->_vendorName;
      self->_vendorName = name;
    }

    else
    {
      v9 = self->_vendorName;
      self->_vendorName = @"Generic Controller";
    }

    goto LABEL_16;
  }

  v11 = [hidServices objectAtIndexedSubscript:0];
  v9 = [v11 stringPropertyForKey:@"Product"];

  objc_storeStrong(&self->_vendorName, v9);
  v10 = self->_vendorName;
  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_16:

  vendorName = self->_vendorName;
LABEL_17:
  v6 = vendorName;
LABEL_18:

  return v6;
}

- (BOOL)displayTrueSiriRemoteName
{
  if (displayTrueSiriRemoteName_onceToken != -1)
  {
    [GCController(Legacy) displayTrueSiriRemoteName];
  }

  return displayTrueSiriRemoteName_displayTrueSiriRemoteName;
}

void __49__GCController_Legacy__displayTrueSiriRemoteName__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  displayTrueSiriRemoteName_displayTrueSiriRemoteName = [v0 BOOLForKey:@"displayTrueSiriRemoteName"];
}

- (void)_legacy_invalidateDescription
{
  description = self->_description;
  self->_description = 0;

  debugName = self->_debugName;
  self->_debugName = 0;
}

- (id)_legacy_description
{
  description = self->_description;
  if (description)
  {
    goto LABEL_2;
  }

  vendorName = [(GCController *)self vendorName];
  if (vendorName)
  {
    v6 = vendorName;
    deviceHash = [(GCController *)self deviceHash];

    if (deviceHash)
    {
      v8 = MEMORY[0x1E696AEC0];
      productCategory = [(GCController *)self productCategory];
      v10 = [v8 stringWithFormat:@"<GCController %p ('%@' - 0x%lx)>", self, productCategory, -[GCController deviceHash](self, "deviceHash")];
      v11 = self->_description;
      self->_description = v10;

      description = self->_description;
LABEL_2:
      v3 = description;
      goto LABEL_7;
    }
  }

  v12 = MEMORY[0x1E696AEC0];
  productCategory2 = [(GCController *)self productCategory];
  v3 = [v12 stringWithFormat:@"<GCController %p ('%@' - 0x%lx)>", self, productCategory2, -[GCController deviceHash](self, "deviceHash")];

LABEL_7:

  return v3;
}

- (void)addServiceRefs:(id)refs
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  hidServices = [refs hidServices];
  v5 = [hidServices countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(hidServices);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        hidServices2 = [(GCController *)self hidServices];
        [hidServices2 addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [hidServices countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addServiceRef:(id)ref
{
  refCopy = ref;
  hidServices = [(GCController *)self hidServices];
  [hidServices addObject:refCopy];
}

- (BOOL)hasServiceRef:(__IOHIDServiceClient *)ref
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  hidServices = [(GCController *)self hidServices];
  v5 = [hidServices countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(hidServices);
        }

        if ([*(*(&v12 + 1) + 8 * i) service] == ref)
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [hidServices countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)removeServiceRef:(__IOHIDServiceClient *)ref
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(GCController *)self hasServiceRef:?])
  {
    hidServices = [(GCController *)self hidServices];
    v6 = [hidServices copy];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([v12 service] == ref)
          {
            hidServices2 = [(GCController *)self hidServices];
            [hidServices2 removeObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)clearServiceRef
{
  hidServices = [(GCController *)self hidServices];
  [hidServices removeAllObjects];
}

- (BOOL)isATVRemote
{
  profile = [(GCController *)self profile];

  if (!profile)
  {
    return 0;
  }

  profile2 = [(GCController *)self profile];
  v5 = [profile2 conformsToProtocol:&unk_1F4E9C418];

  return v5;
}

- (unsigned)sampleRate
{
  profile = [(GCController *)self profile];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  profile2 = [(GCController *)self profile];
  sampleRate = [profile2 sampleRate];

  return sampleRate;
}

- (void)_legacy_setPlayerIndex:(int64_t)index
{
  if (index < 0)
  {
    index = -1;
  }

  self->_playerIndex = index;
  [(GCNamedProfile *)self->_profile setPlayerIndex:?];
}

- (void)_legacy_noteInputProfileAccess:(void *)access
{
  if (!GCCallerAddressIsGameControllerFramework())
  {
    v4 = +[_GCLegacyDeviceSession weakSharedInstance];
    [(_GCLegacyDeviceSession *)v4 noteInputProfileAccessOnController:?];
  }
}

- (id)_legacy_input
{
  v26[2] = *MEMORY[0x1E69E9840];
  legacy_input = self->_legacy_input;
  if (legacy_input)
  {
    defaultPhysicalInput = [(_GCDevicePhysicalInputComponent *)&legacy_input->super.super.isa defaultPhysicalInput];
    facade = [(_GCDevicePhysicalInputBase *)defaultPhysicalInput facade];
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!self->_legacy_input)
    {
      v7 = [GCControllerLiveInput alloc];
      v8 = objc_opt_new();
      v9 = [(_GCDevicePhysicalInputFacade *)v7 initWithParameters:v8];

      v10 = [MEMORY[0x1E695DFD8] set];
      v11 = [_GCDevicePhysicalInput alloc];
      v12 = [MEMORY[0x1E695DFD8] set];
      v13 = [(_GCDevicePhysicalInput *)v11 initWithFacade:v9 elements:v10 attributes:v12];

      v14 = [_GCDevicePhysicalInput alloc];
      v15 = [MEMORY[0x1E695DFD8] setWithObject:@"unmapped"];
      v16 = [(_GCDevicePhysicalInput *)v14 initWithFacade:v9 elements:v10 attributes:v15];

      v17 = [_GCControllerInputComponent alloc];
      uUID = [MEMORY[0x1E696AFB0] UUID];
      v26[0] = v13;
      v26[1] = v16;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
      v20 = [(_GCDevicePhysicalInputComponent *)v17 initWithIdentifier:uUID physicalInputs:v19];
      v21 = self->_legacy_input;
      self->_legacy_input = v20;
    }

    objc_sync_exit(selfCopy);

    defaultPhysicalInput2 = [(_GCDevicePhysicalInputComponent *)&self->_legacy_input->super.super.isa defaultPhysicalInput];
    facade = [(_GCDevicePhysicalInputBase *)defaultPhysicalInput2 facade];
  }

  v24 = *MEMORY[0x1E69E9840];

  return facade;
}

- (id)_legacy_physicalInputProfileName
{
  profile = [(GCController *)self profile];
  name = [profile name];

  return name;
}

- (id)_legacy_gamepad
{
  profile = self->_profile;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (v4 = self->_profile, objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = self->_profile;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_legacy_microGamepad
{
  profile = self->_profile;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = self->_profile;
  if (isKindOfClass)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  v6 = objc_opt_isKindOfClass();
  v5 = self->_profile;
  if (v6)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = self->_profile;
LABEL_5:
    v7 = v5;
    goto LABEL_6;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (id)_legacy_extendedGamepad
{
  profile = self->_profile;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = self->_profile;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_legacy_motion
{
  profile = self->_profile;
  if (objc_opt_respondsToSelector())
  {
    v4 = [(GCNamedProfile *)self->_profile performSelector:sel__motion];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (GCController)capture
{
  physicalInputProfile = [(GCController *)self physicalInputProfile];
  capture = [physicalInputProfile capture];

  v5 = [GCController snapshotWithProfile:capture];
  motion = [(GCController *)self motion];

  if (motion)
  {
    v7 = [[GCMotion alloc] initWithController:v5];
    [(GCMotion *)v7 _setCompassEnabled:1];
    [(GCMotion *)v7 _setMotionLite:1];
    [capture set_motion:v7];
    motion2 = [v5 motion];
    motion3 = [(GCController *)self motion];
    [motion2 setStateFromMotion:motion3];
  }

  return v5;
}

+ (GCController)controllerWithMicroGamepad
{
  v2 = [(GCPhysicalInputProfile *)[GCMicroGamepad alloc] initWithController:0];
  v3 = [GCController snapshotWithProfile:v2];
  v4 = [[GCMotion alloc] initWithController:v3];
  [(GCMotion *)v4 _setCompassEnabled:1];
  [(GCMotion *)v4 _setMotionLite:1];
  [(GCPhysicalInputProfile *)v2 set_motion:v4];

  return v3;
}

+ (GCController)controllerWithExtendedGamepad
{
  memset(v14, 0, 512);
  GCExtendedGamepadInitInfoMake(v14);
  v2 = 0;
  v3 = xmmword_1D2DF0580;
  v4 = xmmword_1D2DF0590;
  v5 = xmmword_1D2DF05A0;
  v6 = xmmword_1D2DEE1B0;
  v7 = vdupq_n_s64(0x16uLL);
  v8 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v7, v6)), *v3.i8), *v3.i8).u8[0])
    {
      BYTE8(v14[v2]) = 1;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v6)), *&v3), *&v3).i8[1])
    {
      LOBYTE(v14[v2 + 5]) = 1;
    }

    if (vuzp1_s8(vuzp1_s16(*&v3, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v5))), *&v3).i8[2])
    {
      BYTE8(v14[v2 + 9]) = 1;
      LOBYTE(v14[v2 + 14]) = 1;
    }

    if (vuzp1_s8(*&v3, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v4)), *&v3)).i32[1])
    {
      BYTE8(v14[v2 + 18]) = 1;
    }

    if (vuzp1_s8(*&v3, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v4)), *&v3)).i8[5])
    {
      LOBYTE(v14[v2 + 23]) = 1;
    }

    if (vuzp1_s8(*&v3, vuzp1_s16(*&v3, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v3)))).i8[6])
    {
      BYTE8(v14[v2 + 27]) = 1;
      LOBYTE(v14[v2 + 32]) = 1;
    }

    v4 = vaddq_s64(v4, v8);
    v5 = vaddq_s64(v5, v8);
    v6 = vaddq_s64(v6, v8);
    v3 = vaddq_s64(v3, v8);
    v2 += 36;
  }

  while (v2 != 108);
  v9 = [[GCExtendedGamepad alloc] initWithController:0 initInfo:v14];
  v10 = [GCController snapshotWithProfile:v9];
  v11 = [[GCMotion alloc] initWithController:v10];
  [(GCMotion *)v11 _setHasAttitude:[(GCMotion *)v11 hasAttitude]];
  [(GCMotion *)v11 _setHasRotationRate:[(GCMotion *)v11 hasRotationRate]];
  [(GCPhysicalInputProfile *)v9 set_motion:v11];

  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64(v14 + i);
  }

  return v10;
}

+ (void)_startWirelessControllerDiscoveryWithBTClassic:(BOOL)classic btle:(BOOL)btle completionHandler:(id)handler
{
  btleCopy = btle;
  classicCopy = classic;
  handlerCopy = handler;
  if (gc_isInternalBuild())
  {
    +[GCController(Discovery) _startWirelessControllerDiscoveryWithBTClassic:btle:completionHandler:];
  }

  if (_startWirelessControllerDiscoveryWithBTClassic_btle_completionHandler__onceToken != -1)
  {
    +[GCController(Discovery) _startWirelessControllerDiscoveryWithBTClassic:btle:completionHandler:];
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3020000000;
  v23 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__GCController_Discovery___startWirelessControllerDiscoveryWithBTClassic_btle_completionHandler___block_invoke_2;
  aBlock[3] = &unk_1E841B188;
  v19 = &v20;
  v8 = handlerCopy;
  v18 = v8;
  v9 = _Block_copy(aBlock);
  v10 = v9;
  if (classicCopy)
  {
    ++*(v21 + 10);
  }

  if (btleCopy)
  {
    ++*(v21 + 10);
  }

  if (classicCopy)
  {
    v11 = s_cbDelegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __97__GCController_Discovery___startWirelessControllerDiscoveryWithBTClassic_btle_completionHandler___block_invoke_3;
    block[3] = &unk_1E8419198;
    v16 = v9;
    dispatch_async(v11, block);
  }

  if (btleCopy)
  {
    v12 = s_cbDelegateQueue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __97__GCController_Discovery___startWirelessControllerDiscoveryWithBTClassic_btle_completionHandler___block_invoke_4;
    v13[3] = &unk_1E8419198;
    v14 = v10;
    dispatch_async(v12, v13);
  }

  _Block_object_dispose(&v20, 8);
}

void __97__GCController_Discovery___startWirelessControllerDiscoveryWithBTClassic_btle_completionHandler___block_invoke()
{
  v0 = dispatch_queue_create("wireless-discovery-queue", 0);
  v1 = s_cbDelegateQueue;
  s_cbDelegateQueue = v0;
}

uint64_t __97__GCController_Discovery___startWirelessControllerDiscoveryWithBTClassic_btle_completionHandler___block_invoke_2(uint64_t result)
{
  if (!--*(*(*(result + 40) + 8) + 40))
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

uint64_t __97__GCController_Discovery___startWirelessControllerDiscoveryWithBTClassic_btle_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = s_mbDelegate;
  if (!s_mbDelegate)
  {
    v3 = objc_opt_new();
    v4 = s_mbDelegate;
    s_mbDelegate = v3;

    v2 = s_mbDelegate;
  }

  [v2 setCompletionHandler:*(a1 + 32)];
  v5 = s_mbDelegate;

  return [v5 startScan];
}

void __97__GCController_Discovery___startWirelessControllerDiscoveryWithBTClassic_btle_completionHandler___block_invoke_4(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (s_cbDelegate)
  {
    [s_cbDelegate setCompletionHandler:*(a1 + 32)];
    v2 = s_cbDelegate;
    v3 = *MEMORY[0x1E69E9840];

    [v2 startScan];
  }

  else
  {
    v4 = objc_opt_new();
    v5 = s_cbDelegate;
    s_cbDelegate = v4;

    v6 = objc_alloc(MEMORY[0x1E695D258]);
    v7 = s_cbDelegate;
    v8 = s_cbDelegateQueue;
    v12 = *MEMORY[0x1E695D218];
    v13[0] = MEMORY[0x1E695E110];
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v10 = [v6 initWithDelegate:v7 queue:v8 options:v9];

    [s_cbDelegate setCentralManager:v10];
    [s_cbDelegate setCompletionHandler:*(a1 + 32)];

    v11 = *MEMORY[0x1E69E9840];
  }
}

+ (void)stopWirelessControllerDiscovery
{
  [s_mbDelegate stopScan];
  v2 = s_cbDelegate;

  [v2 stopScan];
}

@end