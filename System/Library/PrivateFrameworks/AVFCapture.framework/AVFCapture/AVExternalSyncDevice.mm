@interface AVExternalSyncDevice
+ (void)initialize;
- (id)_initWithIdentifier:(id)a3 pid:(unsigned int)a4 vid:(unsigned int)a5;
- (int64_t)status;
- (void)_handleSourceDiedEvent;
- (void)_handleUSBConnectionStateChange:(BOOL)a3;
- (void)_handleUnfollow;
- (void)_notifyDelegateOfError:(int)a3;
- (void)_setClock:(OpaqueCMClock *)a3;
- (void)_setDelegate:(id)a3;
- (void)_setupStateMachine;
- (void)applyActiveExternalSyncVideoFrameDuration;
- (void)dealloc;
- (void)handleClockReceived:(OpaqueCMClock *)a3;
- (void)handleClockSetupFailedWithError:(int)a3;
- (void)handleFollowForDevice:(id)a3 withSessionRunning:(BOOL)a4;
- (void)handleFollowTimeout;
- (void)handleLockStateUpdateTriggerID:(unsigned int)a3 lockState:(BOOL)a4;
- (void)handleSessionStateChange:(BOOL)a3;
- (void)handleTSMSGOutOfBoundsTriggerID:(unsigned int)a3 error:(unsigned int)a4;
- (void)handleTSMSGSessionStoppedTriggerID:(unsigned int)a3 status:(unsigned int)a4;
- (void)handleTransitionToActiveSync;
- (void)handleTransitionToActiveSyncFromConfiguring;
- (void)handleTransitionToConfiguring;
- (void)handleTransitionToIdle;
- (void)handleTransitionToJamSync;
- (void)handleTransitionToUnavailable;
- (void)handleTriggerPresentTriggerID:(unsigned int)a3 isPresentState:(BOOL)a4;
- (void)handleUnfollow;
- (void)notifyDelegateStatusChange;
- (void)setSignalCompensationDelay:(id *)a3;
@end

@implementation AVExternalSyncDevice

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (id)_initWithIdentifier:(id)a3 pid:(unsigned int)a4 vid:(unsigned int)a5
{
  v11.receiver = self;
  v11.super_class = AVExternalSyncDevice;
  v8 = [(AVExternalSyncDevice *)&v11 init];
  if (v8)
  {
    v8->_uniqueIdentifier = [a3 copy];
    v8->_usbConnected = 1;
    v8->_queue = dispatch_queue_create("com.apple.avcaptureexternalsyncdevice", 0);
    v8->_deviceWeakReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:v8];
    v8->_uuid = objc_opt_new();
    v8->_vendorID = a5;
    v8->_productID = a4;
    v9 = MEMORY[0x1E6960CC0];
    *&v8->_signalCompensationDelay.value = *MEMORY[0x1E6960CC0];
    v8->_signalCompensationDelay.epoch = *(v9 + 16);
    [(AVExternalSyncDevice *)v8 _setupStateMachine];
  }

  return v8;
}

- (int64_t)status
{
  v3 = [(FigStateMachine *)self->_stateMachine currentState];
  if (v3 <= 3)
  {
    if (v3 == 1)
    {
      return 0;
    }

    if (v3 == 2)
    {
      return 1;
    }
  }

  else
  {
    switch(v3)
    {
      case 4:
        return 2;
      case 8:
        return 3;
      case 16:
        return 4;
    }
  }

  return [(FigStateMachine *)self->_stateMachine currentState];
}

