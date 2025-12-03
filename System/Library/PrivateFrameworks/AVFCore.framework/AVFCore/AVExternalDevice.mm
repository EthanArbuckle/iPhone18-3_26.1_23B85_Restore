@interface AVExternalDevice
+ (id)sharedLocalDevice;
- (AVExternalDevice)init;
- (AVExternalDevice)initWithFigEndpoint:(OpaqueFigEndpoint *)endpoint;
- (BOOL)OEMIconVisible;
- (BOOL)limitedUI;
- (BOOL)nightMode;
- (BOOL)ownsScreen;
- (BOOL)ownsTurnByTurnNavigation;
- (BOOL)recognizingSpeech;
- (BOOL)rightHandDrive;
- (NSArray)OEMIcons;
- (NSArray)externalDeviceHIDs;
- (NSArray)limitedUIElements;
- (NSArray)screenIDs;
- (NSData)MFiCertificateSerialNumber;
- (NSData)OEMIcon;
- (NSDictionary)screenInputCapabilities;
- (NSDictionary)screenPrimaryInputDevices;
- (NSDictionary)screenSafeAreas;
- (NSDictionary)screenViewAreas;
- (NSString)name;
- (id)_figEndpointPropertyValueForKey:(__CFString *)key;
- (id)_screenInfo;
- (id)borrowScreenForClient:(id)client reason:(id)reason;
- (id)externalDeviceHIDWithUUID:(id)d;
- (id)requestTurnByTurnNavigationOwnership;
- (int64_t)electronicTollCollection;
- (int64_t)navigationAidedDriving;
- (int64_t)transportType;
- (void)_triggerFakeNotificationNamed:(id)named withPayload:(id)payload;
- (void)dealloc;
- (void)requestCarUIForURL:(id)l withUUID:(id)d;
- (void)requestViewArea:(int64_t)area forScreenID:(id)d;
- (void)sendCommand:(id)command withParameters:(id)parameters;
- (void)setDelegate:(id)delegate;
- (void)takeScreenForClient:(id)client reason:(id)reason;
- (void)takeScreenForConnection;
@end

@implementation AVExternalDevice

- (AVExternalDevice)init
{
  v4.receiver = self;
  v4.super_class = AVExternalDevice;
  v2 = [(AVExternalDevice *)&v4 init];
  if (v2)
  {
    v2->_externalDevice = objc_alloc_init(AVExternalDeviceInternal);
    v2->_externalDevice->_weakReference = [[AVWeakReference alloc] initWithReferencedObject:v2];
    v2->_externalDevice->_currentViewAreas = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v2;
}

void *__31__AVExternalDevice__screenInfo__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!*(result[1] + 72))
  {
    result = [objc_msgSend(result _figEndpointPropertyValueForKey:{*MEMORY[0x1E6962240]), "copy"}];
    *(*(*(a1 + 32) + 8) + 72) = result;
  }

  return result;
}

- (NSArray)screenIDs
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  _screenInfo = [(AVExternalDevice *)self _screenInfo];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [_screenInfo countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    v8 = *MEMORY[0x1E6962400];
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(_screenInfo);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) objectForKey:v8];
        if (v10)
        {
          [(NSArray *)array addObject:v10];
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [_screenInfo countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)_screenInfo
{
  queue = self->_externalDevice->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__AVExternalDevice__screenInfo__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_sync(queue, block);
  return self->_externalDevice->_screenInfo;
}

- (NSString)name
{
  if (self->_externalDevice->_figEndpoint)
  {
    return [(AVExternalDevice *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E69621E8]];
  }

  else
  {
    return @"My Device";
  }
}

- (int64_t)transportType
{
  v2 = [(AVExternalDevice *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E69622F0]];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if ([v2 isEqualToString:*MEMORY[0x1E6962688]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69626A0]))
  {
    return 3;
  }

  if ([v3 isEqualToString:*MEMORY[0x1E6962690]])
  {
    return 2;
  }

  return ([v3 isEqualToString:*MEMORY[0x1E6962698]] & 1) != 0;
}

- (BOOL)nightMode
{
  v2 = [(AVExternalDevice *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E69621F0]];
  if (v2)
  {

    LOBYTE(v2) = [v2 BOOLValue];
  }

  return v2;
}

- (BOOL)rightHandDrive
{
  v2 = [(AVExternalDevice *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962230]];
  if (v2)
  {

    LOBYTE(v2) = [v2 BOOLValue];
  }

  return v2;
}

