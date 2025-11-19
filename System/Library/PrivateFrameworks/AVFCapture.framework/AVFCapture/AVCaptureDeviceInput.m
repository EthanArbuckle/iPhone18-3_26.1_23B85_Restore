@interface AVCaptureDeviceInput
+ (AVCaptureDeviceInput)deviceInputWithDevice:(AVCaptureDevice *)device error:(NSError *)outError;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)activeExternalSyncVideoFrameDuration;
- (AVCaptureDeviceInput)initWithDevice:(AVCaptureDevice *)device error:(NSError *)outError;
- (BOOL)_authorizedToUseDeviceAndRequestIfNecessary:(id)a3;
- (BOOL)_isSpatialVideoCaptureEnabledOnMFO:(id)a3;
- (BOOL)isMultichannelAudioModeSupported:(int64_t)a3;
- (CMTime)videoMinFrameDurationOverride;
- (NSArray)portsWithMediaType:(AVMediaType)mediaType sourceDeviceType:(AVCaptureDeviceType)sourceDeviceType sourceDevicePosition:(AVCaptureDevicePosition)sourceDevicePosition;
- (OpaqueCMClock)clock;
- (id)description;
- (id)multiCamPorts;
- (id)notReadyError;
- (id)ports;
- (id)remoteIOOutputFormat;
- (id)sensitiveContentAnalyzerXPCObject;
- (id)videoDevice;
- (int64_t)_audioCaptureModeForMultichannelAudioMode:(int64_t)a3;
- (void)_applyActiveExternalSyncVideoFrameDuration;
- (void)_applyActiveLockedVideoFrameDuration;
- (void)_applyVideoMinFrameDurationOverride;
- (void)_bumpChangeSeedForFirstPortWithMediaType:(id)a3;
- (void)_handleNotification:(id)a3 payload:(id)a4;
- (void)_resetActiveLockedVideoFrameDurationWithFormatChanged:(BOOL)a3;
- (void)_resetCinematicVideoCaptureSupported;
- (void)_resetPortraitLightingEffectStrength;
- (void)_resetSimulatedAperture;
- (void)_resetVideoMinFrameDurationOverride;
- (void)_setGenlockSignalCompensationDelay:(id *)a3;
- (void)_sourceFormatDidChange:(opaqueCMFormatDescription *)a3;
- (void)_updateExternalSyncSupported;
- (void)_updateLockedVideoFrameDurationSupported;
- (void)attachSafelyToFigCaptureSession:(OpaqueFigCaptureSession *)a3;
- (void)dealloc;
- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)a3;
- (void)followExternalSyncDevice:(id)a3 videoFrameDuration:(id *)a4 delegate:(id)a5;
- (void)handleChangedActiveFormat:(id)a3 forDevice:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setActiveLockedVideoFrameDuration:(id *)a3;
- (void)setAudioCaptureMode:(int64_t)a3;
- (void)setBackgroundBlurAllowed:(BOOL)a3;
- (void)setBackgroundReplacementAllowed:(BOOL)a3;
- (void)setBuiltInMicrophoneStereoAudioCaptureEnabled:(BOOL)a3;
- (void)setCameraCalibrationDataDeliveryEnabled:(BOOL)a3;
- (void)setCenterStageAllowed:(BOOL)a3;
- (void)setCinematicVideoCaptureEnabled:(BOOL)a3;
- (void)setMaxGainOverride:(float)a3;
- (void)setMultichannelAudioMode:(int64_t)a3;
- (void)setPortraitLightingEffectStrength:(float)a3;
- (void)setReactionEffectsAllowed:(BOOL)a3;
- (void)setRemoteIOOutputFormat:(id)a3;
- (void)setSensitiveContentAnalyzerEnabled:(BOOL)a3;
- (void)setSensitiveContentAnalyzerXPCObject:(id)a3;
- (void)setSession:(id)a3;
- (void)setSimulatedAperture:(float)a3;
- (void)setStudioLightingAllowed:(BOOL)a3;
- (void)setUnifiedAutoExposureDefaultsEnabled:(BOOL)unifiedAutoExposureDefaultsEnabled;
- (void)setVideoMinFrameDurationOverride:(CMTime *)videoMinFrameDurationOverride;
- (void)setVisionDataDeliveryEnabled:(BOOL)a3;
- (void)setWindNoiseRemovalEnabled:(BOOL)a3;
- (void)unfollowExternalSyncDevice;
- (void)updateSupportedProperties;
@end

@implementation AVCaptureDeviceInput

- (id)ports
{
  if (!self->_internal->ports)
  {
    v3 = [(AVCaptureDeviceInput *)self device];
    if (v3)
    {
      v4 = v3;
      v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
      v6 = [(AVCaptureDevice *)v4 deviceType];
      v7 = [(AVCaptureDevice *)v4 position];
      if ([(NSString *)v6 isEqual:@"AVCaptureDeviceTypeMicrophone"])
      {
        [v5 addObject:{+[AVCaptureInputPort portWithInput:mediaType:formatDescription:enabled:sourceDeviceType:sourceDevicePosition:](AVCaptureInputPort, "portWithInput:mediaType:formatDescription:enabled:sourceDeviceType:sourceDevicePosition:", self, *MEMORY[0x1E69875A0], 0, 1, @"AVCaptureDeviceTypeMicrophone", 0)}];
        if ([(AVCaptureDevice *)v4 hasMediaType:AVMediaTypeForMetadataObjects()])
        {
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v8 = [(AVCaptureDevice *)v4 availableBoxedMetadataFormatDescriptions];
          v9 = [v8 countByEnumeratingWithState:&v30 objects:v29 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v31;
            v12 = *MEMORY[0x1E69875D8];
            do
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v31 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                [v5 addObject:{+[AVCaptureInputPort portWithInput:mediaType:formatDescription:enabled:sourceDeviceType:sourceDevicePosition:](AVCaptureInputPort, "portWithInput:mediaType:formatDescription:enabled:sourceDeviceType:sourceDevicePosition:", self, v12, *(*(&v30 + 1) + 8 * i), 1, v6, v7)}];
              }

              v10 = [v8 countByEnumeratingWithState:&v30 objects:v29 count:16];
            }

            while (v10);
          }
        }
      }

      else
      {
        v15 = *MEMORY[0x1E6987608];
        if ([(AVCaptureDevice *)v4 hasMediaType:*MEMORY[0x1E6987608]])
        {
          [v5 addObject:{+[AVCaptureInputPort portWithInput:mediaType:formatDescription:enabled:sourceDeviceType:sourceDevicePosition:](AVCaptureInputPort, "portWithInput:mediaType:formatDescription:enabled:sourceDeviceType:sourceDevicePosition:", self, v15, 0, 1, v6, v7)}];
        }

        if ([(AVCaptureDevice *)v4 hasMediaType:AVMediaTypeForMetadataObjects()])
        {
          [v5 addObject:{+[AVCaptureInputPort portWithInput:mediaType:formatDescription:enabled:sourceDeviceType:sourceDevicePosition:](AVCaptureInputPort, "portWithInput:mediaType:formatDescription:enabled:sourceDeviceType:sourceDevicePosition:", self, AVMediaTypeForMetadataObjects(), 0, 1, v6, v7)}];
        }

        if (AVMediaTypeMetadataObjectAndAVMediaTypeMetadataAreDefined())
        {
          v16 = *MEMORY[0x1E69875D0];
          if ([(AVCaptureDevice *)v4 hasMediaType:*MEMORY[0x1E69875D0]])
          {
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v17 = [(AVCaptureDevice *)v4 availableBoxedMetadataFormatDescriptions];
            v18 = [v17 countByEnumeratingWithState:&v25 objects:v24 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v26;
              do
              {
                for (j = 0; j != v19; ++j)
                {
                  if (*v26 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  [v5 addObject:{+[AVCaptureInputPort portWithInput:mediaType:formatDescription:enabled:sourceDeviceType:sourceDevicePosition:](AVCaptureInputPort, "portWithInput:mediaType:formatDescription:enabled:sourceDeviceType:sourceDevicePosition:", self, v16, *(*(&v25 + 1) + 8 * j), 1, v6, v7)}];
                }

                v19 = [v17 countByEnumeratingWithState:&v25 objects:v24 count:16];
              }

              while (v19);
            }
          }
        }

        v22 = *MEMORY[0x1E69875C0];
        if ([(AVCaptureDevice *)v4 hasMediaType:*MEMORY[0x1E69875C0]])
        {
          [v5 addObject:{+[AVCaptureInputPort portWithInput:mediaType:formatDescription:enabled:sourceDeviceType:sourceDevicePosition:](AVCaptureInputPort, "portWithInput:mediaType:formatDescription:enabled:sourceDeviceType:sourceDevicePosition:", self, v22, 0, 1, v6, v7)}];
        }

        if ([(AVCaptureDevice *)v4 hasMediaType:@"pcld"])
        {
          [v5 addObject:{+[AVCaptureInputPort portWithInput:mediaType:formatDescription:enabled:sourceDeviceType:sourceDevicePosition:](AVCaptureInputPort, "portWithInput:mediaType:formatDescription:enabled:sourceDeviceType:sourceDevicePosition:", self, @"pcld", 0, 1, v6, v7)}];
        }
      }

      v14 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v5];
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    }

    self->_internal->ports = v14;
  }

  return self->_internal->ports;
}

