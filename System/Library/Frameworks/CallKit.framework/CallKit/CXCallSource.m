@interface CXCallSource
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (CXCallSource)initWithIdentifier:(id)a3;
- (CXCallSourceDelegate)delegate;
- (NSString)description;
- (void)actionCompleted:(id)a3 completionHandler:(id)a4;
- (void)beginWithCompletionHandler:(id)a3;
- (void)commitTransaction:(id)a3;
- (void)handleActionTimeout:(id)a3;
- (void)handleAudioSessionActivationStateChangedTo:(id)a3;
- (void)registerWithConfiguration:(id)a3;
- (void)reportAudioFinishedForCallWithUUID:(id)a3 reply:(id)a4;
- (void)reportCallWithUUID:(id)a3 changedFrequencyData:(id)a4 forDirection:(int64_t)a5 reply:(id)a6;
- (void)reportCallWithUUID:(id)a3 changedMeterLevel:(float)a4 forDirection:(int64_t)a5 reply:(id)a6;
- (void)reportCallWithUUID:(id)a3 crossDeviceIdentifier:(id)a4 changedBytesOfDataUsed:(int64_t)a5 reply:(id)a6;
- (void)reportCallWithUUID:(id)a3 endedAtDate:(id)a4 privateReason:(int64_t)a5 failureContext:(id)a6 reply:(id)a7;
- (void)reportCallWithUUID:(id)a3 receivedDTMFUpdate:(id)a4 reply:(id)a5;
- (void)reportCallWithUUID:(id)a3 updated:(id)a4 reply:(id)a5;
- (void)reportNewIncomingCallWithUUID:(id)a3 update:(id)a4 reply:(id)a5;
- (void)reportNewOutgoingCallWithUUID:(id)a3 update:(id)a4;
- (void)reportOutgoingCallWithUUID:(id)a3 connectedAtDate:(id)a4 reply:(id)a5;
- (void)reportOutgoingCallWithUUID:(id)a3 sentInvitationAtDate:(id)a4 reply:(id)a5;
- (void)reportOutgoingCallWithUUID:(id)a3 startedConnectingAtDate:(id)a4 reply:(id)a5;
- (void)requestTransaction:(id)a3 completionHandler:(id)a4;
- (void)setConnected:(BOOL)a3;
@end

@implementation CXCallSource

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CXCallSource *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@ %p identifier=%@ isConnected=%d processIdentifier=%d isPermittedToUsePublicAPI=%d isPermittedToUsePrivateAPI=%d>", v4, self, v5, -[CXCallSource isConnected](self, "isConnected"), -[CXCallSource processIdentifier](self, "processIdentifier"), -[CXCallSource isPermittedToUsePublicAPI](self, "isPermittedToUsePublicAPI"), -[CXCallSource isPermittedToUsePrivateAPI](self, "isPermittedToUsePrivateAPI")];

  return v6;
}

- (CXCallSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CXCallSource)initWithIdentifier:(id)a3
{
  v5 = a3;
  if ([v5 length])
  {
    v12.receiver = self;
    v12.super_class = CXCallSource;
    v6 = [(CXCallSource *)&v12 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_identifier, a3);
      v8 = dispatch_queue_create("com.apple.callkit.callsource", 0);
      queue = v7->_queue;
      v7->_queue = v8;
    }

    self = v7;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  *&v3 = -1;
  *(&v3 + 1) = -1;
  *retstr->var0 = v3;
  *&retstr->var0[4] = v3;
  return self;
}

- (void)setConnected:(BOOL)a3
{
  if (self->_connected != a3)
  {
    v4 = a3;
    self->_connected = a3;
    v6 = [(CXCallSource *)self delegate];
    v7 = v6;
    if (v4)
    {
      [v6 callSourceConnectionStarted:self];
    }

    else
    {
      [v6 callSourceConnectionEnded:self];
    }
  }
}

- (void)beginWithCompletionHandler:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

- (void)registerWithConfiguration:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[CXCallSource registerWithConfiguration:]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Received %s with configuration: %@", &v9, 0x16u);
  }

  if (![(CXCallSource *)self isPermittedToUsePrivateAPI])
  {
    v6 = [v4 sanitizedCopy];

    v4 = v6;
  }

  v7 = [(CXCallSource *)self delegate];
  [v7 callSource:self registeredWithConfiguration:v4];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)reportNewIncomingCallWithUUID:(id)a3 update:(id)a4 reply:(id)a5
{
  v54 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CXDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 UUIDString];
    *buf = 136315650;
    v49 = "[CXCallSource reportNewIncomingCallWithUUID:update:reply:]";
    v50 = 2112;
    v51 = v12;
    v52 = 2112;
    v53 = v9;
    _os_log_impl(&dword_1B47F3000, v11, OS_LOG_TYPE_DEFAULT, "Received %s with UUID: %@ update: %@", buf, 0x20u);
  }

  if (v10)
  {
    if (!v8)
    {
      v23 = CXDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [(CXCallSource *)v23 reportNewIncomingCallWithUUID:v24 update:v25 reply:v26, v27, v28, v29, v30];
      }

      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __59__CXCallSource_reportNewIncomingCallWithUUID_update_reply___block_invoke_9;
      v46[3] = &unk_1E7C07388;
      v47 = v10;
      __59__CXCallSource_reportNewIncomingCallWithUUID_update_reply___block_invoke_9(v46);
      v31 = v47;
      goto LABEL_22;
    }

    if (v9)
    {
      if ([(CXCallSource *)self isPermittedToUsePublicAPI])
      {
        if (![(CXCallSource *)self isPermittedToUsePrivateAPI])
        {
          v13 = [v9 sanitizedCopy];

          v9 = v13;
        }

        v14 = [(CXCallSource *)self delegate];
        [v14 callSource:self reportedNewIncomingCallWithUUID:v8 update:v9 completion:v10];

        goto LABEL_23;
      }

      v40 = CXDefaultLog();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [CXCallSource reportNewIncomingCallWithUUID:update:reply:];
      }

      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __59__CXCallSource_reportNewIncomingCallWithUUID_update_reply___block_invoke_15;
      v42[3] = &unk_1E7C07388;
      v43 = v10;
      __59__CXCallSource_reportNewIncomingCallWithUUID_update_reply___block_invoke_15(v42);
      v31 = v43;