- (void)dealloc
{
  externalDevice = self->_externalDevice;
  if (externalDevice)
  {

    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListeners();
    v4 = self->_externalDevice;
    figEndpoint = v4->_figEndpoint;
    if (figEndpoint)
    {
      CFRelease(figEndpoint);
      self->_externalDevice->_figEndpoint = 0;
      v4 = self->_externalDevice;
    }

    v6 = self->_externalDevice;
    if (v6[7])
    {
      dispatch_release(v6[7]);
      self->_externalDevice->_queue = 0;
      v6 = self->_externalDevice;
    }

    if (v6[10])
    {
      dispatch_release(v6[10]);
      self->_externalDevice->_viewAreasQueue = 0;
      v6 = self->_externalDevice;
    }

    CFRelease(v6);
  }

  v7.receiver = self;
  v7.super_class = AVExternalDevice;
  [(AVExternalDevice *)&v7 dealloc];
}

- (BOOL)limitedUI
{
  v2 = [(AVExternalDevice *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962198]];

  return [v2 BOOLValue];
}

- (BOOL)ownsScreen
{
  v2 = [(AVExternalDevice *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962010]];

  return [v2 BOOLValue];
}

- (int64_t)navigationAidedDriving
{
  v2 = [(AVExternalDevice *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962328]];
  if (!v2)
  {
    return 1;
  }

  v3 = [v2 valueForKey:*MEMORY[0x1E6962700]];
  if (!v3)
  {
    return 1;
  }

  if ([objc_msgSend(v3 valueForKey:{@"active", "BOOLValue"}])
  {
    return 2;
  }

  return 3;
}

+ (id)sharedLocalDevice
{
  v2 = [[AVExternalDevice alloc] initWithFigEndpoint:0];

  return v2;
}

- (AVExternalDevice)initWithFigEndpoint:(OpaqueFigEndpoint *)endpoint
{
  v4 = [(AVExternalDevice *)self init];
  if (v4)
  {
    v4->_externalDevice->_makeHIDsOnlyOnce = objc_alloc_init(AVDispatchOnce);
    v4->_externalDevice->_makeIconsOnlyOnce = objc_alloc_init(AVDispatchOnce);
    if (endpoint)
    {
      v5 = CFRetain(endpoint);
    }

    else
    {
      v5 = 0;
    }

    v4->_externalDevice->_figEndpoint = v5;
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4->_externalDevice->_queue = dispatch_queue_create("com.apple.AVFoundation.AVExternalDevice", v6);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4->_externalDevice->_viewAreasQueue = dispatch_queue_create("com.apple.AVFoundation.AVExternalDevice.ViewAreas", v7);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListeners();
    v8 = v4;
    viewAreasQueue = v4->_externalDevice->_viewAreasQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__AVExternalDevice_initWithFigEndpoint___block_invoke;
    block[3] = &unk_1E7460C00;
    block[4] = v4;
    dispatch_async(viewAreasQueue, block);
  }

  return v4;
}

void __40__AVExternalDevice_initWithFigEndpoint___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) screenIDs];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(*(a1 + 32) + 8) + 8);
        if (v7)
        {
          v8 = *(*(&v11 + 1) + 8 * i);
          FigEndpointExtendedGetClassID();
          if (CMBaseObjectIsMemberOfClass())
          {
            cf = 0;
            v9 = *(*(CMBaseObjectGetVTable() + 24) + 120);
            if (v9)
            {
              v9(v7, v8, &cf);
            }

            if (cf)
            {
              [*(*(*(a1 + 32) + 8) + 88) setObject:cf forKeyedSubscript:v8];
              if (cf)
              {
                CFRelease(cf);
              }
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (void)setDelegate:(id)delegate
{
  externalDevice = self->_externalDevice;
  if (externalDevice->_delegate != delegate)
  {
    v10[8] = v3;
    v10[9] = v4;
    externalDevice->_delegate = delegate;
    selfCopy = self;
    viewAreasQueue = self->_externalDevice->_viewAreasQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __32__AVExternalDevice_setDelegate___block_invoke;
    v10[3] = &unk_1E7460DF0;
    v10[4] = delegate;
    v10[5] = self;
    dispatch_async(viewAreasQueue, v10);
  }
}

void __32__AVExternalDevice_setDelegate___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v2 = [*(a1 + 40) screenIDs];
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
            v8 = [*(*(*(a1 + 40) + 8) + 88) objectForKeyedSubscript:v7];
            if (v8)
            {
              [*(a1 + 32) setViewAreaIndex:objc_msgSend(objc_msgSend(v8 andAdjacentViewAreas:"objectForKeyedSubscript:" forScreenID:{@"viewAreaIndex", "integerValue"), objc_msgSend(v8, "objectForKeyedSubscript:", @"adjacentViewAreas", v7}];
            }
          }

          v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        }

        while (v4);
      }
    }
  }
}

