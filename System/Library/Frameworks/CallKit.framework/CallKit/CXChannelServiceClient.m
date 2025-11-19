@interface CXChannelServiceClient
- (BOOL)isPermittedToUsePublicAPI;
- (CXChannelServiceClient)initWithConnection:(id)a3;
- (CXChannelServiceClientDelegate)delegate;
- (id)_createSandboxURLAccessValidatedUpdate:(id)a3;
- (void)actionCompleted:(id)a3 completionHandler:(id)a4;
- (void)commitTransaction:(id)a3;
- (void)handleActionTimeout:(id)a3;
- (void)handleAudioSessionActivationStateChangedTo:(id)a3;
- (void)registerWithConfiguration:(id)a3 completionHandler:(id)a4;
- (void)reportAudioFinishedForChannelWithUUID:(id)a3 completionHandler:(id)a4;
- (void)reportChannelWithUUID:(id)a3 connectedAtDate:(id)a4 completionHandler:(id)a5;
- (void)reportChannelWithUUID:(id)a3 disconnectedAtDate:(id)a4 disconnectedReason:(id)a5 completionHandler:(id)a6;
- (void)reportChannelWithUUID:(id)a3 startedConnectingAtDate:(id)a4 completionHandler:(id)a5;
- (void)reportChannelWithUUID:(id)a3 updated:(id)a4 completionHandler:(id)a5;
- (void)reportIncomingTransmissionEndedForChannelWithUUID:(id)a3 reason:(id)a4 completionHandler:(id)a5;
- (void)reportIncomingTransmissionStartedForChannelWithUUID:(id)a3 update:(id)a4 shouldReplaceOutgoingTransmission:(id)a5 completionHandler:(id)a6;
- (void)requestTransaction:(id)a3 completionHandler:(id)a4;
@end

@implementation CXChannelServiceClient

