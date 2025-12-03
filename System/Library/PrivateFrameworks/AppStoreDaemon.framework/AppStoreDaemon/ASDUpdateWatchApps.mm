@interface ASDUpdateWatchApps
+ (void)shouldPromptBeforeUpdatingWithResultHandler:(id)handler;
+ (void)updateBundleIDs:(id)ds userInitiated:(BOOL)initiated withResultHandler:(id)handler;
@end

@implementation ASDUpdateWatchApps

+ (void)shouldPromptBeforeUpdatingWithResultHandler:(id)handler
{
  handlerCopy = handler;
  (*(handler + 2))(handlerCopy, [self shouldPromptBeforeUpdating], 0);
}

+ (void)updateBundleIDs:(id)ds userInitiated:(BOOL)initiated withResultHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v9 = +[ASDServiceBroker defaultBroker];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__ASDUpdateWatchApps_updateBundleIDs_userInitiated_withResultHandler___block_invoke;
  v12[3] = &unk_1E7CDD5C8;
  v13 = dsCopy;
  v14 = handlerCopy;
  initiatedCopy = initiated;
  v10 = dsCopy;
  v11 = handlerCopy;
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