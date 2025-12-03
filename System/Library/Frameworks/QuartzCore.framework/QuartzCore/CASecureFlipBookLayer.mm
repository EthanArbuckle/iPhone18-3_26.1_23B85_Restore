@interface CASecureFlipBookLayer
+ (BOOL)CA_automaticallyNotifiesObservers:(Class)observers;
+ (id)secureFlipBookWithType:(id)type;
- (BOOL)canTransitionToState:(id)state;
- (BOOL)forceTransitionToState:(id)state;
- (BOOL)transitionToState:(id)state;
- (NSArray)validDynamicPositions;
- (NSArray)validPositions;
- (NSDictionary)userInfo;
- (NSString)currentState;
- (NSString)nextState;
- (void)_copyRenderLayer:(void *)layer layerFlags:(unsigned int)flags commitFlags:(unsigned int *)commitFlags;
- (void)dealloc;
- (void)tick:(double)tick;
@end

@implementation CASecureFlipBookLayer

- (NSDictionary)userInfo
{
  v2 = indicator_id_from_name([(CASecureFlipBookLayer *)self type]);
  if (!MEMORY[0x1EEE91110] || v2 == -1)
  {
    return 0;
  }

  else
  {
    return SILManagerIndicatorUserInfo();
  }
}

- (BOOL)forceTransitionToState:(id)state
{
  if (CADeviceHasInternalBuild::once != -1)
  {
    dispatch_once(&CADeviceHasInternalBuild::once, &__block_literal_global_171);
  }

  LOBYTE(v5) = 0;
  if (MEMORY[0x1EEE91168])
  {
    if (CADeviceHasInternalBuild::internal)
    {
      LODWORD(v5) = SILStateMachineForceTransitionToState();
      if (v5)
      {
        v5 = [state copy];
        self->_nextState = v5;
        self->_currentState = v5;
        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (BOOL)transitionToState:(id)state
{
  nextState = self->_nextState;
  if (nextState != self->_currentState)
  {
    v6 = [(NSString *)nextState isEqualToString:?];
    if (!v6)
    {
      return v6;
    }

    nextState = self->_currentState;
  }

  if (!MEMORY[0x1EEE91168] || nextState)
  {
    v6 = SILStateMachineTransitionToState();
    if (v6)
    {
      self->_nextState = [state copy];
      goto LABEL_10;
    }
  }

  else
  {
    v6 = SILStateMachineForceTransitionToState();
    if (v6)
    {
      v7 = [state copy];
      self->_nextState = v7;
      self->_currentState = v7;
LABEL_10:
      LOBYTE(v6) = 1;
    }
  }

  return v6;
}

- (BOOL)canTransitionToState:(id)state
{
  nextState = self->_nextState;
  currentState = self->_currentState;
  if (nextState != currentState)
  {
    v7 = [(NSString *)nextState isEqualToString:?];
    if (!v7)
    {
      return v7;
    }

    currentState = self->_currentState;
  }

  LOBYTE(v7) = [(CASecureFlipBookLayer *)self validTransitionFromState:currentState toState:state];
  return v7;
}

- (void)tick:(double)tick
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = SILStateMachineTick();
  v5 = v4;
  if (self->_currentFrame != self->_commitedFrame)
  {
    v6 = CA::Transaction::ensure_compat(v4);
    CA::Layer::set_commit_needed(self->super._attr.layer, v6, 0x10000);
  }

  currentState = self->_currentState;
  if (currentState != v5 && ![(NSString *)currentState isEqualToString:v5])
  {
    [(CASecureFlipBookLayer *)self willChangeValueForKey:NSStringFromSelector(sel_currentState)];

    v8 = v5;
    self->_nextState = v8;
    self->_currentState = v8;
    [(CASecureFlipBookLayer *)self didChangeValueForKey:NSStringFromSelector(sel_currentState)];
    if (x_log_get_api::once[0] != -1)
    {
      dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
    }

    v9 = x_log_get_api::log;
    if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_INFO))
    {
      uTF8String = [(NSString *)self->_currentState UTF8String];
      *buf = 136315138;
      v12 = uTF8String;
      _os_log_impl(&dword_183AA6000, v9, OS_LOG_TYPE_INFO, "SILStateMachine finished transition %s", buf, 0xCu);
    }
  }
}

- (void)_copyRenderLayer:(void *)layer layerFlags:(unsigned int)flags commitFlags:(unsigned int *)commitFlags
{
  v19 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = CASecureFlipBookLayer;
  v7 = [(CALayer *)&v16 _copyRenderLayer:layer layerFlags:*&flags commitFlags:?];
  if (v7 && (*(commitFlags + 2) & 1) != 0)
  {
    v8 = indicator_id_from_name([(CASecureFlipBookLayer *)self type]);
    if (v8 == -1)
    {
      if (x_log_get_api::once[0] != -1)
      {
        dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
      }

      v12 = x_log_get_api::log;
      if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
      {
        uTF8String = [(NSString *)[(CASecureFlipBookLayer *)self type] UTF8String];
        v15 = "<null>";
        if (uTF8String)
        {
          v15 = uTF8String;
        }

        *buf = 136315138;
        v18 = v15;
        _os_log_error_impl(&dword_183AA6000, v12, OS_LOG_TYPE_ERROR, "Invalid Secure Flipbook type '%s'", buf, 0xCu);
      }
    }

    else
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v9 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x20uLL, 0xDEEC3011uLL);
      v10 = v9;
      if (v9)
      {
        *(v9 + 2) = 0;
        *(v9 + 3) = 0;
        v9[2] = 1;
        v9[3] = 50;
        ++dword_1ED4EAB00;
        *v9 = &unk_1EF202900;
      }

      currentFrame = self->_currentFrame;
      v9[4] = v8;
      *(v9 + 12) = currentFrame;
      self->_commitedFrame = currentFrame;
      CA::Render::Layer::set_subclass(v7, v9);
      if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v10 + 16))(v10);
      }
    }
  }

  return v7;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  currentState = self->_currentState;
  if (currentState != self->_nextState && ![(NSString *)currentState isEqualToString:?])
  {
  }

  SILStateMachineRelease();
  v4.receiver = self;
  v4.super_class = CASecureFlipBookLayer;
  [(CALayer *)&v4 dealloc];
}

