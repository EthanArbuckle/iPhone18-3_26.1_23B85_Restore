@interface ASDTestFlightServiceExtensionRemoteContext
- (void)_checkExtensionWithErrorReply:(void *)reply invokeBlock:;
- (void)didReachAssetPackTerminalPhaseForStoreItemID:(id)d bundleID:(id)iD assetPackID:(id)packID assetPackVersion:(id)version isInternalBeta:(BOOL)beta terminalPhase:(int64_t)phase error:(id)error reply:(id)self0;
- (void)didReachTerminalPhaseWithBetaBundle:(id)bundle terminalPhase:(int64_t)phase error:(id)error reply:(id)reply;
- (void)didReceivePushMessages:(id)messages reply:(id)reply;
- (void)didReceivePushToken:(id)token reply:(id)reply;
- (void)fetchBAManifestRequestForStoreItemID:(id)d bundleID:(id)iD reply:(id)reply;
- (void)invokeCommand:(id)command withArguments:(id)arguments reply:(id)reply;
- (void)reloadAppsFromServerWithReply:(id)reply;
- (void)serviceExtensionPerformCleanup;
- (void)serviceExtensionTimeWillExpire;
@end

@implementation ASDTestFlightServiceExtensionRemoteContext

- (void)_checkExtensionWithErrorReply:(void *)reply invokeBlock:
{
  v8 = a2;
  replyCopy = reply;
  if (self)
  {
    extensionInstance = [self extensionInstance];
    if (extensionInstance)
    {
      replyCopy[2](replyCopy, extensionInstance);
    }

    else
    {
      v7 = ASDErrorWithUnderlyingErrorAndDescription(0, @"ASDTestFlightServiceErrorDomain", 901, @"Missing extension instance");
      v8[2](v8, 0, v7);
    }
  }
}

- (void)didReceivePushToken:(id)token reply:(id)reply
{
  tokenCopy = token;
  replyCopy = reply;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__ASDTestFlightServiceExtensionRemoteContext_didReceivePushToken_reply___block_invoke;
  v10[3] = &unk_1E7CDD468;
  v11 = tokenCopy;
  v12 = replyCopy;
  v8 = replyCopy;
  v9 = tokenCopy;
  [(ASDTestFlightServiceExtensionRemoteContext *)self _checkExtensionWithErrorReply:v8 invokeBlock:v10];
}

- (void)didReceivePushMessages:(id)messages reply:(id)reply
{
  messagesCopy = messages;
  replyCopy = reply;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__ASDTestFlightServiceExtensionRemoteContext_didReceivePushMessages_reply___block_invoke;
  v10[3] = &unk_1E7CDD468;
  v11 = messagesCopy;
  v12 = replyCopy;
  v8 = replyCopy;
  v9 = messagesCopy;
  [(ASDTestFlightServiceExtensionRemoteContext *)self _checkExtensionWithErrorReply:v8 invokeBlock:v10];
}

- (void)didReachTerminalPhaseWithBetaBundle:(id)bundle terminalPhase:(int64_t)phase error:(id)error reply:(id)reply
{
  bundleCopy = bundle;
  errorCopy = error;
  replyCopy = reply;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __108__ASDTestFlightServiceExtensionRemoteContext_didReachTerminalPhaseWithBetaBundle_terminalPhase_error_reply___block_invoke;
  v16[3] = &unk_1E7CDD490;
  v17 = bundleCopy;
  v18 = errorCopy;
  v19 = replyCopy;
  phaseCopy = phase;
  v13 = replyCopy;
  v14 = errorCopy;
  v15 = bundleCopy;
  [(ASDTestFlightServiceExtensionRemoteContext *)self _checkExtensionWithErrorReply:v13 invokeBlock:v16];
}