- (OpaqueCMClock)clock
{
  v2 = [(AVCaptureDeviceInput *)self device];

  return [(AVCaptureDevice *)v2 deviceClock];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p [%@]>", NSStringFromClass(v4), self, -[AVCaptureDevice localizedName](-[AVCaptureDeviceInput device](self, "device"), "localizedName")];
}

- (id)videoDevice
{
  v3 = [(AVCaptureDeviceInput *)self device];
  if ([(AVCaptureDevice *)v3 hasMediaType:*MEMORY[0x1E69875A0]])
  {
    return 0;
  }

  v5 = [(AVCaptureDeviceInput *)self device];
  if (![(AVCaptureDevice *)v5 hasMediaType:*MEMORY[0x1E6987608]])
  {
    v6 = [(AVCaptureDeviceInput *)self device];
    if (![(AVCaptureDevice *)v6 hasMediaType:*MEMORY[0x1E69875D8]])
    {
      return 0;
    }
  }

  return [(AVCaptureDeviceInput *)self device];
}

- (void)_resetSimulatedAperture
{
  internal = self->_internal;
  device = internal->device;
  simulatedAperture = internal->simulatedAperture;
  [(AVCaptureDeviceFormat *)[(AVCaptureDevice *)device activeFormat] minSimulatedAperture];
  v7 = v6;
  v8 = [(AVCaptureDevice *)device activeFormat];
  if (v7 <= 0.0)
  {
    [(AVCaptureDeviceFormat *)v8 defaultSimulatedAperture];
    v10 = 0.0;
    if (v12 <= 0.0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [(AVCaptureDeviceFormat *)v8 minSimulatedAperture];
  if (simulatedAperture < v9 || ([(AVCaptureDeviceFormat *)[(AVCaptureDevice *)device activeFormat] maxSimulatedAperture], v10 = simulatedAperture, simulatedAperture > v11))
  {
LABEL_6:
    [(AVCaptureDeviceFormat *)[(AVCaptureDevice *)device activeFormat] defaultSimulatedAperture];
    v10 = v13;
  }

LABEL_7:
  if (simulatedAperture != v10)
  {
    [(AVCaptureDeviceInput *)self willChangeValueForKey:@"simulatedAperture"];
    self->_internal->simulatedAperture = v10;

    [(AVCaptureDeviceInput *)self didChangeValueForKey:@"simulatedAperture"];
  }
}

- (void)_resetPortraitLightingEffectStrength
{
  internal = self->_internal;
  device = internal->device;
  v5 = *(&internal->sensitiveContentAnalyzerXPCObject + 1);
  [(AVCaptureDeviceFormat *)[(AVCaptureDevice *)device activeFormat] minPortraitLightingEffectStrength];
  [(AVCaptureDeviceFormat *)[(AVCaptureDevice *)device activeFormat] minPortraitLightingEffectStrength];
  if (v5 < v6 || ([(AVCaptureDeviceFormat *)[(AVCaptureDevice *)device activeFormat] maxPortraitLightingEffectStrength], v7 = v5, v5 > v8))
  {
    [(AVCaptureDeviceFormat *)[(AVCaptureDevice *)device activeFormat] defaultPortraitLightingEffectStrength];
    v7 = v9;
  }

  if (v5 != v7)
  {
    [(AVCaptureDeviceInput *)self willChangeValueForKey:@"portraitLightingEffectStrength"];
    *(&self->_internal->sensitiveContentAnalyzerXPCObject + 1) = v7;

    [(AVCaptureDeviceInput *)self didChangeValueForKey:@"portraitLightingEffectStrength"];
  }
}

- (void)_resetCinematicVideoCaptureSupported
{
  v3 = [(AVCaptureDevice *)self->_internal->device activeFormat];
  cinematicVideoCaptureSupported = self->_internal->cinematicVideoCaptureSupported;
  v5 = (((LODWORD(self->_internal->activeExternalSyncVideoFrameDuration.value) | HIDWORD(self->_internal->activeLockedVideoFrameDuration.value)) & 1) == 0) & [(AVCaptureDeviceFormat *)v3 isCinematicVideoCaptureSupported];
  if (cinematicVideoCaptureSupported != v5)
  {
    [(AVCaptureDeviceInput *)self willChangeValueForKey:@"cinematicVideoCaptureSupported"];
    self->_internal->cinematicVideoCaptureSupported = v5;
    [(AVCaptureDeviceInput *)self didChangeValueForKey:@"cinematicVideoCaptureSupported"];
    internal = self->_internal;
    if (!internal->cinematicVideoCaptureSupported && internal->cinematicVideoCaptureEnabled)
    {
      [(AVCaptureDeviceInput *)self willChangeValueForKey:@"cinematicVideoCaptureEnabled"];
      self->_internal->cinematicVideoCaptureEnabled = 0;

      [(AVCaptureDeviceInput *)self didChangeValueForKey:@"cinematicVideoCaptureEnabled"];
    }
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)activeExternalSyncVideoFrameDuration
{
  var3 = self->var3;
  *&retstr->var0 = *(var3 + 124);
  retstr->var3 = *(var3 + 140);
  return self;
}

- (CMTime)videoMinFrameDurationOverride
{
  epoch = self->epoch;
  *&retstr->value = *(epoch + 68);
  retstr->epoch = *(epoch + 84);
  return self;
}

- (id)sensitiveContentAnalyzerXPCObject
{
  v2 = *&self->_internal->backgroundReplacementAllowed;

  return v2;
}

- (void)_applyVideoMinFrameDurationOverride
{
  [[(AVCaptureDeviceInput *)self device] lockForConfiguration:0];
  v3 = [(AVCaptureDeviceInput *)self device];
  internal = self->_internal;
  v5 = *(&internal->simulatedAperture + 1);
  v6 = *&internal->videoMinFrameDurationOverride.flags;
  [(AVCaptureDevice *)v3 setVideoMinFrameDurationOverride:&v5 forOwner:self];
  [[(AVCaptureDeviceInput *)self device] unlockForConfiguration];
}

- (void)_applyActiveLockedVideoFrameDuration
{
  [[(AVCaptureDeviceInput *)self device] lockForConfiguration:0];
  v3 = [(AVCaptureDeviceInput *)self device];
  internal = self->_internal;
  v5 = *&internal->lockedVideoFrameDurationSupported;
  v6 = *&internal->activeLockedVideoFrameDuration.timescale;
  [(AVCaptureDevice *)v3 setActiveLockedVideoFrameDuration:&v5 forOwner:self];
  [[(AVCaptureDeviceInput *)self device] unlockForConfiguration];
}

- (id)multiCamPorts
{
  result = self->_internal->multiCamPorts;
  if (!result)
  {
    v34 = [MEMORY[0x1E695DF70] arrayWithArray:{-[AVCaptureDeviceInput ports](self, "ports")}];
    BoolAnswer = AVGestaltGetBoolAnswer(@"AVGQCaptureSessionSupportsMultiCamCapture");
    v5 = self;
    v6 = [(AVCaptureDeviceInput *)self device];
    if (BoolAnswer)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = v6;
      v9 = [(AVCaptureDevice *)v6 deviceType];
      v10 = [(AVCaptureDevice *)v8 position];
      v11 = [(NSString *)v9 isEqual:@"AVCaptureDeviceTypeMicrophone"];
      v32 = v8;
      if (v11)
      {
        v12 = *MEMORY[0x1E69875A0];
        [v34 addObject:{+[AVCaptureInputPort portWithInput:mediaType:formatDescription:enabled:sourceDeviceType:sourceDevicePosition:](AVCaptureInputPort, "portWithInput:mediaType:formatDescription:enabled:sourceDeviceType:sourceDevicePosition:", v5, *MEMORY[0x1E69875A0], 0, 1, v9, 1)}];
        [v34 addObject:{+[AVCaptureInputPort portWithInput:mediaType:formatDescription:enabled:sourceDeviceType:sourceDevicePosition:](AVCaptureInputPort, "portWithInput:mediaType:formatDescription:enabled:sourceDeviceType:sourceDevicePosition:", v5, v12, 0, 1, v9, 2)}];
        if ([(AVCaptureDevice *)v8 hasMediaType:*MEMORY[0x1E69875D0]])
        {
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v13 = [(AVCaptureDevice *)v8 availableBoxedMetadataFormatDescriptions];
          v14 = [v13 countByEnumeratingWithState:&v46 objects:v45 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v47;
            v17 = *MEMORY[0x1E69875D8];
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v47 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                [v34 addObject:{+[AVCaptureInputPort portWithInput:mediaType:formatDescription:enabled:sourceDeviceType:sourceDevicePosition:](AVCaptureInputPort, "portWithInput:mediaType:formatDescription:enabled:sourceDeviceType:sourceDevicePosition:", v5, v17, *(*(&v46 + 1) + 8 * i), 1, v9, v10)}];
              }

              v15 = [v13 countByEnumeratingWithState:&v46 objects:v45 count:16];
            }

            while (v15);
          }
        }
      }

      else
      {
        obj = [(AVCaptureDevice *)v8 constituentDevices];
        if ([(NSArray *)obj count]>= 2)
        {
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v30 = [(NSArray *)obj countByEnumeratingWithState:&v41 objects:v40 count:16];
          if (v30)
          {
            v29 = *v42;
            v31 = *MEMORY[0x1E6987608];
            v19 = *MEMORY[0x1E69875D0];
            do
            {
              v20 = 0;
              v21 = v5;
              do
              {
                if (*v42 != v29)
                {
                  objc_enumerationMutation(obj);
                }

                v22 = *(*(&v41 + 1) + 8 * v20);
                if ([v22 hasMediaType:v31])
                {
                  [v34 addObject:{+[AVCaptureInputPort portWithInput:mediaType:formatDescription:enabled:sourceDeviceType:sourceDevicePosition:](AVCaptureInputPort, "portWithInput:mediaType:formatDescription:enabled:sourceDeviceType:sourceDevicePosition:", v21, v31, 0, 1, objc_msgSend(v22, "deviceType"), objc_msgSend(v22, "position"))}];
                }

                v33 = v20;
                if ([(AVCaptureDevice *)v8 hasMediaType:AVMediaTypeForMetadataObjects()])
                {
                  [v34 addObject:{+[AVCaptureInputPort portWithInput:mediaType:formatDescription:enabled:sourceDeviceType:sourceDevicePosition:](AVCaptureInputPort, "portWithInput:mediaType:formatDescription:enabled:sourceDeviceType:sourceDevicePosition:", v21, AVMediaTypeForMetadataObjects(), 0, 1, objc_msgSend(v22, "deviceType"), objc_msgSend(v22, "position"))}];
                }

                if (AVMediaTypeMetadataObjectAndAVMediaTypeMetadataAreDefined())
                {
                  if ([(AVCaptureDevice *)v32 hasMediaType:v19])
                  {
                    v38 = 0u;
                    v39 = 0u;
                    v36 = 0u;
                    v37 = 0u;
                    v23 = [(AVCaptureDevice *)v32 availableBoxedMetadataFormatDescriptions];
                    v24 = [v23 countByEnumeratingWithState:&v36 objects:v35 count:16];
                    if (v24)
                    {
                      v25 = v24;
                      v26 = *v37;
                      do
                      {
                        for (j = 0; j != v25; ++j)
                        {
                          if (*v37 != v26)
                          {
                            objc_enumerationMutation(v23);
                          }

                          v21 = v5;
                          [v34 addObject:{+[AVCaptureInputPort portWithInput:mediaType:formatDescription:enabled:sourceDeviceType:sourceDevicePosition:](AVCaptureInputPort, "portWithInput:mediaType:formatDescription:enabled:sourceDeviceType:sourceDevicePosition:", v5, v19, *(*(&v36 + 1) + 8 * j), 1, objc_msgSend(v22, "deviceType"), objc_msgSend(v22, "position"))}];
                        }

                        v25 = [v23 countByEnumeratingWithState:&v36 objects:v35 count:16];
                      }

                      while (v25);
                    }
                  }
                }

                v8 = v32;
                ++v20;
              }

              while (v33 + 1 != v30);
              v30 = [(NSArray *)obj countByEnumeratingWithState:&v41 objects:v40 count:16];
            }

            while (v30);
          }
        }
      }
    }

    v5->_internal->multiCamPorts = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v34];
    return v5->_internal->multiCamPorts;
  }

  return result;
}