- (CXChannelServiceClient)initWithConnection:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CXChannelServiceClient;
  v5 = [(CXServiceClient *)&v9 initWithConnection:v4];
  v6 = v5;
  if (v5 && ![(CXChannelServiceClient *)v5 isPermittedToUsePublicAPI])
  {
    v7 = CXDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CXChannelServiceClient *)v6 initWithConnection:v4, v7];
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)isPermittedToUsePublicAPI
{
  v5.receiver = self;
  v5.super_class = CXChannelServiceClient;
  if ([(CXServiceClient *)&v5 isPermittedToUsePublicAPI])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    return ([(CXServiceClient *)self backgroundModeOptions]>> 1) & 1;
  }

  return v3;
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
    v34 = "[CXChannelServiceClient actionCompleted:completionHandler:]";
    v35 = 2112;
    v36 = v6;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s with action: %@", buf, 0x16u);
  }

  if (v7)
  {
    if (v6)
    {
      if ([(CXChannelServiceClient *)self isPermittedToUsePublicAPI])
      {
        if (![(CXServiceClient *)self isPermittedToUsePrivateAPI])
        {
          v9 = [v6 sanitizedCopy];

          v6 = v9;
        }

        v10 = [(CXChannelServiceClient *)self delegate];
        [v10 serviceClient:self actionCompleted:v6];

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
        v29[2] = __60__CXChannelServiceClient_actionCompleted_completionHandler___block_invoke_11;
        v29[3] = &unk_1E7C07388;
        v30 = v7;
        __60__CXChannelServiceClient_actionCompleted_completionHandler___block_invoke_11(v29);
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
      v31[2] = __60__CXChannelServiceClient_actionCompleted_completionHandler___block_invoke_10;
      v31[3] = &unk_1E7C07388;
      v32 = v7;
      __60__CXChannelServiceClient_actionCompleted_completionHandler___block_invoke_10(v31);
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

void __60__CXChannelServiceClient_actionCompleted_completionHandler___block_invoke_10(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __60__CXChannelServiceClient_actionCompleted_completionHandler___block_invoke_11(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)registerWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v31 = "[CXChannelServiceClient registerWithConfiguration:completionHandler:]";
    v32 = 2112;
    v33 = v6;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s with configuration: %@", buf, 0x16u);
  }

  if (v7)
  {
    if (v6)
    {
      if (![(CXServiceClient *)self isPermittedToUsePrivateAPI])
      {
        v9 = [v6 sanitizedCopy];

        v6 = v9;
      }

      v10 = [(CXChannelServiceClient *)self delegate];
      [v10 serviceClient:self registeredWithConfiguration:v6];

      v7[2](v7, 0);
    }

    else
    {
      v19 = CXDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(CXChannelServiceClient *)v19 registerWithConfiguration:v20 completionHandler:v21, v22, v23, v24, v25, v26];
      }

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __70__CXChannelServiceClient_registerWithConfiguration_completionHandler___block_invoke_17;
      v28[3] = &unk_1E7C07388;
      v29 = v7;
      __70__CXChannelServiceClient_registerWithConfiguration_completionHandler___block_invoke_17(v28);
      v6 = v29;
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

  v27 = *MEMORY[0x1E69E9840];
}

void __70__CXChannelServiceClient_registerWithConfiguration_completionHandler___block_invoke_17(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

- (void)reportAudioFinishedForChannelWithUUID:(id)a3 completionHandler:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 UUIDString];
    *buf = 136315394;
    v35 = "[CXChannelServiceClient reportAudioFinishedForChannelWithUUID:completionHandler:]";
    v36 = 2112;
    v37 = v9;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s with UUID: %@", buf, 0x16u);
  }

  if (v7)
  {
    if (v6)
    {
      if ([(CXServiceClient *)self isPermittedToUsePrivateAPI])
      {
        v10 = [(CXChannelServiceClient *)self delegate];
        [v10 serviceClient:self reportedAudioFinishedForChannelWithUUID:v6];

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
      v30[2] = __82__CXChannelServiceClient_reportAudioFinishedForChannelWithUUID_completionHandler___block_invoke_24;
      v30[3] = &unk_1E7C07388;
      v31 = v7;
      __82__CXChannelServiceClient_reportAudioFinishedForChannelWithUUID_completionHandler___block_invoke_24(v30);
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
      v32[2] = __82__CXChannelServiceClient_reportAudioFinishedForChannelWithUUID_completionHandler___block_invoke_23;
      v32[3] = &unk_1E7C07388;
      v33 = v7;
      __82__CXChannelServiceClient_reportAudioFinishedForChannelWithUUID_completionHandler___block_invoke_23(v32);
      v27 = v33;
    }

    goto LABEL_17;
  }

  v11 = CXDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [(CXCallSource *)v11 requestTransaction:v12 completionHandler:v13, v14, v15, v16, v17, v18];
  }

LABEL_17:
  v29 = *MEMORY[0x1E69E9840];
}

void __82__CXChannelServiceClient_reportAudioFinishedForChannelWithUUID_completionHandler___block_invoke_23(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __82__CXChannelServiceClient_reportAudioFinishedForChannelWithUUID_completionHandler___block_invoke_24(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)reportChannelWithUUID:(id)a3 connectedAtDate:(id)a4 completionHandler:(id)a5
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
    v38 = "[CXChannelServiceClient reportChannelWithUUID:connectedAtDate:completionHandler:]";
    v39 = 2112;
    v40 = v12;
    v41 = 2112;
    v42 = v9;
    _os_log_impl(&dword_1B47F3000, v11, OS_LOG_TYPE_DEFAULT, "Received %s with UUID: %@ connectedAtDate: %@", buf, 0x20u);
  }

  if (v10)
  {
    if (v8)
    {
      if ([(CXChannelServiceClient *)self isPermittedToUsePublicAPI])
      {
        v13 = [(CXChannelServiceClient *)self delegate];
        [v13 serviceClient:self reportedChannelWithUUID:v8 connectedAtDate:v9];

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
      v33[2] = __82__CXChannelServiceClient_reportChannelWithUUID_connectedAtDate_completionHandler___block_invoke_28;
      v33[3] = &unk_1E7C07388;
      v34 = v10;
      __82__CXChannelServiceClient_reportChannelWithUUID_connectedAtDate_completionHandler___block_invoke_28(v33);
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
      v35[2] = __82__CXChannelServiceClient_reportChannelWithUUID_connectedAtDate_completionHandler___block_invoke_27;
      v35[3] = &unk_1E7C07388;
      v36 = v10;
      __82__CXChannelServiceClient_reportChannelWithUUID_connectedAtDate_completionHandler___block_invoke_27(v35);
      v30 = v36;
    }

    goto LABEL_17;
  }

  v14 = CXDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [(CXCallSource *)v14 requestTransaction:v15 completionHandler:v16, v17, v18, v19, v20, v21];
  }

