@interface MSMessageAppContext
@end

@implementation MSMessageAppContext

uint64_t __67___MSMessageAppContext__requestStickerExtensionMetadataDictionary___block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 requestStickerExtensionMetadataDictionary:v4];
  }

  return result;
}

uint64_t __71___MSMessageAppContext__requestPresentationWithStickerType_identifier___block_invoke(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];

    return [v3 requestPresentationWithStickerType:v4 identifier:v5];
  }

  return result;
}

void __77___MSMessageAppContext__becomeActiveWithConversationState_presentationState___block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 48))
  {
    [*(a1 + 32) setPresentationStyle:{objc_msgSend(*(a1 + 40), "presentationStyle")}];
    [*(a1 + 32) setPresentationContext:{objc_msgSend(*(a1 + 40), "presentationContext")}];
    obj = [*(a1 + 32) updatedConversationForConversationState:*(a1 + 48)];
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 56) willBecomeActiveWithConversation:obj];
    }

    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 56) setActiveConversation:obj];
    }

    objc_storeStrong((*(a1 + 32) + 48), obj);
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 56) didBecomeActiveWithConversation:obj];
    }

    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    v4 = [v3 isPPTAvailable];

    if (v4)
    {
      v5 = [MEMORY[0x1E696AAE8] mainBundle];
      v6 = [v5 bundleIdentifier];

      v7 = [v6 substringFromIndex:{objc_msgSend(v6, "rangeOfString:options:", @".", 4) + 1}];
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v7, @"ExtensionLaunch"];
      v9 = [MEMORY[0x1E69DC668] sharedApplication];
      [v9 finishedIPTest:v8 waitForCommit:1 extraResults:0 withTeardownBlock:0];
    }

    v10 = [MEMORY[0x1E69DC668] sharedApplication];
    v11 = [v10 isRunningTest:@"LiveBubbleLoadingTest"];

    if (v11)
    {
      v12 = [MEMORY[0x1E69DC668] sharedApplication];
      [v12 finishedTest:@"LiveBubbleLoadingTest" waitForCommit:1 extraResults:0];
    }
  }
}

void __37___MSMessageAppContext__resignActive__block_invoke(uint64_t a1)
{
  v2 = ms_traceLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __37___MSMessageAppContext__resignActive__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = *(*(a1 + 32) + 48);
  if (v10)
  {
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 40) willResignActiveWithConversation:v10];
    }

    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 40) setActiveConversation:0];
    }

    v11 = *(a1 + 32);
    v12 = *(v11 + 48);
    *(v11 + 48) = 0;

    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 40) didResignActiveWithConversation:v10];
    }
  }
}

void __84___MSMessageAppContext__canSendMessage_conversationState_associatedText_completion___block_invoke(uint64_t a1)
{
  v2 = ms_traceLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __84___MSMessageAppContext__canSendMessage_conversationState_associatedText_completion___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = [*(a1 + 32) updatedConversationForConversationState:*(a1 + 40)];
  v11 = [*(a1 + 32) viewController];
  if (objc_opt_respondsToSelector())
  {
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __84___MSMessageAppContext__canSendMessage_conversationState_associatedText_completion___block_invoke_83;
    v17 = &unk_1E83A2D10;
    v19 = *(a1 + 64);
    v18 = *(a1 + 48);
    [v11 _validateMessageForSending:v12 conversation:v10 associatedText:v13 completionHandler:&v14];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }

  [*(a1 + 32) _releaseKeepAliveContext];
}

void __68___MSMessageAppContext__conversationDidChangeWithConversationState___block_invoke(uint64_t a1)
{
  v2 = ms_traceLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __68___MSMessageAppContext__conversationDidChangeWithConversationState___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = [*(a1 + 32) updatedConversationForConversationState:*(a1 + 40)];
  if (*(*(a1 + 32) + 48) != v10)
  {
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 48) setActiveConversation:v10];
    }

    objc_storeStrong((*(a1 + 32) + 48), v10);
  }
}

void __88___MSMessageAppContext__requestContentSizeThatFits_presentationStyle_completionHandler___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) viewController];
  [*(a1 + 40) CGSizeValue];
  v2 = *(a1 + 48);
  [v3 contentSizeThatFits:?];
  (*(v2 + 16))(v2);
}

