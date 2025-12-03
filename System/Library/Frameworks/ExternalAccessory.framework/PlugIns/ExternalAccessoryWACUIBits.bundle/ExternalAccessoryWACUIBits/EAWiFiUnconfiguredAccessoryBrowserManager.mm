@interface EAWiFiUnconfiguredAccessoryBrowserManager
+ (EAWiFiUnconfiguredAccessoryBrowserManager)sharedInstance;
- (EAWiFiUnconfiguredAccessoryBrowserManager)init;
- (UIViewController)targetViewController;
- (void)_signalPresentationComplete;
- (void)cancelActiveConfiguration;
- (void)configureAccessory:(id)accessory withConfigurationUIOnViewController:(id)controller;
- (void)didFindNewUnconfiguredAccessories:(id)accessories andRemovedUnconfiguredAccessories:(id)unconfiguredAccessories;
- (void)openHomeAppForConfiguration;
- (void)openURL:(id)l;
- (void)purgeAccessoriesSet;
- (void)setup;
- (void)startSearchingForUnconfiguredAccessories;
- (void)stopSearchingForUnconfiguredAccessories;
- (void)updateState:(int64_t)state;
- (void)wifiDidShutdown;
@end

@implementation EAWiFiUnconfiguredAccessoryBrowserManager

+ (EAWiFiUnconfiguredAccessoryBrowserManager)sharedInstance
{
  if (qword_CCC8 != -1)
  {
    sub_3790();
  }

  v3 = qword_CCD0;

  return v3;
}

- (EAWiFiUnconfiguredAccessoryBrowserManager)init
{
  v8.receiver = self;
  v8.super_class = EAWiFiUnconfiguredAccessoryBrowserManager;
  v2 = [(EAWiFiUnconfiguredAccessoryBrowserManager *)&v8 init];
  if (v2)
  {
    v2->__debugLog = +[WACLogging isEnabled];
    v3 = dispatch_semaphore_create(0);
    v4 = setupSemaphore;
    setupSemaphore = v3;

    v5 = dispatch_queue_create("com.apple.WAC.workQueue", 0);
    v6 = workQueue;
    workQueue = v5;

    dispatch_async(workQueue, &stru_82A0);
    v2->_isConfiguring = 0;
    [(EAWiFiUnconfiguredAccessoryBrowserManager *)v2 setup];
  }

  return v2;
}

- (void)setup
{
  objc_initWeak(&location, self);
  debugLog = self->__debugLog;
  v31 = 0;
  v4 = [NSExtension extensionWithIdentifier:@"com.apple.ExternalAccessory.WACUI" error:&v31];
  v5 = v31;
  [(EAWiFiUnconfiguredAccessoryBrowserManager *)self setExtension:v4];

  extension = [(EAWiFiUnconfiguredAccessoryBrowserManager *)self extension];
  LODWORD(v4) = extension == 0;

  if (v4)
  {
    localizedDescription = [v5 localizedDescription];
    [NSException raise:@"Unable to load WAC UI extension" format:@"Unable to load WAC UI extension: %@", localizedDescription];
  }

  if (self->__debugLog)
  {
    NSLog(@"WAC: BrowserManager: setup method called, error value returned: %@", v5);
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_15F4;
  v28[3] = &unk_82C8;
  v30 = debugLog;
  objc_copyWeak(&v29, &location);
  [(NSExtension *)self->_extension setRequestCompletionBlock:v28];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1678;
  v25[3] = &unk_82F0;
  v27 = debugLog;
  objc_copyWeak(&v26, &location);
  [(NSExtension *)self->_extension setRequestCancellationBlock:v25];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1710;
  v22[3] = &unk_8360;
  v24 = debugLog;
  objc_copyWeak(&v23, &location);
  [(NSExtension *)self->_extension setRequestInterruptionBlock:v22];
  currentRequestIdentifier = [(EAWiFiUnconfiguredAccessoryBrowserManager *)self currentRequestIdentifier];
  v9 = currentRequestIdentifier == 0;

  if (v9)
  {
    v10 = objc_alloc_init(NSExtensionItem);
    extension = self->_extension;
    v33 = v10;
    v12 = [NSArray arrayWithObjects:&v33 count:1];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_197C;
    v19[3] = &unk_8388;
    objc_copyWeak(&v20, &location);
    v19[4] = self;
    v21 = debugLog;
    [(NSExtension *)extension instantiateViewControllerWithInputItems:v12 connectionHandler:v19];

    objc_destroyWeak(&v20);
  }

  if (self->__debugLog)
  {
    NSLog(@"### WAC XPC: Starting call to XPC service");
  }

  v13 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.externalaccessory.WACEAService"];
  connectionToWACEAService = self->_connectionToWACEAService;
  self->_connectionToWACEAService = v13;

  if (self->__debugLog)
  {
    NSLog(@"### WAC XPC: NSXPCConnection ");
  }

  v15 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___WACEAServiceProtocol];
  [(NSXPCConnection *)self->_connectionToWACEAService setRemoteObjectInterface:v15];

  if (self->__debugLog)
  {
    NSLog(@"### WAC XPC: _connectionToWACEAService.remoteObjectInterface");
  }

  [(NSXPCConnection *)self->_connectionToWACEAService setInterruptionHandler:&stru_83A8];
  [(NSXPCConnection *)self->_connectionToWACEAService setInvalidationHandler:&stru_83C8];
  [(NSXPCConnection *)self->_connectionToWACEAService resume];
  if (self->__debugLog)
  {
    NSLog(@"### WAC XPC: _connectionToWACEAService resume");
  }

  v16 = self->_connectionToWACEAService;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1A98;
  v18[3] = &unk_83F0;
  v18[4] = self;
  v17 = [(NSXPCConnection *)v16 remoteObjectProxyWithErrorHandler:v18];
  [v17 setup];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v29);

  objc_destroyWeak(&location);
}

