@interface AVEditBehaviorContext
- (AVEditBehavior)behavior;
- (AVEditBehaviorContext)initWithAVKitOwner:(id)owner;
- (AVPlayerViewController)playerViewController;
- (CGAffineTransform)rotationTransform;
- (double)editViewDuration:(id)duration;
- (double)editViewThumbnailAspectRatio:(id)ratio;
- (id)_makeBarButtonItems;
- (id)videoCompostitionRotatingAsset:(id)asset;
- (void)_createAssetImageGenerator;
- (void)cancel:(id)cancel;
- (void)contentViewWillTransitionToSize:(CGSize)size withCoordinator:(id)coordinator;
- (void)dealloc;
- (void)didAddBehavior:(id)behavior;
- (void)didRemoveBehavior:(id)behavior;
- (void)done:(id)done;
- (void)editView:(id)view currentTimeDidChange:(double)change;
- (void)editView:(id)view requestThumbnailImageForTimestamp:(id)timestamp;
- (void)editView:(id)view trimEndTimeDidChange:(double)change;
- (void)editView:(id)view trimStartTimeDidChange:(double)change;
- (void)editViewDidBeginScrubbing:(id)scrubbing;
- (void)editViewDidEndScrubbing:(id)scrubbing;
- (void)editViewDidFinishRequestingThumbnails:(id)thumbnails;
- (void)editViewWillBeginRequestingThumbnails:(id)thumbnails;
- (void)endEditing;
- (void)pause:(id)pause;
- (void)play:(id)play;
- (void)rotateClockwise;
- (void)setRotationTransform:(CGAffineTransform *)transform;
- (void)startEditing;
@end

@implementation AVEditBehaviorContext

- (void)setRotationTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->c;
  *&self->_rotationTransform.tx = *&transform->tx;
  *&self->_rotationTransform.c = v4;
  *&self->_rotationTransform.a = v3;
}

- (CGAffineTransform)rotationTransform
{
  v3 = *&self[3].ty;
  *&retstr->a = *&self[3].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[4].b;
  return self;
}

- (AVEditBehavior)behavior
{
  WeakRetained = objc_loadWeakRetained(&self->_behavior);

  return WeakRetained;
}

- (AVPlayerViewController)playerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_playerViewController);

  return WeakRetained;
}

- (void)editViewDidFinishRequestingThumbnails:(id)thumbnails
{
  if (self)
  {
    imageGenerator = [(AVEditBehaviorContext *)self imageGenerator];
    status = [imageGenerator status];

    if (status)
    {
      [(AVEditBehaviorContext *)self _createAssetImageGenerator];
    }

    imageGenerator2 = [(AVEditBehaviorContext *)self imageGenerator];
    pendingImageRequests = [(AVEditBehaviorContext *)self pendingImageRequests];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__AVEditBehaviorContext__generateThumbnails__block_invoke;
    v9[3] = &unk_1E72081F0;
    v9[4] = self;
    [imageGenerator2 generateCGImagesAsynchronouslyForTimes:pendingImageRequests completionHandler:v9];

    pendingImageRequests2 = [(AVEditBehaviorContext *)self pendingImageRequests];
    [pendingImageRequests2 removeAllObjects];
  }
}

- (void)_createAssetImageGenerator
{
  if (self)
  {
    playerViewController = [self playerViewController];
    player = [playerViewController player];
    currentItem = [player currentItem];

    v6 = MEMORY[0x1E6987E68];
    asset = [currentItem asset];
    v8 = [v6 assetImageGeneratorWithAsset:asset];
    [self setImageGenerator:v8];

    imageGenerator = [self imageGenerator];
    [imageGenerator setAppliesPreferredTrackTransform:1];
    contentView = [playerViewController contentView];
    traitCollection = [contentView traitCollection];
    [traitCollection displayScale];
    v13 = v12;
    v14 = 1.0;
    if (v12 >= 1.0)
    {
      contentView2 = [playerViewController contentView];
      traitCollection2 = [contentView2 traitCollection];
      [traitCollection2 displayScale];
      v14 = v15;
    }

    editView = [self editView];
    [editView intrinsicContentSize];
    [imageGenerator setMaximumSize:{0.0, v14 * v17}];

    if (v13 >= 1.0)
    {
    }
  }
}

