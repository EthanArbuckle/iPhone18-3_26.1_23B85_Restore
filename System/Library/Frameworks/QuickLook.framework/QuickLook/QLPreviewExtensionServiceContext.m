@interface QLPreviewExtensionServiceContext
@end

@implementation QLPreviewExtensionServiceContext

void __73__QLPreviewExtensionServiceContext_iOS__extensionAuxiliaryVendorProtocol__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284DB1FB8];
  v1 = _extensionAuxiliaryVendorProtocol___remotePopoverTrackerInterface;
  _extensionAuxiliaryVendorProtocol___remotePopoverTrackerInterface = v0;

  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284DB1F30];
  v3 = _extensionAuxiliaryVendorProtocol___hostItemViewControllerInterface;
  _extensionAuxiliaryVendorProtocol___hostItemViewControllerInterface = v2;

  [_extensionAuxiliaryVendorProtocol___hostItemViewControllerInterface setInterface:_extensionAuxiliaryVendorProtocol___remotePopoverTrackerInterface forSelector:sel_presentShareSheetWithPopoverTracker_customSharedURL_dismissCompletion_ argumentIndex:0 ofReply:0];
  v4 = _extensionAuxiliaryVendorProtocol___hostItemViewControllerInterface;
  v5 = [MEMORY[0x277D43F58] customExtensionCommunicationEncodedClasses];
  [v4 setClasses:v5 forSelector:sel_forwardMessageToHostOfCustomViewController_completionHandler_ argumentIndex:0 ofReply:0];

  v6 = _extensionAuxiliaryVendorProtocol___hostItemViewControllerInterface;
  v7 = [MEMORY[0x277D43F58] customExtensionCommunicationEncodedClasses];
  [v6 setClasses:v7 forSelector:sel_forwardMessageToHostOfCustomViewController_completionHandler_ argumentIndex:0 ofReply:1];

  v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284DAFED8];
  v9 = _extensionAuxiliaryVendorProtocol___interface;
  _extensionAuxiliaryVendorProtocol___interface = v8;

  v10 = _extensionAuxiliaryVendorProtocol___interface;
  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  [v10 setClasses:v13 forSelector:sel_loadPreviewControllerWithContents_context_completionHandler_ argumentIndex:0 ofReply:0];

  [_extensionAuxiliaryVendorProtocol___interface setInterface:_extensionAuxiliaryVendorProtocol___hostItemViewControllerInterface forSelector:sel_setHostViewControllerProxy_ argumentIndex:0 ofReply:0];
  v14 = _extensionAuxiliaryVendorProtocol___interface;
  v15 = MEMORY[0x277CBEB98];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = [v15 setWithObjects:{v16, v17, objc_opt_class(), 0}];
  [v14 setClasses:v18 forSelector:sel_loadPreviewControllerWithContents_context_completionHandler_ argumentIndex:1 ofReply:1];

  v19 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284D98860];
  v20 = _extensionAuxiliaryVendorProtocol___printerInterface;
  _extensionAuxiliaryVendorProtocol___printerInterface = v19;

  [_extensionAuxiliaryVendorProtocol___interface setInterface:_extensionAuxiliaryVendorProtocol___printerInterface forSelector:sel_getPrinterProxyWithCompletionHandler_ argumentIndex:0 ofReply:1];
  v21 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284DC59D0];
  v22 = _extensionAuxiliaryVendorProtocol___arqlInlineInterface;
  _extensionAuxiliaryVendorProtocol___arqlInlineInterface = v21;

  v23 = MEMORY[0x277CBEB98];
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v51 = [v23 setWithObjects:{v24, v25, objc_opt_class(), 0}];
  [_extensionAuxiliaryVendorProtocol___arqlInlineInterface setClasses:v51 forSelector:? argumentIndex:? ofReply:?];
  [_extensionAuxiliaryVendorProtocol___arqlInlineInterface setClasses:v51 forSelector:? argumentIndex:? ofReply:?];
  [_extensionAuxiliaryVendorProtocol___arqlInlineInterface setClasses:v51 forSelector:? argumentIndex:? ofReply:?];
  [_extensionAuxiliaryVendorProtocol___arqlInlineInterface setClasses:v51 forSelector:sel_touchesCancelled_forUUID_ argumentIndex:0 ofReply:0];
  v26 = _extensionAuxiliaryVendorProtocol___arqlInlineInterface;
  v27 = [MEMORY[0x277D43F58] customExtensionCommunicationEncodedClasses];
  [v26 setClasses:v27 forSelector:sel_observeReturnedToInlineForUUID_completion_ argumentIndex:2 ofReply:1];

  v28 = _extensionAuxiliaryVendorProtocol___arqlInlineInterface;
  v29 = [MEMORY[0x277D43F58] customExtensionCommunicationEncodedClasses];
  [v28 setClasses:v29 forSelector:sel_sendARQLEvent_forUUID_completion_ argumentIndex:0 ofReply:0];

  v30 = _extensionAuxiliaryVendorProtocol___arqlInlineInterface;
  v31 = [MEMORY[0x277D43F58] customExtensionCommunicationEncodedClasses];
  [v30 setClasses:v31 forSelector:sel_sendARQLEvent_forUUID_completion_ argumentIndex:0 ofReply:1];

  [_extensionAuxiliaryVendorProtocol___interface setInterface:_extensionAuxiliaryVendorProtocol___arqlInlineInterface forSelector:sel_getARQLInlineProxyWithCompletionHandler_ argumentIndex:0 ofReply:1];
  v32 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284DCED78];
  v33 = _extensionAuxiliaryVendorProtocol___arqlInlineInterface2;
  _extensionAuxiliaryVendorProtocol___arqlInlineInterface2 = v32;

  v34 = MEMORY[0x277D86468];
  [_extensionAuxiliaryVendorProtocol___arqlInlineInterface2 setXPCType:MEMORY[0x277D86468] forSelector:sel_updateBounds_forUUID_fenceHandleCompletion_ argumentIndex:1 ofReply:1];
  [_extensionAuxiliaryVendorProtocol___arqlInlineInterface2 setXPCType:v34 forSelector:sel_prepareFullscreenPreview_initialFrame_previewOptions_fenceHandleCompletion_ argumentIndex:1 ofReply:1];
  [_extensionAuxiliaryVendorProtocol___arqlInlineInterface2 setXPCType:v34 forSelector:sel_observeReturnedToInlineForUUID_fenceHandleCompletion_ argumentIndex:1 ofReply:1];
  [_extensionAuxiliaryVendorProtocol___interface setInterface:_extensionAuxiliaryVendorProtocol___arqlInlineInterface2 forSelector:sel_getARQLInlineProxy2WithCompletionHandler_ argumentIndex:0 ofReply:1];
  v35 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284DCEDD8];
  v36 = _extensionAuxiliaryVendorProtocol___arqlInlineInterface3;
  _extensionAuxiliaryVendorProtocol___arqlInlineInterface3 = v35;

  v37 = _extensionAuxiliaryVendorProtocol___arqlInlineInterface3;
  v38 = [MEMORY[0x277D43F58] customExtensionCommunicationEncodedClasses];
  [v37 setClasses:v38 forSelector:sel_prepareInlinePreviewWithScopedURLWrapperAttributes_forUUID_completion_ argumentIndex:1 ofReply:1];

  v39 = _extensionAuxiliaryVendorProtocol___arqlInlineInterface3;
  v40 = [MEMORY[0x277D43F58] customExtensionCommunicationEncodedClasses];
  [v39 setClasses:v40 forSelector:sel_prepareInlinePreviewWithData_forUUID_completion_ argumentIndex:1 ofReply:1];

  [_extensionAuxiliaryVendorProtocol___arqlInlineInterface3 setClasses:v51 forSelector:sel_touchesBegan_forUUID_ argumentIndex:0 ofReply:0];
  [_extensionAuxiliaryVendorProtocol___arqlInlineInterface3 setClasses:v51 forSelector:sel_touchesMoved_forUUID_ argumentIndex:0 ofReply:0];
  [_extensionAuxiliaryVendorProtocol___arqlInlineInterface3 setClasses:v51 forSelector:sel_touchesEnded_forUUID_ argumentIndex:0 ofReply:0];
  [_extensionAuxiliaryVendorProtocol___arqlInlineInterface3 setClasses:v51 forSelector:sel_touchesCancelled_forUUID_ argumentIndex:0 ofReply:0];
  v41 = _extensionAuxiliaryVendorProtocol___arqlInlineInterface3;
  v42 = [MEMORY[0x277D43F58] customExtensionCommunicationEncodedClasses];
  [v41 setClasses:v42 forSelector:sel_sendARQLEvent_forUUID_completion_ argumentIndex:0 ofReply:0];

  v43 = _extensionAuxiliaryVendorProtocol___arqlInlineInterface3;
  v44 = [MEMORY[0x277D43F58] customExtensionCommunicationEncodedClasses];
  [v43 setClasses:v44 forSelector:sel_sendARQLEvent_forUUID_completion_ argumentIndex:0 ofReply:1];

  [_extensionAuxiliaryVendorProtocol___arqlInlineInterface3 setXPCType:v34 forSelector:sel_updateBounds_forUUID_fenceHandleCompletion_ argumentIndex:1 ofReply:1];
  [_extensionAuxiliaryVendorProtocol___arqlInlineInterface3 setXPCType:v34 forSelector:sel_prepareFullscreenPreview_initialFrame_previewOptions_fenceHandleCompletion_ argumentIndex:1 ofReply:1];
  [_extensionAuxiliaryVendorProtocol___arqlInlineInterface3 setXPCType:v34 forSelector:sel_observeReturnedToInlineForUUID_fenceHandleCompletion_ argumentIndex:1 ofReply:1];
  v45 = _extensionAuxiliaryVendorProtocol___arqlInlineInterface3;
  v46 = [MEMORY[0x277D43F58] customExtensionCommunicationEncodedClasses];
  [v45 setClasses:v46 forSelector:sel_observeReturnedToInlineForUUID_fenceHandleCompletion_ argumentIndex:2 ofReply:1];

  v47 = _extensionAuxiliaryVendorProtocol___arqlInlineInterface3;
  v48 = [MEMORY[0x277D43F58] customExtensionCommunicationEncodedClasses];
  [v47 setClasses:v48 forSelector:sel_inlinePreview_setRuntimeStateObserver_ argumentIndex:1 ofReply:1];

  v49 = _extensionAuxiliaryVendorProtocol___arqlInlineInterface3;
  v50 = [MEMORY[0x277D43F58] customExtensionCommunicationEncodedClasses];
  [v49 setClasses:v50 forSelector:sel_inlinePreview_setCameraYaw_pitch_scale_options_ argumentIndex:4 ofReply:0];

  [_extensionAuxiliaryVendorProtocol___interface setInterface:_extensionAuxiliaryVendorProtocol___arqlInlineInterface3 forSelector:sel_getARQLInlineProxy3WithCompletionHandler_ argumentIndex:0 ofReply:1];
}

