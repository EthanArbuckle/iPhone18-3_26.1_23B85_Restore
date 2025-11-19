@interface ASDUpdateWatchApps
+ (void)shouldPromptBeforeUpdatingWithResultHandler:(id)a3;
+ (void)updateBundleIDs:(id)a3 userInitiated:(BOOL)a4 withResultHandler:(id)a5;
@end

@implementation ASDUpdateWatchApps

+ (void)shouldPromptBeforeUpdatingWithResultHandler:(id)a3
{
  v5 = a3;
  (*(a3 + 2))(v5, [a1 shouldPromptBeforeUpdating], 0);
}

+ (void)updateBundleIDs:(id)a3 userInitiated:(BOOL)a4 withResultHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = +[ASDServiceBroker defaultBroker];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__ASDUpdateWatchApps_updateBundleIDs_userInitiated_withResultHandler___block_invoke;
  v12[3] = &unk_1E7CDD5C8;
  v13 = v7;
  v14 = v8;
  v15 = a4;
  v10 = v7;
  v11 = v8;
  [v9 getUpdatesServiceWithCompletionHandler:v12];
}

void __70__ASDUpdateWatchApps_updateBundleIDs_userInitiated_withResultHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __70__ASDUpdateWatchApps_updateBundleIDs_userInitiated_withResultHandler___block_invoke_2;
    v11[3] = &unk_1E7CDB730;
    v12 = *(a1 + 40);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v11];
    v5 = *(a1 + 48);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70__ASDUpdateWatchApps_updateBundleIDs_userInitiated_withResultHandler___block_invoke_3;
    v9[3] = &unk_1E7CDB730;
    v6 = *(a1 + 32);
    v10 = *(a1 + 40);
    [v4 compatibilityUpdateForBundleIDs:v6 userInitiated:v5 withReplyHandler:v9];
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(*(a1 + 40) + 16);

    v8();
  }
}

@end