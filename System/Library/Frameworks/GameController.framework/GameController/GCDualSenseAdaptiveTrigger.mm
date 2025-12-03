@interface GCDualSenseAdaptiveTrigger
- (void)dealloc;
- (void)locateAdaptiveTriggerComponent;
- (void)locateControllerManagerApp;
- (void)observeChangesForAdaptiveTriggers:(id)triggers;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)sendAdaptiveTriggerPayload:(id)payload;
- (void)sendAdaptiveTriggerPayloadDict:(id)dict;
- (void)setModeFeedbackWithResistiveStrengths:(GCDualSenseAdaptiveTriggerPositionalResistiveStrengths *)positionalResistiveStrengths;
- (void)setModeFeedbackWithStartPosition:(float)startPosition resistiveStrength:(float)resistiveStrength;
- (void)setModeOff;
- (void)setModeSlopeFeedbackWithStartPosition:(float)startPosition endPosition:(float)endPosition startStrength:(float)startStrength endStrength:(float)endStrength;
- (void)setModeVibrationWithAmplitudes:(GCDualSenseAdaptiveTriggerPositionalAmplitudes *)positionalAmplitudes frequency:(float)frequency;
- (void)setModeVibrationWithStartPosition:(float)startPosition amplitude:(float)amplitude frequency:(float)frequency;
- (void)setModeWeaponWithStartPosition:(float)startPosition endPosition:(float)endPosition resistiveStrength:(float)resistiveStrength;
- (void)stopObservingChangesForAdaptiveTriggers:(id)triggers;
- (void)updateStatus;
@end

@implementation GCDualSenseAdaptiveTrigger

- (void)dealloc
{
  [(GCDualSenseAdaptiveTrigger *)self stopObservingChangesForAdaptiveTriggers:self->_adaptiveTriggers];
  v3.receiver = self;
  v3.super_class = GCDualSenseAdaptiveTrigger;
  [(GCDualSenseAdaptiveTrigger *)&v3 dealloc];
}

- (void)setModeSlopeFeedbackWithStartPosition:(float)startPosition endPosition:(float)endPosition startStrength:(float)startStrength endStrength:(float)endStrength
{
  if (startPosition <= endPosition)
  {
    v14 = [GCDeviceAdaptiveTriggersPayload alloc];
    HIDWORD(v17) = 0;
    *&v18 = fmaxf(startPosition, 0.0);
    if (*&v18 > 1.0)
    {
      *&v18 = 1.0;
    }

    *&v15 = fmaxf(endPosition, 0.0);
    if (*&v15 > 1.0)
    {
      *&v15 = 1.0;
    }

    *&v16 = fmaxf(startStrength, 0.0);
    if (*&v16 > 1.0)
    {
      *&v16 = 1.0;
    }

    *&v17 = fmaxf(endStrength, 0.0);
    if (*&v17 > 1.0)
    {
      *&v17 = 1.0;
    }

    v19 = [(GCDeviceAdaptiveTriggersPayload *)v14 initSlopeFeedbackWithStartPosition:v18 endPosition:v15 startStrength:v16 endStrength:v17];
    [(GCDualSenseAdaptiveTrigger *)self sendAdaptiveTriggerPayload:v19];
  }

  else
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];

    [v7 raise:v8 format:@"endPosition must be larger than startPosition"];
  }
}

- (void)setModeFeedbackWithStartPosition:(float)startPosition resistiveStrength:(float)resistiveStrength
{
  v7 = [GCDeviceAdaptiveTriggersPayload alloc];
  HIDWORD(v8) = 0;
  *&v9 = fmaxf(startPosition, 0.0);
  if (*&v9 > 1.0)
  {
    *&v9 = 1.0;
  }

  *&v8 = fmaxf(resistiveStrength, 0.0);
  if (*&v8 > 1.0)
  {
    *&v8 = 1.0;
  }

  v10 = [(GCDeviceAdaptiveTriggersPayload *)v7 initFeedbackWithStartPosition:v9 resistiveStrength:v8];
  [(GCDualSenseAdaptiveTrigger *)self sendAdaptiveTriggerPayload:v10];
}

- (void)setModeWeaponWithStartPosition:(float)startPosition endPosition:(float)endPosition resistiveStrength:(float)resistiveStrength
{
  v9 = [GCDeviceAdaptiveTriggersPayload alloc];
  HIDWORD(v11) = 0;
  *&v12 = fmaxf(startPosition, 0.0);
  if (*&v12 > 1.0)
  {
    *&v12 = 1.0;
  }

  if (startPosition >= endPosition)
  {
    *&v10 = startPosition;
  }

  else
  {
    *&v10 = endPosition;
  }

  if (*&v10 > 1.0)
  {
    *&v10 = 1.0;
  }

  *&v11 = fmaxf(resistiveStrength, 0.0);
  if (*&v11 > 1.0)
  {
    *&v11 = 1.0;
  }

  v13 = [(GCDeviceAdaptiveTriggersPayload *)v9 initWeaponWithStartPosition:v12 endPosition:v10 resistiveStrength:v11];
  [(GCDualSenseAdaptiveTrigger *)self sendAdaptiveTriggerPayload:v13];
}