- (id)_figEndpointPropertyValueForKey:(__CFString *)key
{
  v8 = 0;
  figEndpoint = self->_externalDevice->_figEndpoint;
  if (figEndpoint)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(CMBaseObject, key, *MEMORY[0x1E695E480], &v8);
      figEndpoint = v8;
    }

    else
    {
      figEndpoint = 0;
    }
  }

  return figEndpoint;
}

- (NSDictionary)screenViewAreas
{
  v33 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [(AVExternalDevice *)self _screenInfo];
  v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v21)
  {
    v20 = *v28;
    v19 = *MEMORY[0x1E6962400];
    v18 = *MEMORY[0x1E6962458];
    v4 = *MEMORY[0x1E6962478];
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v27 + 1) + 8 * i);
        v7 = [v6 objectForKey:v19];
        if (v7)
        {
          v8 = v7;
          -[NSDictionary setObject:forKeyedSubscript:](dictionary, "setObject:forKeyedSubscript:", [MEMORY[0x1E695DF70] array], v7);
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v9 = [v6 objectForKey:v18];
          v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v24;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v24 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v23 + 1) + 8 * j);
                memset(&rect, 0, sizeof(rect));
                CGRectMakeWithDictionaryRepresentation([v14 objectForKeyedSubscript:v4], &rect);
                v15 = [(NSDictionary *)dictionary objectForKeyedSubscript:v8];
                [v15 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRect:", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height)}];
              }

              v11 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v11);
          }
        }
      }

      v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v21);
  }

  return dictionary;
}

- (NSDictionary)screenSafeAreas
{
  v33 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [(AVExternalDevice *)self _screenInfo];
  v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v21)
  {
    v20 = *v28;
    v19 = *MEMORY[0x1E6962400];
    v18 = *MEMORY[0x1E6962458];
    v4 = *MEMORY[0x1E6962468];
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v27 + 1) + 8 * i);
        v7 = [v6 objectForKey:v19];
        if (v7)
        {
          v8 = v7;
          -[NSDictionary setObject:forKeyedSubscript:](dictionary, "setObject:forKeyedSubscript:", [MEMORY[0x1E695DF70] array], v7);
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v9 = [v6 objectForKey:v18];
          v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v24;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v24 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v23 + 1) + 8 * j);
                memset(&rect, 0, sizeof(rect));
                CGRectMakeWithDictionaryRepresentation([v14 objectForKeyedSubscript:v4], &rect);
                v15 = [(NSDictionary *)dictionary objectForKeyedSubscript:v8];
                [v15 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRect:", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height)}];
              }

              v11 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v11);
          }
        }
      }

      v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v21);
  }

  return dictionary;
}

- (NSDictionary)screenInputCapabilities
{
  v21 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  _screenInfo = [(AVExternalDevice *)self _screenInfo];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [_screenInfo countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    v8 = *MEMORY[0x1E6962400];
    v9 = *MEMORY[0x1E6962410];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(_screenInfo);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 objectForKey:v8];
        v13 = [v11 objectForKey:v9];
        if (v12)
        {
          v14 = v13 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          [(NSDictionary *)dictionary setObject:v13 forKey:v12];
        }
      }

      v6 = [_screenInfo countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return dictionary;
}

- (NSDictionary)screenPrimaryInputDevices
{
  v19 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  _screenInfo = [(AVExternalDevice *)self _screenInfo];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [_screenInfo countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = *MEMORY[0x1E6962448];
    v9 = *MEMORY[0x1E6962400];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(_screenInfo);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 objectForKey:v8];
        if (v12)
        {
          -[NSDictionary setObject:forKey:](dictionary, "setObject:forKey:", v12, [v11 objectForKey:v9]);
        }
      }

      v6 = [_screenInfo countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return dictionary;
}