uint64_t __71__QLPreviewExtensionServiceContext_iOS__extensionAuxiliaryHostProtocol__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284DAFF38];
  v1 = _extensionAuxiliaryHostProtocol___interface;
  _extensionAuxiliaryHostProtocol___interface = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __52__QLPreviewExtensionServiceContext_iOS_protocolHost__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = MEMORY[0x277D43EF8];
  v4 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v4 = *v3;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6 = [v2 localizedDescription];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_23A714000, v5, OS_LOG_TYPE_ERROR, "Error while calling service: %@ #Remote", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __58__QLPreviewExtensionServiceContext_iOS_previewWillAppear___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) previewViewController];
  [v2 previewWillAppear:*(a1 + 40)];
}

void __57__QLPreviewExtensionServiceContext_iOS_previewDidAppear___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) previewViewController];
  [v2 previewDidAppear:*(a1 + 40)];
}

void __61__QLPreviewExtensionServiceContext_iOS_previewWillDisappear___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) previewViewController];
  [v2 previewWillDisappear:*(a1 + 40)];
}

void __60__QLPreviewExtensionServiceContext_iOS_previewDidDisappear___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) previewViewController];
  [v2 previewDidDisappear:*(a1 + 40)];
}

void __63__QLPreviewExtensionServiceContext_iOS_setAppearance_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) previewViewController];
  [v2 setAppearance:*(a1 + 40) animated:*(a1 + 48)];
}