void __44__AVEditBehaviorContext__generateThumbnails__block_invoke(uint64_t a1, __int128 *a2, CGImageRef image, uint64_t a4, uint64_t a5)
{
  if (!a5)
  {
    v13 = v5;
    v14 = v6;
    CGImageRetain(image);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__AVEditBehaviorContext__generateThumbnails__block_invoke_2;
    block[3] = &unk_1E72081C8;
    v11 = *a2;
    v12 = *(a2 + 2);
    block[4] = *(a1 + 32);
    block[5] = image;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __44__AVEditBehaviorContext__generateThumbnails__block_invoke_2(uint64_t a1)
{
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  v2 = [MEMORY[0x1E696B098] valueWithCMTime:&v7];
  v3 = [*(a1 + 32) requestedImageTimeToCMTimeMap];
  v4 = [v3 objectForKeyedSubscript:v2];

  v5 = [*(a1 + 32) editView];
  [v5 setThumbnailImage:*(a1 + 40) forTimestamp:v4];

  v6 = [*(a1 + 32) requestedImageTimeToCMTimeMap];
  [v6 setObject:0 forKeyedSubscript:v2];

  CGImageRelease(*(a1 + 40));
}

- (void)editViewWillBeginRequestingThumbnails:(id)thumbnails
{
  imageGenerator = [(AVEditBehaviorContext *)self imageGenerator];
  [imageGenerator cancelAllCGImageGeneration];
}

- (void)editViewDidEndScrubbing:(id)scrubbing
{
  scrubbingCopy = scrubbing;
  if ([scrubbingCopy isTrimming])
  {
    [scrubbingCopy trimStartTime];
    AVTimeIntervalToCMTime(&time1, v5);
    playerController = [(AVEditBehaviorContext *)self playerController];
    player = [playerController player];
    currentItem = [player currentItem];
    [currentItem setReversePlaybackEndTime:&time1];

    [scrubbingCopy trimEndTime];
    AVTimeIntervalToCMTime(&v44, v9);
    playerController2 = [(AVEditBehaviorContext *)self playerController];
    player2 = [playerController2 player];
    currentItem2 = [player2 currentItem];
    time1 = v44;
    [currentItem2 setForwardPlaybackEndTime:&time1];

    playerController3 = [(AVEditBehaviorContext *)self playerController];
    player3 = [playerController3 player];
    currentItem3 = [player3 currentItem];
    v16 = currentItem3;
    if (currentItem3)
    {
      [currentItem3 forwardPlaybackEndTime];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    playerController4 = [(AVEditBehaviorContext *)self playerController];
    player4 = [playerController4 player];
    currentItem4 = [player4 currentItem];
    v20 = currentItem4;
    if (currentItem4)
    {
      [currentItem4 currentTime];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    v21 = CMTimeCompare(&time1, &time2);

    if (v21 < 0)
    {
      playerController5 = [(AVEditBehaviorContext *)self playerController];
      player5 = [playerController5 player];
      currentItem5 = [player5 currentItem];
      playerController6 = [(AVEditBehaviorContext *)self playerController];
      player6 = [playerController6 player];
      currentItem6 = [player6 currentItem];
      v32 = currentItem6;
      if (currentItem6)
      {
        [currentItem6 forwardPlaybackEndTime];
LABEL_21:
        time2 = **&MEMORY[0x1E6960CC0];
        v42 = time2;
        [currentItem5 seekToTime:&time1 toleranceBefore:&time2 toleranceAfter:&v42 completionHandler:0];

        goto LABEL_22;
      }

LABEL_20:
      memset(&time1, 0, sizeof(time1));
      goto LABEL_21;
    }

    playerController7 = [(AVEditBehaviorContext *)self playerController];
    player7 = [playerController7 player];
    currentItem7 = [player7 currentItem];
    v25 = currentItem7;
    if (currentItem7)
    {
      [currentItem7 reversePlaybackEndTime];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    playerController8 = [(AVEditBehaviorContext *)self playerController];
    player8 = [playerController8 player];
    currentItem8 = [player8 currentItem];
    v36 = currentItem8;
    if (currentItem8)
    {
      [currentItem8 currentTime];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    v37 = CMTimeCompare(&time1, &time2);

    if (v37 >= 1)
    {
      playerController5 = [(AVEditBehaviorContext *)self playerController];
      player5 = [playerController5 player];
      currentItem5 = [player5 currentItem];
      playerController6 = [(AVEditBehaviorContext *)self playerController];
      player6 = [playerController6 player];
      currentItem9 = [player6 currentItem];
      v32 = currentItem9;
      if (currentItem9)
      {
        [currentItem9 reversePlaybackEndTime];
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

LABEL_22:
  playerViewController = [(AVEditBehaviorContext *)self playerViewController];
  playerController9 = [playerViewController playerController];
  [playerController9 endScrubbing:self];

  playerController10 = [(AVEditBehaviorContext *)self playerController];
  [playerController10 currentTime];
  [scrubbingCopy setCurrentTime:?];
}

- (void)editViewDidBeginScrubbing:(id)scrubbing
{
  playerViewController = [(AVEditBehaviorContext *)self playerViewController];
  playerController = [playerViewController playerController];
  [playerController beginScrubbing:self];
}

- (void)editView:(id)view trimEndTimeDidChange:(double)change
{
  playerController = [(AVEditBehaviorContext *)self playerController];
  player = [playerController player];
  currentItem = [player currentItem];
  currentItem2 = currentItem;
  if (!currentItem)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    goto LABEL_5;
  }

  [currentItem forwardPlaybackEndTime];

  if ((v15 & 0x100000000) != 0)
  {
    playerController = [(AVEditBehaviorContext *)self playerController];
    player = [playerController player];
    currentItem2 = [player currentItem];
    v12 = *MEMORY[0x1E6960C70];
    v13 = *(MEMORY[0x1E6960C70] + 16);
    [currentItem2 setForwardPlaybackEndTime:&v12];
LABEL_5:
  }

  playerViewController = [(AVEditBehaviorContext *)self playerViewController];
  playerController2 = [playerViewController playerController];
  [playerController2 seekToTime:change];
}

- (void)editView:(id)view trimStartTimeDidChange:(double)change
{
  playerController = [(AVEditBehaviorContext *)self playerController];
  player = [playerController player];
  currentItem = [player currentItem];
  currentItem2 = currentItem;
  if (!currentItem)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    goto LABEL_5;
  }

  [currentItem reversePlaybackEndTime];

  if ((v15 & 0x100000000) != 0)
  {
    playerController = [(AVEditBehaviorContext *)self playerController];
    player = [playerController player];
    currentItem2 = [player currentItem];
    v12 = *MEMORY[0x1E6960C70];
    v13 = *(MEMORY[0x1E6960C70] + 16);
    [currentItem2 setReversePlaybackEndTime:&v12];
LABEL_5:
  }

  playerViewController = [(AVEditBehaviorContext *)self playerViewController];
  playerController2 = [playerViewController playerController];
  [playerController2 seekToTime:change];
}

- (void)editView:(id)view currentTimeDidChange:(double)change
{
  if ([view isScrubbing])
  {
    playerViewController = [(AVEditBehaviorContext *)self playerViewController];
    playerController = [playerViewController playerController];
    [playerController seekToTime:change];
  }
}

- (void)editView:(id)view requestThumbnailImageForTimestamp:(id)timestamp
{
  v5 = MEMORY[0x1E696B098];
  timestampCopy = timestamp;
  [timestampCopy doubleValue];
  CMTimeMakeWithSeconds(&v11, v7, 90000);
  v8 = [v5 valueWithCMTime:&v11];
  pendingImageRequests = [(AVEditBehaviorContext *)self pendingImageRequests];
  [pendingImageRequests addObject:v8];

  requestedImageTimeToCMTimeMap = [(AVEditBehaviorContext *)self requestedImageTimeToCMTimeMap];
  [requestedImageTimeToCMTimeMap setObject:timestampCopy forKeyedSubscript:v8];
}

- (double)editViewThumbnailAspectRatio:(id)ratio
{
  playerController = [(AVEditBehaviorContext *)self playerController];
  player = [playerController player];
  currentItem = [player currentItem];
  [currentItem presentationSize];
  v7 = v6;
  v9 = v8;

  result = v7 / v9;
  if (v9 <= 0.0)
  {
    return 1.0;
  }

  return result;
}

- (double)editViewDuration:(id)duration
{
  playerController = [(AVEditBehaviorContext *)self playerController];
  [playerController contentDuration];
  v5 = v4;

  return v5;
}

- (void)contentViewWillTransitionToSize:(CGSize)size withCoordinator:(id)coordinator
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__AVEditBehaviorContext_contentViewWillTransitionToSize_withCoordinator___block_invoke;
  v4[3] = &unk_1E7208180;
  v4[4] = self;
  [coordinator animateAlongsideTransition:v4 completion:&__block_literal_global_67];
}

void __73__AVEditBehaviorContext_contentViewWillTransitionToSize_withCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) editView];
  [v1 reloadData];
}

- (void)didRemoveBehavior:(id)behavior
{
  playerViewController = [(AVEditBehaviorContext *)self playerViewController];
  zoomingBehavior = [(AVEditBehaviorContext *)self zoomingBehavior];
  [playerViewController removeBehavior:zoomingBehavior];

  [(AVEditBehaviorContext *)self endEditing];

  [(AVEditBehaviorContext *)self setPlayerController:0];
}

- (void)didAddBehavior:(id)behavior
{
  playerViewController = [(AVEditBehaviorContext *)self playerViewController];
  zoomingBehavior = [(AVEditBehaviorContext *)self zoomingBehavior];
  [playerViewController addBehavior:zoomingBehavior];

  playerViewController2 = [(AVEditBehaviorContext *)self playerViewController];
  playerController = [playerViewController2 playerController];
  [(AVEditBehaviorContext *)self setPlayerController:playerController];

  observationController = [(AVEditBehaviorContext *)self observationController];
  v8 = [observationController startObserving:self keyPath:@"playerController.player.currentItem" includeInitialValue:1 observationHandler:&__block_literal_global_64];
}

void __40__AVEditBehaviorContext_didAddBehavior___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v4 = a3;
  v5 = [v9 playerViewController];

  if (v5 == v4)
  {
    v6 = [v9 playerController];
    v7 = [v6 player];
    v8 = [v7 currentItem];
    [v8 avkit_setCurrentEditBehaviorContext:v9];
  }
}

- (void)done:(id)done
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
  doneButton = [(AVEditBehaviorContext *)self doneButton];
  popoverPresentationController = [v4 popoverPresentationController];
  [popoverPresentationController setBarButtonItem:doneButton];

  behavior = [(AVEditBehaviorContext *)self behavior];
  delegate = [behavior delegate];
  behavior2 = [(AVEditBehaviorContext *)self behavior];
  v10 = [delegate editBehaviorAlertActionsForDoneButtonTap:behavior2];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [v4 addAction:{*(*(&v20 + 1) + 8 * v15++), v20}];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v16 = MEMORY[0x1E69DC648];
  v17 = AVLocalizedString(@"EDIT_BEHAVIOR_CONTEXT_CANCEL");
  v18 = [v16 actionWithTitle:v17 style:1 handler:0];

  [v18 setEnabled:1];
  [v4 addAction:v18];
  playerViewController = [(AVEditBehaviorContext *)self playerViewController];
  [playerViewController presentViewController:v4 animated:0 completion:0];
}

- (void)pause:(id)pause
{
  playerViewController = [(AVEditBehaviorContext *)self playerViewController];
  playerController = [playerViewController playerController];
  [playerController pause:self];
}

- (void)play:(id)play
{
  playerViewController = [(AVEditBehaviorContext *)self playerViewController];
  playerController = [playerViewController playerController];
  [playerController play:self];
}

- (void)cancel:(id)cancel
{
  playerViewController = [(AVEditBehaviorContext *)self playerViewController];
  player = [playerViewController player];
  currentItem = [player currentItem];
  v15 = *MEMORY[0x1E6960C70];
  v14 = v15;
  v16 = *(MEMORY[0x1E6960C70] + 16);
  v7 = v16;
  [currentItem setReversePlaybackEndTime:&v15];

  playerViewController2 = [(AVEditBehaviorContext *)self playerViewController];
  player2 = [playerViewController2 player];
  currentItem2 = [player2 currentItem];
  v15 = v14;
  v16 = v7;
  [currentItem2 setForwardPlaybackEndTime:&v15];

  [(AVEditBehaviorContext *)self endEditing];
  behavior = [(AVEditBehaviorContext *)self behavior];
  delegate = [behavior delegate];
  behavior2 = [(AVEditBehaviorContext *)self behavior];
  [delegate editBehaviorDidCancel:behavior2];
}

- (id)videoCompostitionRotatingAsset:(id)asset
{
  v39[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v5 = [assetCopy avkit_tracksWithMediaType:*MEMORY[0x1E6987608]];
  firstObject = [v5 firstObject];

  [firstObject naturalSize];
  v29 = *&v8;
  v31 = *&v7;
  v11 = ((v8 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v8 >= 0 || (v8 - 1) < 0xFFFFFFFFFFFFFLL;
  if ((v7 < 0 || ((v7 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (v7 - 1) > 0xFFFFFFFFFFFFELL || !v11)
  {
    v15 = 0;
  }

  else
  {
    v37 = 0;
    if (firstObject)
    {
      [firstObject preferredTransform];
    }

    else
    {
      memset(&v36, 0, sizeof(v36));
    }

    RotationAngleAndFlipsFromCGAffineTransform = FigGetRotationAngleAndFlipsFromCGAffineTransform();
    v17 = RotationAngleAndFlipsFromCGAffineTransform + 90 * [(AVEditBehaviorContext *)self currentRotation];
    v27 = *(MEMORY[0x1E695EFD0] + 16);
    *&v36.a = *MEMORY[0x1E695EFD0];
    v28 = *&v36.a;
    *&v36.c = v27;
    *&v36.tx = *(MEMORY[0x1E695EFD0] + 32);
    v26 = *&v36.tx;
    CGAffineTransformMakeTranslation(&t2, v31 * -0.5, v29 * -0.5);
    *&t1.a = v28;
    *&t1.c = v27;
    *&t1.tx = v26;
    CGAffineTransformConcat(&v36, &t1, &t2);
    CGAffineTransformMakeRotation(&t1, v17 / 180.0 * 3.14159265);
    v33 = v36;
    CGAffineTransformConcat(&t2, &v33, &t1);
    v36 = t2;
    if (HIBYTE(v37))
    {
      CGAffineTransformMakeScale(&t1, 1.0, -1.0);
      v33 = v36;
      CGAffineTransformConcat(&t2, &v33, &t1);
      v36 = t2;
    }

    if (v37)
    {
      CGAffineTransformMakeScale(&t1, -1.0, 1.0);
      v33 = v36;
      CGAffineTransformConcat(&t2, &v33, &t1);
      v36 = t2;
    }

    CGAffineTransformMakeRotation(&t2, v17 / 180.0 * 3.14159265);
    v18 = vrndaq_f64(vabsq_f64(vmlaq_n_f64(vmulq_n_f64(*&t2.c, v29), *&t2.a, v31)));
    v19 = v18.f64[1];
    v32 = v18.f64[0];
    CGAffineTransformMakeTranslation(&t1, 0.5 * v18.f64[0], vmuld_lane_f64(0.5, v18, 1));
    v33 = v36;
    CGAffineTransformConcat(&t2, &v33, &t1);
    v36 = t2;
    videoCompositionLayerInstruction = [MEMORY[0x1E6988070] videoCompositionLayerInstruction];
    [videoCompositionLayerInstruction setTrackID:{objc_msgSend(firstObject, "trackID")}];
    t2 = v36;
    v30 = *MEMORY[0x1E6960CC0];
    *&t1.a = *MEMORY[0x1E6960CC0];
    v21 = *(MEMORY[0x1E6960CC0] + 16);
    t1.c = v21;
    [videoCompositionLayerInstruction setTransform:&t2 atTime:&t1];
    t2 = v36;
    [(AVEditBehaviorContext *)self setRotationTransform:&t2];
    videoCompositionInstruction = [MEMORY[0x1E6988068] videoCompositionInstruction];
    if (assetCopy)
    {
      [assetCopy duration];
    }

    else
    {
      memset(&t1, 0, 24);
    }

    *&v33.a = v30;
    v33.c = v21;
    CMTimeRangeMake(&t2, &v33, &t1);
    [videoCompositionInstruction setTimeRange:&t2];
    v39[0] = videoCompositionLayerInstruction;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
    [videoCompositionInstruction setLayerInstructions:v23];

    v15 = [MEMORY[0x1E6988060] videoCompositionWithPropertiesOfAsset:assetCopy];
    v38 = videoCompositionInstruction;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
    [v15 setInstructions:v24];

    [v15 setRenderSize:{v32, v19}];
  }

  return v15;
}

- (void)rotateClockwise
{
  v17 = *MEMORY[0x1E69E9840];
  playerController = [(AVEditBehaviorContext *)self playerController];
  player = [playerController player];
  currentItem = [player currentItem];
  asset = [currentItem asset];

  if (asset)
  {
    [(AVEditBehaviorContext *)self setCurrentRotation:([(AVEditBehaviorContext *)self currentRotation]+ 1) & 3];
    playerController2 = [(AVEditBehaviorContext *)self playerController];
    player2 = [playerController2 player];
    currentItem2 = [player2 currentItem];
    asset2 = [currentItem2 asset];
    v11 = [(AVEditBehaviorContext *)self videoCompostitionRotatingAsset:asset2];

    if (v11)
    {
      playerController3 = [(AVEditBehaviorContext *)self playerController];
      player3 = [playerController3 player];
      currentItem3 = [player3 currentItem];
      [currentItem3 setVideoComposition:v11];
    }

    else
    {
      playerController3 = _AVLog();
      if (os_log_type_enabled(playerController3, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315138;
        v16 = "[AVEditBehaviorContext rotateClockwise]";
        _os_log_impl(&dword_18B49C000, playerController3, OS_LOG_TYPE_DEFAULT, "%s Did not get a valid video composition.", &v15, 0xCu);
      }
    }
  }
}

- (void)endEditing
{
  [(AVEditBehaviorContext *)self setEditing:0];
  observationController = [(AVEditBehaviorContext *)self observationController];
  [observationController stopAllObservation];

  containerView = [(AVEditBehaviorContext *)self containerView];
  [containerView removeFromSuperview];

  [(AVEditBehaviorContext *)self setContainerView:0];
  [(AVEditBehaviorContext *)self setEditView:0];
  playerTimeObserver = [(AVEditBehaviorContext *)self playerTimeObserver];

  if (playerTimeObserver)
  {
    playerController = [(AVEditBehaviorContext *)self playerController];
    player = [playerController player];
    playerTimeObserver2 = [(AVEditBehaviorContext *)self playerTimeObserver];
    [player removeTimeObserver:playerTimeObserver2];

    [(AVEditBehaviorContext *)self setPlayerTimeObserver:0];
  }
}

- (void)startEditing
{
  v23[3] = *MEMORY[0x1E69E9840];
  if (![(AVEditBehaviorContext *)self isEditing])
  {
    [(AVEditBehaviorContext *)self setEditing:1];
    playerViewController = [(AVEditBehaviorContext *)self playerViewController];
    [playerViewController loadViewIfNeeded];
    contentView = [playerViewController contentView];
    [contentView loadPlaybackControlsViewIfNeeded];

    contentView2 = [playerViewController contentView];
    [contentView2 interruptActiveInteractions];

    objc_initWeak(&location, self);
    playerController = [(AVEditBehaviorContext *)self playerController];
    player = [playerController player];
    CMTimeMake(&v20, 1, 30);
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __37__AVEditBehaviorContext_startEditing__block_invoke;
    v18 = &unk_1E7208138;
    objc_copyWeak(&v19, &location);
    v8 = [player addPeriodicTimeObserverForInterval:&v20 queue:0 usingBlock:&v15];
    [(AVEditBehaviorContext *)self setPlayerTimeObserver:v8, v15, v16, v17, v18];

    observationController = [(AVEditBehaviorContext *)self observationController];
    v23[0] = @"playerController.player.currentItem.duration";
    v23[1] = @"playerController.player.currentItem.presentationSize";
    v23[2] = @"playerController.status";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
    v11 = [observationController startObserving:self keyPaths:v10 includeInitialValue:1 observationHandler:&__block_literal_global_11769];

    observationController2 = [(AVEditBehaviorContext *)self observationController];
    v22[0] = @"playerController.player.timeControlStatus";
    v22[1] = @"playerController.scrubbing";
    v22[2] = @"playerController.seeking";
    v22[3] = @"editView.trimming";
    v22[4] = @"editView.scrubbing";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:5];
    v14 = [observationController2 startObserving:self keyPaths:v13 includeInitialValue:0 observationHandler:&__block_literal_global_51];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

void __37__AVEditBehaviorContext_startEditing__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained editView];
  v4 = [v3 isScrubbing];

  if ((v4 & 1) == 0)
  {
    v8 = objc_loadWeakRetained((a1 + 32));
    v5 = [v8 editView];
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 playerController];
    [v7 currentTime];
    [v5 setCurrentTime:?];
  }
}

void __37__AVEditBehaviorContext_startEditing__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = [(AVEditBehaviorContext *)v2 _makeBarButtonItems];
  v3 = [v2 toolbar];

  [v3 setItems:v4];
}

- (id)_makeBarButtonItems
{
  selfCopy = self;
  v34[5] = *MEMORY[0x1E69E9840];
  if (self)
  {
    flexibleSpaceItem = [self flexibleSpaceItem];

    if (!flexibleSpaceItem)
    {
      v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
      [selfCopy setFlexibleSpaceItem:v3];

      v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:selfCopy action:sel_cancel_];
      [selfCopy setCancelButton:v4];

      v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:17 target:selfCopy action:sel_play_];
      [selfCopy setPlayButton:v5];

      systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
      playButton = [selfCopy playButton];
      [playButton setTintColor:systemWhiteColor];

      v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:18 target:selfCopy action:sel_pause_];
      [selfCopy setPauseButton:v8];

      systemWhiteColor2 = [MEMORY[0x1E69DC888] systemWhiteColor];
      pauseButton = [selfCopy pauseButton];
      [pauseButton setTintColor:systemWhiteColor2];

      v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:selfCopy action:sel_done_];
      [selfCopy setDoneButton:v11];

      systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
      doneButton = [selfCopy doneButton];
      [doneButton setTintColor:systemYellowColor];
    }

    toolbar = [selfCopy toolbar];
    items = [toolbar items];
    if (items)
    {
      v16 = items;
      editView = [selfCopy editView];
      if ([editView isScrubbing])
      {
LABEL_10:

LABEL_11:
        toolbar2 = [selfCopy toolbar];
        selfCopy = [toolbar2 items];
LABEL_17:

        goto LABEL_18;
      }

      editView2 = [selfCopy editView];
      if ([editView2 isTrimming])
      {
LABEL_9:

        goto LABEL_10;
      }

      playerController = [selfCopy playerController];
      if ([playerController isSeeking])
      {

        goto LABEL_9;
      }

      playerController2 = [selfCopy playerController];
      isScrubbing = [playerController2 isScrubbing];

      if (isScrubbing)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    playerController3 = [selfCopy playerController];
    timeControlStatus = [playerController3 timeControlStatus];

    if (timeControlStatus)
    {
      editView3 = [selfCopy editView];
      [editView3 setPrefersThumbVisible:1];

      toolbar2 = [selfCopy cancelButton];
      v33[0] = toolbar2;
      flexibleSpaceItem2 = [selfCopy flexibleSpaceItem];
      v33[1] = flexibleSpaceItem2;
      pauseButton2 = [selfCopy pauseButton];
      v33[2] = pauseButton2;
      flexibleSpaceItem3 = [selfCopy flexibleSpaceItem];
      v33[3] = flexibleSpaceItem3;
      doneButton2 = [selfCopy doneButton];
      v33[4] = doneButton2;
      v28 = MEMORY[0x1E695DEC8];
      v29 = v33;
    }

    else
    {
      toolbar2 = [selfCopy cancelButton];
      v34[0] = toolbar2;
      flexibleSpaceItem2 = [selfCopy flexibleSpaceItem];
      v34[1] = flexibleSpaceItem2;
      pauseButton2 = [selfCopy playButton];
      v34[2] = pauseButton2;
      flexibleSpaceItem3 = [selfCopy flexibleSpaceItem];
      v34[3] = flexibleSpaceItem3;
      doneButton2 = [selfCopy doneButton];
      v34[4] = doneButton2;
      v28 = MEMORY[0x1E695DEC8];
      v29 = v34;
    }

    selfCopy = [v28 arrayWithObjects:v29 count:5];

    goto LABEL_17;
  }

LABEL_18:

  return selfCopy;
}

void __37__AVEditBehaviorContext_startEditing__block_invoke_2(uint64_t a1, void *a2)
{
  v59[3] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 playerController];
  v4 = [v3 player];
  v5 = [v4 currentItem];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_13;
  }

  [(AVEditView *)v5 duration];
  if ((v56 & 0x1D) != 1)
  {
    goto LABEL_13;
  }

  v7 = [v2 playerController];
  if ([v7 status] != 2)
  {
LABEL_12:

LABEL_13:
    goto LABEL_14;
  }

  v8 = [v2 playerController];
  v9 = [v8 player];
  v10 = [v9 currentItem];
  [v10 presentationSize];
  v12 = v11;
  v14 = v13;
  v15 = MEMORY[0x1E695F060];
  v16 = *MEMORY[0x1E695F060];

  if (v12 != v16 || v14 != *(v15 + 8))
  {
    v17 = [v2 editView];

    if (!v17)
    {
      v18 = [v2 playerViewController];
      v3 = [v18 view];

      v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
      [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v3 addSubview:v4];
      v48 = MEMORY[0x1E696ACD8];
      v54 = [v4 leftAnchor];
      v52 = [v3 leftAnchor];
      v50 = [v54 constraintEqualToAnchor:v52];
      v59[0] = v50;
      v19 = [v4 rightAnchor];
      v20 = [v3 rightAnchor];
      v21 = [v19 constraintEqualToAnchor:v20];
      v59[1] = v21;
      v22 = [v4 bottomAnchor];
      v23 = [v3 bottomAnchor];
      v24 = [v22 constraintEqualToAnchor:v23];
      v59[2] = v24;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:3];
      [v48 activateConstraints:v25];

      v6 = objc_alloc_init(AVEditView);
      [(AVEditView *)v6 setDataSource:v2];
      [(AVEditView *)v6 setDelegate:v2];
      v26 = [v2 playerController];
      [v26 currentTime];
      [(AVEditView *)v6 setCurrentTime:?];

      v27 = [v2 playerController];
      LODWORD(v25) = [v27 hasEnabledVideo];

      if (v25)
      {
        [(AVEditBehaviorContext *)v2 _createAssetImageGenerator];
      }

      v28 = objc_alloc_init(MEMORY[0x1E69DD180]);
      [v2 setToolbar:v28];

      v29 = [v2 toolbar];
      [v29 setBarStyle:1];

      v30 = [(AVEditBehaviorContext *)v2 _makeBarButtonItems];
      v31 = [v2 toolbar];
      [v31 setItems:v30];

      v32 = objc_alloc(MEMORY[0x1E69DCF90]);
      v58[0] = v6;
      v33 = [v2 toolbar];
      v58[1] = v33;
      v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
      v7 = [v32 initWithArrangedSubviews:v34];

      [v7 setAxis:1];
      [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
      v35 = +[AVKitGlobalSettings shared];
      LODWORD(v34) = [v35 thirdGenerationControlsEnabled];

      if (v34)
      {
        [v7 setSpacing:8.0];
      }

      [v4 addSubview:v7];
      v36 = [v4 safeAreaLayoutGuide];
      v45 = MEMORY[0x1E696ACD8];
      v55 = [v7 leftAnchor];
      v53 = [v36 leftAnchor];
      v51 = [v55 constraintEqualToAnchor:v53];
      v57[0] = v51;
      v49 = [v7 rightAnchor];
      v46 = [v36 rightAnchor];
      v44 = [v49 constraintEqualToAnchor:v46];
      v57[1] = v44;
      v43 = [v7 bottomAnchor];
      v47 = v36;
      v42 = [v36 bottomAnchor];
      v37 = [v43 constraintEqualToAnchor:v42];
      v57[2] = v37;
      v38 = [v7 topAnchor];
      v39 = [v36 topAnchor];
      v40 = [v38 constraintEqualToAnchor:v39];
      v57[3] = v40;
      v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:4];
      [v45 activateConstraints:v41];

      [v2 setContainerView:v4];
      [v2 setEditView:v6];

      goto LABEL_12;
    }
  }

