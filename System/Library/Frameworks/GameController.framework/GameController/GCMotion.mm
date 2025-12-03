@interface GCMotion
- (BOOL)hasAttitudeAndRotationRate;
- (BOOL)isEmulatedMicroGamepad;
- (BOOL)sensorsActive;
- (BOOL)sensorsRequireManualActivation;
- (GCAcceleration)acceleration;
- (GCAcceleration)gravity;
- (GCAcceleration)userAcceleration;
- (GCController)controller;
- (GCMotion)initWithCoder:(id)coder;
- (GCMotion)initWithController:(id)controller;
- (GCMotion)initWithIdentifier:(id)identifier;
- (GCMotionValueChangedHandler)valueChangedHandler;
- (GCQuaternion)attitude;
- (GCRotationRate)rotationRate;
- (void)_setHasAttitude:(BOOL)attitude;
- (void)_setHasRotationRate:(BOOL)rate;
- (void)encodeWithCoder:(id)coder;
- (void)setAcceleration:(GCAcceleration)acceleration;
- (void)setAttitude:(GCQuaternion)attitude;
- (void)setGravity:(GCAcceleration)gravity;
- (void)setMotionEventSource:(id)source;
- (void)setRotationRate:(GCRotationRate)rotationRate;
- (void)setStateFromMotion:(GCMotion *)motion;
- (void)setUserAcceleration:(GCAcceleration)userAcceleration;
- (void)setValueChangedHandler:(GCMotionValueChangedHandler)valueChangedHandler;
@end

@implementation GCMotion

- (GCMotion)initWithController:(id)controller
{
  controllerCopy = controller;
  v7.receiver = self;
  v7.super_class = GCMotion;
  v5 = [(GCMotion *)&v7 init];
  if (v5)
  {
    v5[232] = [controllerCopy isATVRemote];
    v5[233] = [controllerCopy physicalDeviceUsesCompass];
    objc_storeWeak(v5 + 32, controllerCopy);
    *(v5 + 2) = 0;
    *(v5 + 3) = 0;
    *(v5 + 4) = 0xBFF0000000000000;
    *(v5 + 5) = 0;
    *(v5 + 6) = 0;
    *(v5 + 7) = 0;
    *(v5 + 11) = 0;
    *(v5 + 12) = 0;
    *(v5 + 13) = 0;
    *(v5 + 14) = 0x3FF0000000000000;
    *(v5 + 20) = 0;
    *(v5 + 21) = 0;
    *(v5 + 19) = 0;
    *(v5 + 200) = 0u;
    *(v5 + 216) = 0u;
  }

  return v5;
}

- (GCMotion)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = GCMotion;
  v6 = [(GCMotion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
    v7->_gravity.x = 0.0;
    v7->_gravity.y = 0.0;
    v7->_gravity.z = -1.0;
    v7->_userAcceleration.x = 0.0;
    v7->_userAcceleration.y = 0.0;
    v7->_userAcceleration.z = 0.0;
    v7->_attitude.x = 0.0;
    v7->_attitude.y = 0.0;
    v7->_attitude.z = 0.0;
    v7->_attitude.w = 1.0;
    v7->_eulerAngles.yaw = 0.0;
    v7->_eulerAngles.roll = 0.0;
    v7->_eulerAngles.pitch = 0.0;
    *&v7->_rotationRate.x = 0u;
    *&v7->_rotationRate.z = 0u;
  }

  return v7;
}

- (BOOL)sensorsRequireManualActivation
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  components = [WeakRetained components];
  v4 = components != 0;

  return v4;
}

- (BOOL)sensorsActive
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  components = [WeakRetained components];

  if (!components)
  {
    return 1;
  }

  v5 = objc_loadWeakRetained(&self->_controller);
  motionConfigurableSensors = [v5 motionConfigurableSensors];
  sensorsActive = [motionConfigurableSensors sensorsActive];

  return sensorsActive;
}