void __67__QLPreviewExtensionServiceContext_iOS_setHostViewControllerProxy___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) previewViewController];
  [v2 setHostViewControllerProxy:*(a1 + 40)];
}

void __100__QLPreviewExtensionServiceContext_iOS_loadPreviewControllerWithContents_context_completionHandler___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __100__QLPreviewExtensionServiceContext_iOS_loadPreviewControllerWithContents_context_completionHandler___block_invoke_2;
  aBlock[3] = &unk_278B58DB8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v18 = v2;
  v19 = v3;
  v20 = v4;
  v5 = _Block_copy(aBlock);
  objc_storeStrong((*(a1 + 40) + 32), *(a1 + 32));
  v6 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [*(a1 + 40) previewViewController];
    objc_opt_respondsToSelector();

    v8 = [*(a1 + 40) previewViewController];
    v9 = [*(a1 + 32) searchableItemUniqueIdentifier];
    v10 = [*(a1 + 32) queryString];
    [v8 preparePreviewOfSearchableItemWithIdentifier:v9 queryString:v10 completionHandler:v5];
  }

  else
  {
    v11 = *(a1 + 32);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v13 = *(a1 + 40);
    if (isKindOfClass)
    {
      v14 = [v13 previewViewController];
      objc_opt_respondsToSelector();

      v8 = [*(a1 + 40) previewViewController];
      v15 = [*(a1 + 32) fileURL];
      [v8 preparePreviewOfFileAtURL:v15 completionHandler:v5];
    }

    else
    {
      v16 = v13[4];
      v13[4] = 0;

      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.quicklook.QLRemoteItemViewController" code:4 userInfo:0];
      v5[2](v5, v8);
    }
  }
}