void __67___MSMessageAppContext__presentationWillChangeToPresentationState___block_invoke(uint64_t a1)
{
  v2 = ms_traceLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __67___MSMessageAppContext__presentationWillChangeToPresentationState___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = [*(a1 + 32) viewController];
  if (!v10)
  {
    v10 = [*(a1 + 32) stickerViewController];
  }

  if (objc_opt_respondsToSelector())
  {
    [v10 willTransitionToPresentationStyle:{objc_msgSend(*(a1 + 40), "presentationStyle")}];
  }
}

void __66___MSMessageAppContext__presentationDidChangeToPresentationState___block_invoke(uint64_t a1)
{
  v2 = ms_traceLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __66___MSMessageAppContext__presentationDidChangeToPresentationState___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = [*(a1 + 32) viewController];
  if (!v10)
  {
    v10 = [*(a1 + 32) stickerViewController];
  }

  [*(a1 + 32) setPresentationStyle:{objc_msgSend(*(a1 + 40), "presentationStyle")}];
  if (objc_opt_respondsToSelector())
  {
    [v10 didTransitionToPresentationStyle:{objc_msgSend(*(a1 + 32), "presentationStyle")}];
  }
}

void __60___MSMessageAppContext__didUpdateMessage_conversationState___block_invoke(uint64_t a1)
{
  v2 = ms_traceLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __60___MSMessageAppContext__didUpdateMessage_conversationState___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = [*(a1 + 32) updatedConversationForConversationState:*(a1 + 40)];
  v11 = [*(a1 + 32) viewController];
  if (objc_opt_respondsToSelector())
  {
    [v11 _didUpdateMessage:*(a1 + 48) conversation:v10];
  }
}

void __61___MSMessageAppContext__didReceiveMessage_conversationState___block_invoke(uint64_t a1)
{
  v2 = ms_traceLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __61___MSMessageAppContext__didReceiveMessage_conversationState___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = [*(a1 + 32) updatedConversationForConversationState:*(a1 + 40)];
  v11 = [*(a1 + 32) viewController];
  if (objc_opt_respondsToSelector())
  {
    [v11 didReceiveMessage:*(a1 + 48) conversation:v10];
  }
}

void __66___MSMessageAppContext__didStartSendingMessage_conversationState___block_invoke(uint64_t a1)
{
  v2 = ms_traceLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __66___MSMessageAppContext__didStartSendingMessage_conversationState___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = [*(a1 + 32) updatedConversationForConversationState:*(a1 + 40)];
  v11 = [*(a1 + 32) viewController];
  if (objc_opt_respondsToSelector())
  {
    if (v10)
    {
      v12 = *(a1 + 48);
      if (v12)
      {
        [v11 didStartSendingMessage:v12 conversation:v10];
      }
    }
  }

  [*(a1 + 32) _releaseKeepAliveContext];
}

void __67___MSMessageAppContext__didCancelSendingMessage_conversationState___block_invoke(uint64_t a1)
{
  v2 = ms_traceLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __67___MSMessageAppContext__didCancelSendingMessage_conversationState___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = [*(a1 + 32) updatedConversationForConversationState:*(a1 + 40)];
  v11 = [*(a1 + 32) viewController];
  if (objc_opt_respondsToSelector())
  {
    if (v10)
    {
      v12 = *(a1 + 48);
      if (v12)
      {
        [v11 didCancelSendingMessage:v12 conversation:v10];
      }
    }
  }

  [*(a1 + 32) _releaseKeepAliveContext];
}

void __81___MSMessageAppContext__didSelectGPAsset_sandboxExtension_recipeData_completion___block_invoke(id *a1)
{
  v2 = ms_traceLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __81___MSMessageAppContext__didSelectGPAsset_sandboxExtension_recipeData_completion___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = [a1[4] viewController];
  if ((objc_opt_respondsToSelector() & 1) != 0 && (a1[5] || a1[6]))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81___MSMessageAppContext__didSelectGPAsset_sandboxExtension_recipeData_completion___block_invoke_99;
    block[3] = &unk_1E83A2D38;
    v11 = &v27;
    v27 = v10;
    v12 = &v28;
    v13 = &v28 + 1;
    v14 = &v29;
    v15 = a1[5];
    v16 = a1[7];
    v17 = a1[6];
    v18 = a1[8];
    *&v19 = v17;
    *(&v19 + 1) = v18;
    *&v20 = v15;
    *(&v20 + 1) = v16;
    v28 = v20;
    v29 = v19;
    dispatch_async(MEMORY[0x1E69E96A0], block);

LABEL_11:
    goto LABEL_12;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && (a1[5] || a1[6]))
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __81___MSMessageAppContext__didSelectGPAsset_sandboxExtension_recipeData_completion___block_invoke_2;
    v21[3] = &unk_1E83A2D88;
    v11 = &v22;
    v22 = v10;
    v12 = &v23;
    v23 = a1[5];
    v13 = &v24;
    v24 = a1[6];
    v14 = &v25;
    v25 = a1[8];
    dispatch_async(MEMORY[0x1E69E96A0], v21);
    goto LABEL_11;
  }