- (GCAcceleration)gravity
{
  x = self->_gravity.x;
  y = self->_gravity.y;
  z = self->_gravity.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (GCAcceleration)userAcceleration
{
  x = self->_userAcceleration.x;
  y = self->_userAcceleration.y;
  z = self->_userAcceleration.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (GCAcceleration)acceleration
{
  if ([(GCMotion *)self hasGravityAndUserAcceleration])
  {
    [(GCMotion *)self gravity];
    v4 = v3;
    [(GCMotion *)self userAcceleration];
    x = v4 + v5;
    [(GCMotion *)self gravity];
    v8 = v7;
    [(GCMotion *)self userAcceleration];
    y = v8 + v9;
    [(GCMotion *)self gravity];
    v12 = v11;
    [(GCMotion *)self userAcceleration];
    z = v12 + v13;
  }

  else
  {
    x = self->_acceleration.x;
    y = self->_acceleration.y;
    z = self->_acceleration.z;
  }

  v15 = x;
  v16 = y;
  result.z = z;
  result.y = v16;
  result.x = v15;
  return result;
}

- (void)_setHasAttitude:(BOOL)attitude
{
  self->_hasAttitude = attitude;
  if (!attitude)
  {
    [(GCMotion *)self _setAttitude:0.0, 0.0, 0.0, 0.0];
  }
}

- (void)_setHasRotationRate:(BOOL)rate
{
  self->_hasRotationRate = rate;
  if (!rate)
  {
    [(GCMotion *)self _setRotationRate:0.0, 0.0, 0.0];
  }
}

- (BOOL)hasAttitudeAndRotationRate
{
  if (self->_compassEnabled)
  {
    return 1;
  }

  else
  {
    return self->_hasAttitude && self->_hasRotationRate;
  }
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

- (GCRotationRate)rotationRate
{
  x = self->_rotationRate.x;
  y = self->_rotationRate.y;
  z = self->_rotationRate.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (GCMotionValueChangedHandler)valueChangedHandler
{
  v2 = _Block_copy(self->_valueChangedHandler);

  return v2;
}

- (void)setValueChangedHandler:(GCMotionValueChangedHandler)valueChangedHandler
{
  v4 = valueChangedHandler;
  objc_initWeak(&location, self);
  controller = [(GCMotion *)self controller];
  handlerQueue = [controller handlerQueue];
  if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__GCMotion_setValueChangedHandler___block_invoke;
    block[3] = &unk_1E841A2A8;
    v7 = &v12;
    objc_copyWeak(&v12, &location);
    v11 = v4;
    dispatch_async(handlerQueue, block);

    controller = v11;
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __35__GCMotion_setValueChangedHandler___block_invoke_2;
    v8[3] = &unk_1E8418D18;
    v7 = &v9;
    objc_copyWeak(&v9, &location);
    dispatch_async(handlerQueue, v8);
  }

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __35__GCMotion_setValueChangedHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [*(a1 + 32) copy];
    v4 = v5[30];
    v5[30] = v3;

    WeakRetained = v5;
  }
}

void __35__GCMotion_setValueChangedHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[30];
    WeakRetained[30] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

- (BOOL)isEmulatedMicroGamepad
{
  controller = [(GCMotion *)self controller];
  profile = [controller profile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    controller2 = [(GCMotion *)self controller];
    isForwarded = [controller2 isForwarded];
  }

  else
  {
    isForwarded = 0;
  }

  return isForwarded;
}

- (void)setGravity:(GCAcceleration)gravity
{
  z = gravity.z;
  y = gravity.y;
  x = gravity.x;
  controller = [(GCMotion *)self controller];
  if (!controller || (v8 = controller, -[GCMotion controller](self, "controller"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isSnapshot], v9, v8, v10))
  {
    self->_gravity.x = x;
    self->_gravity.y = y;
    self->_gravity.z = z;
  }
}

- (void)setUserAcceleration:(GCAcceleration)userAcceleration
{
  z = userAcceleration.z;
  y = userAcceleration.y;
  x = userAcceleration.x;
  controller = [(GCMotion *)self controller];
  if (!controller || (v8 = controller, -[GCMotion controller](self, "controller"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isSnapshot], v9, v8, v10))
  {
    self->_userAcceleration.x = x;
    self->_userAcceleration.y = y;
    self->_userAcceleration.z = z;
  }
}

- (void)setAcceleration:(GCAcceleration)acceleration
{
  z = acceleration.z;
  y = acceleration.y;
  x = acceleration.x;
  controller = [(GCMotion *)self controller];
  if (!controller || (v8 = controller, -[GCMotion controller](self, "controller"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isSnapshot], v9, v8, v10))
  {
    self->_acceleration.x = x;
    self->_acceleration.y = y;
    self->_acceleration.z = z;
  }
}

- (void)setAttitude:(GCQuaternion)attitude
{
  w = attitude.w;
  z = attitude.z;
  y = attitude.y;
  x = attitude.x;
  controller = [(GCMotion *)self controller];
  if (!controller || (v9 = controller, -[GCMotion controller](self, "controller"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isSnapshot], v10, v9, v11))
  {
    self->_attitude.x = x;
    self->_attitude.y = y;
    self->_attitude.z = z;
    self->_attitude.w = w;
  }
}

- (void)setRotationRate:(GCRotationRate)rotationRate
{
  z = rotationRate.z;
  y = rotationRate.y;
  x = rotationRate.x;
  controller = [(GCMotion *)self controller];
  if (!controller || (v8 = controller, -[GCMotion controller](self, "controller"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isSnapshot], v9, v8, v10))
  {
    self->_rotationRate.x = x;
    self->_rotationRate.y = y;
    self->_rotationRate.z = z;
  }
}

- (void)setStateFromMotion:(GCMotion *)motion
{
  v4 = motion;
  controller = [(GCMotion *)self controller];
  if (!controller || (v6 = controller, -[GCMotion controller](self, "controller"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isSnapshot], v7, v6, v8))
  {
    if (gc_isInternalBuild())
    {
      [(GCMotion *)self setStateFromMotion:v4];
    }

    [(GCMotion *)v4 gravity];
    [(GCMotion *)self setGravity:?];
    [(GCMotion *)v4 userAcceleration];
    [(GCMotion *)self setUserAcceleration:?];
    [(GCMotion *)v4 acceleration];
    [(GCMotion *)self setAcceleration:?];
    [(GCMotion *)v4 attitude];
    [(GCMotion *)self setAttitude:?];
    [(GCMotion *)v4 rotationRate];
    [(GCMotion *)self setRotationRate:?];
    controller2 = [(GCMotion *)self controller];
    handlerQueue = [controller2 handlerQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __31__GCMotion_setStateFromMotion___block_invoke;
    block[3] = &unk_1E8418C28;
    block[4] = self;
    dispatch_async(handlerQueue, block);
  }
}

void __31__GCMotion_setStateFromMotion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) valueChangedHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) valueChangedHandler];
    v3[2](v3, *(a1 + 32));
  }
}

