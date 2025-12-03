@interface ICDevice
- (BOOL)isRemote;
- (BOOL)updateProperties:(id)properties;
- (ICDevice)initWithDictionary:(id)dictionary;
- (NSArray)capabilities;
- (NSString)autolaunchApplicationPath;
- (id)delegate;
- (id)description;
- (id)deviceDelegate;
- (id)valueForUndefinedKey:(id)key;
- (void)addCapability:(id)capability;
- (void)cleanupDeviceWithErrorCode:(id)code completionBlock:(id)block;
- (void)imageCaptureEventNotification:(id)notification completion:(id)completion;
- (void)notifyObservers:(id)observers;
- (void)removeCapabilities;
- (void)removeCapability:(id)capability;
- (void)requestEject;
- (void)requestEjectWithCompletion:(void *)completion;
- (void)setAutolaunchApplicationPath:(NSString *)autolaunchApplicationPath;
- (void)setDelegate:(id)delegate;
- (void)setIconPath:(id)path;
- (void)setSessionState:(int64_t)state;
- (void)updateCapabilities:(id)capabilities;
@end

@implementation ICDevice

- (ICDevice)initWithDictionary:(id)dictionary
{
  v52 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v47.receiver = self;
  v47.super_class = ICDevice;
  v5 = [(ICDevice *)&v47 init];
  v6 = v5;
  if (v5)
  {
    v5->_sessionState = -1;
    v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
    userData = v6->_userData;
    v6->_userData = v7;

    v9 = [dictionaryCopy objectForKeyedSubscript:@"ICADeviceBrowserDeviceRefKey"];
    deviceRef = v6->_deviceRef;
    v6->_deviceRef = v9;

    v11 = [dictionaryCopy objectForKeyedSubscript:@"ICAConnectionIDKey"];
    connectionID = v6->_connectionID;
    v6->_connectionID = v11;

    v13 = [dictionaryCopy objectForKeyedSubscript:@"objectID"];
    deviceID = v6->_deviceID;
    v6->_deviceID = v13;

    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:++_sProcID];
    procID = v6->_procID;
    v6->_procID = v15;

    v17 = [dictionaryCopy objectForKeyedSubscript:@"productKind"];
    productKind = v6->_productKind;
    v6->_productKind = v17;

    v19 = [MEMORY[0x1E695DFA8] set];
    deviceCapabilities = v6->_deviceCapabilities;
    v6->_deviceCapabilities = v19;

    v21 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    name = v6->_name;
    v6->_name = v21;

    v6->_softwareInstallPercentDone = 0.0;
    v6->_canCancelSoftwareInstallation = 1;
    if (![(ICDevice *)v6 isRemote]&& ([(ICDevice *)v6 type]& 1) != 0)
    {
      v23 = [dictionaryCopy objectForKeyedSubscript:@"capa"];
    }

    else
    {
      v23 = 0;
    }

    [(ICDevice *)v6 updateCapabilities:v23];
    v24 = [dictionaryCopy objectForKeyedSubscript:@"UUIDString"];
    UUIDString = v6->_UUIDString;
    v6->_UUIDString = v24;

    v26 = [dictionaryCopy objectForKeyedSubscript:@"persistentIDString"];
    persistentIDString = v6->_persistentIDString;
    v6->_persistentIDString = v26;

    v28 = [dictionaryCopy objectForKeyedSubscript:@"ICADeviceSerialNumberString"];
    serialNumberString = v6->_serialNumberString;
    v6->_serialNumberString = v28;

    v30 = [dictionaryCopy objectForKeyedSubscript:@"ICAAutoLaunchedDevice"];

    if (v30)
    {
      v6->_autolaunchDevice = 1;
    }

    modulePath = v6->_modulePath;
    v6->_modulePath = @"/System/Library/Image Capture/Devices/PTPCamera.app";

    moduleVersion = v6->_moduleVersion;
    v6->_moduleVersion = @"1.0";

    __ICOSLogCreate();
    v33 = @"ICDevice";
    if ([@"ICDevice" length] >= 0x15)
    {
      v34 = [@"ICDevice" substringWithRange:{0, 18}];
      v33 = [v34 stringByAppendingString:@".."];
    }

    v35 = MEMORY[0x1E696AEC0];
    deviceRef = [(ICDevice *)v6 deviceRef];
    intValue = [deviceRef intValue];
    persistentIDString = [(ICDevice *)v6 persistentIDString];
    v39 = [v35 stringWithFormat:@" +++ Creating [0x%x]:%@", intValue, persistentIDString];

    v40 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
    {
      v41 = v33;
      v42 = v40;
      uTF8String = [(__CFString *)v33 UTF8String];
      *buf = 136446466;
      v49 = uTF8String;
      v50 = 2114;
      v51 = v39;
      _os_log_impl(&dword_1C6F19000, v42, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v44 = v6;
  }

  v45 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)updateProperties:(id)properties
{
  propertiesCopy = properties;
  array = [MEMORY[0x1E695DF70] array];
  v6 = [propertiesCopy objectForKeyedSubscript:@"deviceIconPath"];
  if (v6)
  {
    iconPath = self->_iconPath;
    if (iconPath)
    {
      if ([(NSString *)iconPath isEqualToString:v6])
      {
        goto LABEL_6;
      }

      v8 = self->_iconPath;
      self->_iconPath = 0;
    }

    v9 = [v6 copy];
    v10 = self->_iconPath;
    self->_iconPath = v9;

    [(ICDevice *)self setIcon:0];
    [array addObject:@"icon"];
    [array addObject:@"iconPath"];
  }

LABEL_6:
  v11 = [propertiesCopy objectForKeyedSubscript:@"systemSymbolName"];
  if (v11)
  {
    systemSymbolName = self->_systemSymbolName;
    if (!systemSymbolName)
    {
LABEL_10:
      v14 = [v11 copy];
      v15 = self->_systemSymbolName;
      self->_systemSymbolName = v14;

      [array addObject:@"icon"];
      [array addObject:@"systemSymbolName"];
      goto LABEL_11;
    }

    if (![(NSString *)systemSymbolName isEqualToString:v11])
    {
      v13 = self->_systemSymbolName;
      self->_systemSymbolName = 0;

      goto LABEL_10;
    }
  }

LABEL_11:
  if (![(ICDevice *)self isRemote]&& ([(ICDevice *)self type]& 1) != 0)
  {
    v16 = [propertiesCopy objectForKeyedSubscript:@"capa"];
  }

  else
  {
    v16 = 0;
  }

  [(ICDevice *)self updateCapabilities:v16];
  v17 = [propertiesCopy objectForKeyedSubscript:@"ICADeviceSerialNumberString"];
  if (v17)
  {
    serialNumberString = self->_serialNumberString;
    if (!serialNumberString || ![(NSString *)serialNumberString isEqualToString:v17]|| !self->_serialNumberString)
    {
      v19 = [v17 copy];
      v20 = self->_serialNumberString;
      self->_serialNumberString = v19;

      [array addObject:@"serialNumberString"];
    }
  }

  v21 = [propertiesCopy objectForKeyedSubscript:@"UUIDString"];
  if (v21)
  {
    UUIDString = self->_UUIDString;
    if (!UUIDString || ![(NSString *)UUIDString isEqualToString:v21]|| !self->_UUIDString)
    {
      v23 = [v21 copy];
      v24 = self->_UUIDString;
      self->_UUIDString = v23;

      [array addObject:@"UUIDString"];
    }
  }

  v25 = [propertiesCopy objectForKeyedSubscript:@"persistentIDString"];
  if (v25)
  {
    persistentIDString = self->_persistentIDString;
    if (!persistentIDString || ![(NSString *)persistentIDString isEqualToString:v25]|| !self->_persistentIDString)
    {
      v27 = [v25 copy];
      v28 = self->_persistentIDString;
      self->_persistentIDString = v27;

      [array addObject:@"persistentIDString"];
    }
  }

  v29 = [array count] != 0;

  return v29;
}

- (void)notifyObservers:(id)observers
{
  observersCopy = observers;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __28__ICDevice_notifyObservers___block_invoke;
  v6[3] = &unk_1E829C870;
  v7 = observersCopy;
  selfCopy = self;
  v5 = observersCopy;
  ICPerformBlockOnMainThread(v6);
}

void __28__ICDevice_notifyObservers___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        [*(a1 + 40) willChangeValueForKey:{v7, v9}];
        [*(a1 + 40) didChangeValueForKey:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setSessionState:(int64_t)state
{
  if (self->_sessionState != state)
  {
    self->_sessionState = state;
    if (state)
    {
      [(ICDevice *)self willChangeValueForKey:@"hasOpenSession"];

      [(ICDevice *)self didChangeValueForKey:@"hasOpenSession"];
    }
  }
}

- (void)setIconPath:(id)path
{
  pathCopy = path;
  iconPath = [(ICDevice *)self iconPath];

  if (iconPath)
  {
    iconPath = self->_iconPath;
    self->_iconPath = 0;
  }

  v6 = [pathCopy copy];
  v7 = self->_iconPath;
  self->_iconPath = v6;
}

- (BOOL)isRemote
{
  transportType = [(ICDevice *)self transportType];
  v3 = [transportType isEqualToString:@"ICTransportTypeTCPIP"];

  return v3;
}

- (id)description
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:objc_opt_class() forKeyedSubscript:@"class"];
  v4 = MEMORY[0x1E696AEC0];
  delegate = [(ICDevice *)self delegate];
  v6 = [v4 stringWithFormat:@"<%p>", delegate];
  [dictionary setObject:v6 forKeyedSubscript:@"delegate"];

  v7 = MEMORY[0x1E696AEC0];
  deviceRef = [(ICDevice *)self deviceRef];
  v9 = [v7 stringWithFormat:@"0x%08x", objc_msgSend(deviceRef, "unsignedIntValue")];
  [dictionary setObject:v9 forKeyedSubscript:@"deviceRef"];

  v10 = MEMORY[0x1E696AEC0];
  connectionID = [(ICDevice *)self connectionID];
  v12 = [v10 stringWithFormat:@"0x%08x", objc_msgSend(connectionID, "unsignedIntValue")];
  [dictionary setObject:v12 forKeyedSubscript:@"connectionID"];

  v13 = MEMORY[0x1E696AEC0];
  deviceID = [(ICDevice *)self deviceID];
  v15 = [v13 stringWithFormat:@"0x%08x", objc_msgSend(deviceID, "unsignedIntValue")];
  [dictionary setObject:v15 forKeyedSubscript:@"deviceID"];

  v16 = MEMORY[0x1E696AEC0];
  name = [(ICDevice *)self name];
  v18 = [v16 stringWithFormat:@"%@", name];
  [dictionary setObject:v18 forKeyedSubscript:@"name"];

  v19 = MEMORY[0x1E696AEC0];
  locationDescription = [(ICDevice *)self locationDescription];
  v21 = [v19 stringWithFormat:@"%@", locationDescription];
  [dictionary setObject:v21 forKeyedSubscript:@"locationDescription"];

  v22 = MEMORY[0x1E696AEC0];
  iconPath = [(ICDevice *)self iconPath];
  v24 = [v22 stringWithFormat:@"%@", iconPath];
  [dictionary setObject:v24 forKeyedSubscript:@"iconPath"];

  v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%08lx", -[ICDevice type](self, "type")];
  [dictionary setObject:v25 forKeyedSubscript:@"type"];

  v26 = MEMORY[0x1E696AEC0];
  uUIDString = [(ICDevice *)self UUIDString];
  v28 = [v26 stringWithFormat:@"%@", uUIDString];
  [dictionary setObject:v28 forKeyedSubscript:@"UUIDString"];

  v29 = MEMORY[0x1E696AEC0];
  persistentIDString = [(ICDevice *)self persistentIDString];
  v31 = [v29 stringWithFormat:@"%@", persistentIDString];
  [dictionary setObject:v31 forKeyedSubscript:@"persistentIDString"];

  capabilities = [(ICDevice *)self capabilities];
  v33 = [capabilities count];

  if (v33)
  {
    capabilities2 = [(ICDevice *)self capabilities];
    [dictionary setObject:capabilities2 forKeyedSubscript:@"capabilities"];
  }

  v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "NO"];
  [dictionary setObject:v35 forKeyedSubscript:@"shared"];

  v36 = MEMORY[0x1E696AEC0];
  transportType = [(ICDevice *)self transportType];
  v38 = [v36 stringWithFormat:@"%@", transportType];
  [dictionary setObject:v38 forKeyedSubscript:@"transportType"];

  transportType2 = [(ICDevice *)self transportType];

  if (transportType2 == @"ICTransportTypeUSB")
  {
    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%08x", -[ICDevice usbLocationID](self, "usbLocationID")];
    [dictionary setObject:v41 forKeyedSubscript:@"usbLocationID"];

    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%04x", -[ICDevice usbProductID](self, "usbProductID")];
    [dictionary setObject:v42 forKeyedSubscript:@"usbProductID"];

    v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%04x", -[ICDevice usbVendorID](self, "usbVendorID")];
    [dictionary setObject:v43 forKeyedSubscript:@"usbVendorID"];

    v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%02x", -[ICDevice usbIntefaceClass](self, "usbIntefaceClass")];
    [dictionary setObject:v44 forKeyedSubscript:@"usbIntefaceClass"];

    v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%02x", -[ICDevice usbInterfaceSubClass](self, "usbInterfaceSubClass")];
    [dictionary setObject:v45 forKeyedSubscript:@"usbInterfaceSubClass"];

    transportType3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%02x", -[ICDevice usbInterfaceProtocol](self, "usbInterfaceProtocol")];
    [dictionary setObject:transportType3 forKeyedSubscript:@"usbInterfaceProtocol"];
  }

  else
  {
    transportType3 = [(ICDevice *)self transportType];
  }

  v46 = [dictionary description];

  return v46;
}

