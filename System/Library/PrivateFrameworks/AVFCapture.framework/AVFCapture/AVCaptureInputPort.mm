@interface AVCaptureInputPort
+ (AVCaptureInputPort)portWithInput:(id)input mediaType:(id)type formatDescription:(opaqueCMFormatDescription *)description enabled:(BOOL)enabled sourceDeviceType:(id)deviceType sourceDevicePosition:(int64_t)position;
- (AVCaptureDeviceType)sourceDeviceType;
- (AVMediaType)mediaType;
- (BOOL)sourcesFromConstituentDevice;
- (CMClockRef)clock;
- (CMFormatDescriptionRef)formatDescription;
- (id)_initWithInput:(id)input mediaType:(id)type formatDescription:(opaqueCMFormatDescription *)description enabled:(BOOL)enabled sourceDeviceType:(id)deviceType sourceDevicePosition:(int64_t)position;
- (id)description;
- (id)figCaptureSourceConfigurationForSessionPreset:(id)preset;
- (id)valueForUndefinedKey:(id)key;
- (void)_setClock:(OpaqueCMClock *)clock;
- (void)_setFormatDescription:(opaqueCMFormatDescription *)description;
- (void)_updateBackgroundBlurUnavailableReasonsWithDevice:(id)device deviceInput:(id)input;
- (void)_updateBackgroundReplacementUnavailableReasonsWithDevice:(id)device deviceInput:(id)input;
- (void)_updateCenterStageUnavailableReasonsWithDevice:(id)device deviceInput:(id)input;
- (void)_updateReactionEffectsUnavailableReasonsWithDevice:(id)device deviceInput:(id)input;
- (void)_updateStudioLightingUnavailableReasonsWithDevice:(id)device deviceInput:(id)input;
- (void)bumpChangeSeed;
- (void)dealloc;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation AVCaptureInputPort

- (AVMediaType)mediaType
{
  v2 = self->_internal->mediaType;

  return v2;
}

- (AVCaptureDeviceType)sourceDeviceType
{
  v2 = self->_internal->sourceDeviceType;

  return v2;
}

- (BOOL)sourcesFromConstituentDevice
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    device = [(AVCaptureInput *)self->_internal->input device];
    mediaType = [(AVCaptureInputPort *)self mediaType];
    if (mediaType == *MEMORY[0x1E69875A0])
    {
      position = [device position];
      sourceDevicePosition = [(AVCaptureInputPort *)self sourceDevicePosition];
      goto LABEL_7;
    }

    LODWORD(sourceDevicePosition) = [device isVirtualDevice];
    if (sourceDevicePosition)
    {
      position = [device deviceType];
      sourceDevicePosition = [(AVCaptureInputPort *)self sourceDeviceType];
LABEL_7:
      LOBYTE(sourceDevicePosition) = position != sourceDevicePosition;
    }
  }

  else
  {
    LOBYTE(sourceDevicePosition) = 0;
  }

  return sourceDevicePosition;
}

- (CMFormatDescriptionRef)formatDescription
{
  result = self->_internal->formatDescription;
  if (result)
  {
    v3 = CFRetain(result);

    return CFAutorelease(v3);
  }

  return result;
}

- (void)bumpChangeSeed
{
  [(AVCaptureInputPort *)self willChangeValueForKey:@"changeSeed"];
  ++self->_internal->changeSeed;

  [(AVCaptureInputPort *)self didChangeValueForKey:@"changeSeed"];
}

+ (AVCaptureInputPort)portWithInput:(id)input mediaType:(id)type formatDescription:(opaqueCMFormatDescription *)description enabled:(BOOL)enabled sourceDeviceType:(id)deviceType sourceDevicePosition:(int64_t)position
{
  v8 = [objc_alloc(objc_opt_class()) _initWithInput:input mediaType:type formatDescription:description enabled:enabled sourceDeviceType:deviceType sourceDevicePosition:position];

  return v8;
}