LABEL_17:
  v32 = *MEMORY[0x1E69E9840];
}

void __82__CXChannelServiceClient_reportChannelWithUUID_connectedAtDate_completionHandler___block_invoke_27(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __82__CXChannelServiceClient_reportChannelWithUUID_connectedAtDate_completionHandler___block_invoke_28(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)reportChannelWithUUID:(id)a3 disconnectedAtDate:(id)a4 disconnectedReason:(id)a5 completionHandler:(id)a6
{
  v58 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = CXDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v10 UUIDString];
    *buf = 136315906;
    v51 = "[CXChannelServiceClient reportChannelWithUUID:disconnectedAtDate:disconnectedReason:completionHandler:]";
    v52 = 2112;
    v53 = v15;
    v54 = 2112;
    v55 = v11;
    v56 = 2112;
    v57 = v12;
    _os_log_impl(&dword_1B47F3000, v14, OS_LOG_TYPE_DEFAULT, "Received %s with UUID: %@ disconnectedAtDate: %@ disconnectedReason: %@", buf, 0x2Au);
  }

  if (v13)
  {
    if (v10)
    {
      if (v12)
      {
        if ([(CXChannelServiceClient *)self isPermittedToUsePublicAPI])
        {
          v16 = [(CXChannelServiceClient *)self delegate];
          [v16 serviceClient:self reportedChannelWithUUID:v10 disconnectedAtDate:v11 disconnectedReason:{objc_msgSend(v12, "integerValue")}];

          v13[2](v13, 0);
          goto LABEL_21;
        }

        v42 = CXDefaultLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          [CXCallSource reportNewIncomingCallWithUUID:update:reply:];
        }

        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __104__CXChannelServiceClient_reportChannelWithUUID_disconnectedAtDate_disconnectedReason_completionHandler___block_invoke_36;
        v44[3] = &unk_1E7C07388;
        v45 = v13;
        __104__CXChannelServiceClient_reportChannelWithUUID_disconnectedAtDate_disconnectedReason_completionHandler___block_invoke_36(v44);
        v33 = v45;
      }

      else
      {
        v34 = CXDefaultLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [(CXChannelServiceClient *)v34 reportChannelWithUUID:v35 disconnectedAtDate:v36 disconnectedReason:v37 completionHandler:v38, v39, v40, v41];
        }

        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __104__CXChannelServiceClient_reportChannelWithUUID_disconnectedAtDate_disconnectedReason_completionHandler___block_invoke_35;
        v46[3] = &unk_1E7C07388;
        v47 = v13;
        __104__CXChannelServiceClient_reportChannelWithUUID_disconnectedAtDate_disconnectedReason_completionHandler___block_invoke_35(v46);
        v33 = v47;
      }
    }

    else
    {
      v25 = CXDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [(CXCallSource *)v25 reportNewIncomingCallWithUUID:v26 update:v27 reply:v28, v29, v30, v31, v32];
      }

      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __104__CXChannelServiceClient_reportChannelWithUUID_disconnectedAtDate_disconnectedReason_completionHandler___block_invoke_31;
      v48[3] = &unk_1E7C07388;
      v49 = v13;
      __104__CXChannelServiceClient_reportChannelWithUUID_disconnectedAtDate_disconnectedReason_completionHandler___block_invoke_31(v48);
      v33 = v49;
    }

    goto LABEL_21;
  }

  v17 = CXDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [(CXCallSource *)v17 requestTransaction:v18 completionHandler:v19, v20, v21, v22, v23, v24];
  }

