@interface AVCaptureDeviceDiscoverySession
+ (AVCaptureDeviceDiscoverySession)discoverySessionWithDeviceTypes:(NSArray *)deviceTypes mediaType:(AVMediaType)mediaType position:(AVCaptureDevicePosition)position;
+ (id)allAudioDevices;
+ (id)allDeviceTypes;
+ (id)allDevices;
+ (id)allMetadataCameraDeviceTypes;
+ (id)allMetadataCameraDevices;
+ (id)allPointCloudDevices;
+ (id)allSupportedMultiCamDeviceSets;
+ (id)allVideoDeviceTypes;
+ (id)allVideoDevices;
+ (id)allVirtualDeviceTypes;
+ (id)allVirtualDevices;
- (AVCaptureDeviceDiscoverySession)init;
- (NSArray)supportedMultiCamDeviceSets;
- (id)_initWithDeviceTypes:(id)a3 mediaType:(id)a4 position:(int64_t)a5 allowIOSMacEnvironment:(BOOL)a6 prefersUnsuspendedAndAllowsAnyPosition:(BOOL)a7;
- (id)description;
- (void)_handleDeviceConnectedDisconnectedNotification:(id)a3;
- (void)dealloc;
@end

@implementation AVCaptureDeviceDiscoverySession

+ (id)allDeviceTypes
{
  v4[0] = @"AVCaptureDeviceTypeMicrophone";
  v4[1] = @"AVCaptureDeviceTypeBuiltInWideAngleCamera";
  v4[2] = @"AVCaptureDeviceTypeBuiltInTelephotoCamera";
  v4[3] = @"AVCaptureDeviceTypeBuiltInDualCamera";
  v4[4] = @"AVCaptureDeviceTypeBuiltInUltraWideCamera";
  v4[5] = @"AVCaptureDeviceTypeBuiltInDualWideCamera";
  v4[6] = @"AVCaptureDeviceTypeBuiltInTripleCamera";
  v4[7] = @"AVCaptureDeviceTypeBuiltInTimeOfFlightCamera";
  v4[8] = @"AVCaptureDeviceTypeBuiltInTrueDepthCamera";
  v4[9] = @"AVCaptureDeviceTypeBuiltInLiDARDepthCamera";
  v4[10] = @"AVCaptureDeviceTypeBuiltInWideAngleMetadataCamera";
  v4[11] = @"AVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCamera";
  v4[12] = @"AVCaptureDeviceTypeBuiltInInfraredMetadataCamera";
  v4[13] = @"AVCaptureDeviceTypeExternal";
  v4[14] = @"AVCaptureDeviceTypeContinuityCamera";
  v2 = [MEMORY[0x1E695DF70] arrayWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v4, 15)}];
  if (AVCaptureClientAllowsDeskViewCamera())
  {
    [v2 addObject:@"AVCaptureDeviceTypeDeskViewCamera"];
  }

  return [MEMORY[0x1E695DEC8] arrayWithArray:v2];
}

+ (id)allVideoDeviceTypes
{
  v4[0] = @"AVCaptureDeviceTypeBuiltInWideAngleCamera";
  v4[1] = @"AVCaptureDeviceTypeBuiltInTelephotoCamera";
  v4[2] = @"AVCaptureDeviceTypeBuiltInDualCamera";
  v4[3] = @"AVCaptureDeviceTypeBuiltInUltraWideCamera";
  v4[4] = @"AVCaptureDeviceTypeBuiltInDualWideCamera";
  v4[5] = @"AVCaptureDeviceTypeBuiltInTripleCamera";
  v4[6] = @"AVCaptureDeviceTypeBuiltInTrueDepthCamera";
  v4[7] = @"AVCaptureDeviceTypeBuiltInLiDARDepthCamera";
  v4[8] = @"AVCaptureDeviceTypeExternal";
  v4[9] = @"AVCaptureDeviceTypeContinuityCamera";
  v2 = [MEMORY[0x1E695DF70] arrayWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v4, 10)}];
  if (AVCaptureClientAllowsDeskViewCamera())
  {
    [v2 addObject:@"AVCaptureDeviceTypeDeskViewCamera"];
  }

  return [MEMORY[0x1E695DEC8] arrayWithArray:v2];
}

+ (id)allMetadataCameraDeviceTypes
{
  v3[0] = @"AVCaptureDeviceTypeBuiltInWideAngleMetadataCamera";
  v3[1] = @"AVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCamera";
  v3[2] = @"AVCaptureDeviceTypeBuiltInInfraredMetadataCamera";
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:3];
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

  v3.receiver = self;
  v3.super_class = AVCaptureDeviceDiscoverySession;
  [(AVCaptureDeviceDiscoverySession *)&v3 dealloc];
}

+ (id)allVirtualDeviceTypes
{
  v3[0] = @"AVCaptureDeviceTypeBuiltInDualCamera";
  v3[1] = @"AVCaptureDeviceTypeBuiltInDualWideCamera";
  v3[2] = @"AVCaptureDeviceTypeBuiltInTripleCamera";
  v3[3] = @"AVCaptureDeviceTypeBuiltInTrueDepthCamera";
  v3[4] = @"AVCaptureDeviceTypeBuiltInLiDARDepthCamera";
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:5];
}