- (NSArray)validDynamicPositions
{
  type = [(CASecureFlipBookLayer *)self type];

  return CASecureIndicatorLayerValidDynamicPositionsForIndicator(type);
}

- (NSArray)validPositions
{
  type = [(CASecureFlipBookLayer *)self type];

  return CASecureIndicatorLayerValidPositionsForIndicator(type);
}

- (NSString)nextState
{
  v2 = self->_nextState;

  return v2;
}

- (NSString)currentState
{
  v2 = self->_currentState;

  return v2;
}

+ (BOOL)CA_automaticallyNotifiesObservers:(Class)observers
{
  v7 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == observers)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CASecureFlipBookLayer;
  return objc_msgSendSuper2(&v6, sel_CA_automaticallyNotifiesObservers_, observers);
}

+ (id)secureFlipBookWithType:(id)type
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (CADeviceSupportsMedina::once != -1)
  {
    dispatch_once(&CADeviceSupportsMedina::once, &__block_literal_global_368);
  }

  v5 = 0;
  if (MEMORY[0x1EEE91170] && MEMORY[0x1EEE91188] && MEMORY[0x1EEE91180] && MEMORY[0x1EEE91178] && MEMORY[0x1EEE91160] && (CADeviceSupportsMedina::medina & 1) != 0)
  {
    v14 = *MEMORY[0x1E69C8740];
    v15[0] = type;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v6 = SILStateMachineCreate();
    if (v6)
    {
      v7 = v6;
      v5 = objc_alloc_init(self);
      if (v5)
      {
        v5[7] = [type copy];
        v5[6] = v7;
        v8 = SILStateMachineStateList();
        v5[11] = v8;
        if (MEMORY[0x1EEE91168])
        {
          v5[9] = 0;
          v5[8] = 0;
        }

        else
        {
          v10 = [v8 objectAtIndexedSubscript:0];
          v5[9] = v10;
          v5[8] = v10;
        }
      }

      else
      {
        SILStateMachineRelease();
      }
    }

    else
    {
      if (x_log_get_api::once[0] != -1)
      {
        dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
      }

      v9 = x_log_get_api::log;
      if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
      {
        v12 = 138412290;
        typeCopy = type;
        _os_log_error_impl(&dword_183AA6000, v9, OS_LOG_TYPE_ERROR, "Invalid Secure Flipbook type %@", &v12, 0xCu);
      }

      return 0;
    }
  }

  return v5;
}

@end