LABEL_21:
  v43 = *MEMORY[0x1E69E9840];
}

void __104__CXChannelServiceClient_reportChannelWithUUID_disconnectedAtDate_disconnectedReason_completionHandler___block_invoke_31(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __104__CXChannelServiceClient_reportChannelWithUUID_disconnectedAtDate_disconnectedReason_completionHandler___block_invoke_35(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __104__CXChannelServiceClient_reportChannelWithUUID_disconnectedAtDate_disconnectedReason_completionHandler___block_invoke_36(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)reportChannelWithUUID:(id)a3 startedConnectingAtDate:(id)a4 completionHandler:(id)a5
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
    v38 = "[CXChannelServiceClient reportChannelWithUUID:startedConnectingAtDate:completionHandler:]";
    v39 = 2112;
    v40 = v12;
    v41 = 2112;
    v42 = v9;
    _os_log_impl(&dword_1B47F3000, v11, OS_LOG_TYPE_DEFAULT, "Received %s with UUID: %@ startedConnectingAtDate: %@", buf, 0x20u);
  }

  if (v10)
  {
    if (v8)
    {
      if ([(CXChannelServiceClient *)self isPermittedToUsePublicAPI])
      {
        v13 = [(CXChannelServiceClient *)self delegate];
        [v13 serviceClient:self reportedChannelWithUUID:v8 startedConnectingAtDate:v9];

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
      v33[2] = __90__CXChannelServiceClient_reportChannelWithUUID_startedConnectingAtDate_completionHandler___block_invoke_40;
      v33[3] = &unk_1E7C07388;
      v34 = v10;
      __90__CXChannelServiceClient_reportChannelWithUUID_startedConnectingAtDate_completionHandler___block_invoke_40(v33);
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
      v35[2] = __90__CXChannelServiceClient_reportChannelWithUUID_startedConnectingAtDate_completionHandler___block_invoke_39;
      v35[3] = &unk_1E7C07388;
      v36 = v10;
      __90__CXChannelServiceClient_reportChannelWithUUID_startedConnectingAtDate_completionHandler___block_invoke_39(v35);
      v30 = v36;
    }

    goto LABEL_17;
  }

  v14 = CXDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [(CXCallSource *)v14 requestTransaction:v15 completionHandler:v16, v17, v18, v19, v20, v21];
  }

LABEL_17:
  v32 = *MEMORY[0x1E69E9840];
}

void __90__CXChannelServiceClient_reportChannelWithUUID_startedConnectingAtDate_completionHandler___block_invoke_39(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __90__CXChannelServiceClient_reportChannelWithUUID_startedConnectingAtDate_completionHandler___block_invoke_40(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)reportChannelWithUUID:(id)a3 updated:(id)a4 completionHandler:(id)a5
{
  v55 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CXDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 UUIDString];
    *buf = 136315650;
    v50 = "[CXChannelServiceClient reportChannelWithUUID:updated:completionHandler:]";
    v51 = 2112;
    v52 = v12;
    v53 = 2112;
    v54 = v9;
    _os_log_impl(&dword_1B47F3000, v11, OS_LOG_TYPE_DEFAULT, "Received %s with UUID: %@ update: %@", buf, 0x20u);
  }

  if (v10)
  {
    if (!v8)
    {
      v24 = CXDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [(CXCallSource *)v24 reportNewIncomingCallWithUUID:v25 update:v26 reply:v27, v28, v29, v30, v31];
      }

      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __74__CXChannelServiceClient_reportChannelWithUUID_updated_completionHandler___block_invoke_43;
      v47[3] = &unk_1E7C07388;
      v48 = v10;
      __74__CXChannelServiceClient_reportChannelWithUUID_updated_completionHandler___block_invoke_43(v47);
      v32 = v48;
      goto LABEL_22;
    }

    if (v9)
    {
      if ([(CXChannelServiceClient *)self isPermittedToUsePublicAPI])
      {
        if (![(CXServiceClient *)self isPermittedToUsePrivateAPI])
        {
          v13 = [v9 sanitizedCopy];

          v9 = v13;
        }

        v14 = [(CXChannelServiceClient *)self _createSandboxURLAccessValidatedUpdate:v9];
        v15 = [(CXChannelServiceClient *)self delegate];
        [v15 serviceClient:self reportedChannelWithUUID:v8 updated:v14];

        (*(v10 + 2))(v10, 0);
        goto LABEL_23;
      }

      v41 = CXDefaultLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        [CXCallSource reportNewIncomingCallWithUUID:update:reply:];
      }

      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __74__CXChannelServiceClient_reportChannelWithUUID_updated_completionHandler___block_invoke_48;
      v43[3] = &unk_1E7C07388;
      v44 = v10;
      __74__CXChannelServiceClient_reportChannelWithUUID_updated_completionHandler___block_invoke_48(v43);
      v32 = v44;
