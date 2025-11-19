@interface SetEnableEchoMitigation
@end

@implementation SetEnableEchoMitigation

void __localHelper_SetEnableEchoMitigation_block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = CFSetContainsValue(**(a1 + 32), *(a1 + 40));
  if (v2)
  {
    if (v3)
    {
      return;
    }

    v4 = OUTLINED_FUNCTION_2_77();
    CFSetAddValue(**(a1 + 32), *(a1 + 40));
    if (v4)
    {
      return;
    }
  }

  else
  {
    if (!v3)
    {
      return;
    }

    v5 = OUTLINED_FUNCTION_2_77();
    CFSetRemoveValue(**(a1 + 32), *(a1 + 40));
    if (v5 != 1)
    {
      return;
    }
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [*(*(a1 + 32) + 16) activeConversations];
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    v20 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v12 = [v11 activitySessions];
        v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v22;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v22 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v21 + 1) + 8 * j);
              if (!*(a1 + 48))
              {
                goto LABEL_32;
              }

              if ([objc_msgSend(objc_msgSend(objc_msgSend(*(*(&v21 + 1) + 8 * j) "activity")])
              {
                goto LABEL_27;
              }

              if (!*(a1 + 48))
              {
LABEL_32:
                if ([v17 isUsingAirplay])
                {
LABEL_27:
                  if (dword_1EAF170A0)
                  {
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                    OUTLINED_FUNCTION_0_80();
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }

                  [*(*(a1 + 32) + 16) setUsingAirplay:*(a1 + 48) != 0 onActivitySession:v17 onConversation:v11];
                  return;
                }
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v9 = v20;
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  if (dword_1EAF170A0)
  {
    v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_0_80();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

@end