LABEL_22:

      goto LABEL_23;
    }

    v32 = CXDefaultLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [(CXCallSource *)v32 reportNewIncomingCallWithUUID:v33 update:v34 reply:v35, v36, v37, v38, v39];
    }

    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __59__CXCallSource_reportNewIncomingCallWithUUID_update_reply___block_invoke_14;
    v44[3] = &unk_1E7C07388;
    v45 = v10;
    __59__CXCallSource_reportNewIncomingCallWithUUID_update_reply___block_invoke_14(v44);
    v9 = v45;
  }

  else
  {
    v15 = CXDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(CXCallSource *)v15 reportNewIncomingCallWithUUID:v16 update:v17 reply:v18, v19, v20, v21, v22];
    }
  }

LABEL_23:

  v41 = *MEMORY[0x1E69E9840];
}

void __59__CXCallSource_reportNewIncomingCallWithUUID_update_reply___block_invoke_9(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __59__CXCallSource_reportNewIncomingCallWithUUID_update_reply___block_invoke_14(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __59__CXCallSource_reportNewIncomingCallWithUUID_update_reply___block_invoke_15(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_incomingCallErrorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)reportCallWithUUID:(id)a3 updated:(id)a4 reply:(id)a5
{
  v57 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CXDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 UUIDString];
    *buf = 136315650;
    v52 = "[CXCallSource reportCallWithUUID:updated:reply:]";
    v53 = 2112;
    v54 = v12;
    v55 = 2112;
    v56 = v9;
    _os_log_impl(&dword_1B47F3000, v11, OS_LOG_TYPE_DEFAULT, "Received %s with UUID: %@ update: %@", buf, 0x20u);
  }

  v13 = CXDefaultLog();
  if (os_signpost_enabled(v13))
  {
    v14 = [v9 UUID];
    v15 = [v14 UUIDString];
    *buf = 138543362;
    v52 = v15;
    _os_signpost_emit_with_name_impl(&dword_1B47F3000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CXCallSource", "reportCallWithUUIDUpdated-%{public}@", buf, 0xCu);
  }

  if (v10)
  {
    if (!v8)
    {
      v26 = CXDefaultLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [(CXCallSource *)v26 reportNewIncomingCallWithUUID:v27 update:v28 reply:v29, v30, v31, v32, v33];
      }

      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __49__CXCallSource_reportCallWithUUID_updated_reply___block_invoke_21;
      v49[3] = &unk_1E7C07388;
      v50 = v10;
      __49__CXCallSource_reportCallWithUUID_updated_reply___block_invoke_21(v49);
      v34 = v50;
      goto LABEL_24;
    }

    if (v9)
    {
      if ([(CXCallSource *)self isPermittedToUsePublicAPI])
      {
        if (![(CXCallSource *)self isPermittedToUsePrivateAPI])
        {
          v16 = [v9 sanitizedCopy];

          v9 = v16;
        }

        v17 = [(CXCallSource *)self delegate];
        [v17 callSource:self reportedCallWithUUID:v8 updated:v9];

        (*(v10 + 2))(v10, 0);
        goto LABEL_25;
      }

      v43 = CXDefaultLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        [CXCallSource reportNewIncomingCallWithUUID:update:reply:];
      }

      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __49__CXCallSource_reportCallWithUUID_updated_reply___block_invoke_23;
      v45[3] = &unk_1E7C07388;
      v46 = v10;
      __49__CXCallSource_reportCallWithUUID_updated_reply___block_invoke_23(v45);
      v34 = v46;
LABEL_24:

      goto LABEL_25;
    }

    v35 = CXDefaultLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [(CXCallSource *)v35 reportNewIncomingCallWithUUID:v36 update:v37 reply:v38, v39, v40, v41, v42];
    }

    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __49__CXCallSource_reportCallWithUUID_updated_reply___block_invoke_22;
    v47[3] = &unk_1E7C07388;
    v48 = v10;
    __49__CXCallSource_reportCallWithUUID_updated_reply___block_invoke_22(v47);
    v9 = v48;
  }

  else
  {
    v18 = CXDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(CXCallSource *)v18 reportNewIncomingCallWithUUID:v19 update:v20 reply:v21, v22, v23, v24, v25];
    }
  }

