@interface MXExtensionService
@end

@implementation MXExtensionService

uint64_t __53___MXExtensionService_vendorContextWithErrorHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 disconnectExtension];
}

void __70___MXExtensionService_stopSendingUpdatesForRequest_requestDispatcher___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 vendorContextWithErrorHandler:&__block_literal_global_106];
    v4 = v3;
    if (v3)
    {
      v6 = v3;
      v5 = [v3 conformsToProtocol:&unk_1F1657C60];
      v4 = v6;
      if (v5)
      {
        [v6 stopSendingUpdatesForRequest:*(a1 + 32) requestDispatcher:*(a1 + 40)];
        v4 = v6;
      }
    }
  }
}

void __82___MXExtensionService_startSendingUpdatesForRequest_requestDispatcher_toObserver___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);

    [v4 receiveUpdatedResponse:0 error:a3];
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __82___MXExtensionService_startSendingUpdatesForRequest_requestDispatcher_toObserver___block_invoke_2;
    v9[3] = &unk_1E76CD8A0;
    v10 = *(a1 + 32);
    v6 = [a2 vendorContextWithErrorHandler:v9];
    v7 = v6;
    if (v6)
    {
      if ([v6 conformsToProtocol:&unk_1F1657C60])
      {
        [v7 startSendingUpdatesForRequest:*(a1 + 40) requestDispatcher:*(a1 + 48) toObserver:*(a1 + 32)];
      }

      else
      {
        v8 = [MEMORY[0x1E696ABC0] _errorWithExtensionServiceError:7];
        [*(a1 + 32) receiveUpdatedResponse:0 error:v8];
      }
    }
  }
}

void __82___MXExtensionService_startSendingUpdatesForRequest_requestDispatcher_toObserver___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] _errorWithExtensionServiceError:1];
  [*(a1 + 32) receiveUpdatedResponse:0 error:v2];
  [*(a1 + 40) stopSendingUpdatesForRequest:*(a1 + 48) requestDispatcher:*(a1 + 56)];
}

void __82___MXExtensionService_startSendingUpdatesForRequest_requestDispatcher_toObserver___block_invoke_4(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__7763;
  v8 = __Block_byref_object_dispose__7764;
  v9 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __82___MXExtensionService_startSendingUpdatesForRequest_requestDispatcher_toObserver___block_invoke_5;
  v3[3] = &unk_1E76C9558;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  v3[5] = &v4;
  dispatch_sync(v1, v3);
  v2 = v5[5];
  if (v2)
  {
    (*(v2 + 16))();
  }

  _Block_object_dispose(&v4, 8);
}

void __82___MXExtensionService_startSendingUpdatesForRequest_requestDispatcher_toObserver___block_invoke_5(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v2 = MEMORY[0x1A58E9F30]();
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }
}

void __66___MXExtensionService_handleRequest_requestDispatcher_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__7763;
  v14 = __Block_byref_object_dispose__7764;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66___MXExtensionService_handleRequest_requestDispatcher_completion___block_invoke_2;
  v9[3] = &unk_1E76C9558;
  v7 = *(a1 + 32);
  v9[4] = *(a1 + 40);
  v9[5] = &v10;
  dispatch_sync(v7, v9);
  v8 = v11[5];
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }

  _Block_object_dispose(&v10, 8);
}

void __66___MXExtensionService_handleRequest_requestDispatcher_completion___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66___MXExtensionService_handleRequest_requestDispatcher_completion___block_invoke_4;
    v9[3] = &unk_1E76C95A8;
    v10 = *(a1 + 48);
    v6 = [a2 vendorContextWithErrorHandler:v9];
    v7 = v6;
    if (v6)
    {
      if ([v6 conformsToProtocol:&unk_1F1657C00])
      {
        [v7 handleRequest:*(a1 + 32) requestDispatcher:*(a1 + 40) completion:*(a1 + 48)];
      }

      else
      {
        v8 = [MEMORY[0x1E696ABC0] _errorWithExtensionServiceError:7];
        (*(*(a1 + 48) + 16))();
      }
    }
  }
}

void __66___MXExtensionService_handleRequest_requestDispatcher_completion___block_invoke_5(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] _errorWithExtensionServiceError:1];
  (*(*(a1 + 32) + 16))();
}

void __66___MXExtensionService_handleRequest_requestDispatcher_completion___block_invoke_2(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v2 = MEMORY[0x1A58E9F30]();
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }
}

void __42___MXExtensionService_disconnectExtension__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained state] == 2)
  {
    [WeakRetained setState:3];
  }

  v4[2]();
}

void __79___MXExtensionService__connectExtensionWithRemoteViewControllerNeeded_Handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v5)
  {
    [*(a1 + 32) setState:3];
  }

  if (v6)
  {
    [*(a1 + 32) setConnectionIdentifier:v6];
    [*(a1 + 32) setState:2];
  }

  (*(*(a1 + 40) + 16))();
}