+ (AVCaptureDeviceInput)deviceInputWithDevice:(AVCaptureDevice *)device error:(NSError *)outError
{
  v4 = [objc_alloc(objc_opt_class()) initWithDevice:device error:outError];

  return v4;
}

- (AVCaptureDeviceInput)initWithDevice:(AVCaptureDevice *)device error:(NSError *)outError
{
  v34.receiver = self;
  v34.super_class = AVCaptureDeviceInput;
  v6 = [(AVCaptureInput *)&v34 initSubclass];
  if (v6)
  {
    v7 = objc_alloc_init(AVCaptureDeviceInputInternal);
    v6->_internal = v7;
    if (v7)
    {
      if (device)
      {
        if ([(AVCaptureDeviceInput *)v6 _authorizedToUseDeviceAndRequestIfNecessary:device])
        {
          v8 = device;
          v6->_internal->device = device;
          *&v6->_internal->sensitiveContentAnalyzerEnabled = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:v6];
          v9 = [MEMORY[0x1E6987FA0] sharedKVODispatcher];
          v6->_internal->weakReference = [v9 startObservingValueAtKeyPath:@"open" ofObject:device options:0 usingBlock:{objc_msgSend(MEMORY[0x1E6988078], "observationBlockForWeakObserver:passedToBlock:", v6, &__block_literal_global_11)}];
          [(AVCaptureDeviceInput *)v6 willChangeValueForKey:@"notReadyError"];
          BYTE1(v6->_internal->sensitiveContentAnalyzerXPCObject) = 1;
          [(AVCaptureDeviceInput *)v6 didChangeValueForKey:@"notReadyError"];
          [(AVCaptureDeviceFormat *)[(AVCaptureDevice *)device activeFormat] defaultSimulatedAperture];
          v6->_internal->simulatedAperture = v10;
          internal = v6->_internal;
          v12 = MEMORY[0x1E6960C70];
          v13 = *(MEMORY[0x1E6960C70] + 16);
          *&internal->videoMinFrameDurationOverride.flags = v13;
          v23 = *v12;
          *(&internal->simulatedAperture + 1) = *v12;
          [(AVCaptureDeviceFormat *)[(AVCaptureDevice *)device activeFormat] defaultPortraitLightingEffectStrength];
          HIDWORD(v6->_internal->sensitiveContentAnalyzerXPCObject) = v14;
          [(AVCaptureDevice *)device minSupportedLockedVideoFrameDuration];
          BYTE4(v6->_internal->videoMinFrameDurationOverride.epoch) = v25 & 1;
          v15 = v6->_internal;
          *&v15->activeLockedVideoFrameDuration.timescale = v13;
          *&v15->lockedVideoFrameDurationSupported = v23;
          [(AVCaptureDevice *)device minSupportedExternalSyncFrameDuration];
          LOBYTE(v6->_internal->activeLockedVideoFrameDuration.epoch) = v24 & 1;
          v16 = v6->_internal;
          *(&v16->activeExternalSyncVideoFrameDuration.value + 4) = v13;
          *(&v16->activeLockedVideoFrameDuration.epoch + 4) = v23;
          BYTE4(v6->_internal->activeVideoExternalSyncDevice) = 1;
          BYTE5(v6->_internal->activeVideoExternalSyncDevice) = 1;
          BYTE6(v6->_internal->activeVideoExternalSyncDevice) = 1;
          HIBYTE(v6->_internal->activeVideoExternalSyncDevice) = 1;
          LOBYTE(v6->_internal->maxGainOverride) = 1;
          v6->_internal->cinematicVideoCaptureSupported = [(AVCaptureDeviceFormat *)[(AVCaptureDevice *)device activeFormat] isCinematicVideoCaptureSupported];
          LOBYTE(v6->_internal->sensitiveContentAnalyzerXPCObject) = 1;
          [(AVCaptureDevice *)device addObserver:v6 forKeyPath:@"variableFrameRateVideoCaptureEnabled" options:7 context:AVCaptureDeviceVFREnabledChangedContext];
          goto LABEL_6;
        }

        v26 = *MEMORY[0x1E69873D8];
        v27 = device;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        v17 = AVLocalizedError();
        v33 = 0;
        v32 = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v20 = v33;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v32))
        {
          v21 = v20;
        }

        else
        {
          v21 = v20 & 0xFFFFFFFE;
        }

        if (v21)
        {
          v28 = 136315394;
          v29 = "[AVCaptureDeviceInput initWithDevice:error:]";
          v30 = 2114;
          v31 = v17;
          _os_log_send_and_compose_impl();
        }
      }

      else
      {

        v17 = AVLocalizedError();
        v33 = 0;
        v32 = OS_LOG_TYPE_DEFAULT;
        v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (outError)
      {
        v6 = 0;
        *outError = v17;
        return v6;
      }
    }

    else
    {
    }

    return 0;
  }