LABEL_25:

  v44 = *MEMORY[0x1E69E9840];
}

void __49__CXCallSource_reportCallWithUUID_updated_reply___block_invoke_21(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __49__CXCallSource_reportCallWithUUID_updated_reply___block_invoke_22(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __49__CXCallSource_reportCallWithUUID_updated_reply___block_invoke_23(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)reportCallWithUUID:(id)a3 receivedDTMFUpdate:(id)a4 reply:(id)a5
{
  v54 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CXDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 UUIDString];
    *buf = 136315650;
    v49 = "[CXCallSource reportCallWithUUID:receivedDTMFUpdate:reply:]";
    v50 = 2112;
    v51 = v12;
    v52 = 2112;
    v53 = v9;
    _os_log_impl(&dword_1B47F3000, v11, OS_LOG_TYPE_DEFAULT, "Received %s with UUID: %@ dtmfUpdate: %@", buf, 0x20u);
  }

  if (v10)
  {
    if (!v8)
    {
      v23 = CXDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [(CXCallSource *)v23 reportNewIncomingCallWithUUID:v24 update:v25 reply:v26, v27, v28, v29, v30];
      }

      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __60__CXCallSource_reportCallWithUUID_receivedDTMFUpdate_reply___block_invoke_28;
      v46[3] = &unk_1E7C07388;
      v47 = v10;
      __60__CXCallSource_reportCallWithUUID_receivedDTMFUpdate_reply___block_invoke_28(v46);
      v31 = v47;
      goto LABEL_22;
    }

    if (v9)
    {
      if ([(CXCallSource *)self isPermittedToUsePublicAPI])
      {
        if (![(CXCallSource *)self isPermittedToUsePrivateAPI])
        {
          v13 = [v9 sanitizedCopy];

          v9 = v13;
        }

        v14 = [(CXCallSource *)self delegate];
        [v14 callSource:self reportedCallWithUUID:v8 receivedDTMFUpdate:v9];

        (*(v10 + 2))(v10, 0);
        goto LABEL_23;
      }

      v40 = CXDefaultLog();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [CXCallSource reportNewIncomingCallWithUUID:update:reply:];
      }

      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __60__CXCallSource_reportCallWithUUID_receivedDTMFUpdate_reply___block_invoke_33;
      v42[3] = &unk_1E7C07388;
      v43 = v10;
      __60__CXCallSource_reportCallWithUUID_receivedDTMFUpdate_reply___block_invoke_33(v42);
      v31 = v43;
LABEL_22:

      goto LABEL_23;
    }

    v32 = CXDefaultLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [(CXCallSource *)v32 reportCallWithUUID:v33 receivedDTMFUpdate:v34 reply:v35, v36, v37, v38, v39];
    }

    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __60__CXCallSource_reportCallWithUUID_receivedDTMFUpdate_reply___block_invoke_32;
    v44[3] = &unk_1E7C07388;
    v45 = v10;
    __60__CXCallSource_reportCallWithUUID_receivedDTMFUpdate_reply___block_invoke_32(v44);
    v9 = v45;
  }

  else
  {
    v15 = CXDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(CXCallSource *)v15 reportNewIncomingCallWithUUID:v16 update:v17 reply:v18, v19, v20, v21, v22];
    }
  }

LABEL_23:

  v41 = *MEMORY[0x1E69E9840];
}

void __60__CXCallSource_reportCallWithUUID_receivedDTMFUpdate_reply___block_invoke_28(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __60__CXCallSource_reportCallWithUUID_receivedDTMFUpdate_reply___block_invoke_32(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __60__CXCallSource_reportCallWithUUID_receivedDTMFUpdate_reply___block_invoke_33(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)reportCallWithUUID:(id)a3 endedAtDate:(id)a4 privateReason:(int64_t)a5 failureContext:(id)a6 reply:(id)a7
{
  v53 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = CXDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v12 UUIDString];
    *buf = 136316162;
    v44 = "[CXCallSource reportCallWithUUID:endedAtDate:privateReason:failureContext:reply:]";
    v45 = 2112;
    v46 = v17;
    v47 = 2112;
    v48 = v13;
    v49 = 2048;
    v50 = a5;
    v51 = 2112;
    v52 = v14;
    _os_log_impl(&dword_1B47F3000, v16, OS_LOG_TYPE_DEFAULT, "Received %s with UUID: %@ dateEnded: %@ privateEndedReason: %ld failureContext: %@", buf, 0x34u);
  }

  if (v15)
  {
    if (v12)
    {
      if ([(CXCallSource *)self isPermittedToUsePublicAPI])
      {
        if (![(CXCallSource *)self isPermittedToUsePrivateAPI])
        {
          v18 = [v14 sanitizedCopy];

          v14 = v18;
        }

        v19 = [(CXCallSource *)self delegate];
        [v19 callSource:self reportedCallWithUUID:v12 endedAtDate:v13 privateReason:a5 failureContext:v14];

        v15[2](v15, 0);
        goto LABEL_19;
      }

      v37 = CXDefaultLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [CXCallSource reportNewIncomingCallWithUUID:update:reply:];
      }

      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __82__CXCallSource_reportCallWithUUID_endedAtDate_privateReason_failureContext_reply___block_invoke_39;
      v39[3] = &unk_1E7C07388;
      v40 = v15;
      __82__CXCallSource_reportCallWithUUID_endedAtDate_privateReason_failureContext_reply___block_invoke_39(v39);
      v36 = v40;
    }

    else
    {
      v28 = CXDefaultLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [(CXCallSource *)v28 reportNewIncomingCallWithUUID:v29 update:v30 reply:v31, v32, v33, v34, v35];
      }

      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __82__CXCallSource_reportCallWithUUID_endedAtDate_privateReason_failureContext_reply___block_invoke_38;
      v41[3] = &unk_1E7C07388;
      v42 = v15;
      __82__CXCallSource_reportCallWithUUID_endedAtDate_privateReason_failureContext_reply___block_invoke_38(v41);
      v36 = v42;
    }

    goto LABEL_19;
  }

  v20 = CXDefaultLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [(CXCallSource *)v20 reportNewIncomingCallWithUUID:v21 update:v22 reply:v23, v24, v25, v26, v27];
  }