LABEL_12:
  [a1[4] _releaseKeepAliveContext];
}

void __60___MSMessageAppContext__requestSnapshotThatFits_completion___block_invoke(id *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] viewController];
  v3 = ms_defaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 view];
    v5 = [v4 window];
    *buf = 136315394;
    v17 = "[_MSMessageAppContext _requestSnapshotThatFits:completion:]_block_invoke";
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_1CADE6000, v3, OS_LOG_TYPE_DEFAULT, "LiveBubble. %s. view in window %@", buf, 0x16u);
  }

  v6 = [v2 view];
  v7 = [v6 window];

  if (v7)
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __60___MSMessageAppContext__requestSnapshotThatFits_completion___block_invoke_102;
    v13 = &unk_1E83A2DB0;
    v14 = a1[5];
    v15 = a1[6];
    v8 = _Block_copy(&v10);
    v9 = a1[5];
    if (v9)
    {
      [v9 CGSizeValue];
      [v2 generateSnapshotWithContentSize:v8 completion:?];
    }

    else
    {
      [v2 updateSnapshotWithCompletionBlock:{v8, v10, v11, v12, v13, v14}];
    }
  }

  else
  {
    (*(a1[6] + 2))();
  }
}

void __60___MSMessageAppContext__requestSnapshotThatFits_completion___block_invoke_102(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ms_defaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 32) CGSizeValue];
    v5 = NSStringFromCGSize(v12);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1CADE6000, v4, OS_LOG_TYPE_DEFAULT, "LiveBubble. Responding to snapshot request that fits %@. image: %@", &v7, 0x16u);
  }

  if (v3)
  {
    v6 = UIImagePNGRepresentation(v3);
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

void __49___MSMessageAppContext__requestMessageTintColor___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) viewController];
  v2 = [v3 messageTintColor];
  (*(*(a1 + 40) + 16))();
}

void __73___MSMessageAppContext__handleTextInputPayload_withPayloadID_completion___block_invoke(uint64_t a1)
{
  v2 = ms_traceLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __73___MSMessageAppContext__handleTextInputPayload_withPayloadID_completion___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = [*(a1 + 32) viewController];
  if (objc_opt_respondsToSelector())
  {
    [v10 _handleTextInputPayload:*(a1 + 40) withPayloadID:*(a1 + 48)];
  }

  (*(*(a1 + 56) + 16))();
}

void __61___MSMessageAppContext__didRemoveAssetArchiveWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  if (objc_opt_respondsToSelector())
  {
    [v2 _didRemoveAssetArchiveWithIdentifier:*(a1 + 40)];
    v3 = ms_defaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1CADE6000, v3, OS_LOG_TYPE_DEFAULT, "Called -_didRemoveAssetArchiveWithIdentifier:", v4, 2u);
    }
  }

  [*(a1 + 32) _releaseKeepAliveContext];
}

void __69___MSMessageAppContext__prepareForPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = ms_traceLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __69___MSMessageAppContext__prepareForPresentationWithCompletionHandler___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = [*(a1 + 32) viewController];
  if (objc_opt_respondsToSelector())
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __69___MSMessageAppContext__prepareForPresentationWithCompletionHandler___block_invoke_110;
    v11[3] = &unk_1E83A2DD8;
    v12 = *(a1 + 40);
    [v10 _prepareForPresentationWithCompletionHandler:v11];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __45___MSMessageAppContext__volumeButtonPressed___block_invoke(uint64_t a1)
{
  v2 = ms_traceLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __45___MSMessageAppContext__volumeButtonPressed___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = [*(a1 + 32) viewController];
  if (objc_opt_respondsToSelector())
  {
    [v10 _volumeButtonPressed:*(a1 + 40)];
  }
}

@end