- (void)_setupStateMachine
{
  v3 = objc_alloc(MEMORY[0x1E698F850]);
  v4 = [v3 initWithLabel:objc_msgSend(MEMORY[0x1E696AEC0] stateCount:"stringWithFormat:" initialState:@"AVExternalSyncState%@ state machine" owner:{-[AVExternalSyncDevice uuid](self, "uuid")), 5, 2, self}];
  self->_stateMachine = v4;
  [(FigStateMachine *)v4 setPerformsAtomicStateTransitions:0];
  [(FigStateMachine *)self->_stateMachine setLabel:@"Unavailable" forState:1];
  [(FigStateMachine *)self->_stateMachine setLabel:@"Idle" forState:2];
  [(FigStateMachine *)self->_stateMachine setLabel:@"Configuring" forState:4];
  [(FigStateMachine *)self->_stateMachine setLabel:@"ActiveSync" forState:8];
  [(FigStateMachine *)self->_stateMachine setLabel:@"JamSync" forState:16];
  [(FigStateMachine *)self->_stateMachine whenTransitioningToState:1 callHandler:&__block_literal_global_24];
  [(FigStateMachine *)self->_stateMachine whenTransitioningToState:2 callHandler:&__block_literal_global_31];
  [(FigStateMachine *)self->_stateMachine whenTransitioningToState:4 callHandler:&__block_literal_global_33];
  [(FigStateMachine *)self->_stateMachine whenTransitioningToState:8 callHandler:&__block_literal_global_35_0];
  stateMachine = self->_stateMachine;

  [(FigStateMachine *)stateMachine whenTransitioningToState:16 callHandler:&__block_literal_global_37];
}

uint64_t __42__AVExternalSyncDevice__setupStateMachine__block_invoke_4(uint64_t a1, void *a2, int a3)
{
  if (a3 == 4)
  {
    return [a2 handleTransitionToActiveSyncFromConfiguring];
  }

  else
  {
    return [a2 handleTransitionToActiveSync];
  }
}

- (void)dealloc
{
  configurationTimeoutBlock = self->_configurationTimeoutBlock;
  if (configurationTimeoutBlock)
  {
    dispatch_block_cancel(configurationTimeoutBlock);

    self->_configurationTimeoutBlock = 0;
  }

  unfollowTimeoutBlock = self->_unfollowTimeoutBlock;
  if (unfollowTimeoutBlock)
  {
    dispatch_block_cancel(unfollowTimeoutBlock);

    self->_unfollowTimeoutBlock = 0;
  }

  v5.receiver = self;
  v5.super_class = AVExternalSyncDevice;
  [(AVExternalSyncDevice *)&v5 dealloc];
}

- (void)handleFollowForDevice:(id)a3 withSessionRunning:(BOOL)a4
{
  if (dword_1EB385A38)
  {
    v13 = 0;
    v12 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  deviceWeakReference = self->_deviceWeakReference;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__AVExternalSyncDevice_handleFollowForDevice_withSessionRunning___block_invoke;
  block[3] = &unk_1E7875C20;
  block[4] = deviceWeakReference;
  block[5] = a3;
  v11 = a4;
  dispatch_async(queue, block);
}

void *__65__AVExternalSyncDevice_handleFollowForDevice_withSessionRunning___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) referencedObject];
  if (result)
  {
    v3 = result;
    result = [result state];
    if (result == 2)
    {
      v3[9] = *(a1 + 40);
      v4 = *(a1 + 48);
      *(v3 + 96) = v4;
      if (v4 == 1)
      {
        v5 = v3[5];

        return [v5 transitionToState:4];
      }
    }
  }

  return result;
}

- (void)handleSessionStateChange:(BOOL)a3
{
  if (dword_1EB385A38)
  {
    v11 = 0;
    v10 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  deviceWeakReference = self->_deviceWeakReference;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__AVExternalSyncDevice_handleSessionStateChange___block_invoke;
  block[3] = &unk_1E786EE40;
  block[4] = deviceWeakReference;
  v9 = a3;
  dispatch_async(queue, block);
}

void *__49__AVExternalSyncDevice_handleSessionStateChange___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) referencedObject];
  if (result)
  {
    v3 = result;
    [result setSessionRunning:*(a1 + 40)];
    if ([v3 state] == 2 && (*(a1 + 40) & 1) != 0)
    {
      v4 = 4;
    }

    else
    {
      result = [v3 state];
      if (result != 4 || (*(a1 + 40) & 1) != 0)
      {
        return result;
      }

      v4 = 2;
    }

    v5 = v3[5];

    return [v5 transitionToState:v4];
  }

  return result;
}