- (void)setDelegate:(id)delegate
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = delegate;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  __ICOSLogCreate();
  v7 = @"Delegate Updated";
  if ([@"Delegate Updated" length] >= 0x15)
  {
    v8 = [@"Delegate Updated" substringWithRange:{0, 18}];
    v7 = [v8 stringByAppendingString:@".."];
  }

  v9 = @"< not set >";
  if (v6)
  {
    v9 = v6;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v9];
  v11 = *MEMORY[0x1E69A8B08];
  if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v7;
    v13 = v11;
    *buf = 136446466;
    uTF8String = [(__CFString *)v7 UTF8String];
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&dword_1C6F19000, v13, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  objc_storeWeak(&self->_deviceDelegate, v4);
  v14 = *MEMORY[0x1E69E9840];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceDelegate);

  return WeakRetained;
}

- (void)requestEject
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __24__ICDevice_requestEject__block_invoke;
  v2[3] = &unk_1E829C820;
  v2[4] = self;
  [(ICDevice *)self requestEjectWithCompletion:v2];
}

void __24__ICDevice_requestEject__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __24__ICDevice_requestEject__block_invoke_2;
    block[3] = &unk_1E829CC30;
    v5 = v4;
    v6 = *(a1 + 32);
    v8 = v5;
    v9 = v6;
    v10 = v3;
    ICPerformBlockOnMainThread(block);
  }
}

