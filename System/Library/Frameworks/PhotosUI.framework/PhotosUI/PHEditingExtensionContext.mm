@interface PHEditingExtensionContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (id)_contentEditingController;
- (void)_releaseSandboxExtensions;
- (void)beginContentEditingWithCompletionHandler:(id)handler;
- (void)cancelContentEditingWithResponseHandler:(id)handler;
- (void)dealloc;
- (void)finishContentEditing;
- (void)queryHandlingCapabilityForAdjustmentData:(id)data withResponseHandler:(id)handler;
- (void)queryShouldShowCancelConfirmationWithResponseHandler:(id)handler;
- (void)setUndoManagerForBarButtons:(id)buttons;
@end

@implementation PHEditingExtensionContext

- (void)setUndoManagerForBarButtons:(id)buttons
{
  objc_storeStrong(&self->_undoManagerForBarButtons, buttons);
  buttonsCopy = buttons;
  undoAdapter = [(PHEditingExtensionContext *)self undoAdapter];
  [undoAdapter setUndoManager:buttonsCopy];
}

- (void)cancelContentEditingWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__PHEditingExtensionContext_cancelContentEditingWithResponseHandler___block_invoke;
  v6[3] = &unk_1E83F7840;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __69__PHEditingExtensionContext_cancelContentEditingWithResponseHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contentEditingController];
  [v2 cancelContentEditing];

  [*(a1 + 32) _releaseSandboxExtensions];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)finishContentEditing
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__PHEditingExtensionContext_finishContentEditing__block_invoke;
  block[3] = &unk_1E83F7818;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __49__PHEditingExtensionContext_finishContentEditing__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contentEditingController];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__PHEditingExtensionContext_finishContentEditing__block_invoke_2;
  v3[3] = &unk_1E83F77F0;
  v3[4] = *(a1 + 32);
  [v2 finishContentEditingWithCompletionHandler:v3];
}

void __49__PHEditingExtensionContext_finishContentEditing__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_semaphore_create(0);
  v5 = [*(a1 + 32) _auxiliaryConnection];
  v6 = [v5 remoteObjectProxy];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__PHEditingExtensionContext_finishContentEditing__block_invoke_3;
  v9[3] = &unk_1E83F77C8;
  v10 = v3;
  v11 = v4;
  v7 = v4;
  v8 = v3;
  [v6 commitContentEditingOutput:v8 withCompletionHandler:v9];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t __49__PHEditingExtensionContext_finishContentEditing__block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_FailedToSaveCo.isa, *(a1 + 32), a2);
  }

  v3 = *(a1 + 40);

  return dispatch_semaphore_signal(v3);
}

- (void)beginContentEditingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(PHEditingExtensionContext *)self _releaseSandboxExtensions];
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = __Block_byref_object_copy_;
  v44[4] = __Block_byref_object_dispose_;
  v45 = 0;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = __Block_byref_object_copy_;
  v42[4] = __Block_byref_object_dispose_;
  v43 = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = __Block_byref_object_copy_;
  v40[4] = __Block_byref_object_dispose_;
  v41 = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy_;
  v38[4] = __Block_byref_object_dispose_;
  v39 = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v37[3] = 1;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3810000000;
  v34[3] = &unk_1D2160BF3;
  v35 = *MEMORY[0x1E6960C70];
  v36 = *(MEMORY[0x1E6960C70] + 16);
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy_;
  v32[4] = __Block_byref_object_dispose_;
  v33 = 0;
  v4 = dispatch_group_create();
  inputItems = [(PHEditingExtensionContext *)self inputItems];
  firstObject = [inputItems firstObject];

  attachments = [firstObject attachments];
  firstObject2 = [attachments firstObject];

  dispatch_group_enter(v4);
  v9 = PUEditingInitialPayloadTypeIdentifier;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __70__PHEditingExtensionContext_beginContentEditingWithCompletionHandler___block_invoke;
  v22[3] = &unk_1E83F7778;
  v25 = v32;
  v10 = v4;
  v26 = v44;
  v27 = v42;
  v28 = v34;
  v29 = v37;
  v23 = v10;
  selfCopy = self;
  v30 = v40;
  v31 = v38;
  [firstObject2 loadItemForTypeIdentifier:v9 options:0 completionHandler:v22];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PHEditingExtensionContext_beginContentEditingWithCompletionHandler___block_invoke_2;
  block[3] = &unk_1E83F77A0;
  v15 = v40;
  v16 = v38;
  v17 = v34;
  v18 = v44;
  v19 = v37;
  v20 = v42;
  block[4] = self;
  v14 = handlerCopy;
  v21 = v32;
  v11 = handlerCopy;
  dispatch_group_notify(v10, MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v38, 8);

  _Block_object_dispose(v40, 8);
  _Block_object_dispose(v42, 8);

  _Block_object_dispose(v44, 8);
}