LABEL_22:

      goto LABEL_23;
    }

    v33 = CXDefaultLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [(CXCallSource *)v33 reportNewIncomingCallWithUUID:v34 update:v35 reply:v36, v37, v38, v39, v40];
    }

    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __74__CXChannelServiceClient_reportChannelWithUUID_updated_completionHandler___block_invoke_47;
    v45[3] = &unk_1E7C07388;
    v46 = v10;
    __74__CXChannelServiceClient_reportChannelWithUUID_updated_completionHandler___block_invoke_47(v45);
    v9 = v46;
  }

  else
  {
    v16 = CXDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(CXCallSource *)v16 requestTransaction:v17 completionHandler:v18, v19, v20, v21, v22, v23];
    }
  }

LABEL_23:

  v42 = *MEMORY[0x1E69E9840];
}

void __74__CXChannelServiceClient_reportChannelWithUUID_updated_completionHandler___block_invoke_43(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __74__CXChannelServiceClient_reportChannelWithUUID_updated_completionHandler___block_invoke_47(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __74__CXChannelServiceClient_reportChannelWithUUID_updated_completionHandler___block_invoke_48(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)reportIncomingTransmissionEndedForChannelWithUUID:(id)a3 reason:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (v8)
    {
      if (v9)
      {
        if ([(CXChannelServiceClient *)self isPermittedToUsePublicAPI])
        {
          v11 = [(CXChannelServiceClient *)self delegate];
          [v11 serviceClient:self reportedIncomingTransmissionEndedForChannelWithUUID:v8 reason:objc_msgSend(v9 completionHandler:{"integerValue"), v10}];

          goto LABEL_19;
        }

        v37 = CXDefaultLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          [CXCallSource reportNewIncomingCallWithUUID:update:reply:];
        }

        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __101__CXChannelServiceClient_reportIncomingTransmissionEndedForChannelWithUUID_reason_completionHandler___block_invoke_56;
        v38[3] = &unk_1E7C07388;
        v39 = v10;
        __101__CXChannelServiceClient_reportIncomingTransmissionEndedForChannelWithUUID_reason_completionHandler___block_invoke_56(v38);
        v28 = v39;
      }

      else
      {
        v29 = CXDefaultLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [(CXChannelServiceClient *)v29 reportIncomingTransmissionEndedForChannelWithUUID:v30 reason:v31 completionHandler:v32, v33, v34, v35, v36];
        }

        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __101__CXChannelServiceClient_reportIncomingTransmissionEndedForChannelWithUUID_reason_completionHandler___block_invoke_55;
        v40[3] = &unk_1E7C07388;
        v41 = v10;
        __101__CXChannelServiceClient_reportIncomingTransmissionEndedForChannelWithUUID_reason_completionHandler___block_invoke_55(v40);
        v28 = v41;
      }
    }

    else
    {
      v20 = CXDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(CXCallSource *)v20 reportNewIncomingCallWithUUID:v21 update:v22 reply:v23, v24, v25, v26, v27];
      }

      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __101__CXChannelServiceClient_reportIncomingTransmissionEndedForChannelWithUUID_reason_completionHandler___block_invoke_51;
      v42[3] = &unk_1E7C07388;
      v43 = v10;
      __101__CXChannelServiceClient_reportIncomingTransmissionEndedForChannelWithUUID_reason_completionHandler___block_invoke_51(v42);
      v28 = v43;
    }

    goto LABEL_19;
  }

  v12 = CXDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [(CXCallSource *)v12 requestTransaction:v13 completionHandler:v14, v15, v16, v17, v18, v19];
  }