LABEL_6:
  if (outError)
  {
    *outError = 0;
  }

  return v6;
}

uint64_t __45__AVCaptureDeviceInput_initWithDevice_error___block_invoke(uint64_t a1, void *a2)
{
  [a2 willChangeValueForKey:@"notReadyError"];

  return [a2 didChangeValueForKey:@"notReadyError"];
}

- (void)handleChangedActiveFormat:(id)a3 forDevice:(id)a4
{
  [(AVCaptureDeviceInput *)self _resetSimulatedAperture];
  [(AVCaptureDeviceInput *)self _resetPortraitLightingEffectStrength];
  [(AVCaptureDeviceInput *)self _resetCinematicVideoCaptureSupported];
  [(AVCaptureDeviceInput *)self _resetActiveLockedVideoFrameDurationWithFormatChanged:1];
  [(AVCaptureDeviceInput *)self unfollowExternalSyncDevice];
  v7.receiver = self;
  v7.super_class = AVCaptureDeviceInput;
  [(AVCaptureInput *)&v7 handleChangedActiveFormat:a3 forDevice:a4];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (AVCaptureSessionRunningChangedContext == a6)
  {
    v8 = [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A500], a4), "BOOLValue"}];
    v9 = [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A4F0]), "BOOLValue"}];
    if (v8 != v9)
    {
      v10 = v9;
      if (v9)
      {
        [(AVCaptureDeviceInput *)self _applyVideoMinFrameDurationOverride];
        [(AVCaptureDeviceInput *)self _applyActiveLockedVideoFrameDuration];
      }

      else
      {
        [(AVCaptureDeviceInput *)self _resetVideoMinFrameDurationOverride];
        [(AVCaptureDeviceInput *)self _resetActiveLockedVideoFrameDurationWithFormatChanged:0];
      }

      epoch = self->_internal->activeExternalSyncVideoFrameDuration.epoch;

      [epoch handleSessionStateChange:v10];
    }
  }

  else if (AVCaptureDeviceVFREnabledChangedContext == a6)
  {

    [(AVCaptureDeviceInput *)self updateSupportedProperties:a3];
  }
}

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {
    if (internal->device)
    {
      [(NSArray *)internal->ports makeObjectsPerformSelector:sel_setOwner_ withObject:0];
      [(NSArray *)self->_internal->ports makeObjectsPerformSelector:sel__setClock_ withObject:0];
      [(AVCaptureDevice *)self->_internal->device removeObserver:self forKeyPath:@"variableFrameRateVideoCaptureEnabled" context:AVCaptureDeviceVFREnabledChangedContext];
      internal = self->_internal;
    }
  }

  v4.receiver = self;
  v4.super_class = AVCaptureDeviceInput;
  [(AVCaptureInput *)&v4 dealloc];
}

- (void)setUnifiedAutoExposureDefaultsEnabled:(BOOL)unifiedAutoExposureDefaultsEnabled
{
  internal = self->_internal;
  if (internal->unifiedAutoExposureDefaultsEnabled != unifiedAutoExposureDefaultsEnabled)
  {
    internal->unifiedAutoExposureDefaultsEnabled = unifiedAutoExposureDefaultsEnabled;
    [(AVCaptureDeviceInput *)self _bumpChangeSeedForFirstPortWithMediaType:*MEMORY[0x1E6987608]];
  }
}

- (void)setSession:(id)a3
{
  if ([(AVCaptureInput *)self session])
  {
    v5 = [(AVCaptureInput *)self session];
    [v5 removeObserver:self forKeyPath:@"running" context:AVCaptureSessionRunningChangedContext];
    [(AVCaptureDeviceInput *)self _resetVideoMinFrameDurationOverride];
    [(AVCaptureDeviceInput *)self _resetActiveLockedVideoFrameDurationWithFormatChanged:0];
    [(AVCaptureDeviceInput *)self updateSupportedProperties];
  }

  if (a3)
  {
    [a3 addObserver:self forKeyPath:@"running" options:7 context:AVCaptureSessionRunningChangedContext];
    v6 = [(AVCaptureDeviceInput *)self device];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_msgSend(a3 "sessionVideoCaptureDevices")] >= 2 && -[AVCaptureDevice hasMediaType:](v6, "hasMediaType:", *MEMORY[0x1E69875A0]) && !-[AVCaptureDeviceInput audioCaptureMode](self, "audioCaptureMode"))
    {
      [(AVCaptureDeviceInput *)self setAudioCaptureMode:6];
    }
  }

  v7.receiver = self;
  v7.super_class = AVCaptureDeviceInput;
  [(AVCaptureInput *)&v7 setSession:a3];
}

- (void)attachSafelyToFigCaptureSession:(OpaqueFigCaptureSession *)a3
{
  [objc_msgSend(MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:{CMNotificationCenterGetDefaultLocalCenter()), "addListenerWithWeakReference:callback:name:object:flags:", *&self->_internal->sensitiveContentAnalyzerEnabled, di_notificationHandler, *MEMORY[0x1E698FE50], a3, 0}];
  v5.receiver = self;
  v5.super_class = AVCaptureDeviceInput;
  [(AVCaptureInput *)&v5 attachSafelyToFigCaptureSession:a3];
}

- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)a3
{
  [objc_msgSend(MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:{CMNotificationCenterGetDefaultLocalCenter()), "removeListenerWithWeakReference:callback:name:object:", *&self->_internal->sensitiveContentAnalyzerEnabled, di_notificationHandler, *MEMORY[0x1E698FE50], a3}];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v9 = __58__AVCaptureDeviceInput_detachSafelyFromFigCaptureSession___block_invoke;
  v10 = &unk_1E786EC08;
  v11 = self;
  if ([-[AVCaptureInput session](self "session")])
  {
    Main = CFRunLoopGetMain();
    CFRunLoopPerformBlock(Main, *MEMORY[0x1E695E8D0], block);
    v6 = CFRunLoopGetMain();
    CFRunLoopWakeUp(v6);
  }

  else
  {
    v9(block);
  }

  v7.receiver = self;
  v7.super_class = AVCaptureDeviceInput;
  [(AVCaptureInput *)&v7 detachSafelyFromFigCaptureSession:a3];
}

- (id)notReadyError
{
  if (BYTE1(self->_internal->sensitiveContentAnalyzerXPCObject))
  {
    return 0;
  }

  v4 = [(AVCaptureDeviceInput *)self device];
  if ([(AVCaptureDevice *)v4 isConnected])
  {
    if ([-[AVCaptureInput session](self "session")])
    {
      if (getCameraCaptureLegacyLog_cameraCaptureLegacyLogOnceToken_2 != -1)
      {
        [AVCaptureDeviceInput notReadyError];
      }

      v5 = getCameraCaptureLegacyLog_cameraCaptureLegacyLog_2;
      if (os_log_type_enabled(getCameraCaptureLegacyLog_cameraCaptureLegacyLog_2, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 138412290;
        v7 = [(AVCaptureDevice *)v4 description];
        _os_log_impl(&dword_1A917C000, v5, OS_LOG_TYPE_DEFAULT, "*** AVCaptureDeviceInput warning: The device %@ was closed while still being used in a capture session. Make sure that the session is not running before closing any devices it is using. To remove a device from a session while the session is still running, remove the device input before closing the device.", &v6, 0xCu);
      }
    }
  }

  else
  {
    v8 = *MEMORY[0x1E69873D8];
    v9 = v4;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  }

  return AVLocalizedError();
}

- (NSArray)portsWithMediaType:(AVMediaType)mediaType sourceDeviceType:(AVCaptureDeviceType)sourceDeviceType sourceDevicePosition:(AVCaptureDevicePosition)sourceDevicePosition
{
  v19 = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = [(AVCaptureDeviceInput *)self multiCamPorts];
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    v13 = *MEMORY[0x1E69875A0];
    do
    {
      v14 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v21 + 1) + 8 * v14);
        if ((!mediaType || [objc_msgSend(*(*(&v21 + 1) + 8 * v14) "mediaType")]) && (!sourceDeviceType || objc_msgSend(objc_msgSend(v15, "sourceDeviceType"), "isEqual:", sourceDeviceType)))
        {
          v16 = [(NSString *)mediaType isEqual:v13];
          v17 = sourceDevicePosition;
          if (sourceDevicePosition == AVCaptureDevicePositionUnspecified)
          {
            v17 = AVCaptureDevicePositionUnspecified;
            if ((v16 & 1) == 0)
            {
              v17 = [v15 sourceDevicePosition];
            }
          }

          if ([v15 sourceDevicePosition] == v17)
          {
            [v19 addObject:v15];
          }
        }

        ++v14;
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v21 objects:v20 count:16];
    }

    while (v11);
  }

  return [MEMORY[0x1E695DEC8] arrayWithArray:v19];
}