- (void)requestEjectWithCompletion:(void *)completion
{
  v3 = completion;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__ICDevice_requestEjectWithCompletion___block_invoke;
  block[3] = &unk_1E829CB58;
  v6 = v3;
  v4 = v3;
  ICPerformBlockOnMainThread(block);
}

void __39__ICDevice_requestEjectWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ImageCaptureCore" code:-21346 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (NSArray)capabilities
{
  v3 = MEMORY[0x1E695DF70];
  deviceCapabilities = [(ICDevice *)self deviceCapabilities];
  allObjects = [deviceCapabilities allObjects];
  v6 = [v3 arrayWithArray:allObjects];

  modulePath = [(ICDevice *)self modulePath];
  lastPathComponent = [modulePath lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

  if (([stringByDeletingPathExtension isEqualToString:@"PTPCamera"] & 1) != 0 || objc_msgSend(stringByDeletingPathExtension, "isEqualToString:", @"PTPIPCamera"))
  {
    [v6 addObject:@"ICCameraDeviceCanAcceptPTPCommands"];
  }

  return v6;
}

- (void)addCapability:(id)capability
{
  v30 = *MEMORY[0x1E69E9840];
  capabilityCopy = capability;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  capabilities = [(ICDevice *)self capabilities];
  v6 = [capabilities copy];

  v7 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v21 + 1) + 8 * v10) isEqualToString:capabilityCopy])
        {

          goto LABEL_15;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  __ICOSLogCreate();
  v11 = @"                   ∆";
  if ([@"                   ∆" length] >= 0x15)
  {
    v12 = [@"                   ∆" substringWithRange:{0, 18}];
    v11 = [v12 stringByAppendingString:@".."];
  }

  capabilityCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", capabilityCopy];
  v14 = *MEMORY[0x1E69A8B08];
  if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
  {
    v15 = v11;
    v16 = v14;
    uTF8String = [(__CFString *)v11 UTF8String];
    *buf = 136446466;
    v26 = uTF8String;
    v27 = 2114;
    v28 = capabilityCopy;
    _os_log_impl(&dword_1C6F19000, v16, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  deviceCapabilities = [(ICDevice *)self deviceCapabilities];
  [deviceCapabilities addObject:capabilityCopy];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__ICDevice_addCapability___block_invoke;
  block[3] = &unk_1E829C848;
  block[4] = self;
  ICPerformBlockOnMainThread(block);
LABEL_15:

  v19 = *MEMORY[0x1E69E9840];
}

void __26__ICDevice_addCapability___block_invoke(uint64_t a1)
{
  [*(a1 + 32) willChangeValueForKey:@"capabilities"];
  v2 = [*(a1 + 32) delegate];
  if (v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = MEMORY[0x1E69E9820];
    v6 = 3221225472;
    v7 = __26__ICDevice_addCapability___block_invoke_2;
    v8 = &unk_1E829C870;
    v3 = v2;
    v4 = *(a1 + 32);
    v9 = v3;
    v10 = v4;
    ICPerformBlockOnMainThread(&v5);
  }

  [*(a1 + 32) didChangeValueForKey:{@"capabilities", v5, v6, v7, v8}];
}

- (void)removeCapability:(id)capability
{
  v20 = *MEMORY[0x1E69E9840];
  capabilityCopy = capability;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  capabilities = [(ICDevice *)self capabilities];
  v6 = [capabilities copy];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 isEqualToString:capabilityCopy])
        {
          deviceCapabilities = [(ICDevice *)self deviceCapabilities];
          [deviceCapabilities removeObject:v11];

          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __29__ICDevice_removeCapability___block_invoke;
          block[3] = &unk_1E829C848;
          block[4] = self;
          ICPerformBlockOnMainThread(block);
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v13 = *MEMORY[0x1E69E9840];
}

void __29__ICDevice_removeCapability___block_invoke(uint64_t a1)
{
  [*(a1 + 32) willChangeValueForKey:@"capabilities"];
  v2 = [*(a1 + 32) delegate];
  if (v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = MEMORY[0x1E69E9820];
    v6 = 3221225472;
    v7 = __29__ICDevice_removeCapability___block_invoke_2;
    v8 = &unk_1E829C870;
    v3 = v2;
    v4 = *(a1 + 32);
    v9 = v3;
    v10 = v4;
    ICPerformBlockOnMainThread(&v5);
  }

  [*(a1 + 32) didChangeValueForKey:{@"capabilities", v5, v6, v7, v8}];
}

- (void)imageCaptureEventNotification:(id)notification completion:(id)completion
{
  notificationCopy = notification;
  completionCopy = completion;
  v8 = [notificationCopy objectForKeyedSubscript:@"ICADeviceBrowserDeviceRefKey"];
  unsignedIntValue = [v8 unsignedIntValue];
  deviceID = [(ICDevice *)self deviceID];
  unsignedIntValue2 = [deviceID unsignedIntValue];

  if (unsignedIntValue == unsignedIntValue2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__ICDevice_imageCaptureEventNotification_completion___block_invoke;
    block[3] = &unk_1E829CCA8;
    block[4] = self;
    v14 = notificationCopy;
    v15 = completionCopy;
    ICPerformBlockOnMainThread(block);
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ImageCaptureCore" code:-9922 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v12);
  }
}

- (void)updateCapabilities:(id)capabilities
{
  v24 = *MEMORY[0x1E69E9840];
  capabilitiesCopy = capabilities;
  v5 = capabilitiesCopy;
  if (capabilitiesCopy && [capabilitiesCopy count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = v5;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (!v7)
    {
      goto LABEL_32;
    }

    v8 = v7;
    v9 = *v20;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        unsignedIntValue = [v11 unsignedIntValue];
        if (unsignedIntValue > 1701471586)
        {
          if (unsignedIntValue > 1819238755)
          {
            if (unsignedIntValue == 1819238756)
            {
              v13 = @"ICCameraDeviceCanReceiveFile";
            }

            else
            {
              if (unsignedIntValue != 1935895659)
              {
                goto LABEL_30;
              }

              v13 = @"ICCameraDeviceCanSyncClock";
            }
          }

          else
          {
            v14 = @"ICDeviceCanEjectOrDisconnect";
            if (unsignedIntValue == 1701471587)
            {
              goto LABEL_28;
            }

            if (unsignedIntValue != 1751476582)
            {
LABEL_30:
              v15 = [MEMORY[0x1E696AEC0] stringFromOSType:{objc_msgSend(v11, "unsignedIntValue")}];
              goto LABEL_27;
            }

            v13 = @"ICCameraDeviceSupportsHEIF";
          }
        }

        else if (unsignedIntValue > 1684368432)
        {
          if (unsignedIntValue == 1684368433)
          {
            v13 = @"ICCameraDeviceCanDeleteOneFile";
          }

          else
          {
            if (unsignedIntValue != 1684368481)
            {
              goto LABEL_30;
            }

            v13 = @"ICCameraDeviceCanDeleteAllFiles";
          }
        }

        else if (unsignedIntValue == 1667460658)
        {
          v13 = @"ICCameraDeviceCanTakePictureUsingShutterReleaseOnCamera";
        }

        else
        {
          if (unsignedIntValue != 1667460713)
          {
            goto LABEL_30;
          }

          v13 = @"ICCameraDeviceCanTakePicture";
        }

        v15 = v13;
LABEL_27:
        v14 = v15;
LABEL_28:
        [(ICDevice *)self addCapability:v14];

        ++v10;
      }

      while (v8 != v10);
      v16 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v8 = v16;
      if (!v16)
      {
LABEL_32:

        v5 = v18;
        break;
      }
    }
  }

  if ([(ICDevice *)self systemReportsEjectable])
  {
    [(ICDevice *)self addCapability:@"ICDeviceCanEjectOrDisconnect"];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (NSString)autolaunchApplicationPath
{
  autolaunchApplicationPath = self->_autolaunchApplicationPath;
  if (autolaunchApplicationPath)
  {
    stringByExpandingTildeInPath = [(NSString *)autolaunchApplicationPath stringByExpandingTildeInPath];
  }

  else
  {
    stringByExpandingTildeInPath = &stru_1F4691338;
  }

  return stringByExpandingTildeInPath;
}

- (id)valueForUndefinedKey:(id)key
{
  if ([key isEqual:@"icon"])
  {
    icon = [(ICDevice *)self icon];
  }

  else
  {
    icon = 0;
  }

  return icon;
}

- (void)cleanupDeviceWithErrorCode:(id)code completionBlock:(id)block
{
  connectionID = self->_connectionID;
  self->_connectionID = 0;
  MEMORY[0x1EEE66BB8]();
}

- (void)removeCapabilities
{
  deviceCapabilities = [(ICDevice *)self deviceCapabilities];
  [deviceCapabilities removeAllObjects];
}

- (void)setAutolaunchApplicationPath:(NSString *)autolaunchApplicationPath
{
  v4 = [(NSString *)autolaunchApplicationPath copy];
  v5 = self->_autolaunchApplicationPath;
  self->_autolaunchApplicationPath = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)deviceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceDelegate);

  return WeakRetained;
}

@end