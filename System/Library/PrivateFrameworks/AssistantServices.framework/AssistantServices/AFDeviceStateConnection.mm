@interface AFDeviceStateConnection
- (void)fetchSiriKitAppIdentifiersWithNotificationPreviewRestrictionsWithCompletion:(id)a3;
- (void)getPersonalSettingsForSharedUserID:(id)a3 completion:(id)a4;
@end

@implementation AFDeviceStateConnection

- (void)getPersonalSettingsForSharedUserID:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v18 = "[AFDeviceStateConnection getPersonalSettingsForSharedUserID:completion:]";
    _os_log_debug_impl(&dword_1912FE000, v7, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v8 = +[AFFlowServiceConnection sharedConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__AFDeviceStateConnection_getPersonalSettingsForSharedUserID_completion___block_invoke;
  v14[3] = &unk_1E7341C88;
  v15 = v5;
  v16 = v6;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__AFDeviceStateConnection_getPersonalSettingsForSharedUserID_completion___block_invoke_3;
  v12[3] = &unk_1E7348AA8;
  v13 = v16;
  v9 = v16;
  v10 = v5;
  [v8 invokeMethodOnRemoteWithBlock:v14 onError:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __73__AFDeviceStateConnection_getPersonalSettingsForSharedUserID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__AFDeviceStateConnection_getPersonalSettingsForSharedUserID_completion___block_invoke_2;
  v8[3] = &unk_1E7341C60;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v5;
  v7 = v5;
  [a2 getPersonalSettingsForSharedUserID:v6 completion:v8];
}

void __73__AFDeviceStateConnection_getPersonalSettingsForSharedUserID_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[AFDeviceStateConnection getPersonalSettingsForSharedUserID:completion:]_block_invoke_3";
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __73__AFDeviceStateConnection_getPersonalSettingsForSharedUserID_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)fetchSiriKitAppIdentifiersWithNotificationPreviewRestrictionsWithCompletion:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v13 = "[AFDeviceStateConnection fetchSiriKitAppIdentifiersWithNotificationPreviewRestrictionsWithCompletion:]";
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v5 = +[AFFlowServiceConnection sharedConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __103__AFDeviceStateConnection_fetchSiriKitAppIdentifiersWithNotificationPreviewRestrictionsWithCompletion___block_invoke;
  v10[3] = &unk_1E7341C38;
  v11 = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __103__AFDeviceStateConnection_fetchSiriKitAppIdentifiersWithNotificationPreviewRestrictionsWithCompletion___block_invoke_3;
  v8[3] = &unk_1E7348AA8;
  v9 = v11;
  v6 = v11;
  [v5 invokeMethodOnRemoteWithBlock:v10 onError:v8];

  v7 = *MEMORY[0x1E69E9840];
}

void __103__AFDeviceStateConnection_fetchSiriKitAppIdentifiersWithNotificationPreviewRestrictionsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __103__AFDeviceStateConnection_fetchSiriKitAppIdentifiersWithNotificationPreviewRestrictionsWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7341C10;
  v8 = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  [a2 fetchSiriKitApplicationsWithNotificationPreviewRestrictionsWithCompletion:v7];
}

void __103__AFDeviceStateConnection_fetchSiriKitAppIdentifiersWithNotificationPreviewRestrictionsWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[AFDeviceStateConnection fetchSiriKitAppIdentifiersWithNotificationPreviewRestrictionsWithCompletion:]_block_invoke_3";
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __103__AFDeviceStateConnection_fetchSiriKitAppIdentifiersWithNotificationPreviewRestrictionsWithCompletion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

@end