LABEL_19:
  v38 = *MEMORY[0x1E69E9840];
}

void __82__CXCallSource_reportCallWithUUID_endedAtDate_privateReason_failureContext_reply___block_invoke_38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __82__CXCallSource_reportCallWithUUID_endedAtDate_privateReason_failureContext_reply___block_invoke_39(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)reportOutgoingCallWithUUID:(id)a3 sentInvitationAtDate:(id)a4 reply:(id)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CXDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 UUIDString];
    *buf = 136315650;
    v38 = "[CXCallSource reportOutgoingCallWithUUID:sentInvitationAtDate:reply:]";
    v39 = 2112;
    v40 = v12;
    v41 = 2112;
    v42 = v9;
    _os_log_impl(&dword_1B47F3000, v11, OS_LOG_TYPE_DEFAULT, "Received %s with UUID: %@ dateSentInvitation: %@", buf, 0x20u);
  }

  if (v10)
  {
    if (v8)
    {
      if ([(CXCallSource *)self isPermittedToUsePublicAPI])
      {
        v13 = [(CXCallSource *)self delegate];
        [v13 callSource:self reportedOutgoingCallWithUUID:v8 sentInvitationAtDate:v9];

        v10[2](v10, 0);
        goto LABEL_17;
      }

      v31 = CXDefaultLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [CXCallSource reportNewIncomingCallWithUUID:update:reply:];
      }

      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __70__CXCallSource_reportOutgoingCallWithUUID_sentInvitationAtDate_reply___block_invoke_45;
      v33[3] = &unk_1E7C07388;
      v34 = v10;
      __70__CXCallSource_reportOutgoingCallWithUUID_sentInvitationAtDate_reply___block_invoke_45(v33);
      v30 = v34;
    }

    else
    {
      v22 = CXDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(CXCallSource *)v22 reportNewIncomingCallWithUUID:v23 update:v24 reply:v25, v26, v27, v28, v29];
      }

      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __70__CXCallSource_reportOutgoingCallWithUUID_sentInvitationAtDate_reply___block_invoke_44;
      v35[3] = &unk_1E7C07388;
      v36 = v10;
      __70__CXCallSource_reportOutgoingCallWithUUID_sentInvitationAtDate_reply___block_invoke_44(v35);
      v30 = v36;
    }

    goto LABEL_17;
  }

  v14 = CXDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [(CXCallSource *)v14 reportNewIncomingCallWithUUID:v15 update:v16 reply:v17, v18, v19, v20, v21];
  }

LABEL_17:
  v32 = *MEMORY[0x1E69E9840];
}

void __70__CXCallSource_reportOutgoingCallWithUUID_sentInvitationAtDate_reply___block_invoke_44(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __70__CXCallSource_reportOutgoingCallWithUUID_sentInvitationAtDate_reply___block_invoke_45(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)reportOutgoingCallWithUUID:(id)a3 startedConnectingAtDate:(id)a4 reply:(id)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CXDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 UUIDString];
    *buf = 136315650;
    v38 = "[CXCallSource reportOutgoingCallWithUUID:startedConnectingAtDate:reply:]";
    v39 = 2112;
    v40 = v12;
    v41 = 2112;
    v42 = v9;
    _os_log_impl(&dword_1B47F3000, v11, OS_LOG_TYPE_DEFAULT, "Received %s with UUID: %@ dateStartedConnecting: %@", buf, 0x20u);
  }

  if (v10)
  {
    if (v8)
    {
      if ([(CXCallSource *)self isPermittedToUsePublicAPI])
      {
        v13 = [(CXCallSource *)self delegate];
        [v13 callSource:self reportedOutgoingCallWithUUID:v8 startedConnectingAtDate:v9];

        v10[2](v10, 0);
        goto LABEL_17;
      }

      v31 = CXDefaultLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [CXCallSource reportNewIncomingCallWithUUID:update:reply:];
      }

      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __73__CXCallSource_reportOutgoingCallWithUUID_startedConnectingAtDate_reply___block_invoke_51;
      v33[3] = &unk_1E7C07388;
      v34 = v10;
      __73__CXCallSource_reportOutgoingCallWithUUID_startedConnectingAtDate_reply___block_invoke_51(v33);
      v30 = v34;
    }

    else
    {
      v22 = CXDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(CXCallSource *)v22 reportNewIncomingCallWithUUID:v23 update:v24 reply:v25, v26, v27, v28, v29];
      }

      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __73__CXCallSource_reportOutgoingCallWithUUID_startedConnectingAtDate_reply___block_invoke_50;
      v35[3] = &unk_1E7C07388;
      v36 = v10;
      __73__CXCallSource_reportOutgoingCallWithUUID_startedConnectingAtDate_reply___block_invoke_50(v35);
      v30 = v36;
    }

    goto LABEL_17;
  }

  v14 = CXDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [(CXCallSource *)v14 reportNewIncomingCallWithUUID:v15 update:v16 reply:v17, v18, v19, v20, v21];
  }

