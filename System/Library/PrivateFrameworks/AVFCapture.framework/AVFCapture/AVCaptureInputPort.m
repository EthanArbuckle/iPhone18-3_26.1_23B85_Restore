@interface AVCaptureInputPort
+ (AVCaptureInputPort)portWithInput:(id)a3 mediaType:(id)a4 formatDescription:(opaqueCMFormatDescription *)a5 enabled:(BOOL)a6 sourceDeviceType:(id)a7 sourceDevicePosition:(int64_t)a8;
- (AVCaptureDeviceType)sourceDeviceType;
- (AVMediaType)mediaType;
- (BOOL)sourcesFromConstituentDevice;
- (CMClockRef)clock;
- (CMFormatDescriptionRef)formatDescription;
- (id)_initWithInput:(id)a3 mediaType:(id)a4 formatDescription:(opaqueCMFormatDescription *)a5 enabled:(BOOL)a6 sourceDeviceType:(id)a7 sourceDevicePosition:(int64_t)a8;
- (id)description;
- (id)figCaptureSourceConfigurationForSessionPreset:(id)a3;
- (id)valueForUndefinedKey:(id)a3;
- (void)_setClock:(OpaqueCMClock *)a3;
- (void)_setFormatDescription:(opaqueCMFormatDescription *)a3;
- (void)_updateBackgroundBlurUnavailableReasonsWithDevice:(id)a3 deviceInput:(id)a4;
- (void)_updateBackgroundReplacementUnavailableReasonsWithDevice:(id)a3 deviceInput:(id)a4;
- (void)_updateCenterStageUnavailableReasonsWithDevice:(id)a3 deviceInput:(id)a4;
- (void)_updateReactionEffectsUnavailableReasonsWithDevice:(id)a3 deviceInput:(id)a4;
- (void)_updateStudioLightingUnavailableReasonsWithDevice:(id)a3 deviceInput:(id)a4;
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
    v3 = [(AVCaptureInput *)self->_internal->input device];
    v4 = [(AVCaptureInputPort *)self mediaType];
    if (v4 == *MEMORY[0x1E69875A0])
    {
      v6 = [v3 position];
      v5 = [(AVCaptureInputPort *)self sourceDevicePosition];
      goto LABEL_7;
    }

    LODWORD(v5) = [v3 isVirtualDevice];
    if (v5)
    {
      v6 = [v3 deviceType];
      v5 = [(AVCaptureInputPort *)self sourceDeviceType];
LABEL_7:
      LOBYTE(v5) = v6 != v5;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
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

+ (AVCaptureInputPort)portWithInput:(id)a3 mediaType:(id)a4 formatDescription:(opaqueCMFormatDescription *)a5 enabled:(BOOL)a6 sourceDeviceType:(id)a7 sourceDevicePosition:(int64_t)a8
{
  v8 = [objc_alloc(objc_opt_class()) _initWithInput:a3 mediaType:a4 formatDescription:a5 enabled:a6 sourceDeviceType:a7 sourceDevicePosition:a8];

  return v8;
}

- (id)_initWithInput:(id)a3 mediaType:(id)a4 formatDescription:(opaqueCMFormatDescription *)a5 enabled:(BOOL)a6 sourceDeviceType:(id)a7 sourceDevicePosition:(int64_t)a8
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
      v15->input = a3;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [a3 device];
        IsLaunchPrewarmingEnabled = AVCaptureSessionIsLaunchPrewarmingEnabled();
        v23 = objc_alloc(MEMORY[0x1E696AEC0]);
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        if (IsLaunchPrewarmingEnabled)
        {
          v20 = [v23 initWithFormat:@"<%@ %@>", v19, objc_msgSend(v16, "uniqueID")];
        }

        else
        {
          v20 = [v23 initWithFormat:@"<%@ %p>", v19, v16];
        }

        v14->_internal->sourceID = v20;
        v14->_internal->sourceDeviceType = a7;
        v14->_internal->sourceDevicePosition = a8;
      }

      v14->_internal->mediaType = [a4 copy];
      if (a5)
      {
        v21 = CFRetain(a5);
      }

      else
      {
        v21 = 0;
      }

      v14->_internal->formatDescription = v21;
      v14->_internal->enabled = a6;
      -[AVCaptureInputPort _setClock:](v14, "_setClock:", [a3 clock]);
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
  v2 = self;
  formatDescription = self->_internal->formatDescription;
  if (formatDescription)
  {
    MediaSubType = CMFormatDescriptionGetMediaSubType(formatDescription);
    if ([(NSString *)v2->_internal->mediaType isEqualToString:*MEMORY[0x1E69875D0]])
    {
      Identifiers = CMMetadataFormatDescriptionGetIdentifiers(v2->_internal->formatDescription);
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
    input = v2->_internal->input;
    v7 = [-[AVCaptureInput device](input "device")];
    v8 = [-[AVCaptureInput device](input "device")];
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = 0x1E696A000uLL;
  if ([(AVCaptureInputPort *)v2 sourceDeviceType]== v7)
  {
    v10 = &stru_1F1CBCFE8;
  }

  else
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@", AVCaptureDeviceTypeToString(-[AVCaptureInputPort sourceDeviceType](v2, "sourceDeviceType"))];
  }

  if ([(AVCaptureInputPort *)v2 sourceDevicePosition]== v8)
  {
    v11 = &stru_1F1CBCFE8;
    if (!Identifiers)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@", AVCaptureDevicePositionToString(-[AVCaptureInputPort sourceDevicePosition](v2, "sourceDevicePosition"))];
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
    v34 = v2;
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
        v2 = v34;
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
  v28 = v2->_internal->input;
  v29 = [(AVCaptureInputPort *)v2 mediaType];
  if (v2->_internal->enabled)
  {
    v30 = "enabled";
  }

  else
  {
    v30 = "disabled";
  }

  return [v23 stringWithFormat:@"<%@: %p (%@: %p)%@%@ %@ %.4s%@ %s>", v25, v2, v27, v28, v10, v11, v29, &v38, v12, v30];
}

- (void)_setFormatDescription:(opaqueCMFormatDescription *)a3
{
  internal = self->_internal;
  formatDescription = internal->formatDescription;
  if (formatDescription != a3)
  {
    internal->formatDescription = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (formatDescription)
    {
      CFRelease(formatDescription);
    }

    v6 = [MEMORY[0x1E696AD88] defaultCenter];

    [v6 postNotificationName:@"AVCaptureInputPortFormatDescriptionDidChangeNotification" object:self];
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

- (void)_setClock:(OpaqueCMClock *)a3
{
  internal = self->_internal;
  objc_sync_enter(internal);
  if (self->_internal->clock != a3)
  {
    [(AVCaptureInputPort *)self willChangeValueForKey:@"clock"];
    v6 = self->_internal;
    clock = v6->clock;
    v6->clock = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (clock)
    {
      CFRelease(clock);
    }

    [(AVCaptureInputPort *)self didChangeValueForKey:@"clock"];
  }

  objc_sync_exit(internal);
}

- (void)_updateCenterStageUnavailableReasonsWithDevice:(id)a3 deviceInput:(id)a4
{
  if ([a3 isCenterStageActive])
  {
    v6 = 0;
  }

  else
  {
    if ([a3 isGeometricDistortionCorrectionSupported])
    {
      if ([a3 isGeometricDistortionCorrectionEnabled])
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

    if ([a3 _isDepthDataDeliveryEnabled] && !AVCaptureCurrentClientIsFaceTimeVariant())
    {
      v7 |= 8uLL;
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [a3 formats];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v15 count:16];
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
            objc_enumerationMutation(v8);
          }

          if ([*(*(&v16 + 1) + 8 * i) isCenterStageSupported])
          {
            if ([objc_msgSend(a3 "activeFormat")])
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

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v15 count:16];
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
  if ([a4 isCenterStageAllowed])
  {
    v13 = v6;
  }

  else
  {
    v13 = v6 | 4;
  }

  if ([a3 isDockedTrackingActive])
  {
    v14 = v13 | 0x80;
  }

  else
  {
    v14 = v13;
  }

  [AVCaptureDevice setControlCenterVideoEffectUnavailableReasonsForVideoEffect:@"AVControlCenterVideoEffectCenterStage" reasons:v14];
}

- (void)_updateBackgroundBlurUnavailableReasonsWithDevice:(id)a3 deviceInput:(id)a4
{
  if ([a3 isBackgroundBlurActive])
  {
    v6 = 0;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [a3 formats];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
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
            objc_enumerationMutation(v7);
          }

          if ([*(*(&v14 + 1) + 8 * i) isBackgroundBlurSupported])
          {
            if ([objc_msgSend(a3 "activeFormat")])
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

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
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
  if ([a4 isBackgroundBlurAllowed])
  {
    v12 = v6;
  }

  else
  {
    v12 = v6 | 4;
  }

  [AVCaptureDevice setControlCenterVideoEffectUnavailableReasonsForVideoEffect:@"AVControlCenterVideoEffectBackgroundBlur" reasons:v12];
}

- (void)_updateStudioLightingUnavailableReasonsWithDevice:(id)a3 deviceInput:(id)a4
{
  if ([a3 isStudioLightActive])
  {
LABEL_2:
    v6 = 0;
    goto LABEL_3;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [a3 formats];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v13 count:16];
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
        objc_enumerationMutation(v8);
      }

      if ([*(*(&v14 + 1) + 8 * v12) isStudioLightSupported])
      {
        goto LABEL_2;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v13 count:16];
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
  if ([a4 isStudioLightingAllowed])
  {
    v7 = v6;
  }

  else
  {
    v7 = v6 | 4;
  }

  [AVCaptureDevice setControlCenterVideoEffectUnavailableReasonsForVideoEffect:@"AVControlCenterVideoEffectStudioLighting" reasons:v7];
}

- (void)_updateReactionEffectsUnavailableReasonsWithDevice:(id)a3 deviceInput:(id)a4
{
  if ([a3 canPerformReactionEffects])
  {
LABEL_2:
    v6 = 0;
    goto LABEL_3;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [a3 formats];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v13 count:16];
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
        objc_enumerationMutation(v8);
      }

      if ([*(*(&v14 + 1) + 8 * v12) reactionEffectsSupported])
      {
        goto LABEL_2;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v13 count:16];
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
  if ([a4 reactionEffectsAllowed])
  {
    v7 = v6;
  }

  else
  {
    v7 = v6 | 4;
  }

  [AVCaptureDevice setControlCenterVideoEffectUnavailableReasonsForVideoEffect:@"AVControlCenterVideoEffectReactions" reasons:v7];
}

- (void)_updateBackgroundReplacementUnavailableReasonsWithDevice:(id)a3 deviceInput:(id)a4
{
  if ([a3 isBackgroundReplacementActive])
  {
LABEL_2:
    v6 = 0;
    goto LABEL_3;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [a3 formats];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v13 count:16];
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
        objc_enumerationMutation(v8);
      }

      if ([*(*(&v14 + 1) + 8 * v12) isBackgroundReplacementSupported])
      {
        goto LABEL_2;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v13 count:16];
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
  if ([a4 isBackgroundReplacementAllowed])
  {
    v7 = v6;
  }

  else
  {
    v7 = v6 | 4;
  }

  [AVCaptureDevice setControlCenterVideoEffectUnavailableReasonsForVideoEffect:@"AVControlCenterVideoEffectBackgroundReplacement" reasons:v7];
}

- (id)valueForUndefinedKey:(id)a3
{
  if ([a3 isEqualToString:@"clock"])
  {

    return [(AVCaptureInputPort *)self clock];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = AVCaptureInputPort;
    return [(AVCaptureInputPort *)&v6 valueForUndefinedKey:a3];
  }
}

- (id)figCaptureSourceConfigurationForSessionPreset:(id)a3
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

  v8 = [(AVCaptureInput *)internal->input device];
  if (![v8 isConnected])
  {
    return 0;
  }

  v9 = objc_alloc(MEMORY[0x1E698F7E8]);
  [v8 figCaptureSource];
  v10 = [OUTLINED_FUNCTION_1_7() initWithSource:?];
  [v10 setSourceID:self->_internal->sourceID];
  v11 = [v8 hasMediaType:*MEMORY[0x1E6987608]];
  v12 = MEMORY[0x1E69875A0];
  if (v11 & 1) == 0 && ([v8 hasMediaType:@"pcld"] & 1) == 0 && (!objc_msgSend(v8, "hasMediaType:", *MEMORY[0x1E69875D8]) || (objc_msgSend(v8, "hasMediaType:", *v12)))
  {
LABEL_111:
    if ([v8 hasMediaType:*MEMORY[0x1E69875C0]])
    {
      [v8 _isDepthDataDeliveryEnabled];
      [OUTLINED_FUNCTION_1_7() setDepthDataDeliveryEnabled:?];
      if ([v10 depthDataDeliveryEnabled])
      {
        [objc_msgSend(v8 "activeDepthDataFormat")];
        [OUTLINED_FUNCTION_1_7() setDepthDataFormat:?];
        v47 = 0uLL;
        v38 = 0.0;
        v48 = 0;
        if (v8)
        {
          [v8 activeDepthDataMinFrameDuration];
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

    if ([v8 hasMediaType:*v12])
    {
      AVGestaltGetBoolAnswer(@"AVGQCaptureMicrophoneUsesDecoupledIO");
      [OUTLINED_FUNCTION_1_7() setClientOSVersionSupportsDecoupledIO:?];
      [v8 clientAudioClockDeviceUID];
      [OUTLINED_FUNCTION_1_7() setClientAudioClockDeviceUID:?];
      [v8 preferredIOBufferDuration];
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
  [objc_msgSend(v8 "activeFormat")];
  [OUTLINED_FUNCTION_1_7() setCinematicFramingSupported:?];
  if (![v8 isCenterStageActive] || !-[AVCaptureInput isCenterStageAllowed](input, "isCenterStageAllowed") || (-[AVCaptureInput isCinematicVideoCaptureEnabled](input, "isCinematicVideoCaptureEnabled") & 1) != 0)
  {
    if ([v8 isGeometricDistortionCorrectionEnabled] && objc_msgSend(objc_msgSend(objc_msgSend(v8, "activeFormat"), "figCaptureSourceVideoFormat"), "geometricDistortionCorrectionFormat"))
    {
      [objc_msgSend(objc_msgSend(v8 "activeFormat")];
    }

    else
    {
      [objc_msgSend(v8 "activeFormat")];
    }

    goto LABEL_15;
  }

  [OUTLINED_FUNCTION_5_0() setCinematicFramingEnabled:?];
  +[AVCaptureDevice centerStageControlMode];
  [OUTLINED_FUNCTION_1_7() setCinematicFramingControlMode:?];
  [objc_msgSend(objc_msgSend(v8 "activeFormat")];
  [OUTLINED_FUNCTION_1_7() setRequiredFormat:?];
  if ([objc_msgSend(v8 "activeFormat")])
  {
    [objc_msgSend(objc_msgSend(v8 "activeFormat")];
LABEL_15:
    [OUTLINED_FUNCTION_1_7() setRequiredFormat:?];
  }

  [OUTLINED_FUNCTION_3_1() _updateCenterStageUnavailableReasonsWithDevice:? deviceInput:?];
  if ([objc_msgSend(v8 "deviceType")])
  {
    [OUTLINED_FUNCTION_5_0() setDeskCamEnabled:?];
    [objc_msgSend(objc_msgSend(v8 "activeFormat")];
    [OUTLINED_FUNCTION_1_7() setRequiredFormat:?];
  }

  if ([v8 isManualFramingEnabled] && (-[AVCaptureInput isCinematicVideoCaptureEnabled](input, "isCinematicVideoCaptureEnabled") & 1) == 0)
  {
    [OUTLINED_FUNCTION_5_0() setManualCinematicFramingEnabled:?];
    [objc_msgSend(objc_msgSend(v8 "activeFormat")];
    [OUTLINED_FUNCTION_1_7() setRequiredFormat:?];
    [v8 manualFramingPanningAngleX];
    [v10 setManualFramingPanningAngleX:?];
    [v8 manualFramingPanningAngleY];
    [v10 setManualFramingPanningAngleY:?];
    [v8 manualFramingDefaultZoomFactor];
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
    [objc_msgSend(v8 "activeFormat")];
    [OUTLINED_FUNCTION_1_7() setRequiredFormat:?];
  }

  if ([v10 requiredFormat])
  {
    [v8 isGazeSelectionEnabled];
    [OUTLINED_FUNCTION_1_7() setGazeSelectionEnabled:?];
    if ([v8 isDockedTrackingEnabled])
    {
      [OUTLINED_FUNCTION_5_0() setDockedTrackingEnabled:?];
    }

    if (v8)
    {
      [v8 activeVideoMinFrameDuration];
    }

    else
    {
      OUTLINED_FUNCTION_6_0();
    }

    FigCaptureFrameRateFromCMTime();
    [OUTLINED_FUNCTION_0_5() setRequiredMaxFrameRate:?];
    if (v8)
    {
      [v8 activeVideoMaxFrameDuration];
    }

    else
    {
      OUTLINED_FUNCTION_6_0();
    }

    FigCaptureFrameRateFromCMTime();
    [OUTLINED_FUNCTION_0_5() setRequiredMinFrameRate:?];
    if ([objc_msgSend(v8 "activeFormat")])
    {
      v14 = +[AVCaptureDevice isEligibleForBackgroundBlur];
    }

    else
    {
      v14 = 0;
    }

    [v10 setBackgroundBlurSupported:v14];
    if ([v8 isBackgroundBlurActive] && -[AVCaptureInput isBackgroundBlurAllowed](input, "isBackgroundBlurAllowed") && (-[AVCaptureInput isCinematicVideoCaptureEnabled](input, "isCinematicVideoCaptureEnabled") & 1) == 0)
    {
      [v8 isBackgroundBlurActive];
      [OUTLINED_FUNCTION_1_7() setBackgroundBlurEnabled:?];
    }

    [OUTLINED_FUNCTION_3_1() _updateBackgroundBlurUnavailableReasonsWithDevice:? deviceInput:?];
    if ([objc_msgSend(v8 "activeFormat")])
    {
      v15 = +[AVCaptureDevice isEligibleForStudioLighting];
    }

    else
    {
      v15 = 0;
    }

    [v10 setStudioLightingSupported:v15];
    if ([v8 isStudioLightActive] && -[AVCaptureInput isStudioLightingAllowed](input, "isStudioLightingAllowed") && (-[AVCaptureInput isCinematicVideoCaptureEnabled](input, "isCinematicVideoCaptureEnabled") & 1) == 0)
    {
      [v8 isStudioLightActive];
      [OUTLINED_FUNCTION_1_7() setStudioLightingEnabled:?];
    }

    [OUTLINED_FUNCTION_3_1() _updateStudioLightingUnavailableReasonsWithDevice:? deviceInput:?];
    if ([objc_msgSend(v8 "activeFormat")])
    {
      v16 = +[AVCaptureDevice isEligibleForReactionEffects];
    }

    else
    {
      v16 = 0;
    }

    [v10 setReactionEffectsSupported:v16];
    if ([v8 canPerformReactionEffects] && -[AVCaptureInput reactionEffectsAllowed](input, "reactionEffectsAllowed") && (-[AVCaptureInput isCinematicVideoCaptureEnabled](input, "isCinematicVideoCaptureEnabled") & 1) == 0)
    {
      [v8 canPerformReactionEffects];
      [OUTLINED_FUNCTION_1_7() setReactionEffectsEnabled:?];
    }

    [OUTLINED_FUNCTION_3_1() _updateReactionEffectsUnavailableReasonsWithDevice:? deviceInput:?];
    if ([objc_msgSend(v8 "activeFormat")])
    {
      v17 = +[AVCaptureDevice isEligibleForBackgroundReplacement];
    }

    else
    {
      v17 = 0;
    }

    [v10 setBackgroundReplacementSupported:v17];
    if ([v8 isBackgroundReplacementActive] && -[AVCaptureInput isBackgroundReplacementAllowed](input, "isBackgroundReplacementAllowed") && (-[AVCaptureInput isCinematicVideoCaptureEnabled](input, "isCinematicVideoCaptureEnabled") & 1) == 0)
    {
      [v8 isBackgroundReplacementActive];
      [OUTLINED_FUNCTION_1_7() setBackgroundReplacementEnabled:?];
    }

    [OUTLINED_FUNCTION_3_1() _updateBackgroundReplacementUnavailableReasonsWithDevice:? deviceInput:?];
    [v8 faceDrivenAEAFMode];
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

    [v8 videoZoomRampAcceleration];
    [v10 setVideoZoomRampAcceleration:?];
    [v8 videoZoomFactor];
    *&v24 = v24;
    [v10 setVideoZoomFactor:v24];
    [v8 fallbackPrimaryConstituentDevicesAsDeviceTypes];
    [OUTLINED_FUNCTION_1_7() setFallbackPrimaryConstituentDeviceTypes:?];
    v25 = [a3 isEqualToString:@"AVCaptureSessionPresetInputPriority"];
    if ((-[AVCaptureInput unifiedAutoExposureDefaultsEnabled](input, "unifiedAutoExposureDefaultsEnabled") & 1) != 0 || [v8 appliesSessionPresetMaxIntegrationTimeOverrideToActiveFormat])
    {
      v26 = 1;
      if (v8)
      {
LABEL_79:
        [v8 activeMaxExposureDurationClientOverride];
LABEL_85:
        v47 = v42;
        v48 = v43;
        [v10 setMaxExposureDurationClientOverride:&v47];
        [v10 setApplyMaxExposureDurationFrameworkOverrideWhenAvailable:v26];
        if ([v8 isVideoHDREnabled])
        {
          v27 = !AVCaptureColorSpaceIsHDR([v8 activeColorSpace]);
        }

        else
        {
          v27 = 0;
        }

        if ([objc_msgSend(v10 "requiredFormat")])
        {
          v28 = v27 || AVCaptureColorSpaceIsHDR([v8 activeColorSpace]);
          [v10 setHighlightRecoveryEnabled:v28];
        }

        else
        {
          [v10 setSensorHDREnabled:v27];
        }

        [v8 activeColorSpace];
        [OUTLINED_FUNCTION_1_7() setColorSpace:?];
        if ([objc_msgSend(objc_msgSend(v8 "activeFormat")])
        {
          v29 = [v8 dynamicAspectRatioAndDynamicAspectRatioRequestID];
          if (v29)
          {
            v30 = v29;
            v31 = [v29 objectForKeyedSubscript:0x1F1CC5388];
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
        if (([v8 automaticallyAdjustsImageControlMode] & 1) == 0)
        {
          [v8 imageControlMode];
          [OUTLINED_FUNCTION_1_7() setImageControlMode:?];
        }

        v33 = [MEMORY[0x1E695DF90] dictionary];
        if ([v8 isEyeDetectionSupported])
        {
          v34 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "eyeDetectionEnabled")}];
          [v33 setObject:v34 forKeyedSubscript:*MEMORY[0x1E69903A0]];
        }

        if ([v8 isEyeClosedDetectionSupported])
        {
          v35 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "eyeClosedDetectionEnabled")}];
          [v33 setObject:v35 forKeyedSubscript:*MEMORY[0x1E6990398]];
        }

        if ([v8 isSmileDetectionSupported])
        {
          v36 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "smileDetectionEnabled")}];
          [v33 setObject:v36 forKeyedSubscript:*MEMORY[0x1E69903A8]];
        }

        if ([v33 count])
        {
          [v10 setFaceDetectionConfiguration:v33];
        }

        [v8 isLowLightVideoCaptureEnabled];
        [OUTLINED_FUNCTION_1_7() setLowLightVideoCaptureEnabled:?];
        [v8 isSpatialOverCaptureEnabled];
        [OUTLINED_FUNCTION_1_7() setSpatialOverCaptureEnabled:?];
        [v8 isNonDestructiveCropEnabled];
        [OUTLINED_FUNCTION_1_7() setNonDestructiveCropEnabled:?];
        [v8 normalizedNonDestructiveCropSize];
        [v10 setNormalizedNonDestructiveCropSize:?];
        [v8 isGeometricDistortionCorrectionEnabled];
        [OUTLINED_FUNCTION_1_7() setGeometricDistortionCorrectionEnabled:?];
        [v8 isVariableFrameRateVideoCaptureEnabled];
        [OUTLINED_FUNCTION_1_7() setVariableFrameRateVideoCaptureEnabled:?];
        [v8 videoStabilizationStrength];
        [OUTLINED_FUNCTION_1_7() setVideoStabilizationStrength:?];
        [(AVCaptureInput *)input isCinematicVideoCaptureEnabled];
        [OUTLINED_FUNCTION_1_7() setCinematicVideoCaptureEnabled:?];
        [(AVCaptureInput *)input simulatedAperture];
        [v10 setSimulatedAperture:?];
        [v8 isCameraLensSmudgeDetectionEnabled];
        [OUTLINED_FUNCTION_1_7() setLensSmudgeDetectionEnabled:?];
        if (v8)
        {
          [v8 cameraLensSmudgeDetectionInterval];
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
      if (v8)
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