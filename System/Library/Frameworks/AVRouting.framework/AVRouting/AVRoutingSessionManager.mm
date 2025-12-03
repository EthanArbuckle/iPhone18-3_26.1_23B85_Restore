@interface AVRoutingSessionManager
+ (BOOL)longFormVideoManagerCanHaveCurrentSessionWithDestinationOfType:(int64_t)type subType:(int64_t)subType;
+ (id)longFormVideoRoutingSessionManager;
+ (void)initialize;
- (AVRoutingSession)currentRoutingSession;
- (AVRoutingSessionManager)initWithFigRoutingSessionManager:(OpaqueFigRoutingSessionManager *)manager;
- (BOOL)prefersLikelyDestinationsOverCurrentRoutingSession;
- (BOOL)startRoutingSessionWithOutputDeviceDescriptions:(id)descriptions error:(id *)error;
- (BOOL)startSuppressingLikelyDestinationsUntilNextPlayEventAndReturnError:(id *)error;
- (BOOL)stopSuppressingLikelyDestinationsAndReturnError:(id *)error;
- (NSArray)likelyExternalDestinations;
- (id)description;
- (void)dealloc;
- (void)startRoutingSessionForHighConfidenceExternalDestinationIfPresentWithCompletionHandler:(id)handler;
- (void)updateCurrentRoutingSessionFromLikelyDestinationsWithCompletionHandler:(id)handler;
@end

@implementation AVRoutingSessionManager

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();

    fig_note_initialize_category_with_default_work();
  }
}

+ (BOOL)longFormVideoManagerCanHaveCurrentSessionWithDestinationOfType:(int64_t)type subType:(int64_t)subType
{
  v4 = 0x32800u >> subType;
  if (subType > 0x11)
  {
    LOBYTE(v4) = 0;
  }

  if (type)
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

- (void)dealloc
{
  ivars = self->_ivars;
  if (ivars)
  {
    if (ivars->figRoutingSessionManager)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      v4 = *MEMORY[0x1E69AF578];
      figRoutingSessionManager = self->_ivars->figRoutingSessionManager;
      FigNotificationCenterRemoveWeakListener();
      v6 = *MEMORY[0x1E69AF580];
      v7 = self->_ivars->figRoutingSessionManager;
      FigNotificationCenterRemoveWeakListener();
      ivars = self->_ivars;
      v8 = ivars->figRoutingSessionManager;
      if (v8)
      {
        CFRelease(v8);
        ivars = self->_ivars;
      }
    }
  }

  v9.receiver = self;
  v9.super_class = AVRoutingSessionManager;
  [(AVRoutingSessionManager *)&v9 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, currentRoutingSession=%@, likelyExternalDestinations=%@, allLikelyDestinations=%@, prefersLikelyDestinationsOverCurrentRoutingSession=%d>", NSStringFromClass(v4), self, -[AVRoutingSessionManager currentRoutingSession](self, "currentRoutingSession"), -[AVRoutingSessionManager likelyExternalDestinations](self, "likelyExternalDestinations"), -[AVRoutingSessionManager allLikelyDestinations](self, "allLikelyDestinations"), -[AVRoutingSessionManager prefersLikelyDestinationsOverCurrentRoutingSession](self, "prefersLikelyDestinationsOverCurrentRoutingSession")];
}

- (AVRoutingSession)currentRoutingSession
{
  cf = 0;
  figRoutingSessionManager = self->_ivars->figRoutingSessionManager;
  VTable = CMBaseObjectGetVTable();
  v4 = *(*(VTable + 16) + 8);
  if (!v4)
  {
    v10 = 0;
    return v10;
  }

  v5 = *(VTable + 16) + 8;
  v6 = v4(figRoutingSessionManager, &cf);
  v7 = cf;
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = cf == 0;
  }

  if (v8)
  {
    v10 = 0;
    if (!cf)
    {
      return v10;
    }

    goto LABEL_7;
  }

  v9 = [AVRoutingSession alloc];
  v10 = [(AVRoutingSession *)v9 initWithFigRoutingSession:cf];
  v7 = cf;
  if (cf)
  {
LABEL_7:
    CFRelease(v7);
  }

  return v10;
}