- (void)setVideoMinFrameDurationOverride:(CMTime *)videoMinFrameDurationOverride
{
  internal = self->_internal;
  *&time1.value = *(&internal->simulatedAperture + 1);
  time1.epoch = *&internal->videoMinFrameDurationOverride.flags;
  v8 = *videoMinFrameDurationOverride;
  if (CMTimeCompare(&time1, &v8))
  {
    v6 = self->_internal;
    v7 = *&videoMinFrameDurationOverride->value;
    *&v6->videoMinFrameDurationOverride.flags = videoMinFrameDurationOverride->epoch;
    *(&v6->simulatedAperture + 1) = v7;
    [(AVCaptureDeviceInput *)self _bumpChangeSeedForFirstPortWithMediaType:*MEMORY[0x1E6987608]];
    if ([-[AVCaptureInput session](self "session")])
    {
      [(AVCaptureDeviceInput *)self _applyVideoMinFrameDurationOverride];
    }
  }
}

- (void)_resetVideoMinFrameDurationOverride
{
  [[(AVCaptureDeviceInput *)self device] lockForConfiguration:0];
  [[(AVCaptureDeviceInput *)self device] resetVideoMinFrameDurationOverrideForOwner:self];
  v3 = [(AVCaptureDeviceInput *)self device];

  [(AVCaptureDevice *)v3 unlockForConfiguration];
}

- (BOOL)_isSpatialVideoCaptureEnabledOnMFO:(id)a3
{
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [a3 connections];
  v4 = [obj countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v17 = 0;
    v18 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v8 = [v7 inputPorts];
        v9 = [v8 countByEnumeratingWithState:&v20 objects:v19 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v21;
          while (2)
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v21 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v20 + 1) + 8 * j);
              [v13 input];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 input] == self)
              {
                v17 = [a3 isSpatialVideoCaptureEnabled];
                goto LABEL_17;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v20 objects:v19 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

LABEL_17:
        ;
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v24 count:16];
    }

    while (v5);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

- (void)updateSupportedProperties
{
  [(AVCaptureDeviceInput *)self _updateLockedVideoFrameDurationSupported];
  [(AVCaptureDeviceInput *)self _updateExternalSyncSupported];
  v3.receiver = self;
  v3.super_class = AVCaptureDeviceInput;
  [(AVCaptureInput *)&v3 updateSupportedProperties];
}

- (void)_updateLockedVideoFrameDurationSupported
{
  v3 = [(AVCaptureDeviceInput *)self device];
  if (v3)
  {
    [(AVCaptureDevice *)v3 minSupportedLockedVideoFrameDuration];
    v4 = HIDWORD(v33);
  }

  else
  {
    v4 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
  }

  v5 = [[(AVCaptureDeviceInput *)self device] isVariableFrameRateVideoCaptureEnabled];
  v28 = 0u;
  v29 = 0u;
  v6 = (![(AVCaptureDeviceInput *)self isCinematicVideoCaptureEnabled]&& !v5) & v4;
  v30 = 0u;
  v31 = 0u;
  v7 = [-[AVCaptureInput session](self "session")];
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 &= ![(AVCaptureDeviceInput *)self _isSpatialVideoCaptureEnabledOnMFO:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v28 objects:v27 count:16];
    }

    while (v9);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = [-[AVCaptureInput session](self "session")];
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v23 + 1) + 8 * j);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && v18 != self)
        {
          if (v18)
          {
            [(AVCaptureDeviceInput *)v18 activeLockedVideoFrameDuration];
            if (v21 & 1) != 0 || ([(AVCaptureDeviceInput *)v18 activeExternalSyncVideoFrameDuration], (v20))
            {
              LOBYTE(v6) = 0;
            }
          }

          else
          {
            v21 = 0;
            v20 = 0;
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v23 objects:v22 count:16];
    }

    while (v15);
  }

  internal = self->_internal;
  if ((internal->activeExternalSyncVideoFrameDuration.value & 1) != 0 || [internal->activeExternalSyncVideoFrameDuration.epoch status] == 3)
  {
    LOBYTE(v6) = 0;
  }

  if (BYTE4(self->_internal->videoMinFrameDurationOverride.epoch) != (v6 & 1))
  {
    [(AVCaptureDeviceInput *)self willChangeValueForKey:@"lockedVideoFrameDurationSupported"];
    BYTE4(self->_internal->videoMinFrameDurationOverride.epoch) = v6 & 1;
    [(AVCaptureDeviceInput *)self didChangeValueForKey:@"lockedVideoFrameDurationSupported"];
  }
}

- (void)setActiveLockedVideoFrameDuration:(id *)a3
{
  if (![(AVCaptureDeviceInput *)self isLockedVideoFrameDurationSupported])
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
LABEL_12:
    v9 = [v7 exceptionWithName:v8 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v9);
    }

    NSLog(&cfstr_SuppressingExc.isa, v9);
    return;
  }

  v5 = [(AVCaptureDeviceInput *)self device];
  if (!v5)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_8;
  }

  [(AVCaptureDevice *)v5 minSupportedLockedVideoFrameDuration];
  if ((v16 & 0x100000000) == 0)
  {
LABEL_8:
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    goto LABEL_12;
  }

  v6 = [(AVCaptureDeviceInput *)self device];
  if (v6)
  {
    [(AVCaptureDevice *)v6 minSupportedLockedVideoFrameDuration];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  time2 = *a3;
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    goto LABEL_12;
  }

  if (self)
  {
    [(AVCaptureDeviceInput *)self activeExternalSyncVideoFrameDuration];
    if (v12)
    {
      v7 = MEMORY[0x1E695DF30];
      v8 = *MEMORY[0x1E695D940];
      goto LABEL_12;
    }
  }

  time1 = *&self->_internal->lockedVideoFrameDurationSupported;
  time2 = *a3;
  if (CMTimeCompare(&time1, &time2))
  {
    internal = self->_internal;
    v11 = *&a3->var0;
    *&internal->activeLockedVideoFrameDuration.timescale = a3->var3;
    *&internal->lockedVideoFrameDurationSupported = v11;
    if ((a3->var2 & 1) == 0)
    {
      [[(AVCaptureDeviceInput *)self device] resetDeviceClockAndInputPortsToHostClock];
    }

    [(AVCaptureDeviceInput *)self _resetCinematicVideoCaptureSupported];
    [(AVCaptureDeviceInput *)self _updateExternalSyncSupported];
    [(AVCaptureDeviceInput *)self _bumpChangeSeedForFirstPortWithMediaType:*MEMORY[0x1E6987608]];
    if ([-[AVCaptureInput session](self "session")])
    {
      [(AVCaptureDeviceInput *)self _applyActiveLockedVideoFrameDuration];
    }
  }
}

- (void)_resetActiveLockedVideoFrameDurationWithFormatChanged:(BOOL)a3
{
  v3 = a3;
  if ((self->_internal->activeLockedVideoFrameDuration.value & 0x100000000) != 0 && a3)
  {
    [(AVCaptureDeviceInput *)self willChangeValueForKey:@"activeLockedVideoFrameDuration"];
  }

  [[(AVCaptureDeviceInput *)self device] lockForConfiguration:0];
  [[(AVCaptureDeviceInput *)self device] resetActiveLockedVideoFrameDurationForOwner:self];
  [[(AVCaptureDeviceInput *)self device] unlockForConfiguration];
  internal = self->_internal;
  if ((internal->activeLockedVideoFrameDuration.value & 0x100000000) != 0 && v3)
  {
    v6 = MEMORY[0x1E6960C70];
    *&internal->lockedVideoFrameDurationSupported = *MEMORY[0x1E6960C70];
    *&internal->activeLockedVideoFrameDuration.timescale = *(v6 + 16);
    [(AVCaptureDeviceInput *)self didChangeValueForKey:@"activeLockedVideoFrameDuration"];
    [(AVCaptureDeviceInput *)self _resetCinematicVideoCaptureSupported];

    [(AVCaptureDeviceInput *)self _updateExternalSyncSupported];
  }
}