void __70__PHEditingExtensionContext_beginContentEditingWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 || !v6)
  {
    v8 = objc_alloc(MEMORY[0x1E6978790]);
    v9 = [v5 fullSizeImageURL];
    v10 = v9;
    if (!v9)
    {
      v10 = [v5 videoURL];
    }

    v11 = [v8 initWithAppropriateURL:v10];
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    if (!v9)
    {
    }

    v14 = [v5 adjustmentData];
    v15 = [v5 placeholderImageData];
    v16 = DCIM_newPLImageWithData();
    v17 = *(*(a1 + 64) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    [v5 livePhotoStillDisplayTime];
    v19 = *(*(a1 + 72) + 8);
    *(v19 + 32) = v53;
    *(v19 + 48) = v54;
    v20 = [v5 mediaType];
    *(*(*(a1 + 80) + 8) + 24) = [v5 playbackStyle];
    [*(*(*(a1 + 56) + 8) + 40) setMediaType:v20];
    [*(*(*(a1 + 56) + 8) + 40) setMediaSubtypes:{objc_msgSend(v5, "mediaSubtypes")}];
    [*(*(*(a1 + 56) + 8) + 40) setPlaybackStyle:{objc_msgSend(v5, "playbackStyle")}];
    v21 = *(*(*(a1 + 56) + 8) + 40);
    v22 = [v5 creationDate];
    [v21 setCreationDate:v22];

    v23 = *(*(*(a1 + 56) + 8) + 40);
    v24 = [v5 location];
    [v23 setLocation:v24];

    [*(*(*(a1 + 56) + 8) + 40) setAdjustmentData:v14];
    v25 = *(*(*(a1 + 56) + 8) + 40);
    v26 = [v5 accessibilityDescription];
    [v25 setAccessibilityDescription:v26];

    [*(*(*(a1 + 56) + 8) + 40) setBaseVersion:{objc_msgSend(v5, "adjustmentBaseVersion")}];
    v27 = [v5 videoURL];
    v28 = *(*(a1 + 88) + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = v27;

    v30 = [v5 displaySizeImageData];
    if (v30)
    {
      v31 = DCIM_newPLImageWithData();
      [*(*(*(a1 + 56) + 8) + 40) setDisplaySizeImage:v31];
    }

    v32 = *(*(*(a1 + 56) + 8) + 40);
    v33 = [v5 uniformTypeIdentifier];
    [v32 setUniformTypeIdentifier:v33];

    if (*(*(*(a1 + 88) + 8) + 40))
    {
      v34 = [v5 videoPathSandboxExtensionToken];
      v35 = v34;
      if (!*(*(a1 + 40) + 32))
      {
        if ([v34 length])
        {
          v47 = MEMORY[0x1E696AD98];
          [v35 UTF8String];
          v48 = [v47 numberWithLongLong:sandbox_extension_consume()];
          v49 = *(a1 + 40);
          v50 = *(v49 + 32);
          *(v49 + 32) = v48;

          if ([*(*(a1 + 40) + 32) longLongValue] == -1)
          {
            NSLog(&cfstr_FailedToConsum.isa, v35);
            v51 = *(a1 + 40);
            v52 = *(v51 + 32);
            *(v51 + 32) = 0;
          }
        }
      }
    }

    v36 = [v5 fullSizeImageURL];
    v37 = *(*(a1 + 96) + 8);
    v38 = *(v37 + 40);
    *(v37 + 40) = v36;

    v39 = [v5 fullSizeImageURLSandboxExtensionToken];
    v40 = v39;
    if (!*(*(a1 + 40) + 24))
    {
      if ([v39 length])
      {
        v41 = MEMORY[0x1E696AD98];
        [v40 UTF8String];
        v42 = [v41 numberWithLongLong:sandbox_extension_consume()];
        v43 = *(a1 + 40);
        v44 = *(v43 + 24);
        *(v43 + 24) = v42;

        if ([*(*(a1 + 40) + 24) longLongValue] == -1)
        {
          NSLog(&cfstr_FailedToConsum.isa, v40);
          v45 = *(a1 + 40);
          v46 = *(v45 + 24);
          *(v45 + 24) = 0;
        }
      }
    }

    [*(*(*(a1 + 56) + 8) + 40) setFullSizeImageOrientation:{objc_msgSend(v5, "fullSizeImageExifOrientation")}];
    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    dispatch_group_leave(*(a1 + 32));
  }
}

uint64_t __70__PHEditingExtensionContext_beginContentEditingWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 48) + 8) + 40);
  if (v2 && *(*(*(a1 + 56) + 8) + 40) && (*(*(*(a1 + 64) + 8) + 44) & 1) != 0)
  {
    v3 = MEMORY[0x1E69788C8];
    v13[0] = *(*(*(a1 + 56) + 8) + 40);
    v13[1] = v2;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v5 = [v3 livePhotoWithResourceFileURLs:v4 error:0];

    [*(*(*(a1 + 72) + 8) + 40) setLivePhoto:v5];
    if (*(*(*(a1 + 80) + 8) + 24) == 5)
    {
      [*(*(*(a1 + 72) + 8) + 40) setVideoURL:*(*(*(a1 + 48) + 8) + 40)];
    }
  }

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    [*(*(*(a1 + 72) + 8) + 40) setFullSizeImageURL:?];
  }

  else if (*(*(*(a1 + 48) + 8) + 40))
  {
    [*(*(*(a1 + 72) + 8) + 40) setVideoURL:?];
  }

  v6 = [*(a1 + 32) _contentEditingController];
  [v6 startContentEditingWithInput:*(*(*(a1 + 72) + 8) + 40) placeholderImage:*(*(*(a1 + 88) + 8) + 40)];

  if ([*(a1 + 32) attemptUndoManagerAutoSetup])
  {
    v7 = [*(a1 + 32) _contentEditingController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = [v8 undoManager];
    [*(a1 + 32) setUndoManagerForBarButtons:v9];
  }

  v10 = *(*(*(a1 + 96) + 8) + 40);
  result = (*(*(a1 + 40) + 16))();
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)queryShouldShowCancelConfirmationWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHEditingExtensionContext.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"responseHandler"}];
  }

  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 0;
  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__PHEditingExtensionContext_queryShouldShowCancelConfirmationWithResponseHandler___block_invoke;
  block[3] = &unk_1E83F7728;
  v15 = v6;
  v16 = v17;
  block[4] = self;
  v7 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v8 = dispatch_get_global_queue(0, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__PHEditingExtensionContext_queryShouldShowCancelConfirmationWithResponseHandler___block_invoke_2;
  v11[3] = &unk_1E83F7750;
  v12 = handlerCopy;
  v13 = v17;
  v9 = handlerCopy;
  dispatch_group_notify(v7, v8, v11);

  _Block_object_dispose(v17, 8);
}