LABEL_17:
  v32 = *MEMORY[0x1E69E9840];
}

void __73__CXCallSource_reportOutgoingCallWithUUID_startedConnectingAtDate_reply___block_invoke_50(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __73__CXCallSource_reportOutgoingCallWithUUID_startedConnectingAtDate_reply___block_invoke_51(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)reportNewOutgoingCallWithUUID:(id)a3 update:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 UUIDString];
    v12 = 136315394;
    v13 = "[CXCallSource reportNewOutgoingCallWithUUID:update:]";
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s with UUID: %@", &v12, 0x16u);
  }

  v10 = [(CXCallSource *)self delegate];
  [v10 callSource:self reportedNewOutgoingCallWithUUID:v6 update:v7];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)reportOutgoingCallWithUUID:(id)a3 connectedAtDate:(id)a4 reply:(id)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CXDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 UUIDString];
    *buf = 136315650;
    v38 = "[CXCallSource reportOutgoingCallWithUUID:connectedAtDate:reply:]";
    v39 = 2112;
    v40 = v12;
    v41 = 2112;
    v42 = v9;
    _os_log_impl(&dword_1B47F3000, v11, OS_LOG_TYPE_DEFAULT, "Received %s with UUID: %@ dateConnected: %@", buf, 0x20u);
  }

  if (v10)
  {
    if (v8)
    {
      if ([(CXCallSource *)self isPermittedToUsePublicAPI])
      {
        v13 = [(CXCallSource *)self delegate];
        [v13 callSource:self reportedOutgoingCallWithUUID:v8 connectedAtDate:v9];

        v10[2](v10, 0);
        goto LABEL_17;
      }

      v31 = CXDefaultLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [CXCallSource reportNewIncomingCallWithUUID:update:reply:];
      }

      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __65__CXCallSource_reportOutgoingCallWithUUID_connectedAtDate_reply___block_invoke_57;
      v33[3] = &unk_1E7C07388;
      v34 = v10;
      __65__CXCallSource_reportOutgoingCallWithUUID_connectedAtDate_reply___block_invoke_57(v33);
      v30 = v34;
    }

    else
    {
      v22 = CXDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(CXCallSource *)v22 reportNewIncomingCallWithUUID:v23 update:v24 reply:v25, v26, v27, v28, v29];
      }

      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __65__CXCallSource_reportOutgoingCallWithUUID_connectedAtDate_reply___block_invoke_56;
      v35[3] = &unk_1E7C07388;
      v36 = v10;
      __65__CXCallSource_reportOutgoingCallWithUUID_connectedAtDate_reply___block_invoke_56(v35);
      v30 = v36;
    }

    goto LABEL_17;
  }

  v14 = CXDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [(CXCallSource *)v14 reportNewIncomingCallWithUUID:v15 update:v16 reply:v17, v18, v19, v20, v21];
  }

LABEL_17:
  v32 = *MEMORY[0x1E69E9840];
}

void __65__CXCallSource_reportOutgoingCallWithUUID_connectedAtDate_reply___block_invoke_56(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __65__CXCallSource_reportOutgoingCallWithUUID_connectedAtDate_reply___block_invoke_57(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)reportAudioFinishedForCallWithUUID:(id)a3 reply:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 UUIDString];
    *buf = 136315394;
    v35 = "[CXCallSource reportAudioFinishedForCallWithUUID:reply:]";
    v36 = 2112;
    v37 = v9;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s with UUID: %@", buf, 0x16u);
  }

  if (v7)
  {
    if (v6)
    {
      if ([(CXCallSource *)self isPermittedToUsePrivateAPI])
      {
        v10 = [(CXCallSource *)self delegate];
        [v10 callSource:self reportedAudioFinishedForCallWithUUID:v6];

        v7[2](v7, 0);
        goto LABEL_17;
      }

      v28 = CXDefaultLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [CXCallSource reportAudioFinishedForCallWithUUID:reply:];
      }

      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __57__CXCallSource_reportAudioFinishedForCallWithUUID_reply___block_invoke_63;
      v30[3] = &unk_1E7C07388;
      v31 = v7;
      __57__CXCallSource_reportAudioFinishedForCallWithUUID_reply___block_invoke_63(v30);
      v27 = v31;
    }

    else
    {
      v19 = CXDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(CXCallSource *)v19 reportNewIncomingCallWithUUID:v20 update:v21 reply:v22, v23, v24, v25, v26];
      }

      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __57__CXCallSource_reportAudioFinishedForCallWithUUID_reply___block_invoke_62;
      v32[3] = &unk_1E7C07388;
      v33 = v7;
      __57__CXCallSource_reportAudioFinishedForCallWithUUID_reply___block_invoke_62(v32);
      v27 = v33;
    }

    goto LABEL_17;
  }

  v11 = CXDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [(CXCallSource *)v11 reportNewIncomingCallWithUUID:v12 update:v13 reply:v14, v15, v16, v17, v18];
  }

