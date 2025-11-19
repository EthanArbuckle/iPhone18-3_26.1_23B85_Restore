@interface AVCaptureSmartFramingMonitor
+ (void)initialize;
- (AVCaptureFraming)recommendedFraming;
- (AVCaptureSmartFramingMonitor)initWithDevice:(id)a3 smartFramingZoomFactorsByFieldOfView:(id)a4;
- (BOOL)isMonitoring;
- (BOOL)startMonitoring:(id *)a3;
- (BOOL)startMonitoringWithError:(id *)a3;
- (NSArray)enabledFramings;
- (NSArray)supportedFramings;
- (id)description;
- (id)enabledSmartFramings;
- (id)recommendedSmartFraming;
- (id)supportedSmartFramings;
- (void)_handleChangedActiveFormat:(id)a3;
- (void)_populatePhotoModeSmartFramingsAndFieldsOfViewFromZoomFactorsByFieldOfView:(id)a3;
- (void)_updateFigCaptureSourceEnabledSmartFramingFieldsOfViewForFramings:(id)a3;
- (void)_updateFigCaptureSourceEnabledSmartFramingFieldsOfViewForSmartFramings:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setEnabledFramings:(id)a3;
- (void)setEnabledSmartFramings:(id)a3;
- (void)stopMonitoring;
- (void)updateRecommendedSmartFramingWithFieldOfView:(id)a3;
@end

@implementation AVCaptureSmartFramingMonitor

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (AVCaptureSmartFramingMonitor)initWithDevice:(id)a3 smartFramingZoomFactorsByFieldOfView:(id)a4
{
  v9.receiver = self;
  v9.super_class = AVCaptureSmartFramingMonitor;
  v6 = [(AVCaptureSmartFramingMonitor *)&v9 init];
  if (v6)
  {
    if ([a3 isSmartFramingMonitoringSupported])
    {
      v6->_monitorWeakReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:v6];
      v6->_deviceWeakReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:a3];
      v6->_framingsLock._os_unfair_lock_opaque = 0;
      v6->_isMonitoringLock._os_unfair_lock_opaque = 0;
      [(AVCaptureSmartFramingMonitor *)v6 _populatePhotoModeSmartFramingsAndFieldsOfViewFromZoomFactorsByFieldOfView:a4];
      v6->_enabledFramings = objc_alloc_init(MEMORY[0x1E695DEC8]);
      [a3 addObserver:v6 forKeyPath:@"activeFormat" options:7 context:AVCaptureSmartFramingMonitorActiveFormatChangedContext];
      v6->_observationRegistrar = objc_alloc_init(AVCaptureSmartFramingMonitorObservationRegistrar);
    }

    else
    {
      v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];

      if (AVCaptureShouldThrowForAPIViolations())
      {
        objc_exception_throw(v7);
      }

      NSLog(&cfstr_SuppressingExc.isa, v7);
      return 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  v3 = [(AVWeakReference *)self->_deviceWeakReference referencedObject];
  [v3 removeObserver:self forKeyPath:@"activeFormat" context:AVCaptureSmartFramingMonitorActiveFormatChangedContext];

  v4.receiver = self;
  v4.super_class = AVCaptureSmartFramingMonitor;
  [(AVCaptureSmartFramingMonitor *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[AVCaptureSmartFramingMonitor debugDescription](self, "debugDescription")];
}

