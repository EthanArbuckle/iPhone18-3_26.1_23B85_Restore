@interface MPArtworkResizeUtility
- (MPArtworkResizeUtility)initWithQualityOfService:(int64_t)service;
- (id)resizeImage:(id)image scaledFittingSize:(CGSize)size useExactFittingSizeAsDestinationSize:(BOOL)destinationSize saveToDestinationURL:(id)l completionHandler:(id)handler;
- (void)cancelResizeImage:(id)image;
@end

@implementation MPArtworkResizeUtility

- (void)cancelResizeImage:(id)image
{
  imageCopy = image;
  artworkResizingAccessQueue = [(MPArtworkResizeUtility *)self artworkResizingAccessQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__MPArtworkResizeUtility_cancelResizeImage___block_invoke;
  v7[3] = &unk_1E76823C0;
  v7[4] = self;
  v8 = imageCopy;
  v6 = imageCopy;
  dispatch_async(artworkResizingAccessQueue, v7);
}

void __44__MPArtworkResizeUtility_cancelResizeImage___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) artworkResizingOperations];
  v3 = [v2 objectForKey:*(a1 + 40)];

  [v3 cancel];
}

- (id)resizeImage:(id)image scaledFittingSize:(CGSize)size useExactFittingSizeAsDestinationSize:(BOOL)destinationSize saveToDestinationURL:(id)l completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  imageCopy = image;
  lCopy = l;
  handlerCopy = handler;
  v16 = lCopy;
  uUIDString = v16;
  if (!v16)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
  }

  artworkResizingAccessQueue = [(MPArtworkResizeUtility *)self artworkResizingAccessQueue];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __132__MPArtworkResizeUtility_resizeImage_scaledFittingSize_useExactFittingSizeAsDestinationSize_saveToDestinationURL_completionHandler___block_invoke;
  v27[3] = &unk_1E7675DC8;
  v27[4] = self;
  v20 = uUIDString;
  v28 = v20;
  v29 = imageCopy;
  v32 = width;
  v33 = height;
  destinationSizeCopy = destinationSize;
  v30 = v16;
  v31 = handlerCopy;
  v21 = handlerCopy;
  v22 = v16;
  v23 = imageCopy;
  dispatch_async(artworkResizingAccessQueue, v27);

  v24 = v31;
  v25 = v20;

  return v20;
}

void __132__MPArtworkResizeUtility_resizeImage_scaledFittingSize_useExactFittingSizeAsDestinationSize_saveToDestinationURL_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) artworkResizingOperations];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (!v3)
  {
    v3 = [[MPArtworkResizeOperation alloc] initWithImage:*(a1 + 48) scaledFittingSize:*(a1 + 88) useExactFittingSizeAsDestinationSize:*(a1 + 56) destinationURL:*(a1 + 72), *(a1 + 80)];
    -[MPArtworkResizeOperation setQualityOfService:](v3, "setQualityOfService:", [*(a1 + 32) qualityOfService]);
    v4 = [*(a1 + 32) artworkResizingOperations];
    [v4 setObject:v3 forKey:*(a1 + 40)];

    v5 = [(MPArtworkResizeOperation *)v3 operationGroup];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __132__MPArtworkResizeUtility_resizeImage_scaledFittingSize_useExactFittingSizeAsDestinationSize_saveToDestinationURL_completionHandler___block_invoke_2;
    v16[3] = &unk_1E76800A0;
    v6 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v17 = v6;
    v18 = v5;
    v7 = v5;
    [(MPArtworkResizeOperation *)v3 setCompletionBlock:v16];
    dispatch_group_enter(v7);
    v8 = [*(a1 + 32) artworkResizingOperationQueue];
    [v8 addOperation:v3];
  }

  v9 = [(MPArtworkResizeOperation *)v3 operationGroup];
  v10 = [*(a1 + 32) artworkResizingAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __132__MPArtworkResizeUtility_resizeImage_scaledFittingSize_useExactFittingSizeAsDestinationSize_saveToDestinationURL_completionHandler___block_invoke_4;
  block[3] = &unk_1E76824C8;
  v11 = *(a1 + 64);
  v14 = v3;
  v15 = v11;
  v12 = v3;
  dispatch_group_notify(v9, v10, block);
}