- (void)_updateExternalSyncSupported
{
  v3 = [(AVCaptureDeviceInput *)self device];
  if (v3)
  {
    [(AVCaptureDevice *)v3 minSupportedExternalSyncFrameDuration];
    v4 = HIDWORD(v34);
  }

  else
  {
    v4 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
  }

  v5 = [[(AVCaptureDeviceInput *)self device] isVariableFrameRateVideoCaptureEnabled];
  v29 = 0u;
  v30 = 0u;
  v6 = (![(AVCaptureDeviceInput *)self isCinematicVideoCaptureEnabled]&& !v5) & v4;
  v31 = 0u;
  v32 = 0u;
  v7 = [-[AVCaptureInput session](self "session")];
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 &= ![(AVCaptureDeviceInput *)self _isSpatialVideoCaptureEnabledOnMFO:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v29 objects:v28 count:16];
    }

    while (v9);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = [-[AVCaptureInput session](self "session")];
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v23 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * j);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && v18 != self)
        {
          if (v18)
          {
            [(AVCaptureDeviceInput *)v18 activeLockedVideoFrameDuration];
            if (v22 & 1) != 0 || ([(AVCaptureDeviceInput *)v18 activeExternalSyncVideoFrameDuration], (v21))
            {
              LOBYTE(v6) = 0;
            }
          }

          else
          {
            v22 = 0;
            v21 = 0;
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v23 count:16];
    }

    while (v15);
  }

  internal = self->_internal;
  v20 = ((internal->activeLockedVideoFrameDuration.value & 0x100000000) == 0) & v6;
  if (LOBYTE(internal->activeLockedVideoFrameDuration.epoch) != v20)
  {
    [(AVCaptureDeviceInput *)self willChangeValueForKey:@"externalSyncSupported"];
    LOBYTE(self->_internal->activeLockedVideoFrameDuration.epoch) = v20;
    [(AVCaptureDeviceInput *)self didChangeValueForKey:@"externalSyncSupported"];
  }
}

- (void)followExternalSyncDevice:(id)a3 videoFrameDuration:(id *)a4 delegate:(id)a5
{
  v9 = [(AVCaptureDeviceInput *)self device];
  if (!v9)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_6;
  }

  [(AVCaptureDevice *)v9 minSupportedExternalSyncFrameDuration];
  if ((v20 & 0x100000000) == 0)
  {
LABEL_6:
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
LABEL_10:
    v13 = [v11 exceptionWithName:v12 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v13);
    }

    NSLog(&cfstr_SuppressingExc.isa, v13);
    return;
  }

  v10 = [(AVCaptureDeviceInput *)self device];
  if (v10)
  {
    [(AVCaptureDevice *)v10 minSupportedExternalSyncFrameDuration];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  time2 = *a4;
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    goto LABEL_10;
  }

  if (self)
  {
    [(AVCaptureDeviceInput *)self activeLockedVideoFrameDuration];
    if (v16)
    {
      v11 = MEMORY[0x1E695DF30];
      v12 = *MEMORY[0x1E695D940];
      goto LABEL_10;
    }
  }

  if ([a3 status] != 1)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    goto LABEL_10;
  }

  if (![(AVCaptureDeviceInput *)self isExternalSyncSupported])
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    goto LABEL_10;
  }

  time1 = *(&self->_internal->activeLockedVideoFrameDuration.epoch + 4);
  time2 = *a4;
  if (CMTimeCompare(&time1, &time2))
  {
    [(AVCaptureDevice *)self->_internal->device setActiveSyncDevice:a3];
    self->_internal->activeExternalSyncVideoFrameDuration.epoch = a3;
    [self->_internal->activeExternalSyncVideoFrameDuration.epoch _setDelegate:a5];
    internal = self->_internal;
    v15 = *&a4->var0;
    *(&internal->activeExternalSyncVideoFrameDuration.value + 4) = a4->var3;
    *(&internal->activeLockedVideoFrameDuration.epoch + 4) = v15;
    [a3 handleFollowForDevice:self withSessionRunning:{objc_msgSend(-[AVCaptureInput session](self, "session"), "isRunning")}];
    [(AVCaptureDeviceInput *)self _resetCinematicVideoCaptureSupported];
    [(AVCaptureDeviceInput *)self _updateLockedVideoFrameDurationSupported];
    [(AVCaptureDeviceInput *)self _bumpChangeSeedForFirstPortWithMediaType:*MEMORY[0x1E6987608]];
  }
}

- (void)unfollowExternalSyncDevice
{
  if (self->_internal->activeExternalSyncVideoFrameDuration.value)
  {
    [[(AVCaptureDeviceInput *)self device] resetDeviceClockAndInputPortsToHostClock];
    internal = self->_internal;
    v4 = MEMORY[0x1E6960C70];
    *(&internal->activeLockedVideoFrameDuration.epoch + 4) = *MEMORY[0x1E6960C70];
    *(&internal->activeExternalSyncVideoFrameDuration.value + 4) = *(v4 + 16);
    [self->_internal->activeExternalSyncVideoFrameDuration.epoch handleUnfollow];

    [(AVCaptureDeviceInput *)self willChangeValueForKey:@"externalSyncDevice"];
    self->_internal->activeExternalSyncVideoFrameDuration.epoch = 0;
    [(AVCaptureDeviceInput *)self didChangeValueForKey:@"externalSyncDevice"];
    [(AVCaptureDeviceInput *)self _resetCinematicVideoCaptureSupported];
    [(AVCaptureDeviceInput *)self _bumpChangeSeedForFirstPortWithMediaType:*MEMORY[0x1E6987608]];

    [(AVCaptureDeviceInput *)self _updateLockedVideoFrameDurationSupported];
  }
}

- (void)_setGenlockSignalCompensationDelay:(id *)a3
{
  v5 = [(AVCaptureDeviceInput *)self device];
  epoch = self->_internal->activeExternalSyncVideoFrameDuration.epoch;
  v7 = *a3;
  [(AVCaptureDevice *)v5 setActiveExternalSyncSignalCompensationDelay:&v7 withExternalSyncDevice:epoch];
}

- (void)_applyActiveExternalSyncVideoFrameDuration
{
  [[(AVCaptureDeviceInput *)self device] lockForConfiguration:0];
  v3 = [(AVCaptureDeviceInput *)self device];
  internal = self->_internal;
  epoch = internal->activeExternalSyncVideoFrameDuration.epoch;
  v6 = *(&internal->activeLockedVideoFrameDuration.epoch + 4);
  v7 = *(&internal->activeExternalSyncVideoFrameDuration.value + 4);
  [(AVCaptureDevice *)v3 setActiveExternalSyncVideoFrameDuration:&v6 withExternalSyncDevice:epoch forOwner:self];
  [[(AVCaptureDeviceInput *)self device] unlockForConfiguration];
}

- (void)setMaxGainOverride:(float)a3
{
  if ([(AVCaptureDeviceInput *)self isMaxGainOverrideSupported])
  {
    if (a3 == 0.0 || (a3 >= 1.0 ? (v5 = a3 > 256.0) : (v5 = 1), !v5))
    {
      internal = self->_internal;
      if (*&internal->activeVideoExternalSyncDevice != a3)
      {
        *&internal->activeVideoExternalSyncDevice = a3;
        v10 = *MEMORY[0x1E6987608];

        [(AVCaptureDeviceInput *)self _bumpChangeSeedForFirstPortWithMediaType:v10];
      }

      return;
    }

    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
  }

  v8 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v8);
  }

  NSLog(&cfstr_SuppressingExc.isa, v8);
}

- (BOOL)_authorizedToUseDeviceAndRequestIfNecessary:(id)a3
{
  v4 = *MEMORY[0x1E69875A0];
  if ([a3 hasMediaType:*MEMORY[0x1E69875A0]])
  {
    [MEMORY[0x1E6958460] sharedInstance];
  }

  else
  {
    v4 = *MEMORY[0x1E6987608];
    if (([a3 hasMediaType:*MEMORY[0x1E6987608]] & 1) == 0)
    {
      v4 = @"pcld";
      if (([a3 hasMediaType:@"pcld"] & 1) == 0)
      {
        v4 = *MEMORY[0x1E69875D8];
        v5 = [a3 hasMediaType:*MEMORY[0x1E69875D8]];
        if (!v5)
        {
          return v5;
        }
      }
    }
  }

  v6 = [AVCaptureDevice authorizationStatusForMediaType:v4];
  if (v6 != AVAuthorizationStatusAuthorized)
  {
    if (v6)
    {
      LOBYTE(v5) = 0;
      return v5;
    }

    [AVCaptureDevice requestAccessForMediaType:v4 completionHandler:&__block_literal_global_152];
  }

  LOBYTE(v5) = 1;
  return v5;
}