void __79___MXExtensionService__connectExtensionWithRemoteViewControllerNeeded_Handler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    [*(a1 + 32) setState:3];
  }

  if (v9 && v7)
  {
    [*(a1 + 32) setConnectionIdentifier:v9];
    [*(a1 + 32) setState:2];
  }

  [*(a1 + 32) setRemoteViewController:v7];
  (*(*(a1 + 40) + 16))();
}

void __78___MXExtensionService_connectExtensionWithRemoteViewControllerNeeded_Handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = *(a1 + 48);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __78___MXExtensionService_connectExtensionWithRemoteViewControllerNeeded_Handler___block_invoke_2;
    v8[3] = &unk_1E76C9B98;
    v8[4] = WeakRetained;
    v9 = v3;
    v10 = *(a1 + 32);
    [WeakRetained _connectExtensionWithRemoteViewControllerNeeded:v5 Handler:v8];
  }

  else
  {
    v3[2](v3);
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x1E696ABC0] _errorWithExtensionServiceError:1];
    (*(v6 + 16))(v6, 0, v7);
  }
}

void __78___MXExtensionService_connectExtensionWithRemoteViewControllerNeeded_Handler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  (*(*(a1 + 40) + 16))();
  v6 = [v12 URLHandlingDelegate];

  if (v6)
  {
    v7 = [v12 realExtension];
    v8 = [*(a1 + 32) connectionIdentifier];
    v9 = [v7 _extensionContextForUUID:v8];

    if ([v9 conformsToProtocol:&unk_1F164A338])
    {
      v10 = [v12 URLHandlingDelegate];
      [v9 setURLHandlingDelegate:v10];
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))(v11, v12, v5);
  }
}

void __47___MXExtensionService_extensionCompletionQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.MapKit._MXExtensionService.completion", v2);
  v1 = extensionCompletionQueue_queue;
  extensionCompletionQueue_queue = v0;
}

uint64_t __99___MXExtensionService_INIntent_willBeDepreicatedSoon__handleIntent_expectResponseClass_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a3, a5);
  }

  return result;
}

void __61___MXExtensionService_INIntent__stopSendingUpdatesForIntent___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v5 = a2;
    v7 = [v5 vendorContextWithErrorHandler:&__block_literal_global_73];
    v6 = [v5 _errorForIntentVendorContext:?];

    if (!v6)
    {
      [v7 stopSendingUpdatesForIntent:*(a1 + 32)];
    }
  }
}

void __73___MXExtensionService_INIntent__startSendingUpdatesForIntent_toObserver___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) didReceiveError:a3];
  }

  else
  {
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __73___MXExtensionService_INIntent__startSendingUpdatesForIntent_toObserver___block_invoke_2;
    v11 = &unk_1E76C9708;
    v12 = *(a1 + 32);
    v13 = 0;
    v6 = [v5 vendorContextWithErrorHandler:&v8];
    v7 = [v5 _errorForIntentVendorContext:{v6, v8, v9, v10, v11}];
    if (v7)
    {
      [*(a1 + 32) didReceiveError:v7];
    }

    else
    {
      [v6 startSendingUpdatesForIntent:*(a1 + 40) toObserver:*(a1 + 32)];
    }
  }
}

void __73___MXExtensionService_INIntent__startSendingUpdatesForIntent_toObserver___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] _errorWithExtensionServiceError:1];
  [*(a1 + 32) didReceiveError:v2];
  [*(a1 + 40) stopSendingUpdatesForIntent:*(a1 + 48)];
}

void __94___MXExtensionService_INIntent___completeOrCancelTransaction_withIntentIdentifier_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v5 = a2;
    v9 = [v5 vendorContextWithErrorHandler:&__block_literal_global_22633];
    v6 = [v5 _errorForIntentVendorContext:?];

    if (!v6)
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      if (*(a1 + 48) == 1)
      {
        [v9 completeTransactionWithIntentIdentifier:v7 completion:v8];
      }

      else
      {
        [v9 cancelTransactionDueToTimeoutWithIntentIdentifier:v7 completion:v8];
      }
    }
  }
}

uint64_t __94___MXExtensionService_INIntent__cancelTransactionDueToTimeoutWithIntentIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __84___MXExtensionService_INIntent__completeTransactionWithIntentIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __100___MXExtensionService_INIntent___handleOrConfirmIntent_expectResponseClass_isHandle_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__22635;
  v20 = __Block_byref_object_dispose__22636;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __100___MXExtensionService_INIntent___handleOrConfirmIntent_expectResponseClass_isHandle_withCompletion___block_invoke_2;
  v15[3] = &unk_1E76C9558;
  v13 = *(a1 + 32);
  v15[4] = *(a1 + 40);
  v15[5] = &v16;
  dispatch_sync(v13, v15);
  v14 = v17[5];
  if (v14)
  {
    (*(v14 + 16))(v14, v9, v10, v11, v12);
  }

  _Block_object_dispose(&v16, 8);
}