+ (id)allVideoDevices
{
  v2 = [a1 allVideoDeviceTypes];
  v3 = [AVCaptureDeviceDiscoverySession discoverySessionWithDeviceTypes:v2 mediaType:*MEMORY[0x1E6987608] position:0];

  return [(AVCaptureDeviceDiscoverySession *)v3 devices];
}

+ (AVCaptureDeviceDiscoverySession)discoverySessionWithDeviceTypes:(NSArray *)deviceTypes mediaType:(AVMediaType)mediaType position:(AVCaptureDevicePosition)position
{
  v8 = objc_alloc(objc_opt_class());
  IsRunningInMacCatalystEnvironment = AVCaptureIsRunningInMacCatalystEnvironment();
  v10 = [v8 _initWithDeviceTypes:deviceTypes mediaType:mediaType position:position allowIOSMacEnvironment:IsRunningInMacCatalystEnvironment prefersUnsuspendedAndAllowsAnyPosition:AVGestaltGetBoolAnswer(@"AVGQCaptureDefaultDevicePrefersUnsuspendedAndAllowsAnyPosition")];

  return v10;
}

- (id)_initWithDeviceTypes:(id)a3 mediaType:(id)a4 position:(int64_t)a5 allowIOSMacEnvironment:(BOOL)a6 prefersUnsuspendedAndAllowsAnyPosition:(BOOL)a7
{
  v15.receiver = self;
  v15.super_class = AVCaptureDeviceDiscoverySession;
  v11 = [(AVCaptureDeviceDiscoverySession *)&v15 init:a3];
  if (v11)
  {
    v11->_deviceTypes = [a3 copy];
    v12 = a4;
    v11->_position = a5;
    v11->_mediaType = v12;
    if (a6 || !AVCaptureIsRunningInMacCatalystEnvironment())
    {
      v13 = [AVCaptureDevice _devicesWithDeviceTypes:a3 mediaType:a4 position:a5];
    }

    else
    {
      v13 = MEMORY[0x1E695E0F0];
    }

    v11->_devices = v13;
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  return v11;
}

- (AVCaptureDeviceDiscoverySession)init
{
  v7.receiver = self;
  v7.super_class = AVCaptureDeviceDiscoverySession;
  v2 = [(AVCaptureDeviceDiscoverySession *)&v7 init];
  if (v2)
  {
    v3 = v2;
    if (getCameraCaptureLegacyLog_cameraCaptureLegacyLogOnceToken_0 != -1)
    {
      [AVCaptureDeviceDiscoverySession init];
    }

    v4 = getCameraCaptureLegacyLog_cameraCaptureLegacyLog_0;
    if (os_log_type_enabled(getCameraCaptureLegacyLog_cameraCaptureLegacyLog_0, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A917C000, v4, OS_LOG_TYPE_DEFAULT, "[AVCaptureDeviceDiscoverySession init] - Cannot directly instantiate an AVCaptureDeviceDiscoverySession object.", v6, 2u);
    }
  }

  return 0;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:&stru_1F1CBCFE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  deviceTypes = self->_deviceTypes;
  v5 = [(NSArray *)deviceTypes countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(deviceTypes);
        }

        v9 = AVCaptureDeviceTypeToString(*(*(&v16 + 1) + 8 * i));
        if ([v3 length])
        {
          [v3 appendString:{@", "}];
        }

        [v3 appendFormat:@"%@", v9];
      }

      v6 = [(NSArray *)deviceTypes countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = MEMORY[0x1E696AEC0];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  if (self->_mediaType)
  {
    mediaType = self->_mediaType;
  }

  else
  {
    mediaType = @"Any";
  }

  return [v10 stringWithFormat:@"<%@: %p device types: [%@], media type: %@, position: %@>", v12, self, v3, mediaType, AVCaptureDevicePositionToString(self->_position)];
}

- (void)_handleDeviceConnectedDisconnectedNotification:(id)a3
{
  v4 = [a3 object];
  if (-[NSArray containsObject:](self->_deviceTypes, "containsObject:", [v4 deviceType]) && (!self->_mediaType || objc_msgSend(v4, "hasMediaType:")))
  {
    position = self->_position;
    if (position)
    {
      if (position != [v4 position])
      {
        return;
      }

      v6 = self->_position;
    }

    else
    {
      v6 = 0;
    }

    v7 = [AVCaptureDevice _devicesWithDeviceTypes:self->_deviceTypes mediaType:self->_mediaType position:v6];
    if (![(NSArray *)self->_devices isEqualToArray:v7])
    {
      [(AVCaptureDeviceDiscoverySession *)self willChangeValueForKey:@"supportedMultiCamDeviceSets"];
      [(AVCaptureDeviceDiscoverySession *)self willChangeValueForKey:@"devices"];

      self->_devices = v7;
      self->_supportedMultiCamDeviceSets = 0;
      [(AVCaptureDeviceDiscoverySession *)self supportedMultiCamDeviceSets];
      [(AVCaptureDeviceDiscoverySession *)self didChangeValueForKey:@"devices"];

      [(AVCaptureDeviceDiscoverySession *)self didChangeValueForKey:@"supportedMultiCamDeviceSets"];
    }
  }
}

- (NSArray)supportedMultiCamDeviceSets
{
  result = self->_supportedMultiCamDeviceSets;
  if (!result)
  {
    if (AVGestaltGetBoolAnswer(@"AVGQCaptureSessionSupportsMultiCamCapture"))
    {
      v4 = [(NSArray *)[(AVCaptureDeviceDiscoverySession *)self devices] objectsAtIndexes:[(NSArray *)[(AVCaptureDeviceDiscoverySession *)self devices] indexesOfObjectsPassingTest:&__block_literal_global_5]];
      v5 = [MEMORY[0x1E695DF70] array];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v21 objects:v20 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v22;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v22 != v8)
            {
              objc_enumerationMutation(v4);
            }

            v10 = *(*(&v21 + 1) + 8 * i);
            if ([objc_msgSend(v10 "constituentDevices")] >= 2)
            {
              [v5 addObject:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithObject:", v10)}];
            }
          }

          v7 = [(NSArray *)v4 countByEnumeratingWithState:&v21 objects:v20 count:16];
        }

        while (v7);
      }

      if ([(NSArray *)v4 count]>= 2)
      {
        IntegerAnswer = AVGestaltGetIntegerAnswer(@"AVGQCaptureSessionMaxMultiCamRGBStreamsSupported");
        v12 = [(NSArray *)v4 count];
        v13 = IntegerAnswer >= v12 ? v12 : IntegerAnswer;
        v14 = IntegerAnswer == 0x7FFFFFFFFFFFFFFFLL ? v12 : v13;
        if (v14 >= 2)
        {
          v15 = 1;
          v16 = 2;
          do
          {
            v17 = [MEMORY[0x1E695DF70] array];
            v18 = 0;
            do
            {
              [v17 setObject:objc_msgSend(MEMORY[0x1E695DFB0] atIndexedSubscript:{"null"), v18++}];
            }

            while (v16 != v18);
            avcdds_addValidMultiCamCombinations(v4, ++v15, 0, v17, v5, IntegerAnswer);
          }

          while (v16++ != v14);
        }
      }

      result = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v5];
    }

    else
    {
      result = objc_alloc_init(MEMORY[0x1E695DEC8]);
    }

    self->_supportedMultiCamDeviceSets = result;
  }

  return result;
}

