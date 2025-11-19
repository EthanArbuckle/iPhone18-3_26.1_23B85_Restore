@interface NSXPCInterface
@end

@implementation NSXPCInterface

void __76__NSXPCInterface_MessageComposeExtension____mf_messageComposerHostInterface__block_invoke()
{
  v42[10] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4AD3A90];
  v1 = __mf_messageComposerHostInterface_interface;
  __mf_messageComposerHostInterface_interface = v0;

  v2 = MEMORY[0x1E695DFD8];
  v42[0] = objc_opt_class();
  v42[1] = objc_opt_class();
  v42[2] = objc_opt_class();
  v42[3] = objc_opt_class();
  v42[4] = objc_opt_class();
  v42[5] = objc_opt_class();
  v42[6] = objc_opt_class();
  v42[7] = objc_opt_class();
  v42[8] = objc_opt_class();
  v42[9] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:10];
  v4 = [v2 setWithArray:v3];

  [__mf_messageComposerHostInterface_interface setClasses:v4 forSelector:sel__stageAppItem_skipShelf_completionHandler_ argumentIndex:0 ofReply:0];
  v5 = MEMORY[0x1E695DFD8];
  v41[0] = objc_opt_class();
  v41[1] = objc_opt_class();
  v41[2] = objc_opt_class();
  v41[3] = objc_opt_class();
  v41[4] = objc_opt_class();
  v41[5] = objc_opt_class();
  v41[6] = objc_opt_class();
  v41[7] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:8];
  v7 = [v5 setWithArray:v6];

  [__mf_messageComposerHostInterface_interface setClasses:v7 forSelector:sel__stageAppItem_skipShelf_completionHandler_ argumentIndex:0 ofReply:1];
  v8 = MEMORY[0x1E695DFD8];
  v40[0] = objc_opt_class();
  v40[1] = objc_opt_class();
  v40[2] = objc_opt_class();
  v40[3] = objc_opt_class();
  v40[4] = objc_opt_class();
  v40[5] = objc_opt_class();
  v40[6] = objc_opt_class();
  v40[7] = objc_opt_class();
  v40[8] = objc_opt_class();
  v40[9] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:10];
  v10 = [v8 setWithArray:v9];

  [__mf_messageComposerHostInterface_interface setClasses:v10 forSelector:sel__stageMediaItem_skipShelf_forceStage_completionHandler_ argumentIndex:0 ofReply:0];
  v11 = MEMORY[0x1E695DFD8];
  v39[0] = objc_opt_class();
  v39[1] = objc_opt_class();
  v39[2] = objc_opt_class();
  v39[3] = objc_opt_class();
  v39[4] = objc_opt_class();
  v39[5] = objc_opt_class();
  v39[6] = objc_opt_class();
  v39[7] = objc_opt_class();
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:8];
  v13 = [v11 setWithArray:v12];

  [__mf_messageComposerHostInterface_interface setClasses:v13 forSelector:sel__stageMediaItem_skipShelf_forceStage_completionHandler_ argumentIndex:0 ofReply:1];
  v14 = MEMORY[0x1E695DFD8];
  v38[0] = objc_opt_class();
  v38[1] = objc_opt_class();
  v38[2] = objc_opt_class();
  v38[3] = objc_opt_class();
  v38[4] = objc_opt_class();
  v38[5] = objc_opt_class();
  v38[6] = objc_opt_class();
  v38[7] = objc_opt_class();
  v38[8] = objc_opt_class();
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:9];
  v16 = [v14 setWithArray:v15];

  [__mf_messageComposerHostInterface_interface setClasses:v16 forSelector:sel__stageRichLink_skipShelf_completionHandler_ argumentIndex:0 ofReply:0];
  v17 = MEMORY[0x1E695DFD8];
  v37[0] = objc_opt_class();
  v37[1] = objc_opt_class();
  v37[2] = objc_opt_class();
  v37[3] = objc_opt_class();
  v37[4] = objc_opt_class();
  v37[5] = objc_opt_class();
  v37[6] = objc_opt_class();
  v37[7] = objc_opt_class();
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:8];
  v19 = [v17 setWithArray:v18];

  [__mf_messageComposerHostInterface_interface setClasses:v19 forSelector:sel__stageRichLink_skipShelf_completionHandler_ argumentIndex:0 ofReply:1];
  v20 = MEMORY[0x1E695DFD8];
  v36[0] = objc_opt_class();
  v36[1] = objc_opt_class();
  v36[2] = objc_opt_class();
  v36[3] = objc_opt_class();
  v36[4] = objc_opt_class();
  v36[5] = objc_opt_class();
  v36[6] = objc_opt_class();
  v36[7] = objc_opt_class();
  v36[8] = objc_opt_class();
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:9];
  v22 = [v20 setWithArray:v21];

  [__mf_messageComposerHostInterface_interface setClasses:v22 forSelector:sel__sendCustomAcknowledgement_selectedMessage_completionHandler_ argumentIndex:0 ofReply:0];
  v23 = MEMORY[0x1E695DFD8];
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v35 = objc_opt_class();
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:10];
  v25 = [v23 setWithArray:{v24, v26, v27, v28, v29, v30, v31, v32, v33, v34}];

  [__mf_messageComposerHostInterface_interface setClasses:v25 forSelector:sel__sendCustomAcknowledgement_selectedMessage_completionHandler_ argumentIndex:1 ofReply:0];
  [__mf_messageComposerHostInterface_interface setClass:objc_opt_class() forSelector:sel__stickerDruidDragEndedWithPayload_ argumentIndex:0 ofReply:0];
  [__mf_messageComposerHostInterface_interface setClass:objc_opt_class() forSelector:sel__stickerDruidDragEndedWithPayload_pluginIdentifier_ argumentIndex:0 ofReply:0];
  [__mf_messageComposerHostInterface_interface setClass:objc_opt_class() forSelector:sel__stickerDruidDragEndedWithPayload_pluginIdentifier_ argumentIndex:1 ofReply:0];
}