void __132__MPArtworkResizeUtility_resizeImage_scaledFittingSize_useExactFittingSizeAsDestinationSize_saveToDestinationURL_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) artworkResizingAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __132__MPArtworkResizeUtility_resizeImage_scaledFittingSize_useExactFittingSizeAsDestinationSize_saveToDestinationURL_completionHandler___block_invoke_3;
  block[3] = &unk_1E76800A0;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_async(v2, block);
}

void __132__MPArtworkResizeUtility_resizeImage_scaledFittingSize_useExactFittingSizeAsDestinationSize_saveToDestinationURL_completionHandler___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v4 = [*(a1 + 32) resizedImage];
    v3 = [*(a1 + 32) error];
    (*(v1 + 16))(v1, v4, v3);
  }
}

void __132__MPArtworkResizeUtility_resizeImage_scaledFittingSize_useExactFittingSizeAsDestinationSize_saveToDestinationURL_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) artworkResizingOperations];
  [v2 removeObjectForKey:*(a1 + 40)];

  v3 = *(a1 + 48);

  dispatch_group_leave(v3);
}

- (MPArtworkResizeUtility)initWithQualityOfService:(int64_t)service
{
  v15.receiver = self;
  v15.super_class = MPArtworkResizeUtility;
  v4 = [(MPArtworkResizeUtility *)&v15 init];
  v5 = v4;
  if (v4)
  {
    [(MPArtworkResizeUtility *)v4 setQualityOfService:service];
    if (service <= 16)
    {
      if (service == -1)
      {
        v6 = QOS_CLASS_DEFAULT;
        goto LABEL_14;
      }

      if (service == 9)
      {
        v6 = QOS_CLASS_BACKGROUND;
        goto LABEL_14;
      }
    }

    else
    {
      switch(service)
      {
        case 17:
          v6 = QOS_CLASS_UTILITY;
          goto LABEL_14;
        case 33:
          v6 = QOS_CLASS_USER_INTERACTIVE;
          goto LABEL_14;
        case 25:
          v6 = QOS_CLASS_USER_INITIATED;
LABEL_14:
          v7 = dispatch_queue_attr_make_with_qos_class(0, v6, 0);
          v8 = dispatch_queue_create("com.apple.mediaplayer.artworkservice.resizing.queue", v7);
          [(MPArtworkResizeUtility *)v5 setArtworkResizingAccessQueue:v8];

          v9 = objc_alloc_init(MEMORY[0x1E696ADC8]);
          [(MPArtworkResizeUtility *)v5 setArtworkResizingOperationQueue:v9];

          artworkResizingOperationQueue = [(MPArtworkResizeUtility *)v5 artworkResizingOperationQueue];
          [artworkResizingOperationQueue setQualityOfService:service];

          artworkResizingOperationQueue2 = [(MPArtworkResizeUtility *)v5 artworkResizingOperationQueue];
          [artworkResizingOperationQueue2 setName:@"com.apple.mediaplayer.artworkservice.resizing.OperationQueue"];

          artworkResizingOperationQueue3 = [(MPArtworkResizeUtility *)v5 artworkResizingOperationQueue];
          [artworkResizingOperationQueue3 setMaxConcurrentOperationCount:15];

          strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
          [(MPArtworkResizeUtility *)v5 setArtworkResizingOperations:strongToStrongObjectsMapTable];

          return v5;
      }
    }

    v6 = QOS_CLASS_UNSPECIFIED;
    goto LABEL_14;
  }

  return v5;
}

@end