- (void)_populatePhotoModeSmartFramingsAndFieldsOfViewFromZoomFactorsByFieldOfView:(id)a3
{
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [a3 objectForKeyedSubscript:@"FieldOfViewPortrait"];
  v8 = 0x1E786C000;
  if (v7)
  {
    v9 = v7;
    [v7 floatValue];
    [v4 addObject:{+[AVCaptureFraming framingWithAspectRatio:zoomFactor:](AVCaptureFraming, "framingWithAspectRatio:zoomFactor:", @"AVCaptureAspectRatio4x3"}];
    [v9 floatValue];
    v8 = 0x1E786C000;
    [v5 addObject:{+[AVCaptureSmartFraming smartFramingWithAspectRatio:zoomFactor:](AVCaptureSmartFraming, "smartFramingWithAspectRatio:zoomFactor:", @"AVCaptureAspectRatio4x3"}];
    [v6 addObject:@"FieldOfViewPortrait"];
  }

  v10 = [a3 objectForKeyedSubscript:@"FieldOfViewZoomedOutPortrait"];
  if (v10)
  {
    v11 = v10;
    [v10 floatValue];
    [v4 addObject:{+[AVCaptureFraming framingWithAspectRatio:zoomFactor:](AVCaptureFraming, "framingWithAspectRatio:zoomFactor:", @"AVCaptureAspectRatio4x3"}];
    [v11 floatValue];
    v8 = 0x1E786C000;
    [v5 addObject:{+[AVCaptureSmartFraming smartFramingWithAspectRatio:zoomFactor:](AVCaptureSmartFraming, "smartFramingWithAspectRatio:zoomFactor:", @"AVCaptureAspectRatio4x3"}];
    [v6 addObject:@"FieldOfViewZoomedOutPortrait"];
  }

  v12 = [a3 objectForKeyedSubscript:@"FieldOfViewLandscape"];
  if (v12)
  {
    v13 = v12;
    [v12 floatValue];
    [v4 addObject:{+[AVCaptureFraming framingWithAspectRatio:zoomFactor:](AVCaptureFraming, "framingWithAspectRatio:zoomFactor:", @"AVCaptureAspectRatio3x4"}];
    [v13 floatValue];
    v8 = 0x1E786C000uLL;
    [v5 addObject:{+[AVCaptureSmartFraming smartFramingWithAspectRatio:zoomFactor:](AVCaptureSmartFraming, "smartFramingWithAspectRatio:zoomFactor:", @"AVCaptureAspectRatio3x4"}];
    [v6 addObject:@"FieldOfViewLandscape"];
  }

  v14 = [a3 objectForKeyedSubscript:@"FieldOfViewZoomedOutLandscape"];
  if (v14)
  {
    v15 = v14;
    v16 = *(v8 + 392);
    [v14 floatValue];
    [v4 addObject:{objc_msgSend(v16, "framingWithAspectRatio:zoomFactor:", @"AVCaptureAspectRatio3x4"}];
    [v15 floatValue];
    [v5 addObject:{+[AVCaptureSmartFraming smartFramingWithAspectRatio:zoomFactor:](AVCaptureSmartFraming, "smartFramingWithAspectRatio:zoomFactor:", @"AVCaptureAspectRatio3x4"}];
    [v6 addObject:@"FieldOfViewZoomedOutLandscape"];
  }

  self->_photoModeFramings = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v4];
  self->_photoModeSmartFramings = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v5];
  self->_photoModeFieldsOfView = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v6];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v9 = [a5 objectForKeyedSubscript:{*MEMORY[0x1E696A500], a4}];
  v10 = [a5 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
  if (AVCaptureSmartFramingMonitorActiveFormatChangedContext == a6 && v9 != v10)
  {
    v12 = v10;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {

      [(AVCaptureSmartFramingMonitor *)self _handleChangedActiveFormat:v12];
    }

    else
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __79__AVCaptureSmartFramingMonitor_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v13[3] = &unk_1E786EAA8;
      v13[4] = self;
      v13[5] = v12;
      dispatch_async(MEMORY[0x1E69E96A0], v13);
    }
  }
}

- (void)_handleChangedActiveFormat:(id)a3
{
  v5 = [a3 supportedDynamicAspectRatios];
  if ([a3 isSmartFramingSupported] && objc_msgSend(v5, "containsObject:", @"AVCaptureAspectRatio4x3") && objc_msgSend(v5, "containsObject:", @"AVCaptureAspectRatio3x4"))
  {
    photoModeFramings = self->_photoModeFramings;
    photoModeSmartFramings = self->_photoModeSmartFramings;
  }

  else
  {
    photoModeSmartFramings = MEMORY[0x1E695E0F0];
    photoModeFramings = MEMORY[0x1E695E0F0];
  }

  if (([(NSArray *)photoModeFramings isEqual:[(AVCaptureSmartFramingMonitor *)self supportedFramings]]& 1) == 0)
  {
    [(AVCaptureSmartFramingMonitor *)self willChangeValueForKey:@"supportedFramings"];
    [(AVCaptureSmartFramingMonitorObservationRegistrar *)self->_observationRegistrar willChangeValueFor:@"supportedFramings" on:self];
    v8 = [MEMORY[0x1E695DF70] array];
    v9 = [(AVCaptureSmartFramingMonitor *)self enabledFramings];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v34 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v35;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v34 + 1) + 8 * i);
          if ([(NSArray *)photoModeFramings containsObject:v14])
          {
            [v8 addObject:v14];
          }
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v34 objects:v33 count:16];
      }

      while (v11);
    }

    v15 = [v8 isEqual:v9];
    if ((v15 & 1) == 0)
    {
      [(AVCaptureSmartFramingMonitor *)self willChangeValueForKey:@"enabledFramings"];
      [(AVCaptureSmartFramingMonitorObservationRegistrar *)self->_observationRegistrar willChangeValueFor:@"enabledFramings" on:self];
    }

    v16 = [v8 containsObject:{-[AVCaptureSmartFramingMonitor recommendedFraming](self, "recommendedFraming")}];
    if ((v16 & 1) == 0)
    {
      [(AVCaptureSmartFramingMonitor *)self willChangeValueForKey:@"recommendedFraming"];
      [(AVCaptureSmartFramingMonitorObservationRegistrar *)self->_observationRegistrar willChangeValueFor:@"recommendedFraming" on:self];
    }

    os_unfair_lock_lock(&self->_framingsLock);
    supportedFramings = self->_supportedFramings;
    self->_supportedFramings = self->_photoModeFramings;

    if ((v15 & 1) == 0)
    {

      self->_enabledFramings = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v8];
    }

    if (v16)
    {
      os_unfair_lock_unlock(&self->_framingsLock);
      if (v15)
      {
        goto LABEL_27;
      }
    }

    else
    {

      self->_recommendedFraming = 0;
      os_unfair_lock_unlock(&self->_framingsLock);
      [(AVCaptureSmartFramingMonitorObservationRegistrar *)self->_observationRegistrar didChangeValueFor:@"recommendedFraming" on:self];
      [(AVCaptureSmartFramingMonitor *)self didChangeValueForKey:@"recommendedFraming"];
      if (v15)
      {
LABEL_27:
        [(AVCaptureSmartFramingMonitorObservationRegistrar *)self->_observationRegistrar didChangeValueFor:@"supportedFramings" on:self];
        [(AVCaptureSmartFramingMonitor *)self didChangeValueForKey:@"supportedFramings"];
        goto LABEL_28;
      }
    }

    [(AVCaptureSmartFramingMonitorObservationRegistrar *)self->_observationRegistrar didChangeValueFor:@"enabledFramings" on:self];
    [(AVCaptureSmartFramingMonitor *)self didChangeValueForKey:@"enabledFramings"];
    [(AVCaptureSmartFramingMonitor *)self _updateFigCaptureSourceEnabledSmartFramingFieldsOfViewForFramings:v8];
    goto LABEL_27;
  }

