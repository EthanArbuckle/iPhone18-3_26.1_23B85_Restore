@interface AVFigEndpointRemoteControlSessionOutputDeviceCommunicationChannelImpl
- (AVFigEndpointRemoteControlSessionOutputDeviceCommunicationChannelImpl)initWithRemoteControlSession:(OpaqueFigEndpointRemoteControlSession *)session;
- (void)_didCloseCommunicationChannel;
- (void)_didReceiveData:(id)data;
- (void)close;
- (void)dealloc;
- (void)sendData:(id)data completionHandler:(id)handler;
@end

@implementation AVFigEndpointRemoteControlSessionOutputDeviceCommunicationChannelImpl

- (void)dealloc
{
  [(AVFigEndpointRemoteControlSessionOutputDeviceCommunicationChannelImpl *)self close];
  remoteControlSession = self->_remoteControlSession;
  if (remoteControlSession)
  {
    CFRelease(remoteControlSession);
  }

  v4.receiver = self;
  v4.super_class = AVFigEndpointRemoteControlSessionOutputDeviceCommunicationChannelImpl;
  [(AVFigEndpointRemoteControlSessionOutputDeviceCommunicationChannelImpl *)&v4 dealloc];
}

- (void)_didReceiveData:(id)data
{
  v9 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(AVOutputDeviceCommunicationChannel *)[(AVFigEndpointRemoteControlSessionOutputDeviceCommunicationChannelImpl *)self parentChannel:v7] communicationChannelImpl:self didReceiveData:data];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_didCloseCommunicationChannel
{
  v7 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(AVOutputDeviceCommunicationChannel *)[(AVFigEndpointRemoteControlSessionOutputDeviceCommunicationChannelImpl *)self parentChannel:v5] communicationChannelImplDidClose:self];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)sendData:(id)data completionHandler:(id)handler
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = [handler copy];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  remoteControlSession = self->_remoteControlSession;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v9)
  {
    v9(remoteControlSession, data, AVFigEndpointRemoteControlSessionOutputDeviceCommunicationChannelImplSendDataCompletion, v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)close
{
  remoteControlSession = self->_remoteControlSession;
  VTable = CMBaseObjectGetVTable();
  v5 = *(*(VTable + 16) + 16);
  if (v5)
  {
    v6 = *(VTable + 16) + 16;
    v5(remoteControlSession, 0, 0);
  }

  v7 = self->_remoteControlSession;
  v8 = CMBaseObjectGetVTable();
  v9 = *(*(v8 + 16) + 24);
  if (v9)
  {
    v10 = *(v8 + 16) + 24;

    v9(v7);
  }
}

- (AVFigEndpointRemoteControlSessionOutputDeviceCommunicationChannelImpl)initWithRemoteControlSession:(OpaqueFigEndpointRemoteControlSession *)session
{
  v10.receiver = self;
  v10.super_class = AVFigEndpointRemoteControlSessionOutputDeviceCommunicationChannelImpl;
  v4 = [(AVFigEndpointRemoteControlSessionOutputDeviceCommunicationChannelImpl *)&v10 init];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  if (!session)
  {
    v4->_remoteControlSession = 0;
    goto LABEL_10;
  }

  session = CFRetain(session);
  v5->_remoteControlSession = session;
  if (session)
  {
    VTable = CMBaseObjectGetVTable();
    v7 = *(*(VTable + 16) + 16);
    if (v7)
    {
      v8 = *(VTable + 16) + 16;
      if (!v7(session, AVFigEndpointRemoteControlSessionOutputDeviceCommunicationChannelImplHandleEvent, v5))
      {
        session = v5;
        goto LABEL_10;
      }
    }

LABEL_8:
    session = 0;
  }

LABEL_10:

  return session;
}

@end