- (id)_initWithInput:(id)input mediaType:(id)type formatDescription:(opaqueCMFormatDescription *)description enabled:(BOOL)enabled sourceDeviceType:(id)deviceType sourceDevicePosition:(int64_t)position
{
  v24.receiver = self;
  v24.super_class = AVCaptureInputPort;
  v14 = [(AVCaptureInputPort *)&v24 init];
  if (v14)
  {
    v15 = objc_alloc_init(AVCaptureInputPortInternal);
    v14->_internal = v15;
    if (v15)
    {
      v15->input = input;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        device = [input device];
        IsLaunchPrewarmingEnabled = AVCaptureSessionIsLaunchPrewarmingEnabled();
        v23 = objc_alloc(MEMORY[0x1E696AEC0]);
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        if (IsLaunchPrewarmingEnabled)
        {
          v20 = [v23 initWithFormat:@"<%@ %@>", v19, objc_msgSend(device, "uniqueID")];
        }

        else
        {
          v20 = [v23 initWithFormat:@"<%@ %p>", v19, device];
        }

        v14->_internal->sourceID = v20;
        v14->_internal->sourceDeviceType = deviceType;
        v14->_internal->sourceDevicePosition = position;
      }

      v14->_internal->mediaType = [type copy];
      if (description)
      {
        v21 = CFRetain(description);
      }

      else
      {
        v21 = 0;
      }

      v14->_internal->formatDescription = v21;
      v14->_internal->enabled = enabled;
      -[AVCaptureInputPort _setClock:](v14, "_setClock:", [input clock]);
    }

    else
    {

      return 0;
    }
  }

  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureInputPort;
  [(AVCaptureInputPort *)&v3 dealloc];
}

- (id)description
{
  selfCopy = self;
  formatDescription = self->_internal->formatDescription;
  if (formatDescription)
  {
    MediaSubType = CMFormatDescriptionGetMediaSubType(formatDescription);
    if ([(NSString *)selfCopy->_internal->mediaType isEqualToString:*MEMORY[0x1E69875D0]])
    {
      Identifiers = CMMetadataFormatDescriptionGetIdentifiers(selfCopy->_internal->formatDescription);
    }

    else
    {
      Identifiers = 0;
    }
  }

  else
  {
    Identifiers = 0;
    MediaSubType = 808464432;
  }

  v38 = bswap32(MediaSubType);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    input = selfCopy->_internal->input;
    v7 = [-[AVCaptureInput device](input "device")];
    v8 = [-[AVCaptureInput device](input "device")];
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = 0x1E696A000uLL;
  if ([(AVCaptureInputPort *)selfCopy sourceDeviceType]== v7)
  {
    v10 = &stru_1F1CBCFE8;
  }

  else
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@", AVCaptureDeviceTypeToString(-[AVCaptureInputPort sourceDeviceType](selfCopy, "sourceDeviceType"))];
  }

  if ([(AVCaptureInputPort *)selfCopy sourceDevicePosition]== v8)
  {
    v11 = &stru_1F1CBCFE8;
    if (!Identifiers)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@", AVCaptureDevicePositionToString(-[AVCaptureInputPort sourceDevicePosition](selfCopy, "sourceDevicePosition"))];
    if (!Identifiers)
    {
      goto LABEL_38;
    }
  }

  if ([(__CFArray *)Identifiers count])
  {
    v12 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithFormat:", @" (");
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v13 = [(__CFArray *)Identifiers countByEnumeratingWithState:&v40 objects:v39 count:16];
    if (!v13)
    {
      goto LABEL_39;
    }

    v14 = v13;
    v32 = v11;
    v33 = v10;
    v34 = selfCopy;
    v15 = *v41;
    v16 = *MEMORY[0x1E69877B0];
    v17 = *MEMORY[0x1E69877B8];
    v37 = *MEMORY[0x1E69877A0];
    v35 = *MEMORY[0x1E69877C0];
    v36 = *MEMORY[0x1E69877A8];
    while (1)
    {
      v18 = 0;
      do
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(Identifiers);
        }

        v19 = *(*(&v40 + 1) + 8 * v18);
        if ([v19 isEqualToString:v16])
        {
          v20 = v12;
          v21 = @"face,";
LABEL_32:
          [(__CFString *)v20 appendString:v21];
          goto LABEL_33;
        }

        if ([v19 isEqualToString:v17])
        {
          v20 = v12;
          v21 = @"body,";
          goto LABEL_32;
        }

        if ([v19 isEqualToString:v37])
        {
          v20 = v12;
          v21 = @"cat,";
          goto LABEL_32;
        }

        if ([v19 isEqualToString:v36])
        {
          v20 = v12;
          v21 = @"dog,";
          goto LABEL_32;
        }

        if ([v19 isEqualToString:v35])
        {
          v20 = v12;
          v21 = @"saliency,";
          goto LABEL_32;
        }

        [(__CFString *)v12 appendFormat:@"%@, ", v19];
LABEL_33:
        [(__CFString *)v12 replaceCharactersInRange:[(__CFString *)v12 length]- 1 withString:1, @""]);
        ++v18;
      }

      while (v14 != v18);
      v22 = [(__CFArray *)Identifiers countByEnumeratingWithState:&v40 objects:v39 count:16];
      v14 = v22;
      if (!v22)
      {
        v10 = v33;
        selfCopy = v34;
        v9 = 0x1E696A000;
        v11 = v32;
        goto LABEL_39;
      }
    }
  }

