@interface AVCaptureMultiCamSession
- (AVCaptureMultiCamSession)init;
- (BOOL)_addConnection:(id)connection exceptionReason:(id *)reason;
- (BOOL)_canAddConnection:(id)connection failureReason:(id *)reason;
- (BOOL)_canAddInput:(id)input failureReason:(id *)reason;
- (BOOL)_canAddOutput:(id)output failureReason:(id *)reason;
- (BOOL)_requireMultiCamSupportedFormatsForVideoDevices;
- (float)_computeISPHardwareCost;
- (id)_physicalDevicePowerInfoSet;
- (void)_removeConnection:(id)connection;
- (void)_updateCosts;
- (void)_updateHardwareCost;
- (void)_updateSystemPressureCost;
- (void)dealloc;
- (void)handleVideoInputDevice:(id)device activeFormatChanged:(id)changed;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)startRunning;
@end

@implementation AVCaptureMultiCamSession

- (AVCaptureMultiCamSession)init
{
  v5.receiver = self;
  v5.super_class = AVCaptureMultiCamSession;
  v2 = [(AVCaptureSession *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AVCaptureSession *)v2 setSessionPreset:@"AVCaptureSessionPresetInputPriority"];
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AVCaptureMultiCamSession;
  [(AVCaptureSession *)&v2 dealloc];
}

- (void)startRunning
{
  _requireMultiCamSupportedFormatsForVideoDevices = [(AVCaptureMultiCamSession *)self _requireMultiCamSupportedFormatsForVideoDevices];
  inputs = [(AVCaptureSession *)self inputs];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(NSArray *)inputs countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(inputs);
        }

        videoDevice = [*(*(&v15 + 1) + 8 * v8) videoDevice];
        if (videoDevice != 0 && _requireMultiCamSupportedFormatsForVideoDevices)
        {
          v10 = videoDevice;
          if (([objc_msgSend(videoDevice "activeFormat")] & 1) == 0)
          {
            v12 = *MEMORY[0x1E69873D8];
            v13 = v10;
            [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
            [(AVCaptureSession *)self _postRuntimeError:AVLocalizedError()];
            return;
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)inputs countByEnumeratingWithState:&v15 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11.receiver = self;
  v11.super_class = AVCaptureMultiCamSession;
  [(AVCaptureSession *)&v11 startRunning];
}

- (BOOL)_canAddInput:(id)input failureReason:(id *)reason
{
  v7 = objc_autoreleasePoolPush();
  if (!input)
  {
    v21 = @"Can't add a nil AVCaptureInput";
    goto LABEL_44;
  }

  if ([input session] == self)
  {
    goto LABEL_48;
  }

  if ([input session])
  {
    v21 = @"An AVCaptureInput instance may not be added to more than one session";
    goto LABEL_44;
  }

  if (([input isMemberOfClass:objc_opt_class()] & 1) == 0 && !objc_msgSend(input, "isMemberOfClass:", objc_opt_class()))
  {
    if ([AVCaptureMultiCamSession _canAddInput:input failureReason:&v51])
    {
      v27 = 0;
      v21 = 0;
      goto LABEL_47;
    }

    v21 = v51;
    goto LABEL_44;
  }

  inputs = [(AVCaptureSession *)self inputs];
  if ([(NSArray *)inputs containsObject:input])
  {
LABEL_48:
    v21 = @"An AVCaptureInput instance may not be added more than once to a session";
    goto LABEL_44;
  }

  reasonCopy = reason;
  context = v7;
  if ([input isMemberOfClass:objc_opt_class()])
  {
    device = [input device];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    inputs2 = [(AVCaptureSession *)self inputs];
    v11 = [(NSArray *)inputs2 countByEnumeratingWithState:&v47 objects:v46 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v48;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v48 != v13)
          {
            objc_enumerationMutation(inputs2);
          }

          v15 = *(*(&v47 + 1) + 8 * i);
          if ([v15 isMemberOfClass:objc_opt_class()] && objc_msgSend(v15, "device") == device)
          {
            reason = reasonCopy;
            v21 = @"An AVCaptureDevice may only be associated with a session through a single AVCaptureDeviceInput";
            goto LABEL_44;
          }
        }

        v12 = [(NSArray *)inputs2 countByEnumeratingWithState:&v47 objects:v46 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }
  }

  videoDevice = [input videoDevice];
  if (!videoDevice)
  {
    goto LABEL_40;
  }

  v17 = [MEMORY[0x1E695DFA8] setWithObject:videoDevice];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v18 = [(NSArray *)inputs countByEnumeratingWithState:&v42 objects:v41 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v43;
    v21 = @"Only one device can use activeExternalSyncVideoFrameDuration or activeLockedVideoFrameDuration";
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v43 != v20)
        {
          objc_enumerationMutation(inputs);
        }

        v23 = *(*(&v42 + 1) + 8 * j);
        videoDevice2 = [v23 videoDevice];
        if (videoDevice2)
        {
          [v17 addObject:videoDevice2];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [input activeExternalSyncVideoFrameDuration];
            if (v40 & 1) != 0 || ([input activeLockedVideoFrameDuration], (v39))
            {
              if (v23)
              {
                [v23 activeExternalSyncVideoFrameDuration];
                if ((v37 & 0x100000000) != 0)
                {
                  goto LABEL_39;
                }

                [v23 activeLockedVideoFrameDuration];
                if ((v34 & 0x100000000) != 0)
                {
                  goto LABEL_39;
                }
              }

              else
              {
                v36 = 0;
                v37 = 0;
                v38 = 0;
                v34 = 0;
                v35 = 0;
                v33[5] = 0;
              }
            }
          }
        }
      }

      v19 = [(NSArray *)inputs countByEnumeratingWithState:&v42 objects:v41 count:16];
    }

    while (v19);
  }

  if ([v17 count] >= 2 && (v25 = +[AVCaptureDeviceDiscoverySession allVideoDeviceTypes](AVCaptureDeviceDiscoverySession, "allVideoDeviceTypes"), v26 = -[AVCaptureDeviceDiscoverySession supportedMultiCamDeviceSets](+[AVCaptureDeviceDiscoverySession discoverySessionWithDeviceTypes:mediaType:position:](AVCaptureDeviceDiscoverySession, "discoverySessionWithDeviceTypes:mediaType:position:", v25, *MEMORY[0x1E6987608], 0), "supportedMultiCamDeviceSets"), v33[0] = MEMORY[0x1E69E9820], v33[1] = 3221225472, v33[2] = __55__AVCaptureMultiCamSession__canAddInput_failureReason___block_invoke, v33[3] = &unk_1E786FF58, v33[4] = v17, -[NSArray indexOfObjectPassingTest:](v26, "indexOfObjectPassingTest:", v33) == 0x7FFFFFFFFFFFFFFFLL))
  {
    v21 = @"These devices may not be used simultaneously. Use [AVCaptureDeviceDiscoverySession supportedMultiCamDeviceSets]";
LABEL_39:
    reason = reasonCopy;
    v7 = context;
  }

  else
  {
LABEL_40:
    if (![input isMemberOfClass:objc_opt_class()])
    {
      v21 = 0;
      v27 = 1;
      v7 = context;
      goto LABEL_47;
    }

    v7 = context;
    if (![input multichannelAudioMode])
    {
      v21 = 0;
      v27 = 1;
      goto LABEL_47;
    }

    v21 = @"The input's multichannel audio mode is not supported by AVCaptureMultiCamSession";
    reason = reasonCopy;
  }