LABEL_17:
  v29 = *MEMORY[0x1E69E9840];
}

void __57__CXCallSource_reportAudioFinishedForCallWithUUID_reply___block_invoke_62(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __57__CXCallSource_reportAudioFinishedForCallWithUUID_reply___block_invoke_63(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)reportCallWithUUID:(id)a3 changedFrequencyData:(id)a4 forDirection:(int64_t)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v12)
  {
    if (v10)
    {
      if ([(CXCallSource *)self isPermittedToUsePrivateAPI])
      {
        v13 = [(CXCallSource *)self delegate];
        [v13 callSource:self reportedCallWithUUID:v10 changedFrequencyData:v11 forDirection:a5];

        v12[2](v12, 0);
        goto LABEL_15;
      }

      v31 = CXDefaultLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [CXCallSource reportAudioFinishedForCallWithUUID:reply:];
      }

      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __75__CXCallSource_reportCallWithUUID_changedFrequencyData_forDirection_reply___block_invoke_69;
      v32[3] = &unk_1E7C07388;
      v33 = v12;
      __75__CXCallSource_reportCallWithUUID_changedFrequencyData_forDirection_reply___block_invoke_69(v32);
      v30 = v33;
    }

    else
    {
      v22 = CXDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(CXCallSource *)v22 reportNewIncomingCallWithUUID:v23 update:v24 reply:v25, v26, v27, v28, v29];
      }

      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __75__CXCallSource_reportCallWithUUID_changedFrequencyData_forDirection_reply___block_invoke_68;
      v34[3] = &unk_1E7C07388;
      v35 = v12;
      __75__CXCallSource_reportCallWithUUID_changedFrequencyData_forDirection_reply___block_invoke_68(v34);
      v30 = v35;
    }

    goto LABEL_15;
  }

  v14 = CXDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [(CXCallSource *)v14 reportNewIncomingCallWithUUID:v15 update:v16 reply:v17, v18, v19, v20, v21];
  }

LABEL_15:
}

void __75__CXCallSource_reportCallWithUUID_changedFrequencyData_forDirection_reply___block_invoke_68(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __75__CXCallSource_reportCallWithUUID_changedFrequencyData_forDirection_reply___block_invoke_69(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)reportCallWithUUID:(id)a3 changedMeterLevel:(float)a4 forDirection:(int64_t)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a6;
  if (v11)
  {
    if (v10)
    {
      if ([(CXCallSource *)self isPermittedToUsePrivateAPI])
      {
        v12 = [(CXCallSource *)self delegate];
        *&v13 = a4;
        [v12 callSource:self reportedCallWithUUID:v10 changedMeterLevel:a5 forDirection:v13];

        v11[2](v11, 0);
        goto LABEL_15;
      }

      v31 = CXDefaultLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [CXCallSource reportAudioFinishedForCallWithUUID:reply:];
      }

      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __72__CXCallSource_reportCallWithUUID_changedMeterLevel_forDirection_reply___block_invoke_75;
      v32[3] = &unk_1E7C07388;
      v33 = v11;
      __72__CXCallSource_reportCallWithUUID_changedMeterLevel_forDirection_reply___block_invoke_75(v32);
      v30 = v33;
    }

    else
    {
      v22 = CXDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(CXCallSource *)v22 reportNewIncomingCallWithUUID:v23 update:v24 reply:v25, v26, v27, v28, v29];
      }

      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __72__CXCallSource_reportCallWithUUID_changedMeterLevel_forDirection_reply___block_invoke_74;
      v34[3] = &unk_1E7C07388;
      v35 = v11;
      __72__CXCallSource_reportCallWithUUID_changedMeterLevel_forDirection_reply___block_invoke_74(v34);
      v30 = v35;
    }

    goto LABEL_15;
  }

  v14 = CXDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [(CXCallSource *)v14 reportNewIncomingCallWithUUID:v15 update:v16 reply:v17, v18, v19, v20, v21];
  }

LABEL_15:
}