- (NSArray)likelyExternalDestinations
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = 0.0;
  FigRoutingSessionManagerGetConfidenceThresholds();
  LikelyDestinationsFromFig = AVRoutingSessionManagerGetLikelyDestinationsFromFig(self->_ivars->figRoutingSessionManager, &__block_literal_global_4);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(NSArray *)LikelyDestinationsFromFig countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(LikelyDestinationsFromFig);
        }

        [*(*(&v12 + 1) + 8 * i) probability];
        v7 = v7 + v9;
      }

      v5 = [(NSArray *)LikelyDestinationsFromFig countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  if (v7 >= v16)
  {
    result = LikelyDestinationsFromFig;
  }

  else
  {
    result = MEMORY[0x1E695E0F0];
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)prefersLikelyDestinationsOverCurrentRoutingSession
{
  v9 = 0;
  figRoutingSessionManager = self->_ivars->figRoutingSessionManager;
  VTable = CMBaseObjectGetVTable();
  v4 = *(*(VTable + 16) + 64);
  if (!v4)
  {
    return 0;
  }

  v5 = *(VTable + 16) + 64;
  v6 = v4(figRoutingSessionManager, &v9);
  return v9 && v6 == 0;
}

- (void)updateCurrentRoutingSessionFromLikelyDestinationsWithCompletionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [handler copy];
  if (dword_1EB46D588)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  figRoutingSessionManager = self->_ivars->figRoutingSessionManager;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v8)
  {
    v10 = -12782;
LABEL_8:
    AVRoutingSessionManagerInvokeStartHighConfidenceCompletionHandler(v5, v10);

    goto LABEL_9;
  }

  v9 = v8(figRoutingSessionManager, AVRoutingSessionManagerStartHighConfidenceDestinationComplete, v5);
  if (v9)
  {
    v10 = v9;
    if (v9 == -15395)
    {

      v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Missing required entitlement com.apple.avfoundation.allows-set-output-device", v11, v12, v13, v14, v15, v18), 0}];
      objc_exception_throw(v16);
    }

    goto LABEL_8;
  }

LABEL_9:
  v17 = *MEMORY[0x1E69E9840];
}

- (void)startRoutingSessionForHighConfidenceExternalDestinationIfPresentWithCompletionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [handler copy];
  if (dword_1EB46D588)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  figRoutingSessionManager = self->_ivars->figRoutingSessionManager;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v8)
  {
    v10 = -12782;
LABEL_8:
    AVRoutingSessionManagerInvokeStartHighConfidenceCompletionHandler(v5, v10);

    goto LABEL_9;
  }

  v9 = v8(figRoutingSessionManager, AVRoutingSessionManagerStartHighConfidenceDestinationComplete, v5);
  if (v9)
  {
    v10 = v9;
    if (v9 == -15395)
    {

      v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Missing required entitlement com.apple.avfoundation.allows-set-output-device", v11, v12, v13, v14, v15, v18), 0}];
      objc_exception_throw(v16);
    }

    goto LABEL_8;
  }

