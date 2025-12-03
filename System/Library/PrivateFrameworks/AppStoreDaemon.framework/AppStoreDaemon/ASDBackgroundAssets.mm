@interface ASDBackgroundAssets
+ (id)interface;
+ (id)testFlightDownloadManifestRequestForStoreItemIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier error:(id *)error;
+ (void)didReachAssetPackTerminalPhaseForStoreItemIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier assetPackIdentifier:(id)packIdentifier assetPackVersion:(id)version internalBeta:(BOOL)beta terminalPhase:(int64_t)phase error:(id)error completionHandler:(id)self0;
@end

@implementation ASDBackgroundAssets

+ (id)interface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F304A2F8];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_getTestFlightDownloadManifestRequestForStoreItemIdentifier_bundleIdentifier_replyHandler_ argumentIndex:0 ofReply:1];

  v4 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v4 forSelector:sel_didReachAssetPackTerminalPhaseForStoreItemIdentifier_bundleIdentifier_assetPackIdentifier_assetPackVersion_internalBeta_terminalPhase_error_replyHandler_ argumentIndex:6 ofReply:0];

  return v2;
}

+ (id)testFlightDownloadManifestRequestForStoreItemIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier error:(id *)error
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__6;
  v28 = __Block_byref_object_dispose__6;
  v29 = 0;
  v9 = +[ASDServiceBroker defaultBroker];
  v10 = [v9 getBackgroundAssetsServiceWithError:error];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __102__ASDBackgroundAssets_testFlightDownloadManifestRequestForStoreItemIdentifier_bundleIdentifier_error___block_invoke;
  v23[3] = &unk_1E7CDBB80;
  v23[4] = &v24;
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v23];

  v12 = v25[5];
  if (v12)
  {
    *error = v12;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__6;
  v21 = __Block_byref_object_dispose__6;
  v22 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __102__ASDBackgroundAssets_testFlightDownloadManifestRequestForStoreItemIdentifier_bundleIdentifier_error___block_invoke_2;
  v16[3] = &unk_1E7CDCB80;
  v16[4] = &v17;
  v16[5] = &v24;
  [v11 getTestFlightDownloadManifestRequestForStoreItemIdentifier:identifierCopy bundleIdentifier:bundleIdentifierCopy replyHandler:v16];
  v13 = v25[5];
  if (v13)
  {
    *error = v13;
  }

  v14 = v18[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v24, 8);

  return v14;
}

void __102__ASDBackgroundAssets_testFlightDownloadManifestRequestForStoreItemIdentifier_bundleIdentifier_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

+ (void)didReachAssetPackTerminalPhaseForStoreItemIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier assetPackIdentifier:(id)packIdentifier assetPackVersion:(id)version internalBeta:(BOOL)beta terminalPhase:(int64_t)phase error:(id)error completionHandler:(id)self0
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  packIdentifierCopy = packIdentifier;
  versionCopy = version;
  errorCopy = error;
  handlerCopy = handler;
  v21 = +[ASDServiceBroker defaultBroker];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __181__ASDBackgroundAssets_didReachAssetPackTerminalPhaseForStoreItemIdentifier_bundleIdentifier_assetPackIdentifier_assetPackVersion_internalBeta_terminalPhase_error_completionHandler___block_invoke;
  v28[3] = &unk_1E7CDCBA8;
  v29 = identifierCopy;
  v30 = bundleIdentifierCopy;
  v31 = packIdentifierCopy;
  v32 = versionCopy;
  betaCopy = beta;
  v34 = handlerCopy;
  phaseCopy = phase;
  v33 = errorCopy;
  v22 = handlerCopy;
  v23 = errorCopy;
  v24 = versionCopy;
  v25 = packIdentifierCopy;
  v26 = bundleIdentifierCopy;
  v27 = identifierCopy;
  [v21 getBackgroundAssetsServiceWithCompletionHandler:v28];
}

uint64_t __181__ASDBackgroundAssets_didReachAssetPackTerminalPhaseForStoreItemIdentifier_bundleIdentifier_assetPackIdentifier_assetPackVersion_internalBeta_terminalPhase_error_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 64);
    return [a2 didReachAssetPackTerminalPhaseForStoreItemIdentifier:*(a1 + 32) bundleIdentifier:*(a1 + 40) assetPackIdentifier:*(a1 + 48) assetPackVersion:*(a1 + 56) internalBeta:*(a1 + 88) terminalPhase:*(a1 + 80) error:v3 replyHandler:*(a1 + 72)];
  }

  else
  {
    v5 = *(*(a1 + 72) + 16);

    return v5();
  }
}

@end