void __108__ASDTestFlightServiceExtensionRemoteContext_didReachTerminalPhaseWithBetaBundle_terminalPhase_error_reply___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 identifier];
  [v4 didReachTerminalPhaseWithBetaBundleID:v5 terminalPhase:a1[7] error:a1[5] reply:a1[6]];
}

- (void)didReachAssetPackTerminalPhaseForStoreItemID:(id)d bundleID:(id)iD assetPackID:(id)packID assetPackVersion:(id)version isInternalBeta:(BOOL)beta terminalPhase:(int64_t)phase error:(id)error reply:(id)self0
{
  dCopy = d;
  iDCopy = iD;
  packIDCopy = packID;
  versionCopy = version;
  errorCopy = error;
  replyCopy = reply;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __170__ASDTestFlightServiceExtensionRemoteContext_didReachAssetPackTerminalPhaseForStoreItemID_bundleID_assetPackID_assetPackVersion_isInternalBeta_terminalPhase_error_reply___block_invoke;
  v28[3] = &unk_1E7CDD4B8;
  v29 = dCopy;
  v30 = iDCopy;
  v31 = packIDCopy;
  v32 = versionCopy;
  betaCopy = beta;
  v34 = replyCopy;
  phaseCopy = phase;
  v33 = errorCopy;
  v22 = replyCopy;
  v23 = errorCopy;
  v24 = versionCopy;
  v25 = packIDCopy;
  v26 = iDCopy;
  v27 = dCopy;
  [(ASDTestFlightServiceExtensionRemoteContext *)self _checkExtensionWithErrorReply:v22 invokeBlock:v28];
}

- (void)reloadAppsFromServerWithReply:(id)reply
{
  replyCopy = reply;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__ASDTestFlightServiceExtensionRemoteContext_reloadAppsFromServerWithReply___block_invoke;
  v6[3] = &unk_1E7CDD4E0;
  v7 = replyCopy;
  v5 = replyCopy;
  [(ASDTestFlightServiceExtensionRemoteContext *)self _checkExtensionWithErrorReply:v5 invokeBlock:v6];
}

- (void)fetchBAManifestRequestForStoreItemID:(id)d bundleID:(id)iD reply:(id)reply
{
  dCopy = d;
  iDCopy = iD;
  replyCopy = reply;
  extensionInstance = [(ASDTestFlightServiceExtensionRemoteContext *)self extensionInstance];
  v11 = extensionInstance;
  if (extensionInstance)
  {
    [extensionInstance fetchBAManifestRequestForStoreItemID:dCopy bundleID:iDCopy reply:replyCopy];
  }

  else
  {
    v12 = ASDErrorWithUnderlyingErrorAndDescription(0, @"ASDTestFlightServiceErrorDomain", 901, @"Missing extension instance");
    replyCopy[2](replyCopy, 0, v12);
  }
}

- (void)invokeCommand:(id)command withArguments:(id)arguments reply:(id)reply
{
  commandCopy = command;
  argumentsCopy = arguments;
  replyCopy = reply;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__ASDTestFlightServiceExtensionRemoteContext_invokeCommand_withArguments_reply___block_invoke;
  v14[3] = &unk_1E7CDD508;
  v15 = commandCopy;
  v16 = argumentsCopy;
  v17 = replyCopy;
  v11 = replyCopy;
  v12 = argumentsCopy;
  v13 = commandCopy;
  [(ASDTestFlightServiceExtensionRemoteContext *)self _checkExtensionWithErrorReply:v11 invokeBlock:v14];
}

- (void)serviceExtensionPerformCleanup
{
  [(ASDTestFlightServiceExtensionRemoteContext *)self setExtensionInstance:0];

  [(ASDTestFlightServiceExtensionRemoteContext *)self completeRequestReturningItems:0 completionHandler:0];
}

- (void)serviceExtensionTimeWillExpire
{
  extensionInstance = [(ASDTestFlightServiceExtensionRemoteContext *)self extensionInstance];
  [extensionInstance serviceExtensionTimeWillExpire];
}

@end