void __82__PHEditingExtensionContext_queryShouldShowCancelConfirmationWithResponseHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contentEditingController];
  *(*(*(a1 + 48) + 8) + 24) = [v2 shouldShowCancelConfirmation];

  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

- (void)queryHandlingCapabilityForAdjustmentData:(id)data withResponseHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHEditingExtensionContext.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"responseHandler"}];
  }

  _contentEditingController = [(PHEditingExtensionContext *)self _contentEditingController];
  v9 = [_contentEditingController canHandleAdjustmentData:dataCopy];

  handlerCopy[2](handlerCopy, v9);
}

- (void)_releaseSandboxExtensions
{
  fullSizeImageSandboxExtensionHandleWrapper = self->_fullSizeImageSandboxExtensionHandleWrapper;
  if (fullSizeImageSandboxExtensionHandleWrapper)
  {
    [(NSNumber *)fullSizeImageSandboxExtensionHandleWrapper longLongValue];
    sandbox_extension_release();
    v4 = self->_fullSizeImageSandboxExtensionHandleWrapper;
    self->_fullSizeImageSandboxExtensionHandleWrapper = 0;
  }

  videoPathSandboxExtensionHandleWrapper = self->_videoPathSandboxExtensionHandleWrapper;
  if (videoPathSandboxExtensionHandleWrapper)
  {
    [(NSNumber *)videoPathSandboxExtensionHandleWrapper longLongValue];
    sandbox_extension_release();
    v6 = self->_videoPathSandboxExtensionHandleWrapper;
    self->_videoPathSandboxExtensionHandleWrapper = 0;
  }
}

- (id)_contentEditingController
{
  _principalObject = [(PHEditingExtensionContext *)self _principalObject];
  if (([_principalObject conformsToProtocol:&unk_1F4DC9930] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHEditingExtensionContext.m" lineNumber:68 description:{@"%@ not conforming to PHContentEditingController", v8}];
  }

  return _principalObject;
}

- (void)dealloc
{
  [(PHEditingExtensionContext *)self _releaseSandboxExtensions];
  v3.receiver = self;
  v3.super_class = PHEditingExtensionContext;
  [(PHEditingExtensionContext *)&v3 dealloc];
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_onceToken_1162 != -1)
  {
    dispatch_once(&_extensionAuxiliaryHostProtocol_onceToken_1162, &__block_literal_global_15);
  }

  v3 = _extensionAuxiliaryHostProtocol___interface;

  return v3;
}

uint64_t __60__PHEditingExtensionContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4DC51D0];
  v1 = _extensionAuxiliaryHostProtocol___interface;
  _extensionAuxiliaryHostProtocol___interface = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_onceToken_1164 != -1)
  {
    dispatch_once(&_extensionAuxiliaryVendorProtocol_onceToken_1164, &__block_literal_global_1165);
  }

  v3 = _extensionAuxiliaryVendorProtocol___interface;

  return v3;
}

uint64_t __62__PHEditingExtensionContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4DC2E68];
  v1 = _extensionAuxiliaryVendorProtocol___interface;
  _extensionAuxiliaryVendorProtocol___interface = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end