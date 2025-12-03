@interface AFSiriActivationHandlerCoreSpeechDaemon
- (BOOL)handleContext:(id)context completion:(id)completion;
@end

@implementation AFSiriActivationHandlerCoreSpeechDaemon

- (BOOL)handleContext:(id)context completion:(id)completion
{
  v58 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v55 = "[AFSiriActivationHandlerCoreSpeechDaemon handleContext:completion:]";
    v56 = 2112;
    v57 = contextCopy;
    _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  source = [contextCopy source];
  event = [contextCopy event];
  v10 = event;
  if (source == 5)
  {
    deviceID = [contextCopy deviceID];
    if (deviceID)
    {
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        sharedNotifier = [getCSActivationEventNotifierClass() sharedNotifier];
        CSActivationEventClass = getCSActivationEventClass();
        userInfo = [contextCopy userInfo];
        v25 = [CSActivationEventClass jarvisVoiceTriggerEvent:deviceID activationInfo:userInfo hostTime:{objc_msgSend(contextCopy, "timestamp")}];
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke_7;
        v42[3] = &unk_1E7345A40;
        v43 = contextCopy;
        v44 = completionCopy;
        [sharedNotifier notifyActivationEvent:v25 completion:v42];

        v21 = v43;
        goto LABEL_14;
      }

      v28 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      goto LABEL_31;
    }

    v28 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

LABEL_20:
    *buf = 136315394;
    v55 = "[AFSiriActivationHandlerCoreSpeechDaemon handleContext:completion:]";
    v56 = 2112;
    v57 = contextCopy;
    v29 = "%s No device ID is provided in context %@.";
LABEL_30:
    _os_log_error_impl(&dword_1912FE000, v28, OS_LOG_TYPE_ERROR, v29, buf, 0x16u);
    goto LABEL_31;
  }

  if (source == 4)
  {
    deviceID = [contextCopy deviceID];
    if (deviceID)
    {
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        sharedNotifier2 = [getCSActivationEventNotifierClass() sharedNotifier];
        v18 = getCSActivationEventClass();
        userInfo2 = [contextCopy userInfo];
        v20 = [v18 remoteMicVoiceTriggerEvent:deviceID activationInfo:userInfo2 hostTime:{objc_msgSend(contextCopy, "timestamp")}];
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke_3;
        v48[3] = &unk_1E7345A40;
        v49 = contextCopy;
        v50 = completionCopy;
        [sharedNotifier2 notifyActivationEvent:v20 completion:v48];

        v21 = v49;
LABEL_14:

        v15 = 1;
LABEL_32:

        goto LABEL_33;
      }

      if (v10 == 6)
      {
        userInfo3 = [contextCopy userInfo];
        v31 = [userInfo3 objectForKey:@"score"];

        v15 = v31 != 0;
        if (v31)
        {
          sharedNotifier3 = [getCSActivationEventNotifierClass() sharedNotifier];
          v33 = getCSActivationEventClass();
          [v31 floatValue];
          v35 = v34;
          timestamp = [contextCopy timestamp];
          LODWORD(v37) = v35;
          v38 = [v33 remoteMicVADEvent:deviceID vadScore:timestamp hostTime:v37];
          v45[0] = MEMORY[0x1E69E9820];
          v45[1] = 3221225472;
          v45[2] = __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke_2;
          v45[3] = &unk_1E7345A40;
          v46 = contextCopy;
          v47 = completionCopy;
          [sharedNotifier3 notifyActivationEvent:v38 completion:v45];
        }

        else
        {
          v41 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v55 = "[AFSiriActivationHandlerCoreSpeechDaemon handleContext:completion:]";
            v56 = 2112;
            v57 = contextCopy;
            _os_log_error_impl(&dword_1912FE000, v41, OS_LOG_TYPE_ERROR, "%s No score is provided in context %@.", buf, 0x16u);
          }
        }

        goto LABEL_32;
      }

      v28 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
LABEL_29:
        *buf = 136315394;
        v55 = "[AFSiriActivationHandlerCoreSpeechDaemon handleContext:completion:]";
        v56 = 2112;
        v57 = contextCopy;
        v29 = "%s Unexpected event in context %@.";
        goto LABEL_30;
      }