- (NSArray)externalDeviceHIDs
{
  makeHIDsOnlyOnce = self->_externalDevice->_makeHIDsOnlyOnce;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__AVExternalDevice_externalDeviceHIDs__block_invoke;
  v5[3] = &unk_1E7460C00;
  v5[4] = self;
  [(AVDispatchOnce *)makeHIDsOnlyOnce runBlockOnce:v5];
  return self->_externalDevice->_HIDs;
}

uint64_t __38__AVExternalDevice_externalDeviceHIDs__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [*(a1 + 32) _figEndpointPropertyValueForKey:*MEMORY[0x1E69620D0]];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [[AVExternalDeviceHID alloc] initWithExternalDeviceAndHIDDictionary:*(a1 + 32) hidDictionary:*(*(&v11 + 1) + 8 * v7)];
        if (v8)
        {
          v9 = v8;
          [v2 addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  result = [v2 copy];
  *(*(*(a1 + 32) + 8) + 32) = result;
  return result;
}

- (id)externalDeviceHIDWithUUID:(id)d
{
  v17 = *MEMORY[0x1E69E9840];
  externalDeviceHIDs = [(AVExternalDevice *)self externalDeviceHIDs];
  if (!externalDeviceHIDs)
  {
    return 0;
  }

  v5 = externalDeviceHIDs;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(NSArray *)externalDeviceHIDs countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v13;
LABEL_4:
  v9 = 0;
  while (1)
  {
    if (*v13 != v8)
    {
      objc_enumerationMutation(v5);
    }

    v10 = *(*(&v12 + 1) + 8 * v9);
    if ([objc_msgSend(v10 "UUID")])
    {
      return v10;
    }

    if (v7 == ++v9)
    {
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v10 = 0;
      if (v7)
      {
        goto LABEL_4;
      }

      return v10;
    }
  }
}

- (NSData)OEMIcon
{
  v13 = *MEMORY[0x1E69E9840];
  oEMIcons = [(AVExternalDevice *)self OEMIcons];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  result = [(NSArray *)oEMIcons countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(oEMIcons);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (([v7 isPrerendered] & 1) == 0)
        {
          return [v7 imageData];
        }

        v6 = (v6 + 1);
      }

      while (v4 != v6);
      result = [(NSArray *)oEMIcons countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (NSArray)OEMIcons
{
  makeIconsOnlyOnce = self->_externalDevice->_makeIconsOnlyOnce;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__AVExternalDevice_OEMIcons__block_invoke;
  v5[3] = &unk_1E7460C00;
  v5[4] = self;
  [(AVDispatchOnce *)makeIconsOnlyOnce runBlockOnce:v5];
  return self->_externalDevice->_oemIcons;
}

uint64_t __28__AVExternalDevice_OEMIcons__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [*(a1 + 32) _figEndpointPropertyValueForKey:*MEMORY[0x1E6962208]];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [[AVExternalDeviceIcon alloc] initWithDictionary:*(*(&v10 + 1) + 8 * v7)];
        if (v8)
        {
          [v2 addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  result = [v2 copy];
  *(*(*(a1 + 32) + 8) + 64) = result;
  return result;
}

- (BOOL)OEMIconVisible
{
  v2 = [(AVExternalDevice *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962200]];

  return [v2 BOOLValue];
}

- (NSArray)limitedUIElements
{
  result = [(AVExternalDevice *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E69621A0]];
  if (!result)
  {
    v3 = MEMORY[0x1E695DEC8];

    return [v3 array];
  }

  return result;
}

- (BOOL)ownsTurnByTurnNavigation
{
  v2 = [(AVExternalDevice *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6961FF8]];

  return [v2 BOOLValue];
}

- (BOOL)recognizingSpeech
{
  v2 = [(AVExternalDevice *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962000]];

  return [v2 BOOLValue];
}

- (int64_t)electronicTollCollection
{
  v2 = [(AVExternalDevice *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962328]];
  if (!v2)
  {
    return 1;
  }

  v3 = [v2 valueForKey:*MEMORY[0x1E69626F8]];
  if (!v3)
  {
    return 1;
  }

  if ([objc_msgSend(v3 valueForKey:{@"active", "BOOLValue"}])
  {
    return 2;
  }

  return 3;
}

- (NSData)MFiCertificateSerialNumber
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__39;
  v11 = __Block_byref_object_dispose__39;
  v12 = 0;
  queue = self->_externalDevice->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__AVExternalDevice_MFiCertificateSerialNumber__block_invoke;
  v6[3] = &unk_1E7460EE0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  data = v8[5];
  if (!data)
  {
    data = [MEMORY[0x1E695DEF0] data];
    v8[5] = data;
  }

  v4 = data;
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __46__AVExternalDevice_MFiCertificateSerialNumber__block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 48);
  if (!v2)
  {
    v8 = 0;
    cf = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v4(CMBaseObject, *MEMORY[0x1E6961FC8], 0, &cf);
    }

    if (FigCFEqual() || FigCFEqual())
    {
      v5 = FigEndpointGetCMBaseObject();
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v6)
      {
        v6(v5, *MEMORY[0x1E6961FC0], 0, &v8);
        if (v8)
        {
          *(*(*(a1 + 32) + 8) + 48) = v8;
        }
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    v2 = *(*(*(a1 + 32) + 8) + 48);
  }

  result = v2;
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)requestCarUIForURL:(id)l withUUID:(id)d
{
  figEndpoint = self->_externalDevice->_figEndpoint;
  if (figEndpoint)
  {
    FigEndpointExtendedGetClassID();
    if (CMBaseObjectIsMemberOfClass())
    {
      v7 = *(*(CMBaseObjectGetVTable() + 24) + 8);
      if (v7)
      {

        v7(figEndpoint, d, l);
      }
    }
  }
}

- (void)requestViewArea:(int64_t)area forScreenID:(id)d
{
  figEndpoint = self->_externalDevice->_figEndpoint;
  if (figEndpoint)
  {
    FigEndpointExtendedGetClassID();
    if (CMBaseObjectIsMemberOfClass())
    {
      v7 = *(*(CMBaseObjectGetVTable() + 24) + 112);
      if (v7)
      {

        v7(figEndpoint, d, area);
      }
    }
  }
}

- (id)requestTurnByTurnNavigationOwnership
{
  v2 = [[AVExternalDeviceTurnByTurnToken alloc] initWithExternalDevice:self];

  return v2;
}

- (id)borrowScreenForClient:(id)client reason:(id)reason
{
  v4 = [[AVExternalDeviceScreenBorrowToken alloc] initWithExternalDevice:self client:client reason:reason];

  return v4;
}

- (void)takeScreenForClient:(id)client reason:(id)reason
{
  figEndpoint = self->_externalDevice->_figEndpoint;
  if (figEndpoint)
  {
    FigEndpointExtendedGetClassID();
    if (CMBaseObjectIsMemberOfClass())
    {
      v7 = *(*(CMBaseObjectGetVTable() + 24) + 32);
      if (v7)
      {

        v7(figEndpoint, client, reason);
      }
    }
  }
}

- (void)takeScreenForConnection
{
  figEndpoint = self->_externalDevice->_figEndpoint;
  if (figEndpoint)
  {
    FigEndpointExtendedGetClassID();
    if (CMBaseObjectIsMemberOfClass())
    {
      v3 = *(*(CMBaseObjectGetVTable() + 24) + 32);
      if (v3)
      {

        v3(figEndpoint, @"com.apple.springboard", @"InitialCarPlayConnection");
      }
    }
  }
}

- (void)sendCommand:(id)command withParameters:(id)parameters
{
  figEndpoint = self->_externalDevice->_figEndpoint;
  if (figEndpoint)
  {
    FigEndpointExtendedGetClassID();
    if (CMBaseObjectIsMemberOfClass())
    {
      v7 = *(*(CMBaseObjectGetVTable() + 24) + 72);
      if (v7)
      {

        v7(figEndpoint, command, parameters, 0, 0);
      }
    }
  }
}

- (void)_triggerFakeNotificationNamed:(id)named withPayload:(id)payload
{
  if ([named isEqualToString:@"ExternalDevice_ScreenBecameUnavailable"])
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v7)
    {
      return;
    }

    v8 = @"TestTakeScreenAway";
    v9 = CMBaseObject;
    v10 = 0;
    goto LABEL_8;
  }

  v11 = MEMORY[0x1E695DF20];
  if (!payload)
  {
    payload = [MEMORY[0x1E695DF20] dictionary];
  }

  v12 = [v11 dictionaryWithObjectsAndKeys:{named, @"name", payload, @"payload", 0}];
  v13 = FigEndpointGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v7)
  {
    v8 = @"TestNotification";
    v9 = v13;
    v10 = v12;
LABEL_8:

    v7(v9, v8, v10);
  }
}

@end