LABEL_38:
  v12 = &stru_1F1CBCFE8;
LABEL_39:
  v23 = *(v9 + 3776);
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  v26 = objc_opt_class();
  v27 = NSStringFromClass(v26);
  v28 = selfCopy->_internal->input;
  mediaType = [(AVCaptureInputPort *)selfCopy mediaType];
  if (selfCopy->_internal->enabled)
  {
    v30 = "enabled";
  }

  else
  {
    v30 = "disabled";
  }

  return [v23 stringWithFormat:@"<%@: %p (%@: %p)%@%@ %@ %.4s%@ %s>", v25, selfCopy, v27, v28, v10, v11, mediaType, &v38, v12, v30];
}

- (void)_setFormatDescription:(opaqueCMFormatDescription *)description
{
  internal = self->_internal;
  formatDescription = internal->formatDescription;
  if (formatDescription != description)
  {
    internal->formatDescription = description;
    if (description)
    {
      CFRetain(description);
    }

    if (formatDescription)
    {
      CFRelease(formatDescription);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

    [defaultCenter postNotificationName:@"AVCaptureInputPortFormatDescriptionDidChangeNotification" object:self];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  internal = self->_internal;
  if (internal->enabled != enabled)
  {
    internal->enabled = enabled;
    [(AVCaptureInputPort *)self bumpChangeSeed];
  }
}

- (CMClockRef)clock
{
  internal = self->_internal;
  objc_sync_enter(internal);
  clock = self->_internal->clock;
  if (clock)
  {
    v5 = CFRetain(clock);
    v6 = CFAutorelease(v5);
  }

  else
  {
    v6 = 0;
  }

  objc_sync_exit(internal);
  return v6;
}

- (void)_setClock:(OpaqueCMClock *)clock
{
  internal = self->_internal;
  objc_sync_enter(internal);
  if (self->_internal->clock != clock)
  {
    [(AVCaptureInputPort *)self willChangeValueForKey:@"clock"];
    v6 = self->_internal;
    clock = v6->clock;
    v6->clock = clock;
    if (clock)
    {
      CFRetain(clock);
    }

    if (clock)
    {
      CFRelease(clock);
    }

    [(AVCaptureInputPort *)self didChangeValueForKey:@"clock"];
  }

  objc_sync_exit(internal);
}

- (void)_updateCenterStageUnavailableReasonsWithDevice:(id)device deviceInput:(id)input
{
  if ([device isCenterStageActive])
  {
    v6 = 0;
  }

  else
  {
    if ([device isGeometricDistortionCorrectionSupported])
    {
      if ([device isGeometricDistortionCorrectionEnabled])
      {
        v7 = 0;
      }

      else
      {
        v7 = 16;
      }
    }

    else
    {
      v7 = 0;
    }

    if ([device _isDepthDataDeliveryEnabled] && !AVCaptureCurrentClientIsFaceTimeVariant())
    {
      v7 |= 8uLL;
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    formats = [device formats];
    v9 = [formats countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(formats);
          }

          if ([*(*(&v16 + 1) + 8 * i) isCenterStageSupported])
          {
            if ([objc_msgSend(device "activeFormat")])
            {
              v6 = v7;
            }

            else
            {
              v6 = v7 | 2;
            }

            goto LABEL_23;
          }
        }

        v10 = [formats countByEnumeratingWithState:&v16 objects:v15 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v6 = v7 | 1;
  }

LABEL_23:
  if ([input isCenterStageAllowed])
  {
    v13 = v6;
  }

  else
  {
    v13 = v6 | 4;
  }

  if ([device isDockedTrackingActive])
  {
    v14 = v13 | 0x80;
  }

  else
  {
    v14 = v13;
  }

  [AVCaptureDevice setControlCenterVideoEffectUnavailableReasonsForVideoEffect:@"AVControlCenterVideoEffectCenterStage" reasons:v14];
}

- (void)_updateBackgroundBlurUnavailableReasonsWithDevice:(id)device deviceInput:(id)input
{
  if ([device isBackgroundBlurActive])
  {
    v6 = 0;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    formats = [device formats];
    v8 = [formats countByEnumeratingWithState:&v14 objects:v13 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      v6 = 1;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(formats);
          }

          if ([*(*(&v14 + 1) + 8 * i) isBackgroundBlurSupported])
          {
            if ([objc_msgSend(device "activeFormat")])
            {
              v6 = 0;
            }

            else
            {
              v6 = 2;
            }

            goto LABEL_16;
          }
        }

        v9 = [formats countByEnumeratingWithState:&v14 objects:v13 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v6 = 1;
    }
  }

LABEL_16:
  if ([input isBackgroundBlurAllowed])
  {
    v12 = v6;
  }

  else
  {
    v12 = v6 | 4;
  }

  [AVCaptureDevice setControlCenterVideoEffectUnavailableReasonsForVideoEffect:@"AVControlCenterVideoEffectBackgroundBlur" reasons:v12];
}

- (void)_updateStudioLightingUnavailableReasonsWithDevice:(id)device deviceInput:(id)input
{
  if ([device isStudioLightActive])
  {
LABEL_2:
    v6 = 0;
    goto LABEL_3;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  formats = [device formats];
  v9 = [formats countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    v6 = 1;
LABEL_9:
    v12 = 0;
    while (1)
    {
      if (*v15 != v11)
      {
        objc_enumerationMutation(formats);
      }

      if ([*(*(&v14 + 1) + 8 * v12) isStudioLightSupported])
      {
        goto LABEL_2;
      }

      if (v10 == ++v12)
      {
        v10 = [formats countByEnumeratingWithState:&v14 objects:v13 count:16];
        if (v10)
        {
          goto LABEL_9;
        }

        goto LABEL_3;
      }
    }
  }

  v6 = 1;
LABEL_3:
  if ([input isStudioLightingAllowed])
  {
    v7 = v6;
  }

  else
  {
    v7 = v6 | 4;
  }

  [AVCaptureDevice setControlCenterVideoEffectUnavailableReasonsForVideoEffect:@"AVControlCenterVideoEffectStudioLighting" reasons:v7];
}

- (void)_updateReactionEffectsUnavailableReasonsWithDevice:(id)device deviceInput:(id)input
{
  if ([device canPerformReactionEffects])
  {
LABEL_2:
    v6 = 0;
    goto LABEL_3;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  formats = [device formats];
  v9 = [formats countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    v6 = 1;
LABEL_9:
    v12 = 0;
    while (1)
    {
      if (*v15 != v11)
      {
        objc_enumerationMutation(formats);
      }

      if ([*(*(&v14 + 1) + 8 * v12) reactionEffectsSupported])
      {
        goto LABEL_2;
      }

      if (v10 == ++v12)
      {
        v10 = [formats countByEnumeratingWithState:&v14 objects:v13 count:16];
        if (v10)
        {
          goto LABEL_9;
        }

        goto LABEL_3;
      }
    }
  }

  v6 = 1;
LABEL_3:
  if ([input reactionEffectsAllowed])
  {
    v7 = v6;
  }

  else
  {
    v7 = v6 | 4;
  }

  [AVCaptureDevice setControlCenterVideoEffectUnavailableReasonsForVideoEffect:@"AVControlCenterVideoEffectReactions" reasons:v7];
}

- (void)_updateBackgroundReplacementUnavailableReasonsWithDevice:(id)device deviceInput:(id)input
{
  if ([device isBackgroundReplacementActive])
  {
LABEL_2:
    v6 = 0;
    goto LABEL_3;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  formats = [device formats];
  v9 = [formats countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    v6 = 1;
LABEL_9:
    v12 = 0;
    while (1)
    {
      if (*v15 != v11)
      {
        objc_enumerationMutation(formats);
      }

      if ([*(*(&v14 + 1) + 8 * v12) isBackgroundReplacementSupported])
      {
        goto LABEL_2;
      }

      if (v10 == ++v12)
      {
        v10 = [formats countByEnumeratingWithState:&v14 objects:v13 count:16];
        if (v10)
        {
          goto LABEL_9;
        }

        goto LABEL_3;
      }
    }
  }

  v6 = 1;
LABEL_3:
  if ([input isBackgroundReplacementAllowed])
  {
    v7 = v6;
  }

  else
  {
    v7 = v6 | 4;
  }

  [AVCaptureDevice setControlCenterVideoEffectUnavailableReasonsForVideoEffect:@"AVControlCenterVideoEffectBackgroundReplacement" reasons:v7];
}

- (id)valueForUndefinedKey:(id)key
{
  if ([key isEqualToString:@"clock"])
  {

    return [(AVCaptureInputPort *)self clock];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = AVCaptureInputPort;
    return [(AVCaptureInputPort *)&v6 valueForUndefinedKey:key];
  }
}

- (id)figCaptureSourceConfigurationForSessionPreset:(id)preset
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  internal = self->_internal;
  input = internal->input;
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = self->_internal->input;
      v10 = [objc_alloc(MEMORY[0x1E698F7E8]) initWithSourceType:4];
      [(AVCaptureInput *)v13 sourceID];
      [OUTLINED_FUNCTION_1_7() setSourceID:?];
      return v10;
    }

    return 0;
  }

  device = [(AVCaptureInput *)internal->input device];
  if (![device isConnected])
  {
    return 0;
  }

  v9 = objc_alloc(MEMORY[0x1E698F7E8]);
  [device figCaptureSource];
  v10 = [OUTLINED_FUNCTION_1_7() initWithSource:?];
  [v10 setSourceID:self->_internal->sourceID];
  v11 = [device hasMediaType:*MEMORY[0x1E6987608]];
  v12 = MEMORY[0x1E69875A0];
  if (v11 & 1) == 0 && ([device hasMediaType:@"pcld"] & 1) == 0 && (!objc_msgSend(device, "hasMediaType:", *MEMORY[0x1E69875D8]) || (objc_msgSend(device, "hasMediaType:", *v12)))
  {
LABEL_111:
    if ([device hasMediaType:*MEMORY[0x1E69875C0]])
    {
      [device _isDepthDataDeliveryEnabled];
      [OUTLINED_FUNCTION_1_7() setDepthDataDeliveryEnabled:?];
      if ([v10 depthDataDeliveryEnabled])
      {
        [objc_msgSend(device "activeDepthDataFormat")];
        [OUTLINED_FUNCTION_1_7() setDepthDataFormat:?];
        v47 = 0uLL;
        v38 = 0.0;
        v48 = 0;
        if (device)
        {
          [device activeDepthDataMinFrameDuration];
          if ((BYTE12(v47) & 0x1D) == 1)
          {
            if (v47)
            {
              v38 = SDWORD2(v47) / v47;
            }
          }
        }

        *&v37 = v38;
        [v10 setDepthDataMaxFrameRate:v37];
      }
    }

    if ([device hasMediaType:*v12])
    {
      AVGestaltGetBoolAnswer(@"AVGQCaptureMicrophoneUsesDecoupledIO");
      [OUTLINED_FUNCTION_1_7() setClientOSVersionSupportsDecoupledIO:?];
      [device clientAudioClockDeviceUID];
      [OUTLINED_FUNCTION_1_7() setClientAudioClockDeviceUID:?];
      [device preferredIOBufferDuration];
      [OUTLINED_FUNCTION_1_7() setPreferredIOBufferDuration:?];
      [(AVCaptureInput *)input remoteIOOutputFormat];
      [OUTLINED_FUNCTION_1_7() setRemoteIOOutputFormat:?];
    }

    return v10;
  }

  [(AVCaptureInput *)input isCenterStageAllowed];
  [OUTLINED_FUNCTION_4_0() _setCenterStageAllowed:?];
  [(AVCaptureInput *)input isBackgroundBlurAllowed];
  [OUTLINED_FUNCTION_4_0() _setBackgroundBlurAllowed:?];
  [(AVCaptureInput *)input isStudioLightingAllowed];
  [OUTLINED_FUNCTION_4_0() _setStudioLightingAllowed:?];
  [(AVCaptureInput *)input reactionEffectsAllowed];
  [OUTLINED_FUNCTION_4_0() _setReactionEffectsAllowed:?];
  [(AVCaptureInput *)input isBackgroundReplacementAllowed];
  [OUTLINED_FUNCTION_4_0() _setBackgroundReplacementAllowed:?];
  [objc_msgSend(device "activeFormat")];
  [OUTLINED_FUNCTION_1_7() setCinematicFramingSupported:?];
  if (![device isCenterStageActive] || !-[AVCaptureInput isCenterStageAllowed](input, "isCenterStageAllowed") || (-[AVCaptureInput isCinematicVideoCaptureEnabled](input, "isCinematicVideoCaptureEnabled") & 1) != 0)
  {
    if ([device isGeometricDistortionCorrectionEnabled] && objc_msgSend(objc_msgSend(objc_msgSend(device, "activeFormat"), "figCaptureSourceVideoFormat"), "geometricDistortionCorrectionFormat"))
    {
      [objc_msgSend(objc_msgSend(device "activeFormat")];
    }

    else
    {
      [objc_msgSend(device "activeFormat")];
    }

    goto LABEL_15;
  }

  [OUTLINED_FUNCTION_5_0() setCinematicFramingEnabled:?];
  +[AVCaptureDevice centerStageControlMode];
  [OUTLINED_FUNCTION_1_7() setCinematicFramingControlMode:?];
  [objc_msgSend(objc_msgSend(device "activeFormat")];
  [OUTLINED_FUNCTION_1_7() setRequiredFormat:?];
  if ([objc_msgSend(device "activeFormat")])
  {
    [objc_msgSend(objc_msgSend(device "activeFormat")];
LABEL_15:
    [OUTLINED_FUNCTION_1_7() setRequiredFormat:?];
  }

  [OUTLINED_FUNCTION_3_1() _updateCenterStageUnavailableReasonsWithDevice:? deviceInput:?];
  if ([objc_msgSend(device "deviceType")])
  {
    [OUTLINED_FUNCTION_5_0() setDeskCamEnabled:?];
    [objc_msgSend(objc_msgSend(device "activeFormat")];
    [OUTLINED_FUNCTION_1_7() setRequiredFormat:?];
  }

  if ([device isManualFramingEnabled] && (-[AVCaptureInput isCinematicVideoCaptureEnabled](input, "isCinematicVideoCaptureEnabled") & 1) == 0)
  {
    [OUTLINED_FUNCTION_5_0() setManualCinematicFramingEnabled:?];
    [objc_msgSend(objc_msgSend(device "activeFormat")];
    [OUTLINED_FUNCTION_1_7() setRequiredFormat:?];
    [device manualFramingPanningAngleX];
    [v10 setManualFramingPanningAngleX:?];
    [device manualFramingPanningAngleY];
    [v10 setManualFramingPanningAngleY:?];
    [device manualFramingDefaultZoomFactor];
    [v10 setManualFramingDefaultZoomFactor:?];
  }

  if (input)
  {
    [(AVCaptureInput *)input activeLockedVideoFrameDuration];
  }

  else
  {
    OUTLINED_FUNCTION_6_0();
  }

  FigCaptureFrameRateFromCMTime();
  [OUTLINED_FUNCTION_0_5() setLockedFrameRate:?];
  if (input)
  {
    [(AVCaptureInput *)input activeExternalSyncVideoFrameDuration];
  }

  else
  {
    OUTLINED_FUNCTION_6_0();
  }

  FigCaptureFrameRateFromCMTime();
  [OUTLINED_FUNCTION_0_5() setExternalSyncFrameRate:?];
  if (![v10 requiredFormat])
  {
    [objc_msgSend(device "activeFormat")];
    [OUTLINED_FUNCTION_1_7() setRequiredFormat:?];
  }

  if ([v10 requiredFormat])
  {
    [device isGazeSelectionEnabled];
    [OUTLINED_FUNCTION_1_7() setGazeSelectionEnabled:?];
    if ([device isDockedTrackingEnabled])
    {
      [OUTLINED_FUNCTION_5_0() setDockedTrackingEnabled:?];
    }

    if (device)
    {
      [device activeVideoMinFrameDuration];
    }

    else
    {
      OUTLINED_FUNCTION_6_0();
    }

    FigCaptureFrameRateFromCMTime();
    [OUTLINED_FUNCTION_0_5() setRequiredMaxFrameRate:?];
    if (device)
    {
      [device activeVideoMaxFrameDuration];
    }

    else
    {
      OUTLINED_FUNCTION_6_0();
    }

    FigCaptureFrameRateFromCMTime();
    [OUTLINED_FUNCTION_0_5() setRequiredMinFrameRate:?];
    if ([objc_msgSend(device "activeFormat")])
    {
      v14 = +[AVCaptureDevice isEligibleForBackgroundBlur];
    }

    else
    {
      v14 = 0;
    }

    [v10 setBackgroundBlurSupported:v14];
    if ([device isBackgroundBlurActive] && -[AVCaptureInput isBackgroundBlurAllowed](input, "isBackgroundBlurAllowed") && (-[AVCaptureInput isCinematicVideoCaptureEnabled](input, "isCinematicVideoCaptureEnabled") & 1) == 0)
    {
      [device isBackgroundBlurActive];
      [OUTLINED_FUNCTION_1_7() setBackgroundBlurEnabled:?];
    }

    [OUTLINED_FUNCTION_3_1() _updateBackgroundBlurUnavailableReasonsWithDevice:? deviceInput:?];
    if ([objc_msgSend(device "activeFormat")])
    {
      v15 = +[AVCaptureDevice isEligibleForStudioLighting];
    }

    else
    {
      v15 = 0;
    }

    [v10 setStudioLightingSupported:v15];
    if ([device isStudioLightActive] && -[AVCaptureInput isStudioLightingAllowed](input, "isStudioLightingAllowed") && (-[AVCaptureInput isCinematicVideoCaptureEnabled](input, "isCinematicVideoCaptureEnabled") & 1) == 0)
    {
      [device isStudioLightActive];
      [OUTLINED_FUNCTION_1_7() setStudioLightingEnabled:?];
    }

    [OUTLINED_FUNCTION_3_1() _updateStudioLightingUnavailableReasonsWithDevice:? deviceInput:?];
    if ([objc_msgSend(device "activeFormat")])
    {
      v16 = +[AVCaptureDevice isEligibleForReactionEffects];
    }

    else
    {
      v16 = 0;
    }

    [v10 setReactionEffectsSupported:v16];
    if ([device canPerformReactionEffects] && -[AVCaptureInput reactionEffectsAllowed](input, "reactionEffectsAllowed") && (-[AVCaptureInput isCinematicVideoCaptureEnabled](input, "isCinematicVideoCaptureEnabled") & 1) == 0)
    {
      [device canPerformReactionEffects];
      [OUTLINED_FUNCTION_1_7() setReactionEffectsEnabled:?];
    }

    [OUTLINED_FUNCTION_3_1() _updateReactionEffectsUnavailableReasonsWithDevice:? deviceInput:?];
    if ([objc_msgSend(device "activeFormat")])
    {
      v17 = +[AVCaptureDevice isEligibleForBackgroundReplacement];
    }

    else
    {
      v17 = 0;
    }

    [v10 setBackgroundReplacementSupported:v17];
    if ([device isBackgroundReplacementActive] && -[AVCaptureInput isBackgroundReplacementAllowed](input, "isBackgroundReplacementAllowed") && (-[AVCaptureInput isCinematicVideoCaptureEnabled](input, "isCinematicVideoCaptureEnabled") & 1) == 0)
    {
      [device isBackgroundReplacementActive];
      [OUTLINED_FUNCTION_1_7() setBackgroundReplacementEnabled:?];
    }

    [OUTLINED_FUNCTION_3_1() _updateBackgroundReplacementUnavailableReasonsWithDevice:? deviceInput:?];
    [device faceDrivenAEAFMode];
    [OUTLINED_FUNCTION_1_7() setFaceDrivenAEAFMode:?];
    AVGestaltGetBoolAnswer(@"AVGQCaptureFaceDrivenAEAFOnByDefault");
    [OUTLINED_FUNCTION_1_7() setFaceDrivenAEAFEnabledByDefault:?];
    [objc_msgSend(v10 "requiredFormat")];
    v19 = *&v18;
    if (input)
    {
      [(AVCaptureInput *)input videoMinFrameDurationOverride];
      if (v46)
      {
        [(AVCaptureInput *)input videoMinFrameDurationOverride];
        [(AVCaptureInput *)input videoMinFrameDurationOverride];
        v19 = v45 / v44;
        [objc_msgSend(v10 "requiredFormat")];
        if (v19 > v20)
        {
          [objc_msgSend(v10 "requiredFormat")];
          v19 = v21;
        }

        [v10 requiredMaxFrameRate];
        FigCaptureFrameRateAsFloat();
        if (v22 > v19)
        {
          FigCaptureFrameRateFromFloat();
          [OUTLINED_FUNCTION_0_5() setRequiredMaxFrameRate:?];
        }

        [v10 requiredMinFrameRate];
        FigCaptureFrameRateAsFloat();
        if (*&v18 > v19)
        {
          FigCaptureFrameRateFromFloat();
          [OUTLINED_FUNCTION_0_5() setRequiredMinFrameRate:?];
        }
      }
    }

    *&v18 = v19;
    [v10 setMaxFrameRateClientOverride:v18];
    [(AVCaptureInput *)input maxGainOverride];
    if (v23 >= 1.0)
    {
      [v10 setMaxGainClientOverride:?];
    }

    [device videoZoomRampAcceleration];
    [v10 setVideoZoomRampAcceleration:?];
    [device videoZoomFactor];
    *&v24 = v24;
    [v10 setVideoZoomFactor:v24];
    [device fallbackPrimaryConstituentDevicesAsDeviceTypes];
    [OUTLINED_FUNCTION_1_7() setFallbackPrimaryConstituentDeviceTypes:?];
    v25 = [preset isEqualToString:@"AVCaptureSessionPresetInputPriority"];
    if ((-[AVCaptureInput unifiedAutoExposureDefaultsEnabled](input, "unifiedAutoExposureDefaultsEnabled") & 1) != 0 || [device appliesSessionPresetMaxIntegrationTimeOverrideToActiveFormat])
    {
      v26 = 1;
      if (device)
      {
LABEL_79:
        [device activeMaxExposureDurationClientOverride];
LABEL_85:
        v47 = v42;
        v48 = v43;
        [v10 setMaxExposureDurationClientOverride:&v47];
        [v10 setApplyMaxExposureDurationFrameworkOverrideWhenAvailable:v26];
        if ([device isVideoHDREnabled])
        {
          v27 = !AVCaptureColorSpaceIsHDR([device activeColorSpace]);
        }

        else
        {
          v27 = 0;
        }

        if ([objc_msgSend(v10 "requiredFormat")])
        {
          v28 = v27 || AVCaptureColorSpaceIsHDR([device activeColorSpace]);
          [v10 setHighlightRecoveryEnabled:v28];
        }

        else
        {
          [v10 setSensorHDREnabled:v27];
        }

        [device activeColorSpace];
        [OUTLINED_FUNCTION_1_7() setColorSpace:?];
        if ([objc_msgSend(objc_msgSend(device "activeFormat")])
        {
          dynamicAspectRatioAndDynamicAspectRatioRequestID = [device dynamicAspectRatioAndDynamicAspectRatioRequestID];
          if (dynamicAspectRatioAndDynamicAspectRatioRequestID)
          {
            v30 = dynamicAspectRatioAndDynamicAspectRatioRequestID;
            v31 = [dynamicAspectRatioAndDynamicAspectRatioRequestID objectForKeyedSubscript:0x1F1CC5388];
            LODWORD(v30) = [objc_msgSend(v30 objectForKeyedSubscript:{0x1F1CC53A8), "intValue"}];
            [objc_msgSend(v10 "requiredFormat")];
            AVCaptureTranslateAVCaptureAspectRatioToFig(v31, v32);
            [OUTLINED_FUNCTION_1_7() setOutputAspectRatio:?];
            [v10 setOutputAspectRatioRequestID:v30];
          }
        }

        [(AVCaptureInput *)input sensitiveContentAnalyzerXPCObject];
        [OUTLINED_FUNCTION_1_7() setSensitiveContentAnalyzerXPCObject:?];
        [(AVCaptureInput *)input sensitiveContentAnalyzerEnabled];
        [OUTLINED_FUNCTION_1_7() setSensitiveContentAnalyzerEnabled:?];
        if (([device automaticallyAdjustsImageControlMode] & 1) == 0)
        {
          [device imageControlMode];
          [OUTLINED_FUNCTION_1_7() setImageControlMode:?];
        }

        dictionary = [MEMORY[0x1E695DF90] dictionary];
        if ([device isEyeDetectionSupported])
        {
          v34 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(device, "eyeDetectionEnabled")}];
          [dictionary setObject:v34 forKeyedSubscript:*MEMORY[0x1E69903A0]];
        }

        if ([device isEyeClosedDetectionSupported])
        {
          v35 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(device, "eyeClosedDetectionEnabled")}];
          [dictionary setObject:v35 forKeyedSubscript:*MEMORY[0x1E6990398]];
        }

        if ([device isSmileDetectionSupported])
        {
          v36 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(device, "smileDetectionEnabled")}];
          [dictionary setObject:v36 forKeyedSubscript:*MEMORY[0x1E69903A8]];
        }

        if ([dictionary count])
        {
          [v10 setFaceDetectionConfiguration:dictionary];
        }

        [device isLowLightVideoCaptureEnabled];
        [OUTLINED_FUNCTION_1_7() setLowLightVideoCaptureEnabled:?];
        [device isSpatialOverCaptureEnabled];
        [OUTLINED_FUNCTION_1_7() setSpatialOverCaptureEnabled:?];
        [device isNonDestructiveCropEnabled];
        [OUTLINED_FUNCTION_1_7() setNonDestructiveCropEnabled:?];
        [device normalizedNonDestructiveCropSize];
        [v10 setNormalizedNonDestructiveCropSize:?];
        [device isGeometricDistortionCorrectionEnabled];
        [OUTLINED_FUNCTION_1_7() setGeometricDistortionCorrectionEnabled:?];
        [device isVariableFrameRateVideoCaptureEnabled];
        [OUTLINED_FUNCTION_1_7() setVariableFrameRateVideoCaptureEnabled:?];
        [device videoStabilizationStrength];
        [OUTLINED_FUNCTION_1_7() setVideoStabilizationStrength:?];
        [(AVCaptureInput *)input isCinematicVideoCaptureEnabled];
        [OUTLINED_FUNCTION_1_7() setCinematicVideoCaptureEnabled:?];
        [(AVCaptureInput *)input simulatedAperture];
        [v10 setSimulatedAperture:?];
        [device isCameraLensSmudgeDetectionEnabled];
        [OUTLINED_FUNCTION_1_7() setLensSmudgeDetectionEnabled:?];
        if (device)
        {
          [device cameraLensSmudgeDetectionInterval];
        }

        else
        {
          v40 = 0uLL;
          v41 = 0;
        }

        v47 = v40;
        v48 = v41;
        [v10 setLensSmudgeDetectionInterval:&v47];
        goto LABEL_111;
      }
    }

    else
    {
      v26 = v25 ^ 1u;
      if (device)
      {
        goto LABEL_79;
      }
    }

    v42 = 0uLL;
    v43 = 0;
    goto LABEL_85;
  }

  return v10;
}

@end