LABEL_19:
}

void __101__CXChannelServiceClient_reportIncomingTransmissionEndedForChannelWithUUID_reason_completionHandler___block_invoke_51(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __101__CXChannelServiceClient_reportIncomingTransmissionEndedForChannelWithUUID_reason_completionHandler___block_invoke_55(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __101__CXChannelServiceClient_reportIncomingTransmissionEndedForChannelWithUUID_reason_completionHandler___block_invoke_56(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)reportIncomingTransmissionStartedForChannelWithUUID:(id)a3 update:(id)a4 shouldReplaceOutgoingTransmission:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    if (v10)
    {
      if (v11)
      {
        if ([(CXChannelServiceClient *)self isPermittedToUsePublicAPI])
        {
          v14 = [(CXChannelServiceClient *)self _createSandboxURLAccessValidatedUpdate:v11];
          v15 = [(CXChannelServiceClient *)self delegate];
          [v15 serviceClient:self reportedIncomingTransmissionStartedForChannelWithUUID:v10 update:v14 shouldReplaceOutgoingTransmission:objc_msgSend(v12 completionHandler:{"BOOLValue"), v13}];

          goto LABEL_19;
        }

        v41 = CXDefaultLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          [CXCallSource reportNewIncomingCallWithUUID:update:reply:];
        }

        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __137__CXChannelServiceClient_reportIncomingTransmissionStartedForChannelWithUUID_update_shouldReplaceOutgoingTransmission_completionHandler___block_invoke_61;
        v42[3] = &unk_1E7C07388;
        v43 = v13;
        __137__CXChannelServiceClient_reportIncomingTransmissionStartedForChannelWithUUID_update_shouldReplaceOutgoingTransmission_completionHandler___block_invoke_61(v42);
        v32 = v43;
      }

      else
      {
        v33 = CXDefaultLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          [(CXCallSource *)v33 reportNewIncomingCallWithUUID:v34 update:v35 reply:v36, v37, v38, v39, v40];
        }

        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __137__CXChannelServiceClient_reportIncomingTransmissionStartedForChannelWithUUID_update_shouldReplaceOutgoingTransmission_completionHandler___block_invoke_60;
        v44[3] = &unk_1E7C07388;
        v45 = v13;
        __137__CXChannelServiceClient_reportIncomingTransmissionStartedForChannelWithUUID_update_shouldReplaceOutgoingTransmission_completionHandler___block_invoke_60(v44);
        v32 = v45;
      }
    }

    else
    {
      v24 = CXDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [(CXCallSource *)v24 reportNewIncomingCallWithUUID:v25 update:v26 reply:v27, v28, v29, v30, v31];
      }

      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __137__CXChannelServiceClient_reportIncomingTransmissionStartedForChannelWithUUID_update_shouldReplaceOutgoingTransmission_completionHandler___block_invoke_59;
      v46[3] = &unk_1E7C07388;
      v47 = v13;
      __137__CXChannelServiceClient_reportIncomingTransmissionStartedForChannelWithUUID_update_shouldReplaceOutgoingTransmission_completionHandler___block_invoke_59(v46);
      v32 = v47;
    }

    goto LABEL_19;
  }

  v16 = CXDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [(CXCallSource *)v16 requestTransaction:v17 completionHandler:v18, v19, v20, v21, v22, v23];
  }

LABEL_19:
}

