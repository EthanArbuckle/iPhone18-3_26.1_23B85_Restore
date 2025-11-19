@interface ASDTestFlightServiceExtensionRemoteContext
- (void)_checkExtensionWithErrorReply:(void *)a3 invokeBlock:;
- (void)didReachAssetPackTerminalPhaseForStoreItemID:(id)a3 bundleID:(id)a4 assetPackID:(id)a5 assetPackVersion:(id)a6 isInternalBeta:(BOOL)a7 terminalPhase:(int64_t)a8 error:(id)a9 reply:(id)a10;
- (void)didReachTerminalPhaseWithBetaBundle:(id)a3 terminalPhase:(int64_t)a4 error:(id)a5 reply:(id)a6;
- (void)didReceivePushMessages:(id)a3 reply:(id)a4;
- (void)didReceivePushToken:(id)a3 reply:(id)a4;
- (void)fetchBAManifestRequestForStoreItemID:(id)a3 bundleID:(id)a4 reply:(id)a5;
- (void)invokeCommand:(id)a3 withArguments:(id)a4 reply:(id)a5;
- (void)reloadAppsFromServerWithReply:(id)a3;
- (void)serviceExtensionPerformCleanup;
- (void)serviceExtensionTimeWillExpire;
@end

@implementation ASDTestFlightServiceExtensionRemoteContext

- (void)_checkExtensionWithErrorReply:(void *)a3 invokeBlock:
{
  v8 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = [a1 extensionInstance];
    if (v6)
    {
      v5[2](v5, v6);
    }

    else
    {
      v7 = ASDErrorWithUnderlyingErrorAndDescription(0, @"ASDTestFlightServiceErrorDomain", 901, @"Missing extension instance");
      v8[2](v8, 0, v7);
    }
  }
}

- (void)didReceivePushToken:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__ASDTestFlightServiceExtensionRemoteContext_didReceivePushToken_reply___block_invoke;
  v10[3] = &unk_1E7CDD468;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(ASDTestFlightServiceExtensionRemoteContext *)self _checkExtensionWithErrorReply:v8 invokeBlock:v10];
}

- (void)didReceivePushMessages:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__ASDTestFlightServiceExtensionRemoteContext_didReceivePushMessages_reply___block_invoke;
  v10[3] = &unk_1E7CDD468;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(ASDTestFlightServiceExtensionRemoteContext *)self _checkExtensionWithErrorReply:v8 invokeBlock:v10];
}

- (void)didReachTerminalPhaseWithBetaBundle:(id)a3 terminalPhase:(int64_t)a4 error:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __108__ASDTestFlightServiceExtensionRemoteContext_didReachTerminalPhaseWithBetaBundle_terminalPhase_error_reply___block_invoke;
  v16[3] = &unk_1E7CDD490;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = a4;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  [(ASDTestFlightServiceExtensionRemoteContext *)self _checkExtensionWithErrorReply:v13 invokeBlock:v16];
}

void __108__ASDTestFlightServiceExtensionRemoteContext_didReachTerminalPhaseWithBetaBundle_terminalPhase_error_reply___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 identifier];
  [v4 didReachTerminalPhaseWithBetaBundleID:v5 terminalPhase:a1[7] error:a1[5] reply:a1[6]];
}

- (void)didReachAssetPackTerminalPhaseForStoreItemID:(id)a3 bundleID:(id)a4 assetPackID:(id)a5 assetPackVersion:(id)a6 isInternalBeta:(BOOL)a7 terminalPhase:(int64_t)a8 error:(id)a9 reply:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a9;
  v21 = a10;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __170__ASDTestFlightServiceExtensionRemoteContext_didReachAssetPackTerminalPhaseForStoreItemID_bundleID_assetPackID_assetPackVersion_isInternalBeta_terminalPhase_error_reply___block_invoke;
  v28[3] = &unk_1E7CDD4B8;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v36 = a7;
  v34 = v21;
  v35 = a8;
  v33 = v20;
  v22 = v21;
  v23 = v20;
  v24 = v19;
  v25 = v18;
  v26 = v17;
  v27 = v16;
  [(ASDTestFlightServiceExtensionRemoteContext *)self _checkExtensionWithErrorReply:v22 invokeBlock:v28];
}

- (void)reloadAppsFromServerWithReply:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__ASDTestFlightServiceExtensionRemoteContext_reloadAppsFromServerWithReply___block_invoke;
  v6[3] = &unk_1E7CDD4E0;
  v7 = v4;
  v5 = v4;
  [(ASDTestFlightServiceExtensionRemoteContext *)self _checkExtensionWithErrorReply:v5 invokeBlock:v6];
}

- (void)fetchBAManifestRequestForStoreItemID:(id)a3 bundleID:(id)a4 reply:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(ASDTestFlightServiceExtensionRemoteContext *)self extensionInstance];
  v11 = v10;
  if (v10)
  {
    [v10 fetchBAManifestRequestForStoreItemID:v13 bundleID:v8 reply:v9];
  }

  else
  {
    v12 = ASDErrorWithUnderlyingErrorAndDescription(0, @"ASDTestFlightServiceErrorDomain", 901, @"Missing extension instance");
    v9[2](v9, 0, v12);
  }
}

- (void)invokeCommand:(id)a3 withArguments:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__ASDTestFlightServiceExtensionRemoteContext_invokeCommand_withArguments_reply___block_invoke;
  v14[3] = &unk_1E7CDD508;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  [(ASDTestFlightServiceExtensionRemoteContext *)self _checkExtensionWithErrorReply:v11 invokeBlock:v14];
}

- (void)serviceExtensionPerformCleanup
{
  [(ASDTestFlightServiceExtensionRemoteContext *)self setExtensionInstance:0];

  [(ASDTestFlightServiceExtensionRemoteContext *)self completeRequestReturningItems:0 completionHandler:0];
}

- (void)serviceExtensionTimeWillExpire
{
  v2 = [(ASDTestFlightServiceExtensionRemoteContext *)self extensionInstance];
  [v2 serviceExtensionTimeWillExpire];
}

@end