- (void)handleClockReceived:(OpaqueCMClock *)a3
{
  if (dword_1EB385A38)
  {
    v10 = 0;
    v9 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  deviceWeakReference = self->_deviceWeakReference;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__AVExternalSyncDevice_handleClockReceived___block_invoke;
  block[3] = &unk_1E786ECD0;
  block[4] = deviceWeakReference;
  block[5] = a3;
  dispatch_async(queue, block);
}

uint64_t __44__AVExternalSyncDevice_handleClockReceived___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) referencedObject];
  result = [v2 _setClock:*(a1 + 40)];
  if (v2)
  {
    result = [v2 state];
    if (result == 4)
    {
      result = [v2 isSessionRunning];
      if (result)
      {
        result = [v2 isLocked];
        if (result)
        {
          v4 = v2[5];

          return [v4 transitionToState:8 fromState:4];
        }
      }
    }
  }

  return result;
}

- (void)handleClockSetupFailedWithError:(int)a3
{
  if (dword_1EB385A38)
  {
    v11 = 0;
    v10 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  deviceWeakReference = self->_deviceWeakReference;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__AVExternalSyncDevice_handleClockSetupFailedWithError___block_invoke;
  block[3] = &unk_1E78704A0;
  block[4] = deviceWeakReference;
  v9 = a3;
  dispatch_async(queue, block);
}

uint64_t __56__AVExternalSyncDevice_handleClockSetupFailedWithError___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) referencedObject];
  if (result)
  {
    v3 = result;
    [result _notifyDelegateOfError:*(a1 + 40)];
    if ([v3 state] == 4 || (result = objc_msgSend(v3, "state"), result == 2) && (result = objc_msgSend(v3, "isSessionRunning"), (result & 1) == 0))
    {
      v4 = v3[9];

      return [v4 unfollowExternalSyncDevice];
    }
  }

  return result;
}

- (void)handleFollowTimeout
{
  if (dword_1EB385A38)
  {
    v8 = 0;
    v7 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  deviceWeakReference = self->_deviceWeakReference;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__AVExternalSyncDevice_handleFollowTimeout__block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = deviceWeakReference;
  dispatch_async(queue, block);
}

uint64_t __43__AVExternalSyncDevice_handleFollowTimeout__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) referencedObject];
  if (result)
  {
    v2 = result;
    v3 = *(result + 56);
    if (v3)
    {

      v2[7] = 0;
    }

    result = [v2 state];
    if (result == 4)
    {
      v4 = v2[9];

      return [v4 unfollowExternalSyncDevice];
    }
  }

  return result;
}

- (void)handleLockStateUpdateTriggerID:(unsigned int)a3 lockState:(BOOL)a4
{
  if (dword_1EB385A38)
  {
    v12 = 0;
    v11 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  deviceWeakReference = self->_deviceWeakReference;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__AVExternalSyncDevice_handleLockStateUpdateTriggerID_lockState___block_invoke;
  block[3] = &unk_1E786EE40;
  block[4] = deviceWeakReference;
  v10 = a4;
  dispatch_async(queue, block);
}

uint64_t __65__AVExternalSyncDevice_handleLockStateUpdateTriggerID_lockState___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) referencedObject];
  v3 = *(a1 + 40);
  *(result + 97) = v3;
  if (v3 == 1)
  {
    v4 = result;
    if (*(result + 16))
    {
      result = [result state];
      if (result == 4)
      {
        result = [v4 isSessionRunning];
        if (result)
        {
          v5 = v4[5];

          return [v5 transitionToState:8 fromState:4];
        }
      }
    }
  }

  return result;
}

- (void)handleTSMSGOutOfBoundsTriggerID:(unsigned int)a3 error:(unsigned int)a4
{
  deviceWeakReference = self->_deviceWeakReference;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__AVExternalSyncDevice_handleTSMSGOutOfBoundsTriggerID_error___block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = deviceWeakReference;
  dispatch_async(queue, block);
}