LABEL_28:
  if (([(NSArray *)photoModeSmartFramings isEqual:[(AVCaptureSmartFramingMonitor *)self supportedSmartFramings]]& 1) != 0)
  {
    return;
  }

  [(AVCaptureSmartFramingMonitor *)self willChangeValueForKey:@"supportedSmartFramings"];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [(AVCaptureSmartFramingMonitor *)self enabledSmartFramings];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = [v19 countByEnumeratingWithState:&v29 objects:v28 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v30;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v29 + 1) + 8 * j);
        if ([(NSArray *)photoModeSmartFramings containsObject:v24])
        {
          [v18 addObject:v24];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v29 objects:v28 count:16];
    }

    while (v21);
  }

  v25 = [v18 isEqual:v19];
  if ((v25 & 1) == 0)
  {
    [(AVCaptureSmartFramingMonitor *)self willChangeValueForKey:@"enabledSmartFramings"];
  }

  v26 = [v18 containsObject:{-[AVCaptureSmartFramingMonitor recommendedSmartFraming](self, "recommendedSmartFraming")}];
  if ((v26 & 1) == 0)
  {
    [(AVCaptureSmartFramingMonitor *)self willChangeValueForKey:@"recommendedSmartFraming"];
  }

  os_unfair_lock_lock(&self->_framingsLock);
  supportedSmartFramings = self->_supportedSmartFramings;
  self->_supportedSmartFramings = self->_photoModeSmartFramings;

  if ((v25 & 1) == 0)
  {

    self->_enabledSmartFramings = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v18];
  }

  if (v26)
  {
    os_unfair_lock_unlock(&self->_framingsLock);
    if (v25)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  self->_recommendedSmartFraming = 0;
  os_unfair_lock_unlock(&self->_framingsLock);
  [(AVCaptureSmartFramingMonitor *)self didChangeValueForKey:@"recommendedSmartFraming"];
  if ((v25 & 1) == 0)
  {
LABEL_48:
    [(AVCaptureSmartFramingMonitor *)self didChangeValueForKey:@"enabledSmartFramings"];
    [(AVCaptureSmartFramingMonitor *)self _updateFigCaptureSourceEnabledSmartFramingFieldsOfViewForSmartFramings:v18];
  }

LABEL_49:
  [(AVCaptureSmartFramingMonitor *)self didChangeValueForKey:@"supportedSmartFramings"];
}