+ (id)allDevices
{
  v2 = +[AVCaptureDeviceDiscoverySession discoverySessionWithDeviceTypes:mediaType:position:](AVCaptureDeviceDiscoverySession, "discoverySessionWithDeviceTypes:mediaType:position:", [a1 allDeviceTypes], 0, 0);

  return [(AVCaptureDeviceDiscoverySession *)v2 devices];
}

+ (id)allPointCloudDevices
{
  v2 = +[AVCaptureDeviceDiscoverySession discoverySessionWithDeviceTypes:mediaType:position:](AVCaptureDeviceDiscoverySession, "discoverySessionWithDeviceTypes:mediaType:position:", [a1 allPointCloudDeviceTypes], @"pcld", 0);

  return [(AVCaptureDeviceDiscoverySession *)v2 devices];
}

+ (id)allMetadataCameraDevices
{
  v2 = [a1 allMetadataCameraDeviceTypes];
  v3 = [AVCaptureDeviceDiscoverySession discoverySessionWithDeviceTypes:v2 mediaType:*MEMORY[0x1E69875D8] position:0];

  return [(AVCaptureDeviceDiscoverySession *)v3 devices];
}

+ (id)allAudioDevices
{
  v2 = [a1 allAudioDeviceTypes];
  v3 = [AVCaptureDeviceDiscoverySession discoverySessionWithDeviceTypes:v2 mediaType:*MEMORY[0x1E69875A0] position:0];

  return [(AVCaptureDeviceDiscoverySession *)v3 devices];
}

+ (id)allVirtualDevices
{
  v2 = +[AVCaptureDeviceDiscoverySession discoverySessionWithDeviceTypes:mediaType:position:](AVCaptureDeviceDiscoverySession, "discoverySessionWithDeviceTypes:mediaType:position:", [a1 allVirtualDeviceTypes], 0, 0);

  return [(AVCaptureDeviceDiscoverySession *)v2 devices];
}

+ (id)allSupportedMultiCamDeviceSets
{
  v2 = +[AVCaptureDeviceDiscoverySession discoverySessionWithDeviceTypes:mediaType:position:](AVCaptureDeviceDiscoverySession, "discoverySessionWithDeviceTypes:mediaType:position:", [a1 allVideoDeviceTypes], 0, 0);

  return [(AVCaptureDeviceDiscoverySession *)v2 supportedMultiCamDeviceSets];
}

@end