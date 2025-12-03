@interface AXSSMotionTracker
- (AXSSMotionTracker)init;
- (AXSSMotionTrackerDelegate)delegate;
- (AXSSMotionTrackingDaemonProtocol)_motionTrackingDaemon;
- (AXSSMotionTrackingExpressionConfiguration)expressionConfiguration;
- (AXSSMotionTrackingInputConfiguration)inputConfiguration;
- (BOOL)_hasBeenStarted;
- (BOOL)isTracking;
- (NSValue)lookAtPoint;
- (void)_changeState:(id)state;
- (void)_motionTrackingDaemonWasInterruptedFromXPC;
- (void)_updateState:(id)state;
- (void)dealloc;
- (void)invalidate;
- (void)motionTrackingDaemonUpdatedState:(id)state;
- (void)recalibrateFace;
- (void)setDebugOverlayEnabled:(BOOL)enabled;
- (void)setExpressionConfiguration:(id)configuration;
- (void)setInputConfiguration:(id)configuration;
- (void)setJoystickModeMovementThreshold:(double)threshold;
- (void)setLookAtPoint:(id)point;
- (void)setMotionTrackingMode:(unint64_t)mode;
- (void)setSensitivity:(double)sensitivity;
- (void)start;
- (void)stop;
@end

@implementation AXSSMotionTracker

- (AXSSMotionTracker)init
{
  v12.receiver = self;
  v12.super_class = AXSSMotionTracker;
  v2 = [(AXSSMotionTracker *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_motionTrackingMode = AXSSMotionTrackingDefaultMode;
    v4 = AXSSMotionTrackingDefaultJoystickModeMovementThreshold;
    *&v2->_sensitivity = AXSSMotionTrackingDefaultSensitivity;
    *&v2->_joystickModeMovementThreshold = v4;
    v5 = +[AXSSMotionTrackingExpressionConfiguration defaultExpressionConfiguration];
    expressionConfiguration = v3->_expressionConfiguration;
    v3->_expressionConfiguration = v5;

    v7 = [AXSSRateLimitingLogger alloc];
    v8 = AXSSLogForCategory(2);
    v9 = [(AXSSRateLimitingLogger *)v7 initWithLogLevel:1 categoryLog:v8 timeInterval:1.0];
    loggingRateLimiter = v3->__loggingRateLimiter;
    v3->__loggingRateLimiter = v9;
  }

  return v3;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (BOOL)_hasBeenStarted
{
  _motionTrackingDaemonConnection = [(AXSSMotionTracker *)self _motionTrackingDaemonConnection];
  v3 = _motionTrackingDaemonConnection != 0;

  return v3;
}

- (BOOL)isTracking
{
  _hasBeenStarted = [(AXSSMotionTracker *)self _hasBeenStarted];
  if (_hasBeenStarted)
  {

    LOBYTE(_hasBeenStarted) = [(AXSSMotionTracker *)self _tracking];
  }

  return _hasBeenStarted;
}

- (void)start
{
  v22 = *MEMORY[0x1E69E9840];
  [self sensitivity];
  v5 = v4;
  motionTrackingMode = [self motionTrackingMode];
  inputConfiguration = [self inputConfiguration];
  [self joystickModeMovementThreshold];
  v9 = v8;
  expressionConfiguration = [self expressionConfiguration];
  v12 = 134219010;
  v13 = v5;
  v14 = 2048;
  v15 = motionTrackingMode;
  v16 = 2112;
  v17 = inputConfiguration;
  v18 = 2048;
  v19 = v9;
  v20 = 2112;
  v21 = expressionConfiguration;
  _os_log_debug_impl(&dword_1C0E8A000, a2, OS_LOG_TYPE_DEBUG, "AXSSMotionTracker: start: sensitivity %f mode %lu orderedInputPreference %@ joystickModeMovementThreshold %f expressionConfiguration %@", &v12, 0x34u);

  v11 = *MEMORY[0x1E69E9840];
}

void __26__AXSSMotionTracker_start__block_invoke()
{
  v0 = AXSSLogForCategory(2);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C0E8A000, v0, OS_LOG_TYPE_INFO, "AXSSMotionTracker: connection invalidated", v1, 2u);
  }
}

void __26__AXSSMotionTracker_start__block_invoke_29(uint64_t a1)
{
  v2 = AXSSLogForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C0E8A000, v2, OS_LOG_TYPE_INFO, "AXSSMotionTracker: connection interrupted", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _motionTrackingDaemonWasInterruptedFromXPC];
  [WeakRetained invalidate];
  [WeakRetained stop];
}