LABEL_44:
  v28 = v21;
  v27 = 0;
  if (reason)
  {
    *reason = v21;
  }

LABEL_47:
  objc_autoreleasePoolPop(v7);
  v29 = v21;
  return v27;
}

uint64_t __55__AVCaptureMultiCamSession__canAddInput_failureReason___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isEqualToSet:*(a1 + 32)];
  if (result)
  {
    *a4 = 1;
  }

  return result;
}

- (BOOL)_canAddConnection:(id)connection failureReason:(id *)reason
{
  v57.receiver = self;
  v57.super_class = AVCaptureMultiCamSession;
  v7 = [AVCaptureSession _canAddConnection:sel__canAddConnection_failureReason_ failureReason:?];
  v8 = objc_autoreleasePoolPush();
  v9 = v8;
  if (v7)
  {
    reasonCopy = reason;
    v38 = v8;
    v10 = +[AVCaptureOutput allOutputSubclasses];
    v40 = [MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(connection, "inputPorts")}];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = [(AVCaptureSession *)self connections];
    v11 = [(NSArray *)obj countByEnumeratingWithState:&v53 objects:v52 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v54;
      v39 = *MEMORY[0x1E69875A0];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v54 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v53 + 1) + 8 * i);
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v16 = [v10 countByEnumeratingWithState:&v48 objects:v47 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v49;
            while (2)
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v49 != v18)
                {
                  objc_enumerationMutation(v10);
                }

                [connection output];
                if (objc_opt_isKindOfClass())
                {
                  [v15 output];
                  if (objc_opt_isKindOfClass())
                  {
                    v20 = 1;
                    goto LABEL_18;
                  }
                }
              }

              v17 = [v10 countByEnumeratingWithState:&v48 objects:v47 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v20 = 0;
LABEL_18:
          if ([connection videoPreviewLayer])
          {
            v21 = [v15 videoPreviewLayer] != 0;
          }

          else
          {
            v21 = 0;
          }

          if ((v20 | v21))
          {
            if ([v40 intersectsSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", objc_msgSend(v15, "inputPorts"))}])
            {
              if ([connection mediaType] != v39 || (v22 = objc_msgSend(connection, "output"), v22 == objc_msgSend(v15, "output")))
              {
                if (!AVGestaltGetBoolAnswer(@"AVGQCaptureMultipleVideoDataOutputsSupported") || ([connection output], objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  [connection output];
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v9 = v38;
                    v30 = @"<%@: %p> references an input port already in use for a video preview layer or output of the same type";
                    goto LABEL_42;
                  }
                }
              }
            }
          }
        }

        v12 = [(NSArray *)obj countByEnumeratingWithState:&v53 objects:v52 count:16];
      }

      while (v12);
    }

    [connection output];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      inputPorts = [connection inputPorts];
      v24 = [inputPorts countByEnumeratingWithState:&v43 objects:v42 count:16];
      v9 = v38;
      if (v24)
      {
        v25 = v24;
        v26 = *v44;
        v30 = @"<%@: %p> references an input port from a constituent device to an AVCapturePhotoOutput instance";
LABEL_34:
        v27 = 0;
        while (1)
        {
          if (*v44 != v26)
          {
            objc_enumerationMutation(inputPorts);
          }

          if ([*(*(&v43 + 1) + 8 * v27) sourcesFromConstituentDevice])
          {
            break;
          }

          if (v25 == ++v27)
          {
            v25 = [inputPorts countByEnumeratingWithState:&v43 objects:v42 count:16];
            v28 = 0;
            v29 = 1;
            if (v25)
            {
              goto LABEL_34;
            }

            goto LABEL_48;
          }
        }

LABEL_42:
        v31 = MEMORY[0x1E696AEC0];
        v32 = objc_opt_class();
        connection = [v31 stringWithFormat:v30, NSStringFromClass(v32), connection];
        v28 = connection;
        if (connection && (v34 = connection, reasonCopy))
        {
          v29 = 0;
          *reasonCopy = v28;
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {
        v28 = 0;
        v29 = 1;
      }
    }

    else
    {
      v28 = 0;
      v29 = 1;
      v9 = v38;
    }
  }

  else
  {
    v29 = 0;
    v28 = 0;
  }

LABEL_48:
  objc_autoreleasePoolPop(v9);
  v35 = v28;
  return v29;
}

- (BOOL)_addConnection:(id)connection exceptionReason:(id *)reason
{
  v18.receiver = self;
  v18.super_class = AVCaptureMultiCamSession;
  v6 = [(AVCaptureSession *)&v18 _addConnection:connection exceptionReason:reason];
  if (v6)
  {
    [connection addObserver:self forKeyPath:@"enabled" options:3 context:AVCaptureMultiCamSessionConnectionEnabledChangedContext];
    [connection addObserver:self forKeyPath:@"active" options:3 context:AVCaptureMultiCamSessionConnectionActiveChangedContext];
    [connection addObserver:self forKeyPath:@"activeVideoStabilizationMode" options:3 context:AVCaptureMultiCamSessionConnectionActiveVideoStabilizationModeChangedContext];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    inputPorts = [connection inputPorts];
    v8 = [inputPorts countByEnumeratingWithState:&v14 objects:v13 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(inputPorts);
          }

          [*(*(&v14 + 1) + 8 * v11++) addObserver:self forKeyPath:@"enabled" options:3 context:AVCaptureMultiCamSessionConnectedInputPortEnabledChangedContext];
        }

        while (v9 != v11);
        v9 = [inputPorts countByEnumeratingWithState:&v14 objects:v13 count:16];
      }

      while (v9);
    }

    [(AVCaptureMultiCamSession *)self _updateCosts];
  }

  return v6;
}

