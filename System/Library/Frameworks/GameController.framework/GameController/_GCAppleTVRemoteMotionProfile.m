@interface _GCAppleTVRemoteMotionProfile
- ($1AB5FA073B851C12C2339EC22442E995)gravity;
- ($1AB5FA073B851C12C2339EC22442E995)rotationRate;
- ($1AB5FA073B851C12C2339EC22442E995)userAcceleration;
- (BOOL)isEmulatedMicroGamepad;
- (GCQuaternion)attitude;
- (_GCAppleTVRemoteMotionProfile)initWithController:(id)a3;
- (id)_motionLiteFusedHandler;
- (id)controller;
- (id)internalValueChangedHandler;
- (id)valueChangedHandler;
- (void)setInternalValueChangedHandler:(id)a3;
- (void)setValueChangedHandler:(id)a3;
@end

@implementation _GCAppleTVRemoteMotionProfile

- (_GCAppleTVRemoteMotionProfile)initWithController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _GCAppleTVRemoteMotionProfile;
  v5 = [(_GCAppleTVRemoteMotionProfile *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_linkedOnOrAfterCompassFeature = 0;
    dyld_get_active_platform();
    v6->_linkedOnOrAfterCompassFeature = dyld_program_sdk_at_least();
    v6->_motionLite = [v4 isATVRemote];
    if (v6->_linkedOnOrAfterCompassFeature)
    {
      v6->_compassEnabled = [v4 physicalDeviceUsesCompass];
    }

    objc_storeWeak(&v6->_controller, v4);
    v6->_gravity.x = 0.0;
    v6->_gravity.y = 0.0;
    v6->_gravity.z = -1.0;
    v6->_prevGravity.x = 0.0;
    v6->_prevGravity.y = 0.0;
    v6->_prevGravity.z = -1.0;
    v6->_userAcceleration.y = 0.0;
    v6->_userAcceleration.z = 0.0;
    v6->_userAcceleration.x = 0.0;
    v6->_attitude.x = 0.0;
    v6->_attitude.y = 0.0;
    v6->_attitude.z = 0.0;
    v6->_attitude.w = 1.0;
    v6->_eulerAngles.yaw = 0.0;
    v6->_eulerAngles.roll = 0.0;
    v6->_eulerAngles.pitch = 0.0;
    v6->_rotationRate.y = 0.0;
    v6->_rotationRate.z = 0.0;
    v6->_rotationRate.x = 0.0;
    v6->_tip = 0.0;
    v6->_tilt = 0.0;
    v6->_motionUpdatedEnabled = 0;
    v6->_paused = 0;
  }

  return v6;
}

- ($1AB5FA073B851C12C2339EC22442E995)gravity
{
  x = self->_gravity.x;
  y = self->_gravity.y;
  z = self->_gravity.z;
  result.var2 = z;
  result.var1 = y;
  result.var0 = x;
  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)userAcceleration
{
  x = self->_userAcceleration.x;
  y = self->_userAcceleration.y;
  z = self->_userAcceleration.z;
  result.var2 = z;
  result.var1 = y;
  result.var0 = x;
  return result;
}

- (GCQuaternion)attitude
{
  x = self->_attitude.x;
  y = self->_attitude.y;
  z = self->_attitude.z;
  w = self->_attitude.w;
  result.w = w;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)rotationRate
{
  x = self->_rotationRate.x;
  y = self->_rotationRate.y;
  z = self->_rotationRate.z;
  result.var2 = z;
  result.var1 = y;
  result.var0 = x;
  return result;
}

- (id)valueChangedHandler
{
  v2 = _Block_copy(self->_valueChangedHandler);

  return v2;
}

- (void)setValueChangedHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(_GCAppleTVRemoteMotionProfile *)self controller];
  v6 = [v5 handlerQueue];
  if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56___GCAppleTVRemoteMotionProfile_setValueChangedHandler___block_invoke;
    block[3] = &unk_1E841B6F0;
    v7 = &v12;
    objc_copyWeak(&v12, &location);
    block[4] = self;
    v11 = v4;
    dispatch_async(v6, block);

    v5 = v11;
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56___GCAppleTVRemoteMotionProfile_setValueChangedHandler___block_invoke_2;
    v8[3] = &unk_1E841B718;
    v7 = &v9;
    objc_copyWeak(&v9, &location);
    v8[4] = self;
    dispatch_async(v6, v8);
  }

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

- (id)internalValueChangedHandler
{
  v2 = _Block_copy(self->_internalValueChangedHandler);

  return v2;
}

- (void)setInternalValueChangedHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(_GCAppleTVRemoteMotionProfile *)self controller];
  v6 = [v5 handlerQueue];
  if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64___GCAppleTVRemoteMotionProfile_setInternalValueChangedHandler___block_invoke;
    block[3] = &unk_1E841B6F0;
    v7 = &v12;
    objc_copyWeak(&v12, &location);
    block[4] = self;
    v11 = v4;
    dispatch_async(v6, block);

    v5 = v11;
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __64___GCAppleTVRemoteMotionProfile_setInternalValueChangedHandler___block_invoke_2;
    v8[3] = &unk_1E841B718;
    v7 = &v9;
    objc_copyWeak(&v9, &location);
    v8[4] = self;
    dispatch_async(v6, v8);
  }

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

- (BOOL)isEmulatedMicroGamepad
{
  v3 = [(_GCAppleTVRemoteMotionProfile *)self controller];
  v4 = [v3 profile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(_GCAppleTVRemoteMotionProfile *)self controller];
    v6 = [v5 isForwarded];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_motionLiteFusedHandler
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56___GCAppleTVRemoteMotionProfile__motionLiteFusedHandler__block_invoke;
  v4[3] = &unk_1E841B740;
  objc_copyWeak(&v5, &location);
  v2 = _Block_copy(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end