- (void)startSearchingForUnconfiguredAccessories
{
  if (self->__debugLog)
  {
    NSLog(@"### WAC:%s:%d", a2, "[EAWiFiUnconfiguredAccessoryBrowserManager startSearchingForUnconfiguredAccessories]", 288);
  }

  if (self->_currentBrowserState != 2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1BE4;
    block[3] = &unk_8418;
    block[4] = self;
    dispatch_async(workQueue, block);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1CE0;
    v3[3] = &unk_8418;
    v3[4] = self;
    dispatch_async(workQueue, v3);
  }
}

- (void)stopSearchingForUnconfiguredAccessories
{
  if (self->__debugLog)
  {
    NSLog(@"### WAC:%s", a2, "[EAWiFiUnconfiguredAccessoryBrowserManager stopSearchingForUnconfiguredAccessories]");
  }

  if (self->_currentBrowserState != 1)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1DF0;
    block[3] = &unk_8418;
    block[4] = self;
    dispatch_async(workQueue, block);
  }
}

- (void)cancelActiveConfiguration
{
  if (self->__debugLog)
  {
    NSLog(@"WAC: BrowserManager: cancelActiveConfiguration", a2);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1EE4;
  block[3] = &unk_8418;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)configureAccessory:(id)accessory withConfigurationUIOnViewController:(id)controller
{
  accessoryCopy = accessory;
  controllerCopy = controller;
  if (self->__debugLog)
  {
    NSLog(@"### WAC: BrowserManager: configureAccessory: self %@:  accessory: %@", self, accessoryCopy);
  }

  objc_initWeak(&location, self);
  accessoryToDeviceID = self->__accessoryToDeviceID;
  macAddress = [accessoryCopy macAddress];
  v10 = [(NSMutableDictionary *)accessoryToDeviceID objectForKey:macAddress];

  debugLog = self->__debugLog;
  if (v10)
  {
    if (self->__debugLog)
    {
      NSLog(@"### WAC:%s:%d Reconfiguring SecureWAC device", "[EAWiFiUnconfiguredAccessoryBrowserManager configureAccessory:withConfigurationUIOnViewController:]", 333);
    }

    v12 = workQueue;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_2174;
    v25[3] = &unk_8468;
    v13 = &v28;
    objc_copyWeak(&v28, &location);
    v14 = &v26;
    v15 = v27;
    v26 = accessoryCopy;
    v27[0] = controllerCopy;
    v27[1] = self;
    v16 = controllerCopy;
    v17 = accessoryCopy;
    v18 = v25;
  }

  else
  {
    if (self->__debugLog)
    {
      NSLog(@"### WAC XPC:%s:%d Reconfiguring WAC1 device", "[EAWiFiUnconfiguredAccessoryBrowserManager configureAccessory:withConfigurationUIOnViewController:]", 391);
    }

    v12 = workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_26E0;
    block[3] = &unk_8468;
    v13 = &v24;
    objc_copyWeak(&v24, &location);
    v14 = &v22;
    v15 = v23;
    v22 = accessoryCopy;
    v23[0] = controllerCopy;
    v23[1] = self;
    v19 = controllerCopy;
    v20 = accessoryCopy;
    v18 = block;
  }

  dispatch_async(v12, v18);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

- (void)didFindNewUnconfiguredAccessories:(id)accessories andRemovedUnconfiguredAccessories:(id)unconfiguredAccessories
{
  accessoriesCopy = accessories;
  unconfiguredAccessoriesCopy = unconfiguredAccessories;
  if (!self->__accessories)
  {
    v7 = objc_alloc_init(NSMutableSet);
    accessories = self->__accessories;
    self->__accessories = v7;
  }

  if (!self->__accessoryToDeviceID)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    accessoryToDeviceID = self->__accessoryToDeviceID;
    self->__accessoryToDeviceID = v9;
  }

  v46 = objc_alloc_init(NSMutableSet);
  v11 = objc_alloc_init(NSMutableSet);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = unconfiguredAccessoriesCopy;
  v12 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v58;
    v43 = *v58;
    do
    {
      v15 = 0;
      v44 = v13;
      do
      {
        if (*v58 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v57 + 1) + 8 * v15);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(NSMutableSet *)self->__accessories removeObject:v16];
          [v11 addObject:v16];
        }

        else
        {
          v17 = [v16 objectForKey:@"wacMACAddress"];
          v18 = [NSPredicate predicateWithFormat:@"macAddress == %@", v17];

          v47 = v18;
          v19 = [(NSMutableSet *)self->__accessories filteredSetUsingPredicate:v18];
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v20 = [v19 countByEnumeratingWithState:&v53 objects:v62 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v54;
            do
            {
              for (i = 0; i != v21; i = i + 1)
              {
                if (*v54 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v53 + 1) + 8 * i);
                [(NSMutableSet *)self->__accessories removeObject:v24];
                v25 = self->__accessoryToDeviceID;
                macAddress = [v24 macAddress];
                [(NSMutableDictionary *)v25 removeObjectForKey:macAddress];

                [v11 addObject:v24];
              }

              v21 = [v19 countByEnumeratingWithState:&v53 objects:v62 count:16];
            }

            while (v21);
          }

          v14 = v43;
          v13 = v44;
        }

        v15 = v15 + 1;
      }

      while (v15 != v13);
      v13 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v13);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = accessoriesCopy;
  v27 = [v48 countByEnumeratingWithState:&v49 objects:v61 count:16];
  v28 = v46;
  if (v27)
  {
    v29 = v27;
    v30 = *v50;
    do
    {
      for (j = 0; j != v29; j = j + 1)
      {
        if (*v50 != v30)
        {
          objc_enumerationMutation(v48);
        }

        v32 = *(*(&v49 + 1) + 8 * j);
        v33 = [[EAWiFiUnconfiguredAccessory alloc] initWithAirPortAssistantWACDevice:v32];
        [(NSMutableSet *)self->__accessories addObject:v33];
        if (self->__debugLog)
        {
          NSLog(@"### WAC: %s:%d: Checking SecureWAC and HomeKit flags", "[EAWiFiUnconfiguredAccessoryBrowserManager didFindNewUnconfiguredAccessories:andRemovedUnconfiguredAccessories:]", 460);
        }

        v34 = [v32 objectForKey:@"wacSupportsSpruce"];
        if ([v34 BOOLValue])
        {
          v35 = [v32 objectForKey:@"wacSupportsSecureWAC"];
          bOOLValue = [v35 BOOLValue];

          v28 = v46;
          if (!bOOLValue)
          {
            goto LABEL_35;
          }

          if (self->__debugLog)
          {
            NSLog(@"### WAC: %s:%d: New SecureWAC Accessory Found: %@", "[EAWiFiUnconfiguredAccessoryBrowserManager didFindNewUnconfiguredAccessories:andRemovedUnconfiguredAccessories:]", 466, v32);
          }

          v37 = self->__accessoryToDeviceID;
          v34 = [v32 objectForKey:@"wacDeviceID"];
          macAddress2 = [v33 macAddress];
          [(NSMutableDictionary *)v37 setValue:v34 forKey:macAddress2];

          v28 = v46;
        }

LABEL_35:
        [v28 addObject:v33];
      }

      v29 = [v48 countByEnumeratingWithState:&v49 objects:v61 count:16];
    }

    while (v29);
  }

  objc_storeStrong(&self->_unconfiguredAccessories, self->__accessories);
  v39 = +[NSNotificationCenter defaultCenter];
  if ([v11 count])
  {
    v40 = [NSDictionary dictionaryWithObject:v11 forKey:@"EAWiFiUnconfiguredAccessoriesAddedOrRemovedSet"];
    [v39 postNotificationName:@"EAWiFiUnconfiguredAccessoriesRemovedNotification" object:self userInfo:v40];

    v28 = v46;
  }

  if ([v28 count])
  {
    v41 = [NSDictionary dictionaryWithObject:v28 forKey:@"EAWiFiUnconfiguredAccessoriesAddedOrRemovedSet"];
    [v39 postNotificationName:@"EAWiFiUnconfiguredAccessoriesAddedNotification" object:self userInfo:v41];

    v28 = v46;
  }
}