LABEL_14:
}

- (void)dealloc
{
  [(AVEditBehaviorContext *)self endEditing];
  v3.receiver = self;
  v3.super_class = AVEditBehaviorContext;
  [(AVEditBehaviorContext *)&v3 dealloc];
}

- (AVEditBehaviorContext)initWithAVKitOwner:(id)owner
{
  ownerCopy = owner;
  v19.receiver = self;
  v19.super_class = AVEditBehaviorContext;
  v5 = [(AVEditBehaviorContext *)&v19 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_playerViewController, ownerCopy);
    [ownerCopy setRequiresImmediateAssetInspection:1];

    v8 = [[AVObservationController alloc] initWithOwner:v6];
    observationController = v6->_observationController;
    v6->_observationController = v8;

    array = [MEMORY[0x1E695DF70] array];
    pendingImageRequests = v6->_pendingImageRequests;
    v6->_pendingImageRequests = array;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    requestedImageTimeToCMTimeMap = v6->_requestedImageTimeToCMTimeMap;
    v6->_requestedImageTimeToCMTimeMap = dictionary;

    v14 = objc_alloc_init(AVZoomingBehavior);
    zoomingBehavior = v6->_zoomingBehavior;
    v6->_zoomingBehavior = v14;

    v6->_currentRotation = 0;
    v16 = MEMORY[0x1E695EFD0];
    v17 = *(MEMORY[0x1E695EFD0] + 16);
    *&v6->_rotationTransform.a = *MEMORY[0x1E695EFD0];
    *&v6->_rotationTransform.c = v17;
    *&v6->_rotationTransform.tx = *(v16 + 32);
  }

  return v6;
}

@end