- (void)_handleNotification:(id)a3 payload:(id)a4
{
  v7 = [objc_msgSend(-[AVCaptureDeviceInput ports](self "ports")];
  if ([objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E698FCD8]), "isEqual:", v7}] && objc_msgSend(a3, "isEqualToString:", *MEMORY[0x1E698FE50]))
  {
    v8 = [a4 objectForKeyedSubscript:*MEMORY[0x1E698FC48]];

    [(AVCaptureDeviceInput *)self _sourceFormatDidChange:v8];
  }
}

- (void)_sourceFormatDidChange:(opaqueCMFormatDescription *)a3
{
  if (a3)
  {
    MediaType = CMFormatDescriptionGetMediaType(a3);
  }

  else
  {
    MediaType = 0;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [(AVCaptureDeviceInput *)self multiCamPorts];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    v10 = *MEMORY[0x1E6987608];
    v11 = *MEMORY[0x1E69875A0];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [objc_msgSend(v13 "mediaType")];
        if (a3)
        {
          if (MediaType == 1986618469)
          {
            v15 = v14;
          }

          else
          {
            v15 = 0;
          }

          if ((v15 & 1) != 0 || ([objc_msgSend(v13 "mediaType")] ? (v16 = MediaType == 1936684398) : (v16 = 0), v16))
          {
            v17 = v13;
            v18 = a3;
LABEL_23:
            [v17 _setFormatDescription:v18];
            continue;
          }
        }

        else if ((v14 & 1) != 0 || [objc_msgSend(v13 "mediaType")])
        {
          v17 = v13;
          v18 = 0;
          goto LABEL_23;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v19 count:16];
    }

    while (v8);
  }
}

- (void)_bumpChangeSeedForFirstPortWithMediaType:(id)a3
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(AVCaptureDeviceInput *)self ports];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([objc_msgSend(v9 "mediaType")])
        {
          [v9 bumpChangeSeed];
          return;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }
}

- (void)setBuiltInMicrophoneStereoAudioCaptureEnabled:(BOOL)a3
{
  v3 = a3;
  if (a3 && ![(AVCaptureDeviceInput *)self isBuiltInMicrophoneStereoAudioCaptureSupported])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }

  else
  {

    [(AVCaptureDeviceInput *)self setAudioCaptureMode:v3];
  }
}

- (void)setAudioCaptureMode:(int64_t)a3
{
  if (a3 >= 8)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
  }

  else
  {
    if ([(AVCaptureDeviceInput *)self isAudioCaptureModeSupported:?])
    {
      internal = self->_internal;
      if (internal->audioCaptureMode != a3)
      {
        internal->audioCaptureMode = a3;
        v6 = *MEMORY[0x1E69875A0];

        [(AVCaptureDeviceInput *)self _bumpChangeSeedForFirstPortWithMediaType:v6];
      }

      return;
    }

    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
  }

  v9 = [v7 exceptionWithName:v8 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v9);
  }

  NSLog(&cfstr_SuppressingExc.isa, v9);
}

- (void)setMultichannelAudioMode:(int64_t)a3
{
  if (a3 >= 3)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
  }

  else
  {
    if ([(AVCaptureDeviceInput *)self isMultichannelAudioModeSupported:?])
    {
      internal = self->_internal;
      if (internal->multichannelAudioMode != a3)
      {
        internal->multichannelAudioMode = a3;
        v6 = [(AVCaptureDeviceInput *)self _audioCaptureModeForMultichannelAudioMode:self->_internal->multichannelAudioMode];

        [(AVCaptureDeviceInput *)self setAudioCaptureMode:v6];
      }

      return;
    }

    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
  }

  v9 = [v7 exceptionWithName:v8 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v9);
  }

  NSLog(&cfstr_SuppressingExc.isa, v9);
}

- (int64_t)_audioCaptureModeForMultichannelAudioMode:(int64_t)a3
{
  if (a3 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a3 == 2);
  }
}

- (void)setWindNoiseRemovalEnabled:(BOOL)a3
{
  if ([(AVCaptureDeviceInput *)self isWindNoiseRemovalSupported])
  {
    self->_internal->windNoiseRemovalEnabled = a3;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }
}

- (id)remoteIOOutputFormat
{
  v2 = self->_internal->deviceOpenCallbackInvoker;

  return v2;
}

- (void)setRemoteIOOutputFormat:(id)a3
{
  if (!a3)
  {
LABEL_5:
    if (([(AVCallbackCancellation *)self->_internal->deviceOpenCallbackInvoker isEqual:a3]& 1) == 0)
    {

      self->_internal->deviceOpenCallbackInvoker = a3;
      v6 = *MEMORY[0x1E69875A0];

      [(AVCaptureDeviceInput *)self _bumpChangeSeedForFirstPortWithMediaType:v6];
    }

    return;
  }

  if (AVCaptureClientHasEntitlement(AVCaptureEntitlementAudioFormatOverride))
  {
    if (*([a3 streamDescription] + 8) == 1819304813)
    {
      v5 = [objc_msgSend(a3 "channelLayout")];
      if (v5 == [a3 channelCount])
      {
        goto LABEL_5;
      }

      v7 = MEMORY[0x1E695DF30];
      v8 = *MEMORY[0x1E695D940];
    }

    else
    {
      v7 = MEMORY[0x1E695DF30];
      v8 = *MEMORY[0x1E695D940];
    }
  }

  else
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D920];
  }

  v9 = [v7 exceptionWithName:v8 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v9);
  }

  NSLog(&cfstr_SuppressingExc.isa, v9);
}

- (void)setCinematicVideoCaptureEnabled:(BOOL)a3
{
  v3 = a3;
  if (a3 && ![(AVCaptureDeviceInput *)self isCinematicVideoCaptureSupported])
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v7);
    }

    NSLog(&cfstr_SuppressingExc.isa, v7);
  }

  else
  {
    internal = self->_internal;
    if (internal->cinematicVideoCaptureEnabled != v3)
    {
      internal->cinematicVideoCaptureEnabled = v3;
      [(AVCaptureDeviceInput *)self updateSupportedProperties];
      v6 = *MEMORY[0x1E6987608];

      [(AVCaptureDeviceInput *)self _bumpChangeSeedForFirstPortWithMediaType:v6];
    }
  }
}

- (void)setVisionDataDeliveryEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(AVCaptureDeviceFormat *)[(AVCaptureDevice *)self->_internal->device activeFormat] isVisionDataDeliverySupported])
  {
    internal = self->_internal;
    if (internal->visionDataDeliveryEnabled == v3)
    {
      return;
    }

    internal->visionDataDeliveryEnabled = v3;
    if (!self->_internal->ports)
    {
      [(AVCaptureDeviceInput *)self ports];
    }

    v6 = self->_internal;
    ports = v6->ports;
    if (v3)
    {
      if ([(NSArray *)[(AVCaptureDevice *)v6->device constituentDevices] count]< 2)
      {
        v7 = [(AVCaptureDevice *)self->_internal->device deviceType];
      }

      else
      {
        v7 = @"AVCaptureDeviceTypeBuiltInWideAngleCamera";
      }

      v9 = [(NSArray *)ports arrayByAddingObject:[AVCaptureInputPort portWithInput:self mediaType:@"visn" formatDescription:0 enabled:1 sourceDeviceType:v7 sourceDevicePosition:[(AVCaptureDevice *)self->_internal->device position]]];
    }

    else
    {
      if ([-[NSArray lastObject](v6->ports "lastObject")] != @"visn")
      {
        return;
      }

      v9 = [(NSArray *)ports subarrayWithRange:0, [(NSArray *)ports count]- 1];
    }

    self->_internal->ports = v9;
  }

  else
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v8);
    }

    NSLog(&cfstr_SuppressingExc.isa, v8);
  }
}

- (void)setCameraCalibrationDataDeliveryEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(AVCaptureDeviceFormat *)[(AVCaptureDevice *)self->_internal->device activeFormat] isCameraCalibrationDataDeliverySupported])
  {
    internal = self->_internal;
    if (internal->cameraCalibrationDataDeliveryEnabled != v3)
    {
      internal->cameraCalibrationDataDeliveryEnabled = v3;
      multiCamPorts = self->_internal->multiCamPorts;
      if (!multiCamPorts)
      {
        [(AVCaptureDeviceInput *)self multiCamPorts];
        multiCamPorts = self->_internal->multiCamPorts;
      }

      v7 = [MEMORY[0x1E695DF70] arrayWithArray:multiCamPorts];
      v8 = v7;
      v15 = multiCamPorts;
      if (v3)
      {
        v9 = [MEMORY[0x1E695DF70] arrayWithObject:{-[AVCaptureDeviceInput device](self, "device")}];
        if ([(NSArray *)[[(AVCaptureDeviceInput *)self device] constituentDevices] count]>= 2)
        {
          [v9 addObjectsFromArray:{-[AVCaptureDevice constituentDevices](-[AVCaptureDeviceInput device](self, "device"), "constituentDevices")}];
        }

        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v19 objects:v18 count:16];
        if (v10)
        {
          v11 = v10;
          v16 = *v20;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v20 != v16)
              {
                objc_enumerationMutation(v9);
              }

              v13 = *(*(&v19 + 1) + 8 * i);
              v17[0] = MEMORY[0x1E69E9820];
              v17[1] = 3221225472;
              v17[2] = __64__AVCaptureDeviceInput_setCameraCalibrationDataDeliveryEnabled___block_invoke;
              v17[3] = &unk_1E786F2F0;
              v17[4] = v13;
              [v8 insertObject:+[AVCaptureInputPort portWithInput:mediaType:formatDescription:enabled:sourceDeviceType:sourceDevicePosition:](AVCaptureInputPort atIndex:{"portWithInput:mediaType:formatDescription:enabled:sourceDeviceType:sourceDevicePosition:", self, @"cacd", 0, 1, objc_msgSend(v13, "deviceType"), objc_msgSend(v13, "position")), objc_msgSend(objc_msgSend(v8, "indexesOfObjectsPassingTest:", v17), "lastIndex") + 1}];
            }

            v11 = [v9 countByEnumeratingWithState:&v19 objects:v18 count:16];
          }

          while (v11);
        }
      }

      else
      {
        [v7 removeObjectsAtIndexes:{objc_msgSend(v7, "indexesOfObjectsPassingTest:", &__block_literal_global_191)}];
      }

      self->_internal->multiCamPorts = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v8];
    }
  }

  else
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v14);
    }

    NSLog(&cfstr_SuppressingExc.isa, v14);
  }
}

uint64_t __64__AVCaptureDeviceInput_setCameraCalibrationDataDeliveryEnabled___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sourceDeviceType];
  v4 = [*(a1 + 32) deviceType];

  return [v3 isEqualToString:v4];
}

uint64_t __64__AVCaptureDeviceInput_setCameraCalibrationDataDeliveryEnabled___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 mediaType];

  return [v2 isEqualToString:@"cacd"];
}

- (void)setSimulatedAperture:(float)a3
{
  [(AVCaptureDeviceFormat *)[(AVCaptureDevice *)self->_internal->device activeFormat] minSimulatedAperture];
  if (v5 <= 0.0)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    goto LABEL_6;
  }

  [(AVCaptureDeviceFormat *)[(AVCaptureDevice *)self->_internal->device activeFormat] minSimulatedAperture];
  if (v6 > a3 || ([(AVCaptureDeviceFormat *)[(AVCaptureDevice *)self->_internal->device activeFormat] maxSimulatedAperture], v7 < a3))
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695DA20];
LABEL_6:
    v10 = [v8 exceptionWithName:v9 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v10);
    }

    NSLog(&cfstr_SuppressingExc.isa, v10);
    return;
  }

  if (self->_internal->cinematicVideoCaptureEnabled)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = [-[AVCaptureInput session](self "session")];
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v20 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      v15 = *MEMORY[0x1E6987608];
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          if ([v17 mediaType] == v15)
          {
            if ([objc_msgSend(objc_msgSend(v17 "sourceDevice")])
            {
              [v17 output];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if ([objc_msgSend(v17 "output")])
                {
                  v8 = MEMORY[0x1E695DF30];
                  v9 = *MEMORY[0x1E695D940];
                  goto LABEL_6;
                }
              }
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v20 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }
  }

  if (self->_internal->simulatedAperture != a3)
  {
    [(AVCaptureDeviceInput *)self willChangeValueForKey:@"simulatedAperture"];
    self->_internal->simulatedAperture = a3;
    [(AVCaptureDeviceInput *)self didChangeValueForKey:@"simulatedAperture"];
    v18 = [(AVCaptureDeviceInput *)self device];
    *&v19 = self->_internal->simulatedAperture;
    [(AVCaptureDevice *)v18 _setSimulatedAperture:v19];
  }
}

- (void)setPortraitLightingEffectStrength:(float)a3
{
  [(AVCaptureDeviceFormat *)[(AVCaptureDevice *)self->_internal->device activeFormat] minPortraitLightingEffectStrength];
  [(AVCaptureDeviceFormat *)[(AVCaptureDevice *)self->_internal->device activeFormat] minPortraitLightingEffectStrength];
  if (v5 <= a3 && ([(AVCaptureDeviceFormat *)[(AVCaptureDevice *)self->_internal->device activeFormat] maxPortraitLightingEffectStrength], v6 >= a3))
  {
    if (*(&self->_internal->sensitiveContentAnalyzerXPCObject + 1) != a3)
    {
      [(AVCaptureDeviceInput *)self willChangeValueForKey:@"portraitLightingEffectStrength"];
      *(&self->_internal->sensitiveContentAnalyzerXPCObject + 1) = a3;

      [(AVCaptureDeviceInput *)self didChangeValueForKey:@"portraitLightingEffectStrength"];
    }
  }

  else
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v7);
    }

    NSLog(&cfstr_SuppressingExc.isa, v7);
  }
}

- (void)setCenterStageAllowed:(BOOL)a3
{
  internal = self->_internal;
  if (BYTE4(internal->activeVideoExternalSyncDevice) != a3)
  {
    BYTE4(internal->activeVideoExternalSyncDevice) = a3;
    [(AVCaptureDeviceInput *)self _bumpChangeSeedForFirstPortWithMediaType:*MEMORY[0x1E6987608]];
  }
}

- (void)setBackgroundBlurAllowed:(BOOL)a3
{
  internal = self->_internal;
  if (BYTE5(internal->activeVideoExternalSyncDevice) != a3)
  {
    BYTE5(internal->activeVideoExternalSyncDevice) = a3;
    [(AVCaptureDeviceInput *)self _bumpChangeSeedForFirstPortWithMediaType:*MEMORY[0x1E6987608]];
  }
}

- (void)setStudioLightingAllowed:(BOOL)a3
{
  internal = self->_internal;
  if (BYTE6(internal->activeVideoExternalSyncDevice) != a3)
  {
    BYTE6(internal->activeVideoExternalSyncDevice) = a3;
    [(AVCaptureDeviceInput *)self _bumpChangeSeedForFirstPortWithMediaType:*MEMORY[0x1E6987608]];
  }
}

- (void)setReactionEffectsAllowed:(BOOL)a3
{
  internal = self->_internal;
  if (HIBYTE(internal->activeVideoExternalSyncDevice) != a3)
  {
    HIBYTE(internal->activeVideoExternalSyncDevice) = a3;
    [(AVCaptureDeviceInput *)self _bumpChangeSeedForFirstPortWithMediaType:*MEMORY[0x1E6987608]];
  }
}

- (void)setBackgroundReplacementAllowed:(BOOL)a3
{
  internal = self->_internal;
  if (LOBYTE(internal->maxGainOverride) != a3)
  {
    LOBYTE(internal->maxGainOverride) = a3;
    [(AVCaptureDeviceInput *)self _bumpChangeSeedForFirstPortWithMediaType:*MEMORY[0x1E6987608]];
  }
}

- (void)setSensitiveContentAnalyzerXPCObject:(id)a3
{
  v3 = *&self->_internal->backgroundReplacementAllowed;
  if (v3 != a3)
  {

    *&self->_internal->backgroundReplacementAllowed = a3;
    v6 = *MEMORY[0x1E6987608];

    [(AVCaptureDeviceInput *)self _bumpChangeSeedForFirstPortWithMediaType:v6];
  }
}

- (void)setSensitiveContentAnalyzerEnabled:(BOOL)a3
{
  internal = self->_internal;
  if (LOBYTE(internal->sensitiveContentAnalyzerXPCObject) != a3)
  {
    LOBYTE(internal->sensitiveContentAnalyzerXPCObject) = a3;
    [(AVCaptureDeviceInput *)self _bumpChangeSeedForFirstPortWithMediaType:*MEMORY[0x1E6987608]];
  }
}

- (BOOL)isMultichannelAudioModeSupported:(int64_t)a3
{
  if (a3 > 2 || -[AVCaptureInput session](self, "session") && ([-[AVCaptureInput session](self "session")] & 1) != 0)
  {
    return 0;
  }

  v5 = [(AVCaptureDeviceInput *)self _audioCaptureModeForMultichannelAudioMode:a3];
  device = self->_internal->device;

  return [(AVCaptureDevice *)device isAudioCaptureModeSupported:v5];
}

@end