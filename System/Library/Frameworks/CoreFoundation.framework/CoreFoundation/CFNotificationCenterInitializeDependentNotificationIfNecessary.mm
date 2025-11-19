@interface CFNotificationCenterInitializeDependentNotificationIfNecessary
@end

@implementation CFNotificationCenterInitializeDependentNotificationIfNecessary

void ___CFNotificationCenterInitializeDependentNotificationIfNecessary_block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = v1[2];
  if (v2)
  {
    v2();
    v1 = *(a1 + 32);
  }

  if (*(v1 + 40))
  {
    v4 = 0;
    v5 = 0;
    v6 = MEMORY[0x1E69E96A0];
    do
    {
      v7 = v1[6] + v4;
      v8 = *v7;
      v9 = *(v7 + 8);
      v19[0] = *(v7 + 9);
      *(v19 + 3) = *(v7 + 12);
      if (v9 > 1)
      {
        if (v9 != 2)
        {
          if (v9 == 3)
          {
            out_token = 0;
            CStringPtr = CFStringGetCStringPtr(v8, 0x8000100u);
            if (CStringPtr || (CStringPtr = buffer, CFStringGetCString(v8, buffer, 1024, 0x8000100u)))
            {
              handler[0] = MEMORY[0x1E69E9820];
              handler[1] = 3221225472;
              handler[2] = ___registerSubNotifications_block_invoke;
              handler[3] = &__block_descriptor_56_e8_v12__0i8l;
              handler[4] = v1;
              handler[5] = v8;
              v16 = 3;
              v17[0] = v19[0];
              *(v17 + 3) = *(v19 + 3);
              notify_register_dispatch(CStringPtr, &out_token, v6, handler);
            }

            else
            {
              v12 = _CFOSLog();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                v13 = *v1;
                *buf = 138543618;
                v21 = v13;
                v22 = 2114;
                v23 = v8;
                _os_log_error_impl(&dword_1830E6000, v12, OS_LOG_TYPE_ERROR, "Failed to register dependent notification %{public}@ -> %{public}@", buf, 0x16u);
              }
            }
          }

          goto LABEL_18;
        }

        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      }

      else if (v9)
      {
        DarwinNotifyCenter = CFNotificationCenterGetDistributedCenter();
      }

      else
      {
        if (CFNotificationCenterGetLocalCenter_static_init != -1)
        {
          ___CFNotificationCenterInitializeDependentNotificationIfNecessary_block_invoke_cold_1();
        }

        DarwinNotifyCenter = __taskCenter;
      }

      CFNotificationCenterAddObserver(DarwinNotifyCenter, 0x7B, v1[3], v8, 0, v1[4]);
LABEL_18:
      ++v5;
      v4 += 16;
    }

    while (v5 < *(v1 + 40));
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end