- (void)_removeConnection:(id)connection
{
  [connection removeObserver:self forKeyPath:@"enabled" context:AVCaptureMultiCamSessionConnectionEnabledChangedContext];
  [connection removeObserver:self forKeyPath:@"active" context:AVCaptureMultiCamSessionConnectionActiveChangedContext];
  [connection removeObserver:self forKeyPath:@"activeVideoStabilizationMode" context:AVCaptureMultiCamSessionConnectionActiveVideoStabilizationModeChangedContext];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  inputPorts = [connection inputPorts];
  v6 = [inputPorts countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(inputPorts);
        }

        [*(*(&v12 + 1) + 8 * v9++) removeObserver:self forKeyPath:@"enabled" context:AVCaptureMultiCamSessionConnectedInputPortEnabledChangedContext];
      }

      while (v7 != v9);
      v7 = [inputPorts countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = AVCaptureMultiCamSession;
  [(AVCaptureSession *)&v10 _removeConnection:connection];
  [(AVCaptureMultiCamSession *)self _updateCosts];
}

- (void)handleVideoInputDevice:(id)device activeFormatChanged:(id)changed
{
  v7 = [changed objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
  _requireMultiCamSupportedFormatsForVideoDevices = [(AVCaptureMultiCamSession *)self _requireMultiCamSupportedFormatsForVideoDevices];
  if (-[AVCaptureSession isRunning](self, "isRunning") && _requireMultiCamSupportedFormatsForVideoDevices && ([v7 isMultiCamSupported] & 1) == 0)
  {
    [(AVCaptureSession *)self stopRunning];
    v10 = *MEMORY[0x1E69873D8];
    deviceCopy = device;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&deviceCopy forKeys:&v10 count:1];
    [(AVCaptureSession *)self _postRuntimeError:AVLocalizedError()];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = AVCaptureMultiCamSession;
    [(AVCaptureSession *)&v9 handleVideoInputDevice:device activeFormatChanged:changed];
  }

  [(AVCaptureMultiCamSession *)self _updateCosts];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (AVCaptureMultiCamSessionConnectionEnabledChangedContext == context || AVCaptureMultiCamSessionConnectionActiveChangedContext == context || AVCaptureMultiCamSessionConnectedInputPortEnabledChangedContext == context || AVCaptureMultiCamSessionConnectionActiveVideoStabilizationModeChangedContext == context)
  {

    [(AVCaptureMultiCamSession *)self _updateCosts:path];
  }

  else
  {
    v12 = v6;
    v13 = v7;
    v11.receiver = self;
    v11.super_class = AVCaptureMultiCamSession;
    [(AVCaptureSession *)&v11 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (BOOL)_requireMultiCamSupportedFormatsForVideoDevices
{
  if ([-[AVCaptureSession sessionVideoCaptureDevices](self "sessionVideoCaptureDevices")] > 1)
  {
    return 1;
  }

  return AVGestaltGetBoolAnswer(@"AVGQCaptureSessionMultiCamCaptureAlwaysRequiresSupportedFormats");
}

- (void)_updateCosts
{
  v3 = objc_autoreleasePoolPush();
  [(AVCaptureMultiCamSession *)self _updateHardwareCost];
  [(AVCaptureMultiCamSession *)self _updateSystemPressureCost];

  objc_autoreleasePoolPop(v3);
}

- (void)_updateHardwareCost
{
  v6.receiver = self;
  v6.super_class = AVCaptureMultiCamSession;
  [(AVCaptureSession *)&v6 _totalHardwareCost];
  v4 = v3;
  [(AVCaptureMultiCamSession *)self _computeISPHardwareCost];
  if (v4 <= v5)
  {
    v4 = v5;
  }

  if (v4 != self->_hardwareCost)
  {
    [(AVCaptureMultiCamSession *)self willChangeValueForKey:@"hardwareCost"];
    self->_hardwareCost = v4;
    [(AVCaptureMultiCamSession *)self didChangeValueForKey:@"hardwareCost"];
  }
}

- (float)_computeISPHardwareCost
{
  _devicesProvidingDepthData = [(AVCaptureSession *)self _devicesProvidingDepthData];
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  obj = [(AVCaptureSession *)self _livePortSetsByDeviceInput];
  v4 = [obj countByEnumeratingWithState:&v90 objects:v89 count:16];
  v55 = _devicesProvidingDepthData;
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v91;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v91 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v90 + 1) + 8 * i);
        if ((([objc_msgSend(objc_msgSend(v10 "device")] & 1) != 0 || objc_msgSend(objc_msgSend(objc_msgSend(v10, "device"), "deviceType"), "isEqualToString:", @"AVCaptureDeviceTypeBuiltInDualWideCamera")) && objc_msgSend(objc_msgSend(v10, "device"), "position") == 1)
        {
          v7 = 1;
        }

        else if ([objc_msgSend(objc_msgSend(v10 "device")])
        {
          v6 |= [objc_msgSend(v10 "device")] == 1;
        }

        _devicesProvidingDepthData = v55;
        if (v7 & 1) != 0 && (v6)
        {
          v7 = 1;
          goto LABEL_19;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v90 objects:v89 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_19:
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v11 = [obj countByEnumeratingWithState:&v85 objects:v84 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = 0;
    v15 = *v86;
    v16 = *MEMORY[0x1E6987608];
    v17 = 0.0;
    v58 = v7;
    v56 = *MEMORY[0x1E6987608];
    v57 = *v86;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v86 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v85 + 1) + 8 * j);
        device = [v19 device];
        if ([device hasMediaType:v16] && (v7 & objc_msgSend(objc_msgSend(device, "deviceType"), "isEqualToString:", @"AVCaptureDeviceTypeDeskViewCamera") & 1) == 0)
        {
          isVirtualDevice = [device isVirtualDevice];
          if (isVirtualDevice)
          {
            constituentDevices = [device constituentDevices];
          }

          else
          {
            constituentDevices = 0;
          }

          v82 = 0;
          v81 = 0;
          v83 = 0;
          activeFormat = [device activeFormat];
          if (activeFormat)
          {
            [activeFormat lowestSupportedVideoFrameDuration];
            v23 = v82 / v81;
          }

          else
          {
            v82 = 0;
            v81 = 0;
            v83 = 0;
            v23 = NAN;
          }

          v24 = [objc_msgSend(objc_msgSend(device "activeFormat")];
          [objc_msgSend(device "activeFormat")];
          v26 = v25;
          if (v24)
          {
            v27 = 2.0;
          }

          else
          {
            v27 = 1.0;
          }

          v79 = 0;
          v78 = 0;
          v80 = 0;
          v60 = v14;
          v61 = v13;
          if (v19)
          {
            [v19 videoMinFrameDurationOverride];
            if ((v79 & 0x100000000) != 0)
            {
              v23 = v79 / v78;
            }
          }

          v28 = [MEMORY[0x1E695DFA8] set];
          if (isVirtualDevice)
          {
            if ([v55 containsObject:device])
            {
              if ([device deviceType] != @"AVCaptureDeviceTypeBuiltInLiDARDepthCamera")
              {
                v76 = 0u;
                v77 = 0u;
                v74 = 0u;
                v75 = 0u;
                constituentDevices2 = [device constituentDevices];
                v30 = [constituentDevices2 countByEnumeratingWithState:&v74 objects:v73 count:16];
                if (v30)
                {
                  v31 = v30;
                  v32 = *v75;
                  do
                  {
                    for (k = 0; k != v31; ++k)
                    {
                      if (*v75 != v32)
                      {
                        objc_enumerationMutation(constituentDevices2);
                      }

                      [v28 addObject:{objc_msgSend(*(*(&v74 + 1) + 8 * k), "deviceType")}];
                    }

                    v31 = [constituentDevices2 countByEnumeratingWithState:&v74 objects:v73 count:16];
                  }

                  while (v31);
                }
              }
            }
          }

          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v34 = [obj objectForKeyedSubscript:v19];
          v35 = [v34 countByEnumeratingWithState:&v69 objects:v68 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v70;
            do
            {
              for (m = 0; m != v36; ++m)
              {
                if (*v70 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                v39 = *(*(&v69 + 1) + 8 * m);
                if (([v28 containsObject:{objc_msgSend(v39, "sourceDeviceType")}] & 1) == 0)
                {
                  [v28 addObject:{objc_msgSend(v39, "sourceDeviceType")}];
                }
              }

              v36 = [v34 countByEnumeratingWithState:&v69 objects:v68 count:16];
            }

            while (v36);
          }

          v40 = v27 * v26;
          v41 = [v28 count];
          v42 = v41;
          if (isVirtualDevice)
          {
            v44 = v60;
            v43 = v61;
            v15 = v57;
            if ([v28 containsObject:{objc_msgSend(device, "deviceType")}])
            {
              v42 = (__PAIR128__(v42, [constituentDevices count]) - v42) >> 64;
            }

            v17 = v17 + ((v40 * v42) * v23);
            v7 = v58;
            v16 = v56;
            if (v42 < [constituentDevices count])
            {
              v17 = v17 + ((v40 * ([constituentDevices count] - v42)) * 7.0);
            }
          }

          else
          {
            v17 = v17 + ((v40 * v41) * v23);
            v7 = v58;
            v44 = v60;
            v43 = v61;
            v16 = v56;
            v15 = v57;
          }

          Dimensions = CMVideoFormatDescriptionGetDimensions([objc_msgSend(device "activeFormat")]);
          if ((Dimensions.height * Dimensions.width) >> 12 <= 0x7E8)
          {
            v46 = 0;
          }

          else
          {
            v46 = v42;
          }

          v13 = v46 + v43;
          v14 = v44 + v42;
        }
      }

      v12 = [obj countByEnumeratingWithState:&v85 objects:v84 count:16];
    }

    while (v12);
    if (v14 <= 2 || v13 <= 1)
    {
      v48 = v17;
    }

    else
    {
      v48 = v17 + 1.0;
    }

    _devicesProvidingDepthData = v55;
  }

  else
  {
    v48 = 0.0;
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v49 = [_devicesProvidingDepthData countByEnumeratingWithState:&v64 objects:v63 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = 0;
    v52 = *v65;
    do
    {
      for (n = 0; n != v50; ++n)
      {
        if (*v65 != v52)
        {
          objc_enumerationMutation(_devicesProvidingDepthData);
        }

        if ([*(*(&v64 + 1) + 8 * n) deviceType] != @"AVCaptureDeviceTypeBuiltInLiDARDepthCamera")
        {
          ++v51;
        }
      }

      v50 = [_devicesProvidingDepthData countByEnumeratingWithState:&v64 objects:v63 count:16];
    }

    while (v50);
    if (v51 > 1)
    {
      return v48 + (v51 - 1);
    }
  }

  return v48;
}

- (id)_physicalDevicePowerInfoSet
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v3 = [MEMORY[0x1E695DFA8] set];
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  obj = [(AVCaptureSession *)self connections];
  v88 = v3;
  v75 = [(NSArray *)obj countByEnumeratingWithState:&v153 objects:v152 count:16];
  v4 = 0;
  if (v75)
  {
    v74 = *v154;
    v5 = *MEMORY[0x1E6987608];
    v81 = *MEMORY[0x1E69875A0];
    v77 = *MEMORY[0x1E69875C0];
    v78 = *MEMORY[0x1E6987608];
    do
    {
      v6 = 0;
      do
      {
        if (*v154 != v74)
        {
          v7 = v6;
          objc_enumerationMutation(obj);
          v6 = v7;
        }

        v76 = v6;
        v8 = *(*(&v153 + 1) + 8 * v6);
        [v8 output];
        v95 = v8;
        if ([v8 isActive])
        {
          if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v8 isEnabled] & 1) != 0 || objc_msgSend(v8, "isLive"))
          {
            v151 = 0u;
            v150 = 0u;
            v149 = 0u;
            v148 = 0u;
            inputPorts = [v8 inputPorts];
            v9 = [inputPorts countByEnumeratingWithState:&v148 objects:v147 count:16];
            if (v9)
            {
              v10 = v9;
              v11 = *v149;
              v79 = *v149;
              do
              {
                v12 = 0;
                v80 = v10;
                do
                {
                  if (*v149 != v11)
                  {
                    objc_enumerationMutation(inputPorts);
                  }

                  v13 = *(*(&v148 + 1) + 8 * v12);
                  input = [v13 input];
                  videoDevice = [input videoDevice];
                  if ([videoDevice hasMediaType:v5])
                  {
                    if ([videoDevice isVirtualDevice] && objc_msgSend(objc_msgSend(v13, "mediaType"), "isEqual:", v77))
                    {
                      constituentDevices = [videoDevice constituentDevices];
                    }

                    else
                    {
                      sourceDeviceType = [v13 sourceDeviceType];
                      deviceType = [videoDevice deviceType];
                      v18 = videoDevice;
                      if (sourceDeviceType != deviceType)
                      {
                        v18 = [videoDevice constituentDeviceWithDeviceType:sourceDeviceType];
                      }

                      v146 = v18;
                      constituentDevices = [MEMORY[0x1E695DEC8] arrayWithObjects:&v146 count:1];
                    }

                    v145 = 0u;
                    v144 = 0u;
                    v143 = 0u;
                    v142 = 0u;
                    v91 = constituentDevices;
                    v100 = [constituentDevices countByEnumeratingWithState:&v142 objects:v141 count:16];
                    if (v100)
                    {
                      v89 = videoDevice;
                      v85 = v12;
                      v87 = v4;
                      v98 = *v143;
                      do
                      {
                        v19 = 0;
                        do
                        {
                          if (*v143 != v98)
                          {
                            objc_enumerationMutation(v91);
                          }

                          v105 = v19;
                          v20 = *(*(&v142 + 1) + 8 * v19);
                          deviceType2 = [v20 deviceType];
                          uniqueID = [v20 uniqueID];
                          dictionary2 = [dictionary objectForKeyedSubscript:uniqueID];
                          if (!dictionary2)
                          {
                            dictionary2 = [MEMORY[0x1E695DF90] dictionary];
                            [dictionary setObject:dictionary2 forKeyedSubscript:uniqueID];
                            [dictionary2 setObject:v89 forKeyedSubscript:@"VideoDevice"];
                            [dictionary2 setObject:objc_msgSend(MEMORY[0x1E695DFA8] forKeyedSubscript:{"set"), @"SourceDeviceTypesInUse"}];
                            [dictionary2 setObject:objc_msgSend(MEMORY[0x1E695DF90] forKeyedSubscript:{"dictionary"), @"VISEnabledForSourceDeviceType"}];
                            v139 = 0uLL;
                            v140 = 0;
                            activeFormat = [v89 activeFormat];
                            if (activeFormat)
                            {
                              [activeFormat lowestSupportedVideoFrameDuration];
                            }

                            else
                            {
                              v139 = 0uLL;
                              v140 = 0;
                            }

                            v137 = 0uLL;
                            v138 = 0;
                            if (input)
                            {
                              [input videoMinFrameDurationOverride];
                              if (BYTE12(v137))
                              {
                                HIDWORD(v25) = DWORD1(v137);
                                v139 = v137;
                                v140 = v138;
                              }
                            }

                            *&v25 = SDWORD2(v139) / v139;
                            [dictionary2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v25), @"MaxActiveFrameRate"}];
                          }

                          [objc_msgSend(dictionary2 objectForKeyedSubscript:{@"SourceDeviceTypesInUse", "addObject:", deviceType2}];
                          if ([v95 activeVideoStabilizationMode])
                          {
                            if ([objc_msgSend(v20 "constituentDevices")])
                            {
                              v136 = 0u;
                              v135 = 0u;
                              v134 = 0u;
                              v133 = 0u;
                              constituentDevices2 = [v20 constituentDevices];
                              v27 = [constituentDevices2 countByEnumeratingWithState:&v133 objects:v132 count:16];
                              if (v27)
                              {
                                v28 = v27;
                                v29 = *v134;
                                do
                                {
                                  for (i = 0; i != v28; ++i)
                                  {
                                    if (*v134 != v29)
                                    {
                                      objc_enumerationMutation(constituentDevices2);
                                    }

                                    [objc_msgSend(dictionary2 objectForKeyedSubscript:{@"VISEnabledForSourceDeviceType", "setObject:forKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", 1), objc_msgSend(*(*(&v133 + 1) + 8 * i), "deviceType")}];
                                  }

                                  v28 = [constituentDevices2 countByEnumeratingWithState:&v133 objects:v132 count:16];
                                }

                                while (v28);
                              }
                            }

                            else
                            {
                              [objc_msgSend(dictionary2 objectForKeyedSubscript:{@"VISEnabledForSourceDeviceType", "setObject:forKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", 1), deviceType2}];
                            }
                          }

                          v19 = v105 + 1;
                        }

                        while (v105 + 1 != v100);
                        v100 = [v91 countByEnumeratingWithState:&v142 objects:v141 count:16];
                      }

                      while (v100);
                      v4 = v87;
                      v3 = v88;
                      v5 = v78;
                      v11 = v79;
                      v10 = v80;
                      v12 = v85;
                    }
                  }

                  else if (([videoDevice hasMediaType:v81] & (v4 == 0)) != 0)
                  {
                    v4 = videoDevice;
                  }

                  ++v12;
                }

                while (v12 != v10);
                v10 = [inputPorts countByEnumeratingWithState:&v148 objects:v147 count:16];
              }

              while (v10);
            }
          }
        }

        v6 = v76 + 1;
      }

      while (v76 + 1 != v75);
      v75 = [(NSArray *)obj countByEnumeratingWithState:&v153 objects:v152 count:16];
    }

    while (v75);
  }

  v131 = 0u;
  v130 = 0u;
  v128 = 0u;
  v129 = 0u;
  allValues = [dictionary allValues];
  v86 = [allValues countByEnumeratingWithState:&v128 objects:v127 count:16];
  if (v86)
  {
    v84 = *v129;
    do
    {
      v31 = 0;
      do
      {
        if (*v129 != v84)
        {
          objc_enumerationMutation(allValues);
        }

        v94 = *(*(&v128 + 1) + 8 * v31);
        v32 = [v94 objectForKeyedSubscript:@"VideoDevice"];
        activeFormat2 = [v32 activeFormat];
        v139 = 0uLL;
        v140 = 0;
        v101 = activeFormat2;
        if (activeFormat2)
        {
          [activeFormat2 lowestSupportedVideoFrameDuration];
          v34 = SDWORD2(v139) / v139;
        }

        else
        {
          v34 = NAN;
        }

        v35 = [v94 objectForKeyedSubscript:@"MaxActiveFrameRate"];
        v36 = v34;
        if (v35)
        {
          [v35 floatValue];
          v36 = v37;
        }

        v90 = v31;
        v38 = [objc_msgSend(objc_msgSend(v32 "activeFormat")];
        v99 = [v32 isVideoHDREnabled] | v38;
        v39 = [v94 objectForKeyedSubscript:@"SourceDeviceTypesInUse"];
        v106 = v39;
        if ([objc_msgSend(v32 "constituentDevices")] && objc_msgSend(v39, "containsObject:", objc_msgSend(v32, "deviceType")))
        {
          v40 = [objc_msgSend(objc_msgSend(v94 objectForKeyedSubscript:{@"VISEnabledForSourceDeviceType", "objectForKeyedSubscript:", objc_msgSend(v32, "deviceType")), "BOOLValue"}];
          if (v34 <= 30.0)
          {
            v41 = 3;
          }

          else
          {
            v41 = 2;
          }

          v123 = 0u;
          v124 = 0u;
          v92 = v40;
          if (!v40)
          {
            v41 = 1;
          }

          v103 = v41;
          v125 = 0uLL;
          v126 = 0uLL;
          v96 = v32;
          constituentDevices3 = [v32 constituentDevices];
          v43 = [constituentDevices3 countByEnumeratingWithState:&v123 objects:v122 count:16];
          if (v43)
          {
            v44 = v43;
            v45 = 0;
            v46 = 0;
            v47 = *v124;
            if (v99)
            {
              v48 = 2.0;
            }

            else
            {
              v48 = 1.0;
            }

            do
            {
              for (j = 0; j != v44; ++j)
              {
                if (*v124 != v47)
                {
                  objc_enumerationMutation(constituentDevices3);
                }

                v50 = *(*(&v123 + 1) + 8 * j);
                if (([v39 containsObject:{objc_msgSend(v50, "deviceType")}] & 1) == 0)
                {
                  v51 = avcmcs_constituentDeviceFormatFromVirtualDeviceFormat(v101, v50);
                  baseSensorPowerConsumption = [v51 baseSensorPowerConsumption];
                  LODWORD(v51) = (baseSensorPowerConsumption + ((v36 * [v51 variableSensorPowerConsumption]) * v48));
                  v53 = v51 + (((v36 / 30.0) * v48) * [v50 powerConsumptionAt30FPSForOISMode:v103]);
                  v39 = v106;
                  if (v53 > v45)
                  {
                    v45 = v53;
                    v46 = v50;
                  }
                }
              }

              v44 = [constituentDevices3 countByEnumeratingWithState:&v123 objects:v122 count:16];
            }

            while (v44);
          }

          else
          {
            v46 = 0;
          }

          v32 = v96;
          [v39 removeObject:{objc_msgSend(v96, "deviceType")}];
          if (v46)
          {
            [v39 addObject:{objc_msgSend(v46, "deviceType")}];
            v54 = [MEMORY[0x1E696AD98] numberWithBool:v92];
            v55 = [v94 objectForKeyedSubscript:@"VISEnabledForSourceDeviceType"];
            deviceType3 = [v46 deviceType];
            v57 = v55;
            v39 = v106;
            [v57 setObject:v54 forKeyedSubscript:deviceType3];
          }
        }

        constituentDevices4 = [v32 constituentDevices];
        if (![constituentDevices4 count])
        {
          v121 = v32;
          constituentDevices4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v121 count:1];
        }

        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v59 = [constituentDevices4 countByEnumeratingWithState:&v117 objects:v116 count:16];
        v3 = v88;
        if (v59)
        {
          v60 = v59;
          v104 = *v118;
          v97 = constituentDevices4;
          do
          {
            for (k = 0; k != v60; ++k)
            {
              if (*v118 != v104)
              {
                objc_enumerationMutation(v97);
              }

              v62 = *(*(&v117 + 1) + 8 * k);
              v63 = [v39 containsObject:{objc_msgSend(v62, "deviceType")}];
              v112 = 0u;
              v113 = 0u;
              v114 = 0u;
              v115 = 0u;
              v64 = [v3 countByEnumeratingWithState:&v112 objects:v111 count:16];
              if (v64)
              {
                v65 = v64;
                v66 = *v113;
LABEL_99:
                v67 = 0;
                while (1)
                {
                  if (*v113 != v66)
                  {
                    objc_enumerationMutation(v88);
                  }

                  v68 = *(*(&v112 + 1) + 8 * v67);
                  if ([v68 objectForKeyedSubscript:@"Device"] == v62)
                  {
                    break;
                  }

                  if (v65 == ++v67)
                  {
                    v65 = [v88 countByEnumeratingWithState:&v112 objects:v111 count:16];
                    if (v65)
                    {
                      goto LABEL_99;
                    }

                    goto LABEL_109;
                  }
                }

                if (!v68)
                {
                  goto LABEL_109;
                }

                v3 = v88;
                if (v63)
                {
                  [v88 removeObject:v68];
                  goto LABEL_110;
                }
              }

              else
              {
LABEL_109:
                if (v63)
                {
LABEL_110:
                  v69 = [objc_msgSend(objc_msgSend(v94 objectForKeyedSubscript:{@"VISEnabledForSourceDeviceType", "objectForKeyedSubscript:", objc_msgSend(v62, "deviceType")), "BOOLValue"}];
                  v70 = v36;
                }

                else
                {
                  v69 = 0;
                  v70 = 7;
                }

                v71 = avcmcs_constituentDeviceFormatFromVirtualDeviceFormat(v101, v62);
                v110[0] = v62;
                v109[0] = @"Device";
                v109[1] = @"VISEnabled";
                v110[1] = [MEMORY[0x1E696AD98] numberWithBool:v69];
                v110[2] = v71;
                v109[2] = @"ActiveFormat";
                v109[3] = @"MaxActiveFrameRate";
                v110[3] = [MEMORY[0x1E696AD98] numberWithInt:v70];
                v109[4] = @"ISPProcessingEnabled";
                v110[4] = [MEMORY[0x1E696AD98] numberWithBool:v63];
                v109[5] = @"SIFREnabled";
                v110[5] = [MEMORY[0x1E696AD98] numberWithBool:v99 & 1];
                v3 = v88;
                [v88 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v110, v109, 6)}];
              }

              v39 = v106;
            }

            v60 = [v97 countByEnumeratingWithState:&v117 objects:v116 count:16];
          }

          while (v60);
        }

        v31 = v90 + 1;
      }

      while (v90 + 1 != v86);
      v86 = [allValues countByEnumeratingWithState:&v128 objects:v127 count:16];
    }

    while (v86);
  }

  if (v4)
  {
    v107 = @"Device";
    v108 = v4;
    [v3 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v108, &v107, 1)}];
  }

  return v3;
}