- (void)_updateFigCaptureSourceEnabledSmartFramingFieldsOfViewForFramings:(id)a3
{
  v17 = [(AVWeakReference *)self->_deviceWeakReference referencedObject];
  v18 = [MEMORY[0x1E695DF70] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = a3;
  v6 = [a3 countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [(NSArray *)self->_photoModeFramings indexOfObject:v10, v15, v16];
        if (v11 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v24 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v13 = v24;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
          {
            v14 = v13;
          }

          else
          {
            v14 = v13 & 0xFFFFFFFE;
          }

          if (v14)
          {
            v19 = 136315394;
            v20 = "[AVCaptureSmartFramingMonitor _updateFigCaptureSourceEnabledSmartFramingFieldsOfViewForFramings:]";
            v21 = 2114;
            v22 = v10;
            LODWORD(v16) = 22;
            v15 = &v19;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        else
        {
          [v18 addObject:{-[NSArray objectAtIndexedSubscript:](self->_photoModeFieldsOfView, "objectAtIndexedSubscript:", v11)}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v25 count:16];
    }

    while (v7);
  }

  [v17 _setEnabledSmartFramingFieldsOfView:{v18, v15, v16}];
}

- (void)_updateFigCaptureSourceEnabledSmartFramingFieldsOfViewForSmartFramings:(id)a3
{
  v17 = [(AVWeakReference *)self->_deviceWeakReference referencedObject];
  v18 = [MEMORY[0x1E695DF70] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = a3;
  v6 = [a3 countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [(NSArray *)self->_photoModeSmartFramings indexOfObject:v10, v15, v16];
        if (v11 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v24 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v13 = v24;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
          {
            v14 = v13;
          }

          else
          {
            v14 = v13 & 0xFFFFFFFE;
          }

          if (v14)
          {
            v19 = 136315394;
            v20 = "[AVCaptureSmartFramingMonitor _updateFigCaptureSourceEnabledSmartFramingFieldsOfViewForSmartFramings:]";
            v21 = 2114;
            v22 = v10;
            LODWORD(v16) = 22;
            v15 = &v19;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        else
        {
          [v18 addObject:{-[NSArray objectAtIndexedSubscript:](self->_photoModeFieldsOfView, "objectAtIndexedSubscript:", v11)}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v25 count:16];
    }

    while (v7);
  }

  [v17 _setEnabledSmartFramingFieldsOfView:{v18, v15, v16}];
}

- (void)updateRecommendedSmartFramingWithFieldOfView:(id)a3
{
  if ([(AVCaptureSmartFramingMonitor *)self isMonitoring])
  {
    if (a3 && ([a3 isEqualToString:@"FieldOfViewNone"] & 1) == 0)
    {
      v9 = [(NSArray *)self->_photoModeFieldsOfView indexOfObject:a3];
      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        return;
      }

      v11 = v9;
      v6 = [(NSArray *)self->_photoModeFramings objectAtIndexedSubscript:v9];
      v5 = [(NSArray *)self->_photoModeSmartFramings objectAtIndexedSubscript:v11];
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    [(AVCaptureSmartFramingMonitor *)self willChangeValueForKey:@"recommendedSmartFraming"];
    [(AVCaptureSmartFramingMonitor *)self willChangeValueForKey:@"recommendedFraming"];
    [(AVCaptureSmartFramingMonitorObservationRegistrar *)self->_observationRegistrar willChangeValueFor:@"recommendedFraming" on:self];
    os_unfair_lock_lock(&self->_framingsLock);
    recommendedFraming = self->_recommendedFraming;
    self->_recommendedFraming = v6;

    recommendedSmartFraming = self->_recommendedSmartFraming;
    self->_recommendedSmartFraming = v5;

    os_unfair_lock_unlock(&self->_framingsLock);
    [(AVCaptureSmartFramingMonitorObservationRegistrar *)self->_observationRegistrar didChangeValueFor:@"recommendedFraming" on:self];
    [(AVCaptureSmartFramingMonitor *)self didChangeValueForKey:@"recommendedFraming"];

    [(AVCaptureSmartFramingMonitor *)self didChangeValueForKey:@"recommendedSmartFraming"];
  }
}

- (NSArray)supportedFramings
{
  [(AVCaptureSmartFramingMonitorObservationRegistrar *)self->_observationRegistrar accessWithKey:@"supportedFramings" on:self];
  os_unfair_lock_lock(&self->_framingsLock);
  supportedFramings = self->_supportedFramings;
  os_unfair_lock_unlock(&self->_framingsLock);
  v4 = supportedFramings;

  return v4;
}

- (NSArray)enabledFramings
{
  [(AVCaptureSmartFramingMonitorObservationRegistrar *)self->_observationRegistrar accessWithKey:@"enabledFramings" on:self];
  os_unfair_lock_lock(&self->_framingsLock);
  enabledFramings = self->_enabledFramings;
  os_unfair_lock_unlock(&self->_framingsLock);
  v4 = enabledFramings;

  return v4;
}

- (void)setEnabledFramings:(id)a3
{
  if (a3)
  {
    v5 = [MEMORY[0x1E695DFD8] setWithArray:?];
    if ([v5 isSubsetOfSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", -[AVCaptureSmartFramingMonitor supportedFramings](self, "supportedFramings"))}])
    {
      [(AVCaptureSmartFramingMonitorObservationRegistrar *)self->_observationRegistrar willChangeValueFor:@"enabledFramings" on:self];
      os_unfair_lock_lock(&self->_framingsLock);

      self->_enabledFramings = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:a3];
      os_unfair_lock_unlock(&self->_framingsLock);
      [(AVCaptureSmartFramingMonitorObservationRegistrar *)self->_observationRegistrar didChangeValueFor:@"enabledFramings" on:self];

      [(AVCaptureSmartFramingMonitor *)self _updateFigCaptureSourceEnabledSmartFramingFieldsOfViewForFramings:a3];
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

- (AVCaptureFraming)recommendedFraming
{
  [(AVCaptureSmartFramingMonitorObservationRegistrar *)self->_observationRegistrar accessWithKey:@"recommendedFraming" on:self];
  os_unfair_lock_lock(&self->_framingsLock);
  recommendedFraming = self->_recommendedFraming;
  os_unfair_lock_unlock(&self->_framingsLock);
  v4 = recommendedFraming;

  return v4;
}

- (BOOL)startMonitoringWithError:(id *)a3
{
  v5 = [(NSArray *)[(AVCaptureSmartFramingMonitor *)self enabledFramings] count];
  if (v5)
  {
    os_unfair_lock_lock(&self->_isMonitoringLock);
    if (dword_1EB3859F8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    self->_isMonitoring = 1;
    os_unfair_lock_unlock(&self->_isMonitoringLock);
    [-[AVWeakReference referencedObject](self->_deviceWeakReference "referencedObject")];
  }

  else if (a3)
  {
    *a3 = AVLocalizedError();
  }

  return v5 != 0;
}

- (void)stopMonitoring
{
  os_unfair_lock_lock(&self->_isMonitoringLock);
  if (dword_1EB3859F8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  self->_isMonitoring = 0;
  os_unfair_lock_unlock(&self->_isMonitoringLock);
  [-[AVWeakReference referencedObject](self->_deviceWeakReference "referencedObject")];
}

- (BOOL)isMonitoring
{
  os_unfair_lock_lock(&self->_isMonitoringLock);
  isMonitoring = self->_isMonitoring;
  os_unfair_lock_unlock(&self->_isMonitoringLock);
  return isMonitoring;
}

- (id)supportedSmartFramings
{
  os_unfair_lock_lock(&self->_framingsLock);
  supportedSmartFramings = self->_supportedSmartFramings;
  os_unfair_lock_unlock(&self->_framingsLock);
  v4 = supportedSmartFramings;

  return v4;
}

- (id)enabledSmartFramings
{
  os_unfair_lock_lock(&self->_framingsLock);
  enabledSmartFramings = self->_enabledSmartFramings;
  os_unfair_lock_unlock(&self->_framingsLock);
  v4 = enabledSmartFramings;

  return v4;
}

- (void)setEnabledSmartFramings:(id)a3
{
  if (a3)
  {
    v5 = [MEMORY[0x1E695DFD8] setWithArray:?];
    if ([v5 isSubsetOfSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", -[AVCaptureSmartFramingMonitor supportedSmartFramings](self, "supportedSmartFramings"))}])
    {
      os_unfair_lock_lock(&self->_framingsLock);

      self->_enabledSmartFramings = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:a3];
      os_unfair_lock_unlock(&self->_framingsLock);

      [(AVCaptureSmartFramingMonitor *)self _updateFigCaptureSourceEnabledSmartFramingFieldsOfViewForSmartFramings:a3];
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

- (id)recommendedSmartFraming
{
  os_unfair_lock_lock(&self->_framingsLock);
  recommendedSmartFraming = self->_recommendedSmartFraming;
  os_unfair_lock_unlock(&self->_framingsLock);
  v4 = recommendedSmartFraming;

  return v4;
}

- (BOOL)startMonitoring:(id *)a3
{
  v5 = [-[AVCaptureSmartFramingMonitor enabledSmartFramings](self "enabledSmartFramings")];
  if (v5)
  {
    os_unfair_lock_lock(&self->_isMonitoringLock);
    if (dword_1EB3859F8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    self->_isMonitoring = 1;
    os_unfair_lock_unlock(&self->_isMonitoringLock);
    [-[AVWeakReference referencedObject](self->_deviceWeakReference "referencedObject")];
  }

  else if (a3)
  {
    *a3 = AVLocalizedError();
  }

  return v5 != 0;
}

@end