- (void)setModeFeedbackWithResistiveStrengths:(GCDualSenseAdaptiveTriggerPositionalResistiveStrengths *)positionalResistiveStrengths
{
  _Q1 = vmaxnmq_f32(*positionalResistiveStrengths->values, 0);
  __asm { FMOV            V3.4S, #1.0 }

  v13 = vbslq_s8(vcgtq_f32(_Q1, _Q3), _Q3, _Q1);
  v10 = vmaxnmq_f32(*&positionalResistiveStrengths->values[4], 0);
  v12 = vbslq_s8(vcgtq_f32(v10, _Q3), _Q3, v10);
  *v10.f32 = vmaxnm_f32(*&positionalResistiveStrengths->values[8], 0);
  __asm { FMOV            V1.2S, #1.0 }

  v14[0] = v13;
  v14[1] = v12;
  v15 = vbsl_s8(vcgt_f32(*v10.f32, *_Q1.f32), *_Q1.f32, *v10.f32);
  v11 = [[GCDeviceAdaptiveTriggersPayload alloc] initFeedbackWithResistiveStrengths:v14];
  [(GCDualSenseAdaptiveTrigger *)self sendAdaptiveTriggerPayload:v11];
}

- (void)setModeVibrationWithStartPosition:(float)startPosition amplitude:(float)amplitude frequency:(float)frequency
{
  v9 = [GCDeviceAdaptiveTriggersPayload alloc];
  HIDWORD(v11) = 0;
  *&v12 = fmaxf(startPosition, 0.0);
  if (*&v12 > 1.0)
  {
    *&v12 = 1.0;
  }

  *&v10 = fmaxf(amplitude, 0.0);
  if (*&v10 > 1.0)
  {
    *&v10 = 1.0;
  }

  *&v11 = fmaxf(frequency, 0.0);
  if (*&v11 > 1.0)
  {
    *&v11 = 1.0;
  }

  v13 = [(GCDeviceAdaptiveTriggersPayload *)v9 initVibrationWithStartPosition:v12 amplitude:v10 frequency:v11];
  [(GCDualSenseAdaptiveTrigger *)self sendAdaptiveTriggerPayload:v13];
}

- (void)setModeVibrationWithAmplitudes:(GCDualSenseAdaptiveTriggerPositionalAmplitudes *)positionalAmplitudes frequency:(float)frequency
{
  _Q1 = vmaxnmq_f32(*positionalAmplitudes->values, 0);
  __asm { FMOV            V3.4S, #1.0 }

  v15 = vbslq_s8(vcgtq_f32(_Q1, _Q3), _Q3, _Q1);
  v12 = vmaxnmq_f32(*&positionalAmplitudes->values[4], 0);
  v14 = vbslq_s8(vcgtq_f32(v12, _Q3), _Q3, v12);
  *v12.f32 = vmaxnm_f32(*&positionalAmplitudes->values[8], 0);
  __asm { FMOV            V1.2S, #1.0 }

  v16[0] = v15;
  v16[1] = v14;
  v17 = vbsl_s8(vcgt_f32(*v12.f32, *_Q1.f32), *_Q1.f32, *v12.f32);
  v13 = [[GCDeviceAdaptiveTriggersPayload alloc] initVibrationWithAmplitudes:v16 frequency:COERCE_DOUBLE(__PAIR64__(v14.u32[1], LODWORD(frequency)))];
  [(GCDualSenseAdaptiveTrigger *)self sendAdaptiveTriggerPayload:v13];
}

- (void)setModeOff
{
  initOff = [[GCDeviceAdaptiveTriggersPayload alloc] initOff];
  [(GCDualSenseAdaptiveTrigger *)self sendAdaptiveTriggerPayload:initOff];
}

- (void)locateControllerManagerApp
{
  v0 = getGCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_1(&dword_1D2CD5000, v1, v2, "Unable to locate _hidInfo || _hidInfo.registryID", v3, v4, v5, v6, 0);
  }
}

- (void)locateAdaptiveTriggerComponent
{
  v0 = getGCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_1(&dword_1D2CD5000, v1, v2, "Unable to locate GCAdaptiveTriggers", v3, v4, v5, v6, 0);
  }
}

- (void)sendAdaptiveTriggerPayload:(id)payload
{
  payloadCopy = payload;
  [(GCDualSenseAdaptiveTrigger *)self locateAdaptiveTriggerComponent];
  adaptiveTriggers = self->_adaptiveTriggers;
  if (adaptiveTriggers)
  {
    if (self->_index)
    {
      [(GCAdaptiveTriggers *)adaptiveTriggers rightTrigger];
    }

    else
    {
      [(GCAdaptiveTriggers *)adaptiveTriggers leftTrigger];
    }
    v5 = ;
    if (([v5 isEqual:payloadCopy] & 1) == 0)
    {
      v6 = self->_adaptiveTriggers;
      if (self->_index)
      {
        [(GCAdaptiveTriggers *)v6 setRightTrigger:payloadCopy];
      }

      else
      {
        [(GCAdaptiveTriggers *)v6 setLeftTrigger:payloadCopy];
      }
    }
  }
}

- (void)sendAdaptiveTriggerPayloadDict:(id)dict
{
  dictCopy = dict;
  [(GCDualSenseAdaptiveTrigger *)self locateControllerManagerApp];
  hidInfo = self->_hidInfo;
  if (hidInfo)
  {
    [(GCControllerHIDInfo *)hidInfo setProperty:dictCopy forKey:@"AdaptiveTriggerPayload"];
    index = self->_index;
    adaptiveTriggers = self->_adaptiveTriggers;
    initOff = [[GCDeviceAdaptiveTriggersPayload alloc] initOff];
    if (index)
    {
      [(GCAdaptiveTriggers *)adaptiveTriggers setRightTrigger:initOff];
    }

    else
    {
      [(GCAdaptiveTriggers *)adaptiveTriggers setLeftTrigger:initOff];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)observeChangesForAdaptiveTriggers:(id)triggers
{
  triggersCopy = triggers;
  if (triggersCopy)
  {
    if (self->_index)
    {
      v5 = @"rightStatus";
    }

    else
    {
      v5 = @"leftStatus";
    }

    v6 = triggersCopy;
    [triggersCopy addObserver:self forKeyPath:v5 options:0 context:0];
    triggersCopy = v6;
  }
}

- (void)stopObservingChangesForAdaptiveTriggers:(id)triggers
{
  triggersCopy = triggers;
  if (triggersCopy)
  {
    if (self->_index)
    {
      v5 = @"rightStatus";
    }

    else
    {
      v5 = @"leftStatus";
    }

    v6 = triggersCopy;
    [triggersCopy removeObserver:self forKeyPath:v5];
    triggersCopy = v6;
  }
}

- (void)updateStatus
{
  index = self->_index;
  adaptiveTriggers = self->_adaptiveTriggers;
  if (index)
  {
    [(GCAdaptiveTriggers *)adaptiveTriggers rightStatus];
  }

  else
  {
    [(GCAdaptiveTriggers *)adaptiveTriggers leftStatus];
  }
  v17 = ;
  mode = [v17 mode];
  unsignedIntValue = [mode unsignedIntValue];

  if ([(GCDualSenseAdaptiveTrigger *)self mode]!= unsignedIntValue)
  {
    [(GCDualSenseAdaptiveTrigger *)self setMode:unsignedIntValue];
  }

  armPosition = [v17 armPosition];
  v8 = [armPosition unsignedIntValue] / 9.0;

  [(GCDualSenseAdaptiveTrigger *)self armPosition];
  if (v8 != *&v9)
  {
    *&v9 = v8;
    [(GCDualSenseAdaptiveTrigger *)self setArmPosition:v9];
  }

  status = [v17 status];
  unsignedIntValue2 = [status unsignedIntValue];

  mode2 = [(GCDualSenseAdaptiveTrigger *)self mode];
  v13 = -1;
  if (mode2 <= GCDualSenseAdaptiveTriggerModeWeapon)
  {
    if (mode2 == GCDualSenseAdaptiveTriggerModeFeedback)
    {
      v13 = unsignedIntValue2 == 1;
      goto LABEL_26;
    }

    if (mode2 != GCDualSenseAdaptiveTriggerModeWeapon)
    {
      goto LABEL_26;
    }

    v14 = 2;
    if (unsignedIntValue2 == 2)
    {
      v14 = 4;
    }

    v15 = unsignedIntValue2 == 1;
    v16 = 3;
    goto LABEL_19;
  }

  if (mode2 != GCDualSenseAdaptiveTriggerModeVibration)
  {
    if (mode2 != GCDualSenseAdaptiveTriggerModeSlopeFeedback)
    {
      goto LABEL_26;
    }

    v14 = 7;
    if (unsignedIntValue2 == 2)
    {
      v14 = 9;
    }

    v15 = unsignedIntValue2 == 1;
    v16 = 8;
LABEL_19:
    if (v15)
    {
      v13 = v16;
    }

    else
    {
      v13 = v14;
    }

    goto LABEL_26;
  }

  if (unsignedIntValue2 == 1)
  {
    v13 = 6;
  }

  else
  {
    v13 = 5;
  }

LABEL_26:
  if (v13 != [(GCDualSenseAdaptiveTrigger *)self status])
  {
    [(GCDualSenseAdaptiveTrigger *)self setStatus:v13];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  v11 = pathCopy;
  if (self->_adaptiveTriggers == object)
  {
    if (([pathCopy isEqualToString:@"leftStatus"] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"rightStatus"))
    {
      [(GCDualSenseAdaptiveTrigger *)self updateStatus];
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = GCDualSenseAdaptiveTrigger;
    [(GCDualSenseAdaptiveTrigger *)&v12 observeValueForKeyPath:pathCopy ofObject:object change:change context:context];
  }
}

@end