LABEL_9:
  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)startRoutingSessionWithOutputDeviceDescriptions:(id)descriptions error:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (dword_1EB46D588)
  {
    v38 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = [descriptions countByEnumeratingWithState:&v33 objects:v39 count:{16, v29, v31}];
  if (v9)
  {
    v10 = v9;
    v11 = *v34;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(descriptions);
        }

        v13 = AVCreateFigRouteDescriptorFromOutputDeviceDescription(*(*(&v33 + 1) + 8 * i));
        CFArrayAppendValue(Mutable, v13);
        if (v13)
        {
          CFRelease(v13);
        }
      }

      v10 = [descriptions countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v10);
  }

  if (dword_1EB46D588)
  {
    v38 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v15 = v38;
    if (os_log_type_enabled(v14, type))
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 & 0xFFFFFFFE;
    }

    if (v16)
    {
      v17 = AVSuccinctRouteDescriptorsDescription(Mutable);
      v40 = 136315395;
      v41 = "[AVRoutingSessionManager startRoutingSessionWithOutputDeviceDescriptions:error:]";
      v42 = 2113;
      v43 = v17;
      v30 = &v40;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  figRoutingSessionManager = self->_ivars->figRoutingSessionManager;
  v24 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (v24)
  {
    v25 = v24(figRoutingSessionManager, Mutable);
    if (!v25)
    {
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      result = 1;
      goto LABEL_32;
    }
  }

  else
  {
    v25 = -12782;
  }

  if (error && v25 != -15395)
  {
    *error = AVLocalizedErrorWithUnderlyingOSStatus(v25, 0);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v25 == -15395)
  {
    v28 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Missing required entitlement com.apple.avfoundation.allows-set-output-device", v19, v20, v21, v22, v23, v30), 0}];
    objc_exception_throw(v28);
  }

  result = 0;
LABEL_32:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)startSuppressingLikelyDestinationsUntilNextPlayEventAndReturnError:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  if (dword_1EB46D588)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  figRoutingSessionManager = self->_ivars->figRoutingSessionManager;
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v13)
  {
    v14 = v13(figRoutingSessionManager);
    if (!v14)
    {
      result = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v14 = -12782;
  }

  if (error && v14 != -15395)
  {
    *error = AVLocalizedErrorWithUnderlyingOSStatus(v14, 0);
  }

  if (v14 == -15395)
  {
    v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Missing required entitlement com.apple.avfoundation.allows-set-output-device", v8, v9, v10, v11, v12, v18), 0}];
    objc_exception_throw(v17);
  }

  result = 0;
LABEL_12:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)stopSuppressingLikelyDestinationsAndReturnError:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  if (dword_1EB46D588)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  figRoutingSessionManager = self->_ivars->figRoutingSessionManager;
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (v13)
  {
    v14 = v13(figRoutingSessionManager);
    if (!v14)
    {
      result = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v14 = -12782;
  }

  if (error && v14 != -15395)
  {
    *error = AVLocalizedErrorWithUnderlyingOSStatus(v14, 0);
  }

  if (v14 == -15395)
  {
    v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Missing required entitlement com.apple.avfoundation.allows-set-output-device", v8, v9, v10, v11, v12, v18), 0}];
    objc_exception_throw(v17);
  }

  result = 0;
LABEL_12:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)longFormVideoRoutingSessionManager
{
  v3 = *MEMORY[0x1E695E480];
  if (FigRoutingSessionManagerResilientRemoteCopyLongFormVideoManager())
  {
    v4 = 0;
  }

  else
  {
    v4 = [[self alloc] initWithFigRoutingSessionManager:0];
  }

  return v4;
}

- (AVRoutingSessionManager)initWithFigRoutingSessionManager:(OpaqueFigRoutingSessionManager *)manager
{
  CMNotificationCenterGetDefaultLocalCenter();
  v13.receiver = self;
  v13.super_class = AVRoutingSessionManager;
  v5 = [(AVRoutingSessionManager *)&v13 init];
  if (!v5)
  {
    goto LABEL_11;
  }

  ivars = objc_alloc_init(AVRoutingSessionManagerInternal);
  v5->_ivars = ivars;
  if (!ivars)
  {
    goto LABEL_11;
  }

  if (manager)
  {
    v7 = CFRetain(manager);
    ivars = v5->_ivars;
  }

  else
  {
    v7 = 0;
  }

  ivars->figRoutingSessionManager = v7;
  if (v5->_ivars->figRoutingSessionManager && (v8 = *MEMORY[0x1E69AF578], !OUTLINED_FUNCTION_0_2()) && (v9 = *MEMORY[0x1E69AF580], figRoutingSessionManager = v5->_ivars->figRoutingSessionManager, !OUTLINED_FUNCTION_0_2()))
  {
    v11 = v5;
  }

  else
  {
LABEL_11:
    v11 = 0;
  }

  return v11;
}

@end