id *__62__AVExternalSyncDevice_handleTSMSGOutOfBoundsTriggerID_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) referencedObject];
  if (result)
  {
    v2 = result;
    if ([result state] == 8 || (result = objc_msgSend(v2, "state"), result == 16))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return [v2[5] transitionToState:1];
    }
  }

  return result;
}

- (void)handleTriggerPresentTriggerID:(unsigned int)a3 isPresentState:(BOOL)a4
{
  if (dword_1EB385A38)
  {
    v12 = 0;
    v11 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  deviceWeakReference = self->_deviceWeakReference;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__AVExternalSyncDevice_handleTriggerPresentTriggerID_isPresentState___block_invoke;
  block[3] = &unk_1E786EE40;
  block[4] = deviceWeakReference;
  v10 = a4;
  dispatch_async(queue, block);
}

void *__69__AVExternalSyncDevice_handleTriggerPresentTriggerID_isPresentState___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) referencedObject];
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (*(a1 + 40) != 1)
  {
    goto LABEL_6;
  }

  result = [result state];
  if (result != 16)
  {
    if (*(a1 + 40))
    {
      return result;
    }

LABEL_6:
    result = [v3 state];
    if (result != 8)
    {
      return result;
    }

    v4 = v3[5];
    v5 = 16;
    v6 = 8;
    goto LABEL_8;
  }

  v4 = v3[5];
  v5 = 8;
  v6 = 16;
LABEL_8:

  return [v4 transitionToState:v5 fromState:v6];
}

- (void)handleTSMSGSessionStoppedTriggerID:(unsigned int)a3 status:(unsigned int)a4
{
  if (dword_1EB385A38)
  {
    v10 = 0;
    v9 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  deviceWeakReference = self->_deviceWeakReference;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__AVExternalSyncDevice_handleTSMSGSessionStoppedTriggerID_status___block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = deviceWeakReference;
  dispatch_async(queue, block);
}

void *__66__AVExternalSyncDevice_handleTSMSGSessionStoppedTriggerID_status___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) referencedObject];
  if (result)
  {
    v2 = result;
    if ([result state] == 8 || (result = objc_msgSend(v2, "state"), result == 16))
    {
      v3 = v2[9];

      return [v3 unfollowExternalSyncDevice];
    }
  }

  return result;
}

- (void)handleUnfollow
{
  deviceWeakReference = self->_deviceWeakReference;
  if (dword_1EB385A38)
  {
    v8 = 0;
    v7 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__AVExternalSyncDevice_handleUnfollow__block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = deviceWeakReference;
  dispatch_async(queue, block);
}

void *__38__AVExternalSyncDevice_handleUnfollow__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) referencedObject];
  if (result)
  {

    return [result _handleUnfollow];
  }

  return result;
}

- (void)_handleUSBConnectionStateChange:(BOOL)a3
{
  deviceWeakReference = self->_deviceWeakReference;
  if (dword_1EB385A38)
  {
    v11 = 0;
    v10 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__AVExternalSyncDevice__handleUSBConnectionStateChange___block_invoke;
  block[3] = &unk_1E786EE40;
  block[4] = deviceWeakReference;
  v9 = a3;
  dispatch_async(queue, block);
}

void *__56__AVExternalSyncDevice__handleUSBConnectionStateChange___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) referencedObject];
  if (!result)
  {
    return result;
  }

  v3 = result;
  [result willChangeValueForKey:@"usbConnected"];
  *(v3 + 24) = *(a1 + 40);
  if ([*(v3 + 5) currentState] == 2 && *(v3 + 24) != 1)
  {
    v4 = 1;
    goto LABEL_9;
  }

  if ([*(v3 + 5) currentState] == 1 && *(v3 + 24) == 1)
  {
    v4 = 2;
LABEL_9:
    [*(v3 + 5) transitionToState:v4];
  }

  return [v3 didChangeValueForKey:@"usbConnected"];
}