void __100__QLPreviewExtensionServiceContext_iOS_loadPreviewControllerWithContents_context_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v4 = v3;
  QLRunInMainThread();
}

void __100__QLPreviewExtensionServiceContext_iOS_loadPreviewControllerWithContents_context_completionHandler___block_invoke_3(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  if (*(a1 + 32))
  {
    v3 = MEMORY[0x277D43EF8];
    v4 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v4 = *v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      v16 = 138412546;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_23A714000, v4, OS_LOG_TYPE_ERROR, "Error while attempting to load preview from preview item '%@': %@ #Remote", &v16, 0x16u);
    }
  }

  else
  {
    v7 = [*(a1 + 48) previewViewController];
    v8 = [v7 title];

    if (v8)
    {
      v9 = [*(a1 + 48) previewViewController];
      v10 = [v9 title];
      [v2 setObject:v10 forKey:@"title"];
    }

    v11 = MEMORY[0x277CCAE60];
    v12 = [*(a1 + 48) previewViewController];
    [v12 preferredContentSize];
    v13 = [v11 valueWithCGSize:?];
    [v2 setObject:v13 forKey:@"preferredContentSize"];

    [*(a1 + 48) _startObservingPreviewControllerAttributeChanges];
  }

  v14 = *(a1 + 32);
  (*(*(a1 + 56) + 16))();

  v15 = *MEMORY[0x277D85DE8];
}

void __73__QLPreviewExtensionServiceContext_iOS_generatePreviewForURL_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 replyType];
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v8 = [v5 updateFromDocumentCreationBlock];
      (*(*(a1 + 48) + 16))();
      goto LABEL_12;
    }

    if (v7 == 4)
    {
      v14 = [v5 updateFromDataCreationBlock];
    }

    goto LABEL_8;
  }

  if (!v7)
  {
    [v5 contentSize];
    v16 = v15;
    v18 = v17;
    v8 = [objc_alloc(MEMORY[0x277D43EB0]) initWithPreview:*(a1 + 32)];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __73__QLPreviewExtensionServiceContext_iOS_generatePreviewForURL_completion___block_invoke_2;
    v31[3] = &unk_278B58DE0;
    v32 = v5;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __73__QLPreviewExtensionServiceContext_iOS_generatePreviewForURL_completion___block_invoke_3;
    v28[3] = &unk_278B58E08;
    v29 = v32;
    v30 = *(a1 + 48);
    [v8 drawInContextOfSize:v31 drawingBlock:v28 completionHandler:{v16, v18}];

    v13 = v32;
    goto LABEL_10;
  }

  if (v7 != 1)
  {
LABEL_8:
    (*(*(a1 + 48) + 16))();
    goto LABEL_13;
  }

  v8 = [objc_alloc(MEMORY[0x277D43EB0]) initWithPreview:*(a1 + 32)];
  [v5 contentSize];
  v10 = v9;
  v12 = v11;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __73__QLPreviewExtensionServiceContext_iOS_generatePreviewForURL_completion___block_invoke_4;
  v26[3] = &unk_278B58DE0;
  v27 = v5;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __73__QLPreviewExtensionServiceContext_iOS_generatePreviewForURL_completion___block_invoke_5;
  v23[3] = &unk_278B58E30;
  v24 = v27;
  v25 = *(a1 + 48);
  [v8 drawInPDFContextOfSize:v26 drawingBlock:v23 completionHandler:{v10, v12}];

  v13 = v27;
LABEL_10:

LABEL_12:
LABEL_13:
  v19 = *(a1 + 40);
  v20 = MEMORY[0x277D43EF8];
  v21 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v21 = *v20;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v34 = v19;
    _os_log_impl(&dword_23A714000, v21, OS_LOG_TYPE_DEBUG, "Finished calling generation extension for: %@ #Remote", buf, 0xCu);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __73__QLPreviewExtensionServiceContext_iOS_generatePreviewForURL_completion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v9 = a4;
  [v7 updateWithImageData:a2 bitmapFormat:a3];
  v8 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

void __73__QLPreviewExtensionServiceContext_iOS_generatePreviewForURL_completion___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v7 = a3;
  [v5 updateWithPDFData:a2];
  v6 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

uint64_t __79__QLPreviewExtensionServiceContext_iOS_invalidateServiceWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end