- (void)stop
{
  v3 = AXSSLogForCategory(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C0E8A000, v3, OS_LOG_TYPE_INFO, "AXSSMotionTracker: stop", v5, 2u);
  }

  if ([(AXSSMotionTracker *)self _hasBeenStarted])
  {
    if ([(AXSSMotionTracker *)self _tracking])
    {
      _motionTrackingDaemon = [(AXSSMotionTracker *)self _motionTrackingDaemon];
      [_motionTrackingDaemon stopTracking];

      [(AXSSMotionTracker *)self set_tracking:0];
      [(AXSSMotionTracker *)self _changeState:0];
    }
  }
}

- (void)invalidate
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)recalibrateFace
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setDebugOverlayEnabled:(BOOL)enabled
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_debugOverlayEnabled != enabled)
  {
    enabledCopy = enabled;
    v5 = AXSSLogForCategory(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9[0] = 67109120;
      v9[1] = enabledCopy;
      _os_log_impl(&dword_1C0E8A000, v5, OS_LOG_TYPE_INFO, "AXSSMotionTracker:setDebugOverlayEnabled: %d", v9, 8u);
    }

    self->_debugOverlayEnabled = enabledCopy;
    if ([(AXSSMotionTracker *)self _tracking])
    {
      _motionTrackingDaemon = [(AXSSMotionTracker *)self _motionTrackingDaemon];
      v7 = _motionTrackingDaemon;
      if (enabledCopy)
      {
        [_motionTrackingDaemon showDebugOverlay];
      }

      else
      {
        [_motionTrackingDaemon hideDebugOverlay];
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setMotionTrackingMode:(unint64_t)mode
{
  if (self->_motionTrackingMode != mode)
  {
    v5 = AXSSLogForCategory(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [AXSSMotionTracker setMotionTrackingMode:];
    }

    self->_motionTrackingMode = mode;
    if ([(AXSSMotionTracker *)self _tracking])
    {
      _motionTrackingDaemon = [(AXSSMotionTracker *)self _motionTrackingDaemon];
      [_motionTrackingDaemon setMotionTrackingMode:mode];
    }
  }
}

- (void)setSensitivity:(double)sensitivity
{
  if (vabdd_f64(self->_sensitivity, sensitivity) > 2.22044605e-16)
  {
    v5 = AXSSLogForCategory(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [AXSSMotionTracker setSensitivity:];
    }

    self->_sensitivity = sensitivity;
    if ([(AXSSMotionTracker *)self _tracking])
    {
      _motionTrackingDaemon = [(AXSSMotionTracker *)self _motionTrackingDaemon];
      [_motionTrackingDaemon setSensitivity:sensitivity];
    }
  }
}

- (AXSSMotionTrackingInputConfiguration)inputConfiguration
{
  v2 = [(AXSSMotionTrackingInputConfiguration *)self->_inputConfiguration copy];

  return v2;
}

- (void)setInputConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (![(AXSSMotionTrackingInputConfiguration *)self->_inputConfiguration isEqual:configurationCopy])
  {
    v5 = AXSSLogForCategory(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [AXSSMotionTracker setInputConfiguration:];
    }

    v6 = [configurationCopy copy];
    inputConfiguration = self->_inputConfiguration;
    self->_inputConfiguration = v6;

    if ([(AXSSMotionTracker *)self _tracking])
    {
      _motionTrackingDaemon = [(AXSSMotionTracker *)self _motionTrackingDaemon];
      [_motionTrackingDaemon setInputConfiguration:configurationCopy];
    }
  }
}

- (AXSSMotionTrackingExpressionConfiguration)expressionConfiguration
{
  v2 = [(AXSSMotionTrackingExpressionConfiguration *)self->_expressionConfiguration copy];

  return v2;
}

- (void)setExpressionConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (![(AXSSMotionTrackingExpressionConfiguration *)self->_expressionConfiguration isEqual:configurationCopy])
  {
    v5 = AXSSLogForCategory(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [AXSSMotionTracker setExpressionConfiguration:];
    }

    v6 = [configurationCopy copy];
    expressionConfiguration = self->_expressionConfiguration;
    self->_expressionConfiguration = v6;

    if ([(AXSSMotionTracker *)self _tracking])
    {
      _motionTrackingDaemon = [(AXSSMotionTracker *)self _motionTrackingDaemon];
      [_motionTrackingDaemon setExpressionConfiguration:configurationCopy];
    }
  }
}

- (void)setJoystickModeMovementThreshold:(double)threshold
{
  if (vabdd_f64(self->_joystickModeMovementThreshold, threshold) > 2.22044605e-16)
  {
    v5 = AXSSLogForCategory(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [AXSSMotionTracker setJoystickModeMovementThreshold:];
    }

    self->_joystickModeMovementThreshold = threshold;
    if ([(AXSSMotionTracker *)self _tracking])
    {
      _motionTrackingDaemon = [(AXSSMotionTracker *)self _motionTrackingDaemon];
      [_motionTrackingDaemon setJoystickModeMovementThreshold:threshold];
    }
  }
}

- (void)setLookAtPoint:(id)point
{
  pointCopy = point;
  if (pointCopy)
  {
    state = [(AXSSMotionTracker *)self state];
    if (state)
    {
      v5 = state;
      state2 = [(AXSSMotionTracker *)self state];
      error = [state2 error];

      if (!error)
      {
        state3 = [(AXSSMotionTracker *)self state];
        v9 = [state3 copy];

        [pointCopy pointValue];
        [v9 setLookAtPoint:?];
        [(AXSSMotionTracker *)self _updateState:v9];
        if ([(AXSSMotionTracker *)self _tracking])
        {
          _motionTrackingDaemon = [(AXSSMotionTracker *)self _motionTrackingDaemon];
          [pointCopy pointValue];
          [_motionTrackingDaemon setLookAtPoint:?];
        }
      }
    }
  }
}

- (NSValue)lookAtPoint
{
  state = [(AXSSMotionTracker *)self state];

  if (state)
  {
    v4 = MEMORY[0x1E696B098];
    state2 = [(AXSSMotionTracker *)self state];
    [state2 lookAtPoint];
    v10[0] = v6;
    v10[1] = v7;
    v8 = [v4 valueWithBytes:v10 objCType:"{CGPoint=dd}"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_updateState:(id)state
{
  [(AXSSMotionTracker *)self setState:state];
  delegate = [(AXSSMotionTracker *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    state = [(AXSSMotionTracker *)self state];
    [delegate motionTracker:self updatedState:state];
  }
}

- (void)_changeState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (stateCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __34__AXSSMotionTracker__changeState___block_invoke;
    v6[3] = &unk_1E8134950;
    v6[4] = self;
    v7 = stateCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

- (AXSSMotionTrackingDaemonProtocol)_motionTrackingDaemon
{
  _motionTrackingDaemonConnection = [(AXSSMotionTracker *)self _motionTrackingDaemonConnection];
  v3 = [_motionTrackingDaemonConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_58];

  return v3;
}

void __42__AXSSMotionTracker__motionTrackingDaemon__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = AXSSLogForCategory(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __42__AXSSMotionTracker__motionTrackingDaemon__block_invoke_cold_1(v2, v3);
  }
}

- (void)_motionTrackingDaemonWasInterruptedFromXPC
{
  v3 = AXSSLogForCategory(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C0E8A000, v3, OS_LOG_TYPE_INFO, "AXSSMotionTracker: _motionTrackingDaemonWasInterruptedFromXPC", v6, 2u);
  }

  v4 = objc_alloc_init(AXSSMotionTrackingState);
  v5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"AXSSMotionTrackingErrorDomain" code:9 userInfo:0];
  [(AXSSMotionTrackingState *)v4 setError:v5];

  [(AXSSMotionTracker *)self _changeState:v4];
}

- (void)motionTrackingDaemonUpdatedState:(id)state
{
  stateCopy = state;
  stateCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: motionTrackingDaemonUpdatedState %@", "-[AXSSMotionTracker motionTrackingDaemonUpdatedState:]", stateCopy];
  _loggingRateLimiter = [(AXSSMotionTracker *)self _loggingRateLimiter];
  [_loggingRateLimiter logString:stateCopy];

  if (stateCopy)
  {
    [(AXSSMotionTracker *)self _changeState:stateCopy];
  }
}

- (AXSSMotionTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setMotionTrackingMode:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setSensitivity:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setInputConfiguration:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setExpressionConfiguration:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setJoystickModeMovementThreshold:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __42__AXSSMotionTracker__motionTrackingDaemon__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C0E8A000, a2, OS_LOG_TYPE_ERROR, "ERROR: XPC connection returned error for remote object proxy: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end