@interface AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl
- (AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl)initWithFigEndpointUIAgent:(OpaqueFigEndpointUIAgent *)agent;
- (void)_notifyCurrentRequestOfTerminalStatus:(int64_t)status error:(id)error;
- (void)_showAuthPromptWithUniqueID:(id)d routeDescriptor:(__CFDictionary *)descriptor pinMode:(BOOL)mode reason:(__CFString *)reason;
- (void)_startNewRequest:(id)request impl:(id)impl;
- (void)dealloc;
- (void)outputDeviceAuthorizationRequestImpl:(id)impl didRespondWithAuthorizationToken:(id)token;
- (void)outputDeviceAuthorizationRequestImplDidCancel:(id)cancel;
@end

@implementation AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl

- (void)dealloc
{
  if (self->_weakObserver)
  {
    v3 = [AVRoutingCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    [v3 removeListenerWithWeakReference:self->_weakObserver callback:AVOutputDeviceAuthorizationSessionShowAuthPrompt name:*MEMORY[0x1E69AF248] object:self->_agent];
    [v3 removeListenerWithWeakReference:self->_weakObserver callback:AVOutputDeviceAuthorizationSessionShowFinishedWithPrompt name:*MEMORY[0x1E69AF238] object:self->_agent];
  }

  agent = self->_agent;
  if (agent)
  {
    CFRelease(agent);
  }

  v5.receiver = self;
  v5.super_class = AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl;
  [(AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl *)&v5 dealloc];
}

- (void)_showAuthPromptWithUniqueID:(id)d routeDescriptor:(__CFDictionary *)descriptor pinMode:(BOOL)mode reason:(__CFString *)reason
{
  modeCopy = mode;
  v29 = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E69AF298];
  if (!reason)
  {
    v11 = self->_currentRequest ? *MEMORY[0x1E69AF2A0] : *MEMORY[0x1E69AF298];
    if (dword_1EB46D568)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (FigCFEqual())
  {
    v13 = [AVOutputDevice outputDeviceWithRouteDescriptor:descriptor withRoutingContext:0];
    v14 = [AVFigEndpointUIAgentOutputDeviceAuthorizationRequestImpl alloc];
    v15 = &AVOutputDeviceAuthorizationTokenTypePIN;
    if (!modeCopy)
    {
      v15 = AVOutputDeviceAuthorizationTokenTypePassword;
    }

    v16 = [(AVFigEndpointUIAgentOutputDeviceAuthorizationRequestImpl *)v14 initWithID:d outputDevice:v13 authorizationTokenType:*v15, v27, v28];
    v17 = [[AVOutputDeviceAuthorizationRequest alloc] initWithOutputDeviceAuthorizationRequestImpl:v16];
    [(AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl *)self _startNewRequest:v17 impl:v16];
  }

  else
  {
    v18 = *MEMORY[0x1E69AF2A0];
    if (FigCFEqual())
    {
      v19 = self->_currentRequest;
      if ([(AVOutputDeviceAuthorizationSession *)[(AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl *)self parentAuthorizationSession] outputDeviceAuthorizationSessionImpl:self shouldRetryAuthorizationRequest:v19 reason:@"AVOutputDeviceAuthorizationRequestRetryReasonIncorrectAuthorizationToken"])
      {
        v20 = [[AVFigEndpointUIAgentOutputDeviceAuthorizationRequestImpl alloc] initWithID:[(AVOutputDeviceAuthorizationRequest *)v19 ID] outputDevice:[(AVOutputDeviceAuthorizationRequest *)v19 outputDevice] authorizationTokenType:[(AVOutputDeviceAuthorizationRequest *)v19 authorizationTokenType]];
        v21 = [[AVOutputDeviceAuthorizationRequest alloc] initWithOutputDeviceAuthorizationRequestImpl:v20];
        [(AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl *)self _notifyCurrentRequestOfTerminalStatus:2 error:0];
        [(AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl *)self _startNewRequest:v21 impl:v20];
      }

      else
      {
        if ([(NSString *)[(AVOutputDeviceAuthorizationRequest *)v19 authorizationTokenType] isEqualToString:@"AVOutputDeviceAuthorizationTokenTypePIN"])
        {
          v23 = -11908;
        }

        else
        {
          v23 = -11909;
        }

        [(AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl *)self _notifyCurrentRequestOfTerminalStatus:5 error:AVLocalizedError(@"AVFoundationErrorDomain", v23, 0)];
        agent = self->_agent;
        v25 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v25)
        {
          v25(agent, 0, 1);
        }
      }
    }

    else
    {
      v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)_startNewRequest:(id)request impl:(id)impl
{
  self->_currentRequest = request;
  implCopy = impl;
  self->_currentRequestImpl = implCopy;
  [(AVFigEndpointUIAgentOutputDeviceAuthorizationRequestImpl *)implCopy setParentAuthorizationSessionImpl:self];
  parentAuthorizationSession = [(AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl *)self parentAuthorizationSession];

  [(AVOutputDeviceAuthorizationSession *)parentAuthorizationSession outputDeviceAuthorizationSessionImpl:self didProvideAuthorizationRequest:request];
}

- (void)_notifyCurrentRequestOfTerminalStatus:(int64_t)status error:(id)error
{
  [(AVFigEndpointUIAgentOutputDeviceAuthorizationRequestImpl *)self->_currentRequestImpl enterTerminalStatus:status error:error];

  self->_currentRequestImpl = 0;
  self->_currentRequest = 0;
}

- (void)outputDeviceAuthorizationRequestImpl:(id)impl didRespondWithAuthorizationToken:(id)token
{
  v10 = *MEMORY[0x1E69E9840];
  if (dword_1EB46D568)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  agent = self->_agent;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v8)
  {
    v8(agent, token, 0);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)outputDeviceAuthorizationRequestImplDidCancel:(id)cancel
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1EB46D568)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  agent = self->_agent;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v6)
  {
    v6(agent, 0, 1);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl)initWithFigEndpointUIAgent:(OpaqueFigEndpointUIAgent *)agent
{
  v5 = [AVRoutingCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  v16.receiver = self;
  v16.super_class = AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl;
  v6 = [(AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl *)&v16 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_10;
  }

  if (!agent)
  {
    v14 = 0;
    v6->_agent = 0;
    goto LABEL_9;
  }

  v8 = CFRetain(agent);
  v7->_agent = v8;
  if (!v8)
  {
LABEL_10:
    v14 = 0;
    goto LABEL_9;
  }

  v9 = [[AVRoutingWeakReference alloc] initWithReferencedObject:v7];
  v7->_weakObserver = v9;
  [v5 addListenerWithWeakReference:v9 callback:AVOutputDeviceAuthorizationSessionShowAuthPrompt name:*MEMORY[0x1E69AF248] object:v7->_agent flags:0];
  [v5 addListenerWithWeakReference:v7->_weakObserver callback:AVOutputDeviceAuthorizationSessionShowFinishedWithPrompt name:*MEMORY[0x1E69AF238] object:v7->_agent flags:0];
  agent = v7->_agent;
  VTable = CMBaseObjectGetVTable();
  v12 = *(*(VTable + 16) + 24);
  if (v12)
  {
    v13 = *(VTable + 16) + 24;
    v12(agent, 1);
  }

  v14 = v7;
LABEL_9:

  return v14;
}

@end