void __72__CXCallSource_reportCallWithUUID_changedMeterLevel_forDirection_reply___block_invoke_74(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __72__CXCallSource_reportCallWithUUID_changedMeterLevel_forDirection_reply___block_invoke_75(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)reportCallWithUUID:(id)a3 crossDeviceIdentifier:(id)a4 changedBytesOfDataUsed:(int64_t)a5 reply:(id)a6
{
  v49 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = CXDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v10 UUIDString];
    *buf = 136315906;
    v42 = "[CXCallSource reportCallWithUUID:crossDeviceIdentifier:changedBytesOfDataUsed:reply:]";
    v43 = 2112;
    v44 = v14;
    v45 = 2112;
    v46 = v11;
    v47 = 2048;
    v48 = a5;
    _os_log_impl(&dword_1B47F3000, v13, OS_LOG_TYPE_DEFAULT, "Received %s with UUID: %@ crossDeviceIdentifier: %@ bytesOfDataUsed: %ld", buf, 0x2Au);
  }

  if (!v10)
  {
    v16 = CXDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(CXCallSource *)v16 reportNewIncomingCallWithUUID:v17 update:v18 reply:v19, v20, v21, v22, v23];
    }

    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __86__CXCallSource_reportCallWithUUID_crossDeviceIdentifier_changedBytesOfDataUsed_reply___block_invoke;
    v39[3] = &unk_1E7C07388;
    v40 = v12;
    __86__CXCallSource_reportCallWithUUID_crossDeviceIdentifier_changedBytesOfDataUsed_reply___block_invoke(v39);
    v24 = v40;
    goto LABEL_16;
  }

  if (!v11)
  {
    v25 = CXDefaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [(CXCallSource *)v25 reportCallWithUUID:v26 crossDeviceIdentifier:v27 changedBytesOfDataUsed:v28 reply:v29, v30, v31, v32];
    }

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __86__CXCallSource_reportCallWithUUID_crossDeviceIdentifier_changedBytesOfDataUsed_reply___block_invoke_81;
    v37[3] = &unk_1E7C07388;
    v38 = v12;
    __86__CXCallSource_reportCallWithUUID_crossDeviceIdentifier_changedBytesOfDataUsed_reply___block_invoke_81(v37);
    v24 = v38;
    goto LABEL_16;
  }

  if (![(CXCallSource *)self isPermittedToUsePrivateAPI])
  {
    v33 = CXDefaultLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [CXCallSource reportAudioFinishedForCallWithUUID:reply:];
    }

    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __86__CXCallSource_reportCallWithUUID_crossDeviceIdentifier_changedBytesOfDataUsed_reply___block_invoke_82;
    v35[3] = &unk_1E7C07388;
    v36 = v12;
    __86__CXCallSource_reportCallWithUUID_crossDeviceIdentifier_changedBytesOfDataUsed_reply___block_invoke_82(v35);
    v24 = v36;
LABEL_16:

    goto LABEL_17;
  }

  v15 = [(CXCallSource *)self delegate];
  [v15 callSource:self reportedCallWithUUID:v10 crossDeviceIdentifier:v11 changedBytesOfDataUsed:a5];

  (*(v12 + 2))(v12, 0);
LABEL_17:

  v34 = *MEMORY[0x1E69E9840];
}