- (GCController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (void)setMotionEventSource:(id)source
{
  sourceCopy = source;
  objc_initWeak(&location, self);
  motionEventObservation = self->_motionEventObservation;
  self->_motionEventObservation = 0;

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__GCMotion_PubSub__setMotionEventSource___block_invoke;
  v8[3] = &unk_1E841A2D0;
  objc_copyWeak(&v9, &location);
  v6 = [sourceCopy observeMotionEvents:v8];
  v7 = self->_motionEventObservation;
  self->_motionEventObservation = v6;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

uint64_t __41__GCMotion_PubSub__setMotionEventSource___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (GCMotion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = GCIPCObjectIdentifier_Classes();
  v6 = [coderCopy decodeObjectOfClasses:v5 forKey:@"identifier"];

  v7 = [(GCMotion *)self initWithIdentifier:v6];
  if (v7)
  {
    v7->_hasAttitude = [coderCopy decodeBoolForKey:@"hasAttitude"];
    v7->_hasRotationRate = [coderCopy decodeBoolForKey:@"hasRotationRate"];
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(GCMotion *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  [coderCopy encodeBool:-[GCMotion hasAttitude](self forKey:{"hasAttitude"), @"hasAttitude"}];
  [coderCopy encodeBool:-[GCMotion hasRotationRate](self forKey:{"hasRotationRate"), @"hasRotationRate"}];
}

void __41__GCMotion_PubSub__setMotionEventSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained controller];
    if (v6)
    {
      if ([v3 hasGyro])
      {
        [v3 gyroPitch];
        [v3 gyroYaw];
        [v3 gyroRoll];
        v7 = OUTLINED_FUNCTION_1_13();
        [v8 _setRotationRate:v7];
      }

      if ([v3 hasAccelerometer] && (objc_msgSend(v3, "hasAttitude") & 1) == 0)
      {
        [v3 accelerometerX];
        [v3 accelerometerY];
        [v3 accelerometerZ];
        v9 = OUTLINED_FUNCTION_1_13();
        [v10 _setAcceleration:v9];
      }

      if ([v3 hasAttitude])
      {
        [v5 _setUserAcceleration:OUTLINED_FUNCTION_0_21()];
        [v5 _setAcceleration:OUTLINED_FUNCTION_0_21()];
        [v5 _setGravity:OUTLINED_FUNCTION_0_21()];
        [v5 _setAttitude:OUTLINED_FUNCTION_0_21()];
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Support for game controllers with attitude is not implemented."];
      }

      v11 = [v5 valueChangedHandler];
      v12 = [v6 handlerQueue];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __41__GCMotion_PubSub__setMotionEventSource___block_invoke_2;
      v14[3] = &unk_1E8418D68;
      v16 = v11;
      v15 = v5;
      v13 = v11;
      dispatch_async(v12, v14);
    }
  }
}

- (void)setStateFromMotion:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = getGCLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 256));
    v6 = [WeakRetained debugName];
    v7 = [a2 controller];
    v8 = [v7 debugName];
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_1D2CD5000, v4, OS_LOG_TYPE_DEFAULT, "set %@ StateFromMotion %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end