void __137__CXChannelServiceClient_reportIncomingTransmissionStartedForChannelWithUUID_update_shouldReplaceOutgoingTransmission_completionHandler___block_invoke_59(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __137__CXChannelServiceClient_reportIncomingTransmissionStartedForChannelWithUUID_update_shouldReplaceOutgoingTransmission_completionHandler___block_invoke_60(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __137__CXChannelServiceClient_reportIncomingTransmissionStartedForChannelWithUUID_update_shouldReplaceOutgoingTransmission_completionHandler___block_invoke_61(uint64_t a1)
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
    v32 = "[CXChannelServiceClient requestTransaction:completionHandler:]";
    v33 = 2112;
    v34 = v6;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s with transaction: %@", buf, 0x16u);
  }

  if (v7)
  {
    if (v6)
    {
      if ([(CXServiceClient *)self isPermittedToUsePrivateAPI])
      {
        v9 = [(CXChannelServiceClient *)self delegate];
        [v9 serviceClient:self requestedTransaction:v6 completionHandler:v7];
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
        v27[2] = __63__CXChannelServiceClient_requestTransaction_completionHandler___block_invoke_68;
        v27[3] = &unk_1E7C07388;
        v28 = v7;
        __63__CXChannelServiceClient_requestTransaction_completionHandler___block_invoke_68(v27);
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
      v29[2] = __63__CXChannelServiceClient_requestTransaction_completionHandler___block_invoke_67;
      v29[3] = &unk_1E7C07388;
      v30 = v7;
      __63__CXChannelServiceClient_requestTransaction_completionHandler___block_invoke_67(v29);
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

void __63__CXChannelServiceClient_requestTransaction_completionHandler___block_invoke_67(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __63__CXChannelServiceClient_requestTransaction_completionHandler___block_invoke_68(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (id)_createSandboxURLAccessValidatedUpdate:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [a3 copy];
  v5 = [v4 sandboxExtendedImageURL];
  v6 = [v5 URL];

  if (v6 && ![(CXServiceClient *)self clientCanAccessSandboxFileURL:v6])
  {
    v7 = CXDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&dword_1B47F3000, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Client does not have permission to access channel update url: %@", &v14, 0xCu);
    }

    [v4 setSandboxExtendedImageURL:0];
  }

  v8 = [v4 activeRemoteParticipant];
  v9 = [v8 imageURL];

  if (v9 && ![(CXServiceClient *)self clientCanAccessSandboxFileURL:v9])
  {
    v10 = CXDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&dword_1B47F3000, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Client does not have permission to access active remote participant url: %@", &v14, 0xCu);
    }

    v11 = [v4 activeRemoteParticipant];
    [v11 setImageURL:0];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)commitTransaction:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Sending commit for transaction %@", &v9, 0xCu);
  }

  v6 = [(CXServiceClient *)self connection];
  v7 = [v6 remoteTarget];
  [v7 commitTransaction:v4];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)handleActionTimeout:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Sending handle timeout for action %@", &v9, 0xCu);
  }

  v6 = [(CXServiceClient *)self connection];
  v7 = [v6 remoteTarget];
  [v7 handleActionTimeout:v4];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)handleAudioSessionActivationStateChangedTo:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = [v4 BOOLValue];
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Sending handleAudioSessionActivationStateChangedTo %d", v9, 8u);
  }

  v6 = [(CXServiceClient *)self connection];
  v7 = [v6 remoteTarget];
  [v7 handleAudioSessionActivationStateChangedTo:v4];

  v8 = *MEMORY[0x1E69E9840];
}

- (CXChannelServiceClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithConnection:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_1_1();
  v9 = 2112;
  v10 = a2;
  v6 = v5;
  _os_log_error_impl(&dword_1B47F3000, a3, OS_LOG_TYPE_ERROR, "Failed to initialize %@; expected background mode not found on connection %@.", v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)registerWithConfiguration:(uint64_t)a3 completionHandler:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Invalid argument; '%@' parameter cannot be nil.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)reportChannelWithUUID:(uint64_t)a3 disconnectedAtDate:(uint64_t)a4 disconnectedReason:(uint64_t)a5 completionHandler:(uint64_t)a6 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Invalid argument; '%@' parameter cannot be nil.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)reportIncomingTransmissionEndedForChannelWithUUID:(uint64_t)a3 reason:(uint64_t)a4 completionHandler:(uint64_t)a5 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Invalid argument; '%@' parameter cannot be nil.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end