- (void)updateState:(int64_t)state
{
  [(EAWiFiUnconfiguredAccessoryBrowserManager *)self setCurrentBrowserState:?];
  if (self->__debugLog)
  {
    NSLog(@"### WAC: %s:%d state: %d", "[EAWiFiUnconfiguredAccessoryBrowserManager updateState:]", 502, state);
  }

  v5 = [NSNumber numberWithInteger:state];
  v7 = [NSDictionary dictionaryWithObject:v5 forKey:@"EAWiFiUnconfiguredAccessoryBrowserState"];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"EAWiFiUnconfiguredAccessoryBrowserDidUpdateState" object:self userInfo:v7];
}

- (void)purgeAccessoriesSet
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"EAWiFiUnconfiguredAccessoryBrowserPurgeAccessoriesSet" object:self userInfo:0];
}

- (void)_signalPresentationComplete
{
  if (self->__debugLog)
  {
    NSLog(@"WAC: BrowserManager: _signalPresentationComplete method called", a2);
  }

  v3 = setupSemaphore;

  dispatch_semaphore_signal(v3);
}

- (void)wifiDidShutdown
{
  if ([(EAWiFiUnconfiguredAccessoryBrowserManager *)self currentBrowserState]== &dword_0 + 2)
  {
    [(EAWiFiUnconfiguredAccessoryBrowserManager *)self stopSearchingForUnconfiguredAccessories];
  }

  else if ([(EAWiFiUnconfiguredAccessoryBrowserManager *)self currentBrowserState]== &dword_0 + 3)
  {
    [(EAWiFiUnconfiguredAccessoryBrowserManager *)self cancelActiveConfiguration];
  }

  [(EAWiFiUnconfiguredAccessoryBrowserManager *)self updateState:0];
}