- (BOOL)_canAddOutput:(id)output failureReason:(id *)reason
{
  if (!output)
  {
    result = 0;
    v9 = @"Can't add a nil AVCaptureOutput";
    goto LABEL_13;
  }

  if ([output session])
  {
    result = 0;
    v9 = @"An AVCaptureOutput instance may not be added to more than one session";
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    result = 0;
    v9 = @"The deprecated AVCaptureStillImageOutput class may not be used with AVCaptureMultiCamSession. Use AVCapturePhotoOutput instead";
LABEL_13:
    v8 = 1;
    if (!reason)
    {
      return result;
    }

    goto LABEL_7;
  }

  v7 = [(NSArray *)[(AVCaptureSession *)self outputs] containsObject:output];
  v8 = v7;
  v9 = @"An AVCaptureOutput instance may not be added more than once to a session";
  if (!v7)
  {
    v9 = 0;
  }

  result = !v7;
  if (reason)
  {
LABEL_7:
    if (v8)
    {
      *reason = v9;
    }
  }

  return result;
}

- (void)_updateSystemPressureCost
{
  selfCopy = self;
  v6 = FigCapturePlatformIdentifier();
  if (v6 >= 7)
  {
    v7 = 350;
  }

  else
  {
    v7 = 450;
  }

  if (v6 > 0xC)
  {
    return;
  }

  v8 = (&_updateSystemPressureCost_allEncoderModels + 8 * v6);
  v9 = *v8;
  v10 = v8[1];
  if ((*v8 + v10) == 0.0)
  {
    return;
  }

  v97 = v7;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  obj = [(AVCaptureMultiCamSession *)selfCopy _physicalDevicePowerInfoSet];
  v11 = [obj countByEnumeratingWithState:&v134 objects:v133 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v135;
    v2 = @"Device";
    v15 = *MEMORY[0x1E6987608];
    v99 = *MEMORY[0x1E69875A0];
    v101 = *MEMORY[0x1E6987608];
    v16 = 125;
    v103 = *v135;
    do
    {
      v3 = 0;
      v105 = v12;
      do
      {
        if (*v135 != v14)
        {
          objc_enumerationMutation(obj);
        }

        baseSensorPowerConsumption = *(*(&v134 + 1) + 8 * v3);
        v4 = [baseSensorPowerConsumption objectForKeyedSubscript:{@"Device", selfCopy}];
        if ([v4 hasMediaType:v15])
        {
          v17 = v16;
          v18 = v13;
          v19 = [objc_msgSend(baseSensorPowerConsumption objectForKeyedSubscript:{@"VISEnabled", "intValue"}];
          v20 = [baseSensorPowerConsumption objectForKeyedSubscript:@"ActiveFormat"];
          [objc_msgSend(baseSensorPowerConsumption objectForKeyedSubscript:{@"MaxActiveFrameRate", "floatValue"}];
          v22 = v21;
          v23 = [objc_msgSend(baseSensorPowerConsumption objectForKeyedSubscript:{@"SIFREnabled", "BOOLValue"}];
          v24 = [objc_msgSend(baseSensorPowerConsumption objectForKeyedSubscript:{@"ISPProcessingEnabled", "BOOLValue"}];
          baseSensorPowerConsumption = [v20 baseSensorPowerConsumption];
          variableSensorPowerConsumption = [v20 variableSensorPowerConsumption];
          if (v23)
          {
            v26 = 2.0;
          }

          else
          {
            v26 = 1.0;
          }

          if (v24)
          {
            v27 = [objc_msgSend(v20 "figCaptureSourceVideoFormat")];
            ispPowerConsumption = [v20 ispPowerConsumption];
            if (v27)
            {
              v29 = 2.0;
            }

            else
            {
              v29 = 1.0;
            }

            v16 = v17 + v22 + (v29 * (v22 * ispPowerConsumption));
          }

          else
          {
            v16 = v17;
          }

          v13 = v18 + (baseSensorPowerConsumption + ((v22 * variableSensorPowerConsumption) * v26));
          if (v22 <= 30.0)
          {
            v30 = 3;
          }

          else
          {
            v30 = 2;
          }

          if (v19)
          {
            v31 = v30;
          }

          else
          {
            v31 = 1;
          }

          v32 = [v4 powerConsumptionAt30FPSForOISMode:v31];
          v14 = v103;
          v12 = v105;
          if (v32)
          {
            v13 += (((v22 / 30.0) * v26) * v32);
          }

          v2 = @"Device";
          v15 = v101;
        }

        else if ([v4 hasMediaType:v99])
        {
          v16 = (v16 + 100);
        }

        else
        {
          v16 = v16;
        }

        ++v3;
      }

      while (v12 != v3);
      v12 = [obj countByEnumeratingWithState:&v134 objects:v133 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
    LODWORD(v16) = 125;
  }

  v104 = v16;
  obja = v13;
  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  connections = [(AVCaptureSession *)selfCopy connections];
  v34 = [(NSArray *)connections countByEnumeratingWithState:&v129 objects:v128 count:16];
  if (v34)
  {
    v35 = v34;
    OUTLINED_FUNCTION_0_4();
    v36 = *v130;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v130 != v36)
        {
          objc_enumerationMutation(connections);
        }

        v38 = *(*(&v129 + 1) + 8 * i);
        if ([v38 isLive])
        {
          sourceDeviceInput = [v38 sourceDeviceInput];
          if ([sourceDeviceInput isCinematicVideoCaptureEnabled])
          {
            if (!baseSensorPowerConsumption)
            {
              baseSensorPowerConsumption = [MEMORY[0x1E695DFA8] set];
            }

            [baseSensorPowerConsumption addObject:sourceDeviceInput];
          }

          device = [sourceDeviceInput device];
          if ([device isBackgroundBlurActive] && objc_msgSend(sourceDeviceInput, "isBackgroundBlurAllowed"))
          {
            if (!v4)
            {
              v4 = [MEMORY[0x1E695DFA8] set];
            }

            [v4 addObject:device];
          }

          if ([device isCenterStageActive] && objc_msgSend(sourceDeviceInput, "isCenterStageAllowed"))
          {
            if (!v2)
            {
              v2 = [MEMORY[0x1E695DFA8] set];
            }

            [(__CFString *)v2 addObject:device];
          }

          if ([device isStudioLightActive] && objc_msgSend(sourceDeviceInput, "isStudioLightingAllowed"))
          {
            v41 = v105;
            if (!v105)
            {
              v41 = [MEMORY[0x1E695DFA8] set];
            }

            v105 = v41;
            [v41 addObject:device];
          }

          if ([device canPerformReactionEffects] && objc_msgSend(sourceDeviceInput, "reactionEffectsAllowed"))
          {
            if (!v3)
            {
              v3 = [MEMORY[0x1E695DFA8] set];
            }

            [v3 addObject:device];
          }
        }
      }

      v35 = [(NSArray *)connections countByEnumeratingWithState:&v129 objects:v128 count:16];
    }

    while (v35);
  }

  else
  {
    OUTLINED_FUNCTION_0_4();
  }

  v42 = [baseSensorPowerConsumption count];
  v43 = [v4 count];
  v44 = [(__CFString *)v2 count];
  v45 = [v105 count];
  v46 = [v3 count];
  v124 = 0u;
  v125 = 0u;
  v47 = v104 + 565 * v42 + 260 * v44 + 50 * v46 + (v45 + v43) * v97;
  v126 = 0u;
  v127 = 0u;
  connections2 = [v94 connections];
  v48 = [connections2 countByEnumeratingWithState:&v124 objects:v123 count:16];
  if (!v48)
  {
    goto LABEL_127;
  }

  v49 = v48;
  v50 = *v125;
  v51 = *MEMORY[0x1E69875C0];
  v52 = *MEMORY[0x1E6987608];
  v95 = *v125;
  do
  {
    v53 = 0;
    v96 = v49;
    do
    {
      if (*v125 != v50)
      {
        objc_enumerationMutation(connections2);
      }

      v54 = *(*(&v124 + 1) + 8 * v53);
      if ([v54 isLive])
      {
        [v54 output];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v100 = v54;
          v102 = v53;
          v121 = 0u;
          v122 = 0u;
          v119 = 0u;
          v120 = 0u;
          inputPorts = [v54 inputPorts];
          v56 = [inputPorts countByEnumeratingWithState:&v119 objects:v118 count:16];
          if (v56)
          {
            v57 = v56;
            v58 = *v120;
            while (1)
            {
              for (j = 0; j != v57; ++j)
              {
                if (*v120 != v58)
                {
                  objc_enumerationMutation(inputPorts);
                }

                v60 = *(*(&v119 + 1) + 8 * j);
                if ([objc_msgSend(v60 "mediaType")])
                {
                  input = [v60 input];
                  v62 = [objc_msgSend(input "videoDevice")];
                  Dimensions = CMVideoFormatDescriptionGetDimensions([v62 formatDescription]);
                  OUTLINED_FUNCTION_1_6();
                  if (input)
                  {
                    [input videoMinFrameDurationOverride];
                    if ((v114 & 0x100000000) != 0)
                    {
                      [input videoMinFrameDurationOverride];
                      goto LABEL_91;
                    }
                  }

                  else
                  {
                    v113 = 0;
                    v114 = 0;
                    v115 = 0;
                  }

                  if (v62)
                  {
                    [v62 lowestSupportedVideoFrameDuration];
                  }

                  else
                  {
                    OUTLINED_FUNCTION_1_6();
                  }

LABEL_91:
                  v64 = DWORD2(v116);
                  v65 = v116;
                  [objc_msgSend(v62 "figCaptureSourceVideoFormat")];
                  if (FigCapturePixelFormatIsTenBit())
                  {
                    v66 = 1.25;
                  }

                  else
                  {
                    v66 = 1.0;
                  }

                  [objc_msgSend(v62 "figCaptureSourceVideoFormat")];
                  if (FigCapturePixelFormatIs422())
                  {
                    v66 = (v66 * 4.0) / 3.0;
                  }

                  v47 += (v9 + ((((v64 / v65) * (Dimensions.height * Dimensions.width)) * (v10 * v66)) / 1000000.0));
                  continue;
                }
              }

              v57 = [inputPorts countByEnumeratingWithState:&v119 objects:v118 count:16];
              if (!v57)
              {
                goto LABEL_102;
              }
            }
          }

          goto LABEL_102;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v100 = v54;
          v102 = v53;
LABEL_102:
          if ([v100 activeVideoStabilizationMode])
          {
            v47 += 20;
          }

          goto LABEL_104;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v102 = v53;
          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          inputPorts2 = [v54 inputPorts];
          v68 = [inputPorts2 countByEnumeratingWithState:&v109 objects:v108 count:16];
          if (v68)
          {
            v69 = v68;
            v70 = *v110;
            do
            {
              for (k = 0; k != v69; ++k)
              {
                if (*v110 != v70)
                {
                  objc_enumerationMutation(inputPorts2);
                }

                v72 = *(*(&v109 + 1) + 8 * k);
                if ([objc_msgSend(v72 "mediaType")])
                {
                  input2 = [v72 input];
                  if ([objc_msgSend(objc_msgSend(input2 "videoDevice")])
                  {
                    [input2 device];
                    OUTLINED_FUNCTION_1_6();
                    activeDepthDataFormat = [v74 activeDepthDataFormat];
                    if (activeDepthDataFormat)
                    {
                      [activeDepthDataFormat lowestSupportedVideoFrameDuration];
                    }

                    else
                    {
                      OUTLINED_FUNCTION_1_6();
                    }

                    if (input2)
                    {
                      [input2 videoMinFrameDurationOverride];
                      if (0 >> 96)
                      {
                        v116 = 0uLL;
                        v117 = 0;
                      }
                    }

                    obja = (((SDWORD2(v116) / v116) * 22.467) + obja);
                  }
                }
              }

              v69 = [inputPorts2 countByEnumeratingWithState:&v109 objects:v108 count:16];
            }

            while (v69);
LABEL_104:
            v50 = v95;
            v49 = v96;
          }

          v53 = v102;
        }
      }

      ++v53;
    }

    while (v53 != v49);
    v76 = [connections2 countByEnumeratingWithState:&v124 objects:v123 count:16];
    v49 = v76;
  }

  while (v76);
LABEL_127:
  v77 = (v47 * 1.2);
  v78 = (obja * 1.25);
  v79 = (v77 / 0.835 * 0.165);
  v80 = vcvtd_n_f64_u32(v78, 2uLL) + v77;
  if (_MergedGlobals_0 != -1)
  {
    dispatch_once(&_MergedGlobals_0, &__block_literal_global_19);
  }

  v81 = v80 + v79;
  v82 = &unk_1EB3851D4;
  v83 = 8;
  ModelSpecificName = FigCaptureGetModelSpecificName();
  while (![*(v82 - 3) containsObject:ModelSpecificName])
  {
    v82 += 8;
    if (!--v83)
    {
      v85 = 0.0;
      goto LABEL_142;
    }
  }

  v86 = v78;
  v87 = *v82 + (*(v82 - 1) * v78);
  v88 = v81;
  if (v87 >= v81 || (v89 = v82[2] + (v82[1] * v86), v90 = v82[4] + (v82[3] * v86), v90 == 0.0) && v89 == 0.0)
  {
    v85 = v88 / v87;
  }

  else
  {
    if (v89 >= v88 || v90 == 0.0)
    {
      v91 = (v88 - v87) / (v89 - v87);
      v92 = 1.0;
    }

    else
    {
      v91 = (v88 - v89) / (v90 - v89);
      v92 = 2.0;
    }

    v85 = v91 + v92;
  }

LABEL_142:
  if (v85 != v94[5])
  {
    [v94 willChangeValueForKey:@"systemPressureCost"];
    v94[5] = v85;
    [v94 didChangeValueForKey:@"systemPressureCost"];
  }
}

- (BOOL)_canAddInput:(uint64_t)a1 failureReason:(uint64_t *)a2 .cold.1(uint64_t a1, uint64_t *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [v3 stringWithFormat:@"<%@> is an unsupported AVCaptureInput type", NSStringFromClass(v4)];
  *a2 = v5;
  return v5 == 0;
}

@end