void __81__NSXPCInterface_MessageComposeExtension____mf_messageComposerExtensionInterface__block_invoke()
{
  v51[14] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4AD4160];
  v1 = __mf_messageComposerExtensionInterface_interface;
  __mf_messageComposerExtensionInterface_interface = v0;

  v2 = MEMORY[0x1E695DFD8];
  v51[0] = objc_opt_class();
  v51[1] = objc_opt_class();
  v51[2] = objc_opt_class();
  v51[3] = objc_opt_class();
  v51[4] = objc_opt_class();
  v51[5] = objc_opt_class();
  v51[6] = objc_opt_class();
  v51[7] = objc_opt_class();
  v51[8] = objc_opt_class();
  v51[9] = objc_opt_class();
  v51[10] = objc_opt_class();
  v51[11] = objc_opt_class();
  v51[12] = objc_opt_class();
  v51[13] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:14];
  v4 = [v2 setWithArray:v3];

  [__mf_messageComposerExtensionInterface_interface setClasses:v4 forSelector:sel__becomeActiveWithConversationState_presentationState_ argumentIndex:0 ofReply:0];
  [__mf_messageComposerExtensionInterface_interface setClasses:v4 forSelector:sel__didReceiveMessage_conversationState_ argumentIndex:0 ofReply:0];
  [__mf_messageComposerExtensionInterface_interface setClasses:v4 forSelector:sel__didReceiveMessage_conversationState_ argumentIndex:1 ofReply:0];
  [__mf_messageComposerExtensionInterface_interface setClasses:v4 forSelector:sel__didStartSendingMessage_conversationState_ argumentIndex:0 ofReply:0];
  [__mf_messageComposerExtensionInterface_interface setClasses:v4 forSelector:sel__didStartSendingMessage_conversationState_ argumentIndex:1 ofReply:0];
  [__mf_messageComposerExtensionInterface_interface setClasses:v4 forSelector:sel__didCancelSendingMessage_conversationState_ argumentIndex:0 ofReply:0];
  [__mf_messageComposerExtensionInterface_interface setClasses:v4 forSelector:sel__didCancelSendingMessage_conversationState_ argumentIndex:1 ofReply:0];
  [__mf_messageComposerExtensionInterface_interface setClasses:v4 forSelector:sel__canSendMessage_conversationState_associatedText_completion_ argumentIndex:0 ofReply:0];
  [__mf_messageComposerExtensionInterface_interface setClasses:v4 forSelector:sel__canSendMessage_conversationState_associatedText_completion_ argumentIndex:1 ofReply:0];
  [__mf_messageComposerExtensionInterface_interface setClasses:v4 forSelector:sel__requestContentSizeThatFits_presentationStyle_completionHandler_ argumentIndex:0 ofReply:0];
  [__mf_messageComposerExtensionInterface_interface setClasses:v4 forSelector:sel__requestContentSizeThatFits_presentationStyle_completionHandler_ argumentIndex:1 ofReply:0];
  [__mf_messageComposerExtensionInterface_interface setClasses:v4 forSelector:sel__handleTextInputPayload_withPayloadID_completion_ argumentIndex:0 ofReply:0];
  [__mf_messageComposerExtensionInterface_interface setClasses:v4 forSelector:sel__handleTextInputPayload_withPayloadID_completion_ argumentIndex:1 ofReply:0];
  [__mf_messageComposerExtensionInterface_interface setClasses:v4 forSelector:sel__animatedStickerCreationProgressChanged_progress_ argumentIndex:0 ofReply:0];
  [__mf_messageComposerExtensionInterface_interface setClasses:v4 forSelector:sel__animatedStickerCreationProgressChanged_progress_ argumentIndex:1 ofReply:0];
  v5 = MEMORY[0x1E695DFD8];
  v50 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
  v7 = [v5 setWithArray:v6];

  [__mf_messageComposerExtensionInterface_interface setClasses:v7 forSelector:sel__presentationWillChangeToPresentationState_ argumentIndex:0 ofReply:0];
  [__mf_messageComposerExtensionInterface_interface setClasses:v7 forSelector:sel__presentationDidChangeToPresentationState_ argumentIndex:0 ofReply:0];
  v8 = __mf_messageComposerExtensionInterface_interface;
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  [v8 setClasses:v11 forSelector:? argumentIndex:? ofReply:?];

  v12 = __mf_messageComposerExtensionInterface_interface;
  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  [v12 setClasses:v15 forSelector:sel__addStickerToStoreWithRepresentations_completionWithStickerIDs_ argumentIndex:0 ofReply:0];

  v16 = __mf_messageComposerExtensionInterface_interface;
  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  [v16 setClasses:v19 forSelector:sel__addStickerToStoreWithRepresentations_completionWithStickerIDs_ argumentIndex:1 ofReply:1];

  v20 = __mf_messageComposerExtensionInterface_interface;
  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  [v20 setClasses:v23 forSelector:sel__addStickerToStoreWithRepresentations_sourceRect_completion_ argumentIndex:0 ofReply:0];

  v24 = __mf_messageComposerExtensionInterface_interface;
  v25 = MEMORY[0x1E695DFD8];
  v26 = objc_opt_class();
  v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
  [v24 setClasses:v27 forSelector:sel__addStickerToStoreWithRepresentations_sourceRect_completion_ argumentIndex:0 ofReply:1];

  v28 = __mf_messageComposerExtensionInterface_interface;
  v29 = MEMORY[0x1E695DFD8];
  v30 = objc_opt_class();
  v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
  [v28 setClasses:v31 forSelector:sel__addStickerToStoreWithRepresentations_sourceRect_effect_completion_ argumentIndex:0 ofReply:0];

  v32 = __mf_messageComposerExtensionInterface_interface;
  v33 = MEMORY[0x1E695DFD8];
  v34 = objc_opt_class();
  v35 = [v33 setWithObjects:{v34, objc_opt_class(), 0}];
  [v32 setClasses:v35 forSelector:sel__addStickerToStoreWithRepresentations_sourceRect_effect_completion_ argumentIndex:0 ofReply:1];

  v36 = MEMORY[0x1E695DFD8];
  v49 = objc_opt_class();
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
  v38 = [v36 setWithArray:v37];

  [__mf_messageComposerExtensionInterface_interface setClasses:v38 forSelector:sel__setPluginIdentifierToShow_completion_ argumentIndex:0 ofReply:0];
  v39 = __mf_messageComposerExtensionInterface_interface;
  v40 = MEMORY[0x1E695DFD8];
  v41 = objc_opt_class();
  v42 = [v40 setWithObjects:{v41, objc_opt_class(), 0}];
  [v39 setClasses:v42 forSelector:sel__addStickerToStoreWithRepresentations_completionHandler_ argumentIndex:0 ofReply:0];

  v43 = __mf_messageComposerExtensionInterface_interface;
  v44 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v43 setClasses:v44 forSelector:sel__setHostBundleID_ argumentIndex:0 ofReply:0];

  v45 = __mf_messageComposerExtensionInterface_interface;
  v46 = MEMORY[0x1E695DFD8];
  v47 = objc_opt_class();
  v48 = [v46 setWithObjects:{v47, objc_opt_class(), 0}];
  [v45 setClasses:v48 forSelector:sel__addStickerToStoreWithUISticker_sourceRect_completion_ argumentIndex:0 ofReply:1];
}

@end