- (void)_handleSourceDiedEvent
{
  if (dword_1EB385A38)
  {
    v8 = 0;
    v7 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  deviceWeakReference = self->_deviceWeakReference;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__AVExternalSyncDevice__handleSourceDiedEvent__block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = deviceWeakReference;
  dispatch_async(queue, block);
}

uint64_t __46__AVExternalSyncDevice__handleSourceDiedEvent__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) referencedObject];
  if (result)
  {
    v2 = *(result + 24);
    v3 = *(result + 40);
    if (v2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    return [v3 transitionToState:v4];
  }

  return result;
}

- (void)setSignalCompensationDelay:(id *)a3
{
  v5 = [(FigStateMachine *)self->_stateMachine currentState]!= 1 && [(FigStateMachine *)self->_stateMachine currentState]!= 3 && [(FigStateMachine *)self->_stateMachine currentState]!= 4;
  time1 = self->_signalCompensationDelay;
  time2 = **&MEMORY[0x1E6960C70];
  v6 = CMTimeCompare(&time1, &time2);
  v7 = MEMORY[0x1E6960CC0];
  if (v6)
  {
    v7 = a3;
  }

  time1 = *v7;
  time2 = *a3;
  v12 = time1;
  v8 = CMTimeCompare(&time2, &v12);
  if (!v5 && v8)
  {
    captureDeviceInput = self->_captureDeviceInput;
    if (captureDeviceInput)
    {
      v10 = *&time1.value;
      *&self->_signalCompensationDelay.value = *&time1.value;
      epoch = time1.epoch;
      self->_signalCompensationDelay.epoch = time1.epoch;
      *&time2.value = v10;
      time2.epoch = epoch;
      [(AVCaptureDeviceInput *)captureDeviceInput _setGenlockSignalCompensationDelay:&time2];
    }
  }
}

- (void)_setDelegate:(id)a3
{
  delegate = self->_delegate;
  if (delegate)
  {

    self->_delegate = 0;
  }

  if (a3)
  {
    self->_delegate = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:a3];
  }
}

- (void)_setClock:(OpaqueCMClock *)a3
{
  clock = self->_clock;
  if (clock)
  {
    CFRelease(clock);
  }

  self->_clock = a3;
  if (a3)
  {

    CFRetain(a3);
  }
}

- (void)_handleUnfollow
{
  [(AVExternalSyncDevice *)self applyActiveExternalSyncVideoFrameDuration];
  [[(AVCaptureDeviceInput *)self->_captureDeviceInput device] setActiveSyncDevice:0];
  if ([(AVExternalSyncDevice *)self isUsbConnected])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  stateMachine = self->_stateMachine;

  [(FigStateMachine *)stateMachine transitionToState:v3];
}

- (void)applyActiveExternalSyncVideoFrameDuration
{
  [[(AVCaptureDeviceInput *)self->_captureDeviceInput device] lockForConfiguration:0];
  v3 = [(AVCaptureDeviceInput *)self->_captureDeviceInput device];
  captureDeviceInput = self->_captureDeviceInput;
  if (captureDeviceInput)
  {
    [(AVCaptureDeviceInput *)captureDeviceInput activeExternalSyncVideoFrameDuration];
    v5 = self->_captureDeviceInput;
  }

  else
  {
    v5 = 0;
    memset(v6, 0, sizeof(v6));
  }

  [(AVCaptureDevice *)v3 setActiveExternalSyncVideoFrameDuration:v6 withExternalSyncDevice:self forOwner:v5];
  [[(AVCaptureDeviceInput *)self->_captureDeviceInput device] unlockForConfiguration];
}

