@interface AFSiriActivationHandlerCoreSpeechDaemon
- (BOOL)handleContext:(id)a3 completion:(id)a4;
@end

@implementation AFSiriActivationHandlerCoreSpeechDaemon

- (BOOL)handleContext:(id)a3 completion:(id)a4
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v55 = "[AFSiriActivationHandlerCoreSpeechDaemon handleContext:completion:]";
    v56 = 2112;
    v57 = v5;
    _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  v8 = [v5 source];
  v9 = [v5 event];
  v10 = v9;
  if (v8 == 5)
  {
    v16 = [v5 deviceID];
    if (v16)
    {
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v22 = [getCSActivationEventNotifierClass() sharedNotifier];
        CSActivationEventClass = getCSActivationEventClass();
        v24 = [v5 userInfo];
        v25 = [CSActivationEventClass jarvisVoiceTriggerEvent:v16 activationInfo:v24 hostTime:{objc_msgSend(v5, "timestamp")}];
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke_7;
        v42[3] = &unk_1E7345A40;
        v43 = v5;
        v44 = v6;
        [v22 notifyActivationEvent:v25 completion:v42];

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
    v57 = v5;
    v29 = "%s No device ID is provided in context %@.";
LABEL_30:
    _os_log_error_impl(&dword_1912FE000, v28, OS_LOG_TYPE_ERROR, v29, buf, 0x16u);
    goto LABEL_31;
  }

  if (v8 == 4)
  {
    v16 = [v5 deviceID];
    if (v16)
    {
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v17 = [getCSActivationEventNotifierClass() sharedNotifier];
        v18 = getCSActivationEventClass();
        v19 = [v5 userInfo];
        v20 = [v18 remoteMicVoiceTriggerEvent:v16 activationInfo:v19 hostTime:{objc_msgSend(v5, "timestamp")}];
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke_3;
        v48[3] = &unk_1E7345A40;
        v49 = v5;
        v50 = v6;
        [v17 notifyActivationEvent:v20 completion:v48];

        v21 = v49;
LABEL_14:

        v15 = 1;
LABEL_32:

        goto LABEL_33;
      }

      if (v10 == 6)
      {
        v30 = [v5 userInfo];
        v31 = [v30 objectForKey:@"score"];

        v15 = v31 != 0;
        if (v31)
        {
          v32 = [getCSActivationEventNotifierClass() sharedNotifier];
          v33 = getCSActivationEventClass();
          [v31 floatValue];
          v35 = v34;
          v36 = [v5 timestamp];
          LODWORD(v37) = v35;
          v38 = [v33 remoteMicVADEvent:v16 vadScore:v36 hostTime:v37];
          v45[0] = MEMORY[0x1E69E9820];
          v45[1] = 3221225472;
          v45[2] = __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke_2;
          v45[3] = &unk_1E7345A40;
          v46 = v5;
          v47 = v6;
          [v32 notifyActivationEvent:v38 completion:v45];
        }

        else
        {
          v41 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v55 = "[AFSiriActivationHandlerCoreSpeechDaemon handleContext:completion:]";
            v56 = 2112;
            v57 = v5;
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
        v57 = v5;
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

  if (v8 != 1)
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
    v57 = v5;
    v27 = "%s Unexpected source in context %@.";
LABEL_38:
    _os_log_error_impl(&dword_1912FE000, v26, OS_LOG_TYPE_ERROR, v27, buf, 0x16u);
    goto LABEL_18;
  }

  if ((v9 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v26 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 136315394;
    v55 = "[AFSiriActivationHandlerCoreSpeechDaemon handleContext:completion:]";
    v56 = 2112;
    v57 = v5;
    v27 = "%s Unexpected event in context %@.";
    goto LABEL_38;
  }

  v11 = [getCSActivationEventNotifierClass() sharedNotifier];
  v12 = getCSActivationEventClass();
  v13 = [v5 userInfo];
  v14 = [v12 builtInMicVoiceTriggerEvent:v13 hostTime:{objc_msgSend(v5, "timestamp")}];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __68__AFSiriActivationHandlerCoreSpeechDaemon_handleContext_completion___block_invoke;
  v51[3] = &unk_1E7345A40;
  v52 = v5;
  v53 = v6;
  [v11 notifyActivationEvent:v14 completion:v51];

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