void __100___MXExtensionService_INIntent___handleOrConfirmIntent_expectResponseClass_isHandle_withCompletion___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __100___MXExtensionService_INIntent___handleOrConfirmIntent_expectResponseClass_isHandle_withCompletion___block_invoke_4;
    v21[3] = &unk_1E76C95A8;
    v22 = *(a1 + 40);
    v6 = [v5 vendorContextWithErrorHandler:v21];
    v7 = [v5 _errorForIntentVendorContext:v6];
    if (v7)
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __100___MXExtensionService_INIntent___handleOrConfirmIntent_expectResponseClass_isHandle_withCompletion___block_invoke_5;
      v18[3] = &unk_1E76C9648;
      v19 = v5;
      v12 = *(a1 + 40);
      v8 = v12;
      v20 = v12;
      v9 = MEMORY[0x1A58E9F30](v18);
      v10 = [*(a1 + 32) identifier];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __100___MXExtensionService_INIntent___handleOrConfirmIntent_expectResponseClass_isHandle_withCompletion___block_invoke_6;
      v13[3] = &unk_1E76C9670;
      v17 = *(a1 + 56);
      v14 = v6;
      v15 = *(a1 + 32);
      v16 = v9;
      v11 = v9;
      [v14 beginTransactionWithIntentIdentifier:v10 completion:v13];
    }
  }
}

void __100___MXExtensionService_INIntent___handleOrConfirmIntent_expectResponseClass_isHandle_withCompletion___block_invoke_7(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] _errorWithExtensionServiceError:1];
  (*(*(a1 + 32) + 16))();
}

void __100___MXExtensionService_INIntent___handleOrConfirmIntent_expectResponseClass_isHandle_withCompletion___block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v13 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [*(a1 + 32) _errorForIntentResponse:v13 withExpectResponseClass:*(a1 + 48)];
  (*(*(a1 + 40) + 16))();
}

uint64_t __100___MXExtensionService_INIntent___handleOrConfirmIntent_expectResponseClass_isHandle_withCompletion___block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (v2 == 1)
  {
    return [v3 handleIntent:v4 withCompletion:v5];
  }

  else
  {
    return [v3 confirmIntent:v4 withCompletion:v5];
  }
}

void __100___MXExtensionService_INIntent___handleOrConfirmIntent_expectResponseClass_isHandle_withCompletion___block_invoke_2(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v2 = MEMORY[0x1A58E9F30]();
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }
}

void __77___MXExtensionService_INIntent__resolveIntentSlot_forIntent_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__22635;
  v14 = __Block_byref_object_dispose__22636;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77___MXExtensionService_INIntent__resolveIntentSlot_forIntent_completionBlock___block_invoke_2;
  v9[3] = &unk_1E76C9558;
  v7 = *(a1 + 32);
  v9[4] = *(a1 + 40);
  v9[5] = &v10;
  dispatch_sync(v7, v9);
  v8 = v11[5];
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }

  _Block_object_dispose(&v10, 8);
}

void __77___MXExtensionService_INIntent__resolveIntentSlot_forIntent_completionBlock___block_invoke_3(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(a1[6] + 2))();
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __77___MXExtensionService_INIntent__resolveIntentSlot_forIntent_completionBlock___block_invoke_4;
    v14[3] = &unk_1E76C95A8;
    v15 = a1[6];
    v6 = [v5 vendorContextWithErrorHandler:v14];
    v7 = [v5 _errorForIntentVendorContext:v6];
    if (v7)
    {
      (*(a1[6] + 2))();
    }

    else
    {
      v8 = [a1[4] identifier];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __77___MXExtensionService_INIntent__resolveIntentSlot_forIntent_completionBlock___block_invoke_5;
      v9[3] = &unk_1E76CD8C8;
      v10 = v6;
      v11 = a1[5];
      v12 = a1[4];
      v13 = a1[6];
      [v10 beginTransactionWithIntentIdentifier:v8 completion:v9];
    }
  }
}

void __77___MXExtensionService_INIntent__resolveIntentSlot_forIntent_completionBlock___block_invoke_7(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] _errorWithExtensionServiceError:1];
  (*(*(a1 + 32) + 16))();
}

void __77___MXExtensionService_INIntent__resolveIntentSlot_forIntent_completionBlock___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __77___MXExtensionService_INIntent__resolveIntentSlot_forIntent_completionBlock___block_invoke_6;
  v4[3] = &unk_1E76C95D0;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 resolveIntentSlot:v2 forIntent:v3 completionBlock:v4];
}

void __77___MXExtensionService_INIntent__resolveIntentSlot_forIntent_completionBlock___block_invoke_2(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v2 = MEMORY[0x1A58E9F30]();
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }
}

@end