- (void)handleTransitionToIdle
{
  [(AVExternalSyncDevice *)self willChangeValueForKey:@"status"];
  configurationTimeoutBlock = self->_configurationTimeoutBlock;
  if (configurationTimeoutBlock)
  {
    dispatch_block_cancel(configurationTimeoutBlock);

    self->_configurationTimeoutBlock = 0;
  }

  unfollowTimeoutBlock = self->_unfollowTimeoutBlock;
  if (unfollowTimeoutBlock)
  {
    dispatch_block_cancel(unfollowTimeoutBlock);

    self->_unfollowTimeoutBlock = 0;
  }

  clock = self->_clock;
  if (clock)
  {
    CFRelease(clock);
  }

  self->_clock = 0;
  self->_captureDeviceInput = 0;
  self->_locked = 0;
  [(AVExternalSyncDevice *)self notifyDelegateStatusChange];

  [(AVExternalSyncDevice *)self didChangeValueForKey:@"status"];
}

- (void)handleTransitionToActiveSync
{
  [(AVExternalSyncDevice *)self willChangeValueForKey:@"status"];
  [(AVExternalSyncDevice *)self notifyDelegateStatusChange];

  [(AVExternalSyncDevice *)self didChangeValueForKey:@"status"];
}

- (void)handleTransitionToActiveSyncFromConfiguring
{
  [(AVExternalSyncDevice *)self willChangeValueForKey:@"status"];
  configurationTimeoutBlock = self->_configurationTimeoutBlock;
  if (configurationTimeoutBlock)
  {
    dispatch_block_cancel(configurationTimeoutBlock);

    self->_configurationTimeoutBlock = 0;
  }

  [(AVExternalSyncDevice *)self applyActiveExternalSyncVideoFrameDuration];
  [(AVExternalSyncDevice *)self notifyDelegateStatusChange];

  [(AVExternalSyncDevice *)self didChangeValueForKey:@"status"];
}

- (void)handleTransitionToConfiguring
{
  [(AVExternalSyncDevice *)self willChangeValueForKey:@"status"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__AVExternalSyncDevice_handleTransitionToConfiguring__block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = self;
  self->_configurationTimeoutBlock = dispatch_block_create(0, block);
  v3 = dispatch_time(0, 9000000000);
  dispatch_after(v3, self->_queue, self->_configurationTimeoutBlock);
  if (self->_locked && self->_clock)
  {
    [(FigStateMachine *)self->_stateMachine transitionToState:8];
  }

  [(AVExternalSyncDevice *)self notifyDelegateStatusChange];
  [(AVExternalSyncDevice *)self didChangeValueForKey:@"status"];
}

void *__53__AVExternalSyncDevice_handleTransitionToConfiguring__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) referencedObject];
  if (result)
  {

    return [result handleFollowTimeout];
  }

  return result;
}

- (void)handleTransitionToJamSync
{
  [(AVExternalSyncDevice *)self willChangeValueForKey:@"status"];
  [(AVExternalSyncDevice *)self notifyDelegateStatusChange];

  [(AVExternalSyncDevice *)self didChangeValueForKey:@"status"];
}

- (void)handleTransitionToUnavailable
{
  [(AVExternalSyncDevice *)self willChangeValueForKey:@"status"];
  [(AVExternalSyncDevice *)self notifyDelegateStatusChange];

  [(AVExternalSyncDevice *)self didChangeValueForKey:@"status"];
}

- (void)notifyDelegateStatusChange
{
  delegate = self->_delegate;
  if (delegate)
  {
    v4 = [(AVWeakReference *)delegate referencedObject];
    if (v4)
    {

      [v4 externalSyncDeviceStatusDidChange:self];
    }

    else if (dword_1EB385A38)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

- (void)_notifyDelegateOfError:(int)a3
{
  if (self->_delegate)
  {
    if ((a3 + 73196) > 2)
    {
      v6 = 0;
    }

    else
    {
      v5 = off_1E7875C68[a3 + 73196];
      v9 = *MEMORY[0x1E696A578];
      v10 = v5;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    }

    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:a3 userInfo:v6];
    v8 = [(AVWeakReference *)self->_delegate referencedObject];
    if (v8)
    {
      [v8 externalSyncDevice:self failedWithError:v7];
    }
  }
}

@end