- (void)openHomeAppForConfiguration
{
  if (self->__debugLog)
  {
    unconfiguredDeviceID = [(EAWiFiUnconfiguredAccessoryBrowserManager *)self unconfiguredDeviceID];
    NSLog(@"%s: (id: %@)", "[EAWiFiUnconfiguredAccessoryBrowserManager openHomeAppForConfiguration]", unconfiguredDeviceID);
  }

  v4 = [NSURL URLWithString:@"com.apple.Home://reprovisionDevice/"];
  v5 = objc_alloc_init(NSMutableArray);
  unconfiguredDeviceID2 = [(EAWiFiUnconfiguredAccessoryBrowserManager *)self unconfiguredDeviceID];
  v7 = [unconfiguredDeviceID2 length];

  if (v7 >= 1)
  {
    for (i = 0; i < v7; i += 2)
    {
      unconfiguredDeviceID3 = [(EAWiFiUnconfiguredAccessoryBrowserManager *)self unconfiguredDeviceID];
      v10 = [unconfiguredDeviceID3 substringWithRange:{i, 2}];
      [v5 addObject:v10];
    }
  }

  v11 = [v5 componentsJoinedByString:@":"];
  uppercaseString = [v11 uppercaseString];

  v13 = [v4 URLByAppendingPathComponent:uppercaseString];

  if (self->__debugLog)
  {
    NSLog(@"%s: launchURL: %@", "[EAWiFiUnconfiguredAccessoryBrowserManager openHomeAppForConfiguration]", v13);
  }

  [(EAWiFiUnconfiguredAccessoryBrowserManager *)self openURL:v13];
}

- (void)openURL:(id)l
{
  lCopy = l;
  v5 = lCopy;
  if (self->__debugLog)
  {
    NSLog(@"%s: launchURL: %@", "[EAWiFiUnconfiguredAccessoryBrowserManager openURL:]", lCopy);
  }

  v6 = objc_alloc_init(_LSOpenConfiguration);
  [v6 setSensitive:1];
  v7 = +[LSApplicationWorkspace defaultWorkspace];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_3520;
  v9[3] = &unk_84D8;
  v10 = v5;
  selfCopy = self;
  v8 = v5;
  [v7 openURL:v8 configuration:v6 completionHandler:v9];
}

- (UIViewController)targetViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_targetViewController);

  return WeakRetained;
}

@end