void __86__CXCallSource_reportCallWithUUID_crossDeviceIdentifier_changedBytesOfDataUsed_reply___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __86__CXCallSource_reportCallWithUUID_crossDeviceIdentifier_changedBytesOfDataUsed_reply___block_invoke_81(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __86__CXCallSource_reportCallWithUUID_crossDeviceIdentifier_changedBytesOfDataUsed_reply___block_invoke_82(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)requestTransaction:(id)a3 completionHandler:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v32 = "[CXCallSource requestTransaction:completionHandler:]";
    v33 = 2112;
    v34 = v6;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s with transaction: %@", buf, 0x16u);
  }

  if (v7)
  {
    if (v6)
    {
      if ([(CXCallSource *)self isPermittedToUsePrivateAPI])
      {
        v9 = [(CXCallSource *)self delegate];
        [v9 callSource:self requestedTransaction:v6 completion:v7];
      }

      else
      {
        v25 = CXDefaultLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [CXCallSource reportAudioFinishedForCallWithUUID:reply:];
        }

        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __53__CXCallSource_requestTransaction_completionHandler___block_invoke_92;
        v27[3] = &unk_1E7C07388;
        v28 = v7;
        __53__CXCallSource_requestTransaction_completionHandler___block_invoke_92(v27);
        v9 = v28;
      }
    }

    else
    {
      v17 = CXDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(CXCallSource *)v17 requestTransaction:v18 completionHandler:v19, v20, v21, v22, v23, v24];
      }

      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __53__CXCallSource_requestTransaction_completionHandler___block_invoke_91;
      v29[3] = &unk_1E7C07388;
      v30 = v7;
      __53__CXCallSource_requestTransaction_completionHandler___block_invoke_91(v29);
      v9 = v30;
    }
  }

  else
  {
    v9 = CXDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CXCallSource *)v9 requestTransaction:v10 completionHandler:v11, v12, v13, v14, v15, v16];
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __53__CXCallSource_requestTransaction_completionHandler___block_invoke_91(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __53__CXCallSource_requestTransaction_completionHandler___block_invoke_92(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_requestTransactionErrorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)actionCompleted:(id)a3 completionHandler:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v34 = "[CXCallSource actionCompleted:completionHandler:]";
    v35 = 2112;
    v36 = v6;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s with action: %@", buf, 0x16u);
  }

  if (v7)
  {
    if (v6)
    {
      if ([(CXCallSource *)self isPermittedToUsePublicAPI])
      {
        if (![(CXCallSource *)self isPermittedToUsePrivateAPI])
        {
          v9 = [v6 sanitizedCopy];

          v6 = v9;
        }

        v10 = [(CXCallSource *)self delegate];
        [v10 callSource:self actionCompleted:v6];

        v7[2](v7, 0);
      }

      else
      {
        v27 = CXDefaultLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [CXCallSource reportNewIncomingCallWithUUID:update:reply:];
        }

        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __50__CXCallSource_actionCompleted_completionHandler___block_invoke_99;
        v29[3] = &unk_1E7C07388;
        v30 = v7;
        __50__CXCallSource_actionCompleted_completionHandler___block_invoke_99(v29);
      }
    }

    else
    {
      v19 = CXDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(CXCallSource *)v19 actionCompleted:v20 completionHandler:v21, v22, v23, v24, v25, v26];
      }

      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __50__CXCallSource_actionCompleted_completionHandler___block_invoke_98;
      v31[3] = &unk_1E7C07388;
      v32 = v7;
      __50__CXCallSource_actionCompleted_completionHandler___block_invoke_98(v31);
      v6 = v32;
    }
  }

  else
  {
    v11 = CXDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(CXCallSource *)v11 requestTransaction:v12 completionHandler:v13, v14, v15, v16, v17, v18];
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __50__CXCallSource_actionCompleted_completionHandler___block_invoke_98(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __50__CXCallSource_actionCompleted_completionHandler___block_invoke_99(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)commitTransaction:(id)a3
{
  v4 = a3;
  v5 = [(CXCallSource *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__CXCallSource_commitTransaction___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __34__CXCallSource_commitTransaction___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 136315394;
    v8 = "[CXCallSource commitTransaction:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Sending %s with transaction: %@", &v7, 0x16u);
  }

  v4 = [*(a1 + 40) vendorProtocolDelegate];
  v5 = [*(a1 + 32) copy];
  [v4 commitTransaction:v5];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleActionTimeout:(id)a3
{
  v4 = a3;
  v5 = [(CXCallSource *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__CXCallSource_handleActionTimeout___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __36__CXCallSource_handleActionTimeout___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 136315394;
    v8 = "[CXCallSource handleActionTimeout:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Sending %s with action: %@", &v7, 0x16u);
  }

  v4 = [*(a1 + 40) vendorProtocolDelegate];
  v5 = [*(a1 + 32) copy];
  [v4 handleActionTimeout:v5];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleAudioSessionActivationStateChangedTo:(id)a3
{
  v4 = a3;
  v5 = [(CXCallSource *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__CXCallSource_handleAudioSessionActivationStateChangedTo___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __59__CXCallSource_handleAudioSessionActivationStateChangedTo___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) BOOLValue];
    v6 = 136315394;
    v7 = "[CXCallSource handleAudioSessionActivationStateChangedTo:]_block_invoke";
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Sending %s with active: %d", &v6, 0x12u);
  }

  v4 = [*(a1 + 40) vendorProtocolDelegate];
  [v4 handleAudioSessionActivationStateChangedTo:*(a1 + 32)];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)reportNewIncomingCallWithUUID:update:reply:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0(&dword_1B47F3000, v0, v1, "Provider source is not entitled to use public API: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)reportNewIncomingCallWithUUID:(uint64_t)a3 update:(uint64_t)a4 reply:(uint64_t)a5 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Invalid argument; '%@' parameter cannot be nil.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)reportNewIncomingCallWithUUID:(uint64_t)a3 update:(uint64_t)a4 reply:(uint64_t)a5 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Invalid argument; '%@' parameter cannot be nil.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)reportNewIncomingCallWithUUID:(uint64_t)a3 update:(uint64_t)a4 reply:(uint64_t)a5 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Invalid argument; '%@' parameter cannot be nil.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)reportCallWithUUID:(uint64_t)a3 receivedDTMFUpdate:(uint64_t)a4 reply:(uint64_t)a5 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Invalid argument; '%@' parameter cannot be nil.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)reportAudioFinishedForCallWithUUID:reply:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0(&dword_1B47F3000, v0, v1, "Provider source is not entitled to use private API: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)reportCallWithUUID:(uint64_t)a3 crossDeviceIdentifier:(uint64_t)a4 changedBytesOfDataUsed:(uint64_t)a5 reply:(uint64_t)a6 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Invalid argument; '%@' parameter cannot be nil.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)requestTransaction:(uint64_t)a3 completionHandler:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Invalid argument; '%@' parameter cannot be nil.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)requestTransaction:(uint64_t)a3 completionHandler:(uint64_t)a4 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Invalid argument; '%@' parameter cannot be nil.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)actionCompleted:(uint64_t)a3 completionHandler:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Invalid argument; '%@' parameter cannot be nil.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end