LABEL_31:
      v15 = 0;
      goto LABEL_32;
    }

    v28 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    goto LABEL_20;
  }

  if (source != 1)
  {
    v26 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
LABEL_18:
      v15 = 0;
      goto LABEL_33;
    }

    *buf = 136315394;
    v55 = "[AFSiriActivationHandlerCoreSpeechDaemon handleContext:completion:]";
    v56 = 2112;
    v57 = contextCopy;
    v27 = "%s Unexpected source in context %@.";
LABEL_38:
    _os_log_error_impl(&dword_1912FE000, v26, OS_LOG_TYPE_ERROR, v27, buf, 0x16u);
    goto LABEL_18;
  }

  if ((event & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v26 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 136315394;
    v55 = "[AFSiriActivationHandlerCoreSpeechDaemon handleContext:completion:]";
    v56 = 2112;
    v57 = contextCopy;
    v27 = "%s Unexpected event in context %@.";
    goto LABEL_38;
  }

  sharedNotifier4 = [getCSActivationEventNotifierClass() sharedNotifier];
  v12 = getCSActivationEventClass();
  userInfo4 = [contextCopy userInfo];
  v14 = [v12 builtInMicVoiceTriggerEvent:userInfo4 hostTime:{objc_msgSend(contextCopy, "timestamp")}];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke;
  v51[3] = &unk_1E7345A40;
  v52 = contextCopy;
  v53 = completionCopy;
  [sharedNotifier4 notifyActivationEvent:v14 completion:v51];

  v15 = 1;
LABEL_33:

  v39 = *MEMORY[0x1E69E9840];
  return v15;
}

void __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 136315650;
      v13 = "[AFSiriActivationHandlerCoreSpeechDaemon handleContext:completion:]_block_invoke";
      v14 = 2112;
      v15 = v4;
      v16 = 2112;
      v17 = v9;
      _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s CSActivationEventNotifier returned error %@ for activation context %@.", buf, 0x20u);
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke_1;
    v10[3] = &unk_1E7346640;
    v11 = v4;
    v7 = [AFSiriActivationResult newWithBuilder:v10];
    (*(v6 + 16))(v6, v7);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 136315650;
      v13 = "[AFSiriActivationHandlerCoreSpeechDaemon handleContext:completion:]_block_invoke";
      v14 = 2112;
      v15 = v4;
      v16 = 2112;
      v17 = v9;
      _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s CSActivationEventNotifier returned error %@ for activation context %@.", buf, 0x20u);
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke_4;
    v10[3] = &unk_1E7346640;
    v11 = v4;
    v7 = [AFSiriActivationResult newWithBuilder:v10];
    (*(v6 + 16))(v6, v7);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 136315650;
      v13 = "[AFSiriActivationHandlerCoreSpeechDaemon handleContext:completion:]_block_invoke_2";
      v14 = 2112;
      v15 = v4;
      v16 = 2112;
      v17 = v9;
      _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s CSActivationEventNotifier returned error %@ for activation context %@.", buf, 0x20u);
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke_6;
    v10[3] = &unk_1E7346640;
    v11 = v4;
    v7 = [AFSiriActivationResult newWithBuilder:v10];
    (*(v6 + 16))(v6, v7);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke_7(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 136315650;
      v13 = "[AFSiriActivationHandlerCoreSpeechDaemon handleContext:completion:]_block_invoke";
      v14 = 2112;
      v15 = v4;
      v16 = 2112;
      v17 = v9;
      _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s CSActivationEventNotifier returned error %@ for activation context %@.", buf, 0x20u);
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke_8;
    v10[3] = &unk_1E7346640;
    v11 = v4;
    v7 = [AFSiriActivationResult newWithBuilder:v10];
    (*(v6 + 16))(v6, v7);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setActionType:4];
  [v3 setError:*(a1 + 32)];
}

void __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setActionType:4];
  [v3 setError:*(a1 + 32)];
}

void __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setActionType:4];
  [v3 setError:*(a1 + 32)];
}

void __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke_1(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setActionType:4];
  [v3 setError:*(a1 + 32)];
}

@end