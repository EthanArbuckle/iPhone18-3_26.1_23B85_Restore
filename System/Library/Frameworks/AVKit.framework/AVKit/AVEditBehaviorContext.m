@interface AVEditBehaviorContext
- (AVEditBehavior)behavior;
- (AVEditBehaviorContext)initWithAVKitOwner:(id)a3;
- (AVPlayerViewController)playerViewController;
- (CGAffineTransform)rotationTransform;
- (double)editViewDuration:(id)a3;
- (double)editViewThumbnailAspectRatio:(id)a3;
- (id)_makeBarButtonItems;
- (id)videoCompostitionRotatingAsset:(id)a3;
- (void)_createAssetImageGenerator;
- (void)cancel:(id)a3;
- (void)contentViewWillTransitionToSize:(CGSize)a3 withCoordinator:(id)a4;
- (void)dealloc;
- (void)didAddBehavior:(id)a3;
- (void)didRemoveBehavior:(id)a3;
- (void)done:(id)a3;
- (void)editView:(id)a3 currentTimeDidChange:(double)a4;
- (void)editView:(id)a3 requestThumbnailImageForTimestamp:(id)a4;
- (void)editView:(id)a3 trimEndTimeDidChange:(double)a4;
- (void)editView:(id)a3 trimStartTimeDidChange:(double)a4;
- (void)editViewDidBeginScrubbing:(id)a3;
- (void)editViewDidEndScrubbing:(id)a3;
- (void)editViewDidFinishRequestingThumbnails:(id)a3;
- (void)editViewWillBeginRequestingThumbnails:(id)a3;
- (void)endEditing;
- (void)pause:(id)a3;
- (void)play:(id)a3;
- (void)rotateClockwise;
- (void)setRotationTransform:(CGAffineTransform *)a3;
- (void)startEditing;
@end

@implementation AVEditBehaviorContext

- (void)setRotationTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->c;
  *&self->_rotationTransform.tx = *&a3->tx;
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

- (void)editViewDidFinishRequestingThumbnails:(id)a3
{
  if (self)
  {
    v4 = [(AVEditBehaviorContext *)self imageGenerator];
    v5 = [v4 status];

    if (v5)
    {
      [(AVEditBehaviorContext *)self _createAssetImageGenerator];
    }

    v6 = [(AVEditBehaviorContext *)self imageGenerator];
    v7 = [(AVEditBehaviorContext *)self pendingImageRequests];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__AVEditBehaviorContext__generateThumbnails__block_invoke;
    v9[3] = &unk_1E72081F0;
    v9[4] = self;
    [v6 generateCGImagesAsynchronouslyForTimes:v7 completionHandler:v9];

    v8 = [(AVEditBehaviorContext *)self pendingImageRequests];
    [v8 removeAllObjects];
  }
}

- (void)_createAssetImageGenerator
{
  if (a1)
  {
    v18 = [a1 playerViewController];
    v4 = [v18 player];
    v5 = [v4 currentItem];

    v6 = MEMORY[0x1E6987E68];
    v7 = [v5 asset];
    v8 = [v6 assetImageGeneratorWithAsset:v7];
    [a1 setImageGenerator:v8];

    v9 = [a1 imageGenerator];
    [v9 setAppliesPreferredTrackTransform:1];
    v10 = [v18 contentView];
    v11 = [v10 traitCollection];
    [v11 displayScale];
    v13 = v12;
    v14 = 1.0;
    if (v12 >= 1.0)
    {
      v1 = [v18 contentView];
      v2 = [v1 traitCollection];
      [v2 displayScale];
      v14 = v15;
    }

    v16 = [a1 editView];
    [v16 intrinsicContentSize];
    [v9 setMaximumSize:{0.0, v14 * v17}];

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

- (void)editViewWillBeginRequestingThumbnails:(id)a3
{
  v3 = [(AVEditBehaviorContext *)self imageGenerator];
  [v3 cancelAllCGImageGeneration];
}

- (void)editViewDidEndScrubbing:(id)a3
{
  v4 = a3;
  if ([v4 isTrimming])
  {
    [v4 trimStartTime];
    AVTimeIntervalToCMTime(&time1, v5);
    v6 = [(AVEditBehaviorContext *)self playerController];
    v7 = [v6 player];
    v8 = [v7 currentItem];
    [v8 setReversePlaybackEndTime:&time1];

    [v4 trimEndTime];
    AVTimeIntervalToCMTime(&v44, v9);
    v10 = [(AVEditBehaviorContext *)self playerController];
    v11 = [v10 player];
    v12 = [v11 currentItem];
    time1 = v44;
    [v12 setForwardPlaybackEndTime:&time1];

    v13 = [(AVEditBehaviorContext *)self playerController];
    v14 = [v13 player];
    v15 = [v14 currentItem];
    v16 = v15;
    if (v15)
    {
      [v15 forwardPlaybackEndTime];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    v17 = [(AVEditBehaviorContext *)self playerController];
    v18 = [v17 player];
    v19 = [v18 currentItem];
    v20 = v19;
    if (v19)
    {
      [v19 currentTime];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    v21 = CMTimeCompare(&time1, &time2);

    if (v21 < 0)
    {
      v26 = [(AVEditBehaviorContext *)self playerController];
      v27 = [v26 player];
      v28 = [v27 currentItem];
      v29 = [(AVEditBehaviorContext *)self playerController];
      v30 = [v29 player];
      v31 = [v30 currentItem];
      v32 = v31;
      if (v31)
      {
        [v31 forwardPlaybackEndTime];
LABEL_21:
        time2 = **&MEMORY[0x1E6960CC0];
        v42 = time2;
        [v28 seekToTime:&time1 toleranceBefore:&time2 toleranceAfter:&v42 completionHandler:0];

        goto LABEL_22;
      }

LABEL_20:
      memset(&time1, 0, sizeof(time1));
      goto LABEL_21;
    }

    v22 = [(AVEditBehaviorContext *)self playerController];
    v23 = [v22 player];
    v24 = [v23 currentItem];
    v25 = v24;
    if (v24)
    {
      [v24 reversePlaybackEndTime];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    v33 = [(AVEditBehaviorContext *)self playerController];
    v34 = [v33 player];
    v35 = [v34 currentItem];
    v36 = v35;
    if (v35)
    {
      [v35 currentTime];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    v37 = CMTimeCompare(&time1, &time2);

    if (v37 >= 1)
    {
      v26 = [(AVEditBehaviorContext *)self playerController];
      v27 = [v26 player];
      v28 = [v27 currentItem];
      v29 = [(AVEditBehaviorContext *)self playerController];
      v30 = [v29 player];
      v38 = [v30 currentItem];
      v32 = v38;
      if (v38)
      {
        [v38 reversePlaybackEndTime];
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

LABEL_22:
  v39 = [(AVEditBehaviorContext *)self playerViewController];
  v40 = [v39 playerController];
  [v40 endScrubbing:self];

  v41 = [(AVEditBehaviorContext *)self playerController];
  [v41 currentTime];
  [v4 setCurrentTime:?];
}

- (void)editViewDidBeginScrubbing:(id)a3
{
  v5 = [(AVEditBehaviorContext *)self playerViewController];
  v4 = [v5 playerController];
  [v4 beginScrubbing:self];
}

- (void)editView:(id)a3 trimEndTimeDidChange:(double)a4
{
  v6 = [(AVEditBehaviorContext *)self playerController];
  v7 = [v6 player];
  v8 = [v7 currentItem];
  v9 = v8;
  if (!v8)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    goto LABEL_5;
  }

  [v8 forwardPlaybackEndTime];

  if ((v15 & 0x100000000) != 0)
  {
    v6 = [(AVEditBehaviorContext *)self playerController];
    v7 = [v6 player];
    v9 = [v7 currentItem];
    v12 = *MEMORY[0x1E6960C70];
    v13 = *(MEMORY[0x1E6960C70] + 16);
    [v9 setForwardPlaybackEndTime:&v12];
LABEL_5:
  }

  v10 = [(AVEditBehaviorContext *)self playerViewController];
  v11 = [v10 playerController];
  [v11 seekToTime:a4];
}

- (void)editView:(id)a3 trimStartTimeDidChange:(double)a4
{
  v6 = [(AVEditBehaviorContext *)self playerController];
  v7 = [v6 player];
  v8 = [v7 currentItem];
  v9 = v8;
  if (!v8)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    goto LABEL_5;
  }

  [v8 reversePlaybackEndTime];

  if ((v15 & 0x100000000) != 0)
  {
    v6 = [(AVEditBehaviorContext *)self playerController];
    v7 = [v6 player];
    v9 = [v7 currentItem];
    v12 = *MEMORY[0x1E6960C70];
    v13 = *(MEMORY[0x1E6960C70] + 16);
    [v9 setReversePlaybackEndTime:&v12];
LABEL_5:
  }

  v10 = [(AVEditBehaviorContext *)self playerViewController];
  v11 = [v10 playerController];
  [v11 seekToTime:a4];
}

- (void)editView:(id)a3 currentTimeDidChange:(double)a4
{
  if ([a3 isScrubbing])
  {
    v7 = [(AVEditBehaviorContext *)self playerViewController];
    v6 = [v7 playerController];
    [v6 seekToTime:a4];
  }
}

- (void)editView:(id)a3 requestThumbnailImageForTimestamp:(id)a4
{
  v5 = MEMORY[0x1E696B098];
  v6 = a4;
  [v6 doubleValue];
  CMTimeMakeWithSeconds(&v11, v7, 90000);
  v8 = [v5 valueWithCMTime:&v11];
  v9 = [(AVEditBehaviorContext *)self pendingImageRequests];
  [v9 addObject:v8];

  v10 = [(AVEditBehaviorContext *)self requestedImageTimeToCMTimeMap];
  [v10 setObject:v6 forKeyedSubscript:v8];
}

- (double)editViewThumbnailAspectRatio:(id)a3
{
  v3 = [(AVEditBehaviorContext *)self playerController];
  v4 = [v3 player];
  v5 = [v4 currentItem];
  [v5 presentationSize];
  v7 = v6;
  v9 = v8;

  result = v7 / v9;
  if (v9 <= 0.0)
  {
    return 1.0;
  }

  return result;
}

- (double)editViewDuration:(id)a3
{
  v3 = [(AVEditBehaviorContext *)self playerController];
  [v3 contentDuration];
  v5 = v4;

  return v5;
}

- (void)contentViewWillTransitionToSize:(CGSize)a3 withCoordinator:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__AVEditBehaviorContext_contentViewWillTransitionToSize_withCoordinator___block_invoke;
  v4[3] = &unk_1E7208180;
  v4[4] = self;
  [a4 animateAlongsideTransition:v4 completion:&__block_literal_global_67];
}

void __73__AVEditBehaviorContext_contentViewWillTransitionToSize_withCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) editView];
  [v1 reloadData];
}

- (void)didRemoveBehavior:(id)a3
{
  v4 = [(AVEditBehaviorContext *)self playerViewController];
  v5 = [(AVEditBehaviorContext *)self zoomingBehavior];
  [v4 removeBehavior:v5];

  [(AVEditBehaviorContext *)self endEditing];

  [(AVEditBehaviorContext *)self setPlayerController:0];
}

- (void)didAddBehavior:(id)a3
{
  v4 = [(AVEditBehaviorContext *)self playerViewController];
  v5 = [(AVEditBehaviorContext *)self zoomingBehavior];
  [v4 addBehavior:v5];

  v6 = [(AVEditBehaviorContext *)self playerViewController];
  v7 = [v6 playerController];
  [(AVEditBehaviorContext *)self setPlayerController:v7];

  v9 = [(AVEditBehaviorContext *)self observationController];
  v8 = [v9 startObserving:self keyPath:@"playerController.player.currentItem" includeInitialValue:1 observationHandler:&__block_literal_global_64];
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

- (void)done:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
  v5 = [(AVEditBehaviorContext *)self doneButton];
  v6 = [v4 popoverPresentationController];
  [v6 setBarButtonItem:v5];

  v7 = [(AVEditBehaviorContext *)self behavior];
  v8 = [v7 delegate];
  v9 = [(AVEditBehaviorContext *)self behavior];
  v10 = [v8 editBehaviorAlertActionsForDoneButtonTap:v9];

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
  v19 = [(AVEditBehaviorContext *)self playerViewController];
  [v19 presentViewController:v4 animated:0 completion:0];
}

- (void)pause:(id)a3
{
  v5 = [(AVEditBehaviorContext *)self playerViewController];
  v4 = [v5 playerController];
  [v4 pause:self];
}

- (void)play:(id)a3
{
  v5 = [(AVEditBehaviorContext *)self playerViewController];
  v4 = [v5 playerController];
  [v4 play:self];
}

- (void)cancel:(id)a3
{
  v4 = [(AVEditBehaviorContext *)self playerViewController];
  v5 = [v4 player];
  v6 = [v5 currentItem];
  v15 = *MEMORY[0x1E6960C70];
  v14 = v15;
  v16 = *(MEMORY[0x1E6960C70] + 16);
  v7 = v16;
  [v6 setReversePlaybackEndTime:&v15];

  v8 = [(AVEditBehaviorContext *)self playerViewController];
  v9 = [v8 player];
  v10 = [v9 currentItem];
  v15 = v14;
  v16 = v7;
  [v10 setForwardPlaybackEndTime:&v15];

  [(AVEditBehaviorContext *)self endEditing];
  v11 = [(AVEditBehaviorContext *)self behavior];
  v12 = [v11 delegate];
  v13 = [(AVEditBehaviorContext *)self behavior];
  [v12 editBehaviorDidCancel:v13];
}

- (id)videoCompostitionRotatingAsset:(id)a3
{
  v39[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 avkit_tracksWithMediaType:*MEMORY[0x1E6987608]];
  v6 = [v5 firstObject];

  [v6 naturalSize];
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
    if (v6)
    {
      [v6 preferredTransform];
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
    v20 = [MEMORY[0x1E6988070] videoCompositionLayerInstruction];
    [v20 setTrackID:{objc_msgSend(v6, "trackID")}];
    t2 = v36;
    v30 = *MEMORY[0x1E6960CC0];
    *&t1.a = *MEMORY[0x1E6960CC0];
    v21 = *(MEMORY[0x1E6960CC0] + 16);
    t1.c = v21;
    [v20 setTransform:&t2 atTime:&t1];
    t2 = v36;
    [(AVEditBehaviorContext *)self setRotationTransform:&t2];
    v22 = [MEMORY[0x1E6988068] videoCompositionInstruction];
    if (v4)
    {
      [v4 duration];
    }

    else
    {
      memset(&t1, 0, 24);
    }

    *&v33.a = v30;
    v33.c = v21;
    CMTimeRangeMake(&t2, &v33, &t1);
    [v22 setTimeRange:&t2];
    v39[0] = v20;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
    [v22 setLayerInstructions:v23];

    v15 = [MEMORY[0x1E6988060] videoCompositionWithPropertiesOfAsset:v4];
    v38 = v22;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
    [v15 setInstructions:v24];

    [v15 setRenderSize:{v32, v19}];
  }

  return v15;
}

- (void)rotateClockwise
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(AVEditBehaviorContext *)self playerController];
  v4 = [v3 player];
  v5 = [v4 currentItem];
  v6 = [v5 asset];

  if (v6)
  {
    [(AVEditBehaviorContext *)self setCurrentRotation:([(AVEditBehaviorContext *)self currentRotation]+ 1) & 3];
    v7 = [(AVEditBehaviorContext *)self playerController];
    v8 = [v7 player];
    v9 = [v8 currentItem];
    v10 = [v9 asset];
    v11 = [(AVEditBehaviorContext *)self videoCompostitionRotatingAsset:v10];

    if (v11)
    {
      v12 = [(AVEditBehaviorContext *)self playerController];
      v13 = [v12 player];
      v14 = [v13 currentItem];
      [v14 setVideoComposition:v11];
    }

    else
    {
      v12 = _AVLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315138;
        v16 = "[AVEditBehaviorContext rotateClockwise]";
        _os_log_impl(&dword_18B49C000, v12, OS_LOG_TYPE_DEFAULT, "%s Did not get a valid video composition.", &v15, 0xCu);
      }
    }
  }
}

- (void)endEditing
{
  [(AVEditBehaviorContext *)self setEditing:0];
  v3 = [(AVEditBehaviorContext *)self observationController];
  [v3 stopAllObservation];

  v4 = [(AVEditBehaviorContext *)self containerView];
  [v4 removeFromSuperview];

  [(AVEditBehaviorContext *)self setContainerView:0];
  [(AVEditBehaviorContext *)self setEditView:0];
  v5 = [(AVEditBehaviorContext *)self playerTimeObserver];

  if (v5)
  {
    v6 = [(AVEditBehaviorContext *)self playerController];
    v7 = [v6 player];
    v8 = [(AVEditBehaviorContext *)self playerTimeObserver];
    [v7 removeTimeObserver:v8];

    [(AVEditBehaviorContext *)self setPlayerTimeObserver:0];
  }
}

- (void)startEditing
{
  v23[3] = *MEMORY[0x1E69E9840];
  if (![(AVEditBehaviorContext *)self isEditing])
  {
    [(AVEditBehaviorContext *)self setEditing:1];
    v3 = [(AVEditBehaviorContext *)self playerViewController];
    [v3 loadViewIfNeeded];
    v4 = [v3 contentView];
    [v4 loadPlaybackControlsViewIfNeeded];

    v5 = [v3 contentView];
    [v5 interruptActiveInteractions];

    objc_initWeak(&location, self);
    v6 = [(AVEditBehaviorContext *)self playerController];
    v7 = [v6 player];
    CMTimeMake(&v20, 1, 30);
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __37__AVEditBehaviorContext_startEditing__block_invoke;
    v18 = &unk_1E7208138;
    objc_copyWeak(&v19, &location);
    v8 = [v7 addPeriodicTimeObserverForInterval:&v20 queue:0 usingBlock:&v15];
    [(AVEditBehaviorContext *)self setPlayerTimeObserver:v8, v15, v16, v17, v18];

    v9 = [(AVEditBehaviorContext *)self observationController];
    v23[0] = @"playerController.player.currentItem.duration";
    v23[1] = @"playerController.player.currentItem.presentationSize";
    v23[2] = @"playerController.status";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
    v11 = [v9 startObserving:self keyPaths:v10 includeInitialValue:1 observationHandler:&__block_literal_global_11769];

    v12 = [(AVEditBehaviorContext *)self observationController];
    v22[0] = @"playerController.player.timeControlStatus";
    v22[1] = @"playerController.scrubbing";
    v22[2] = @"playerController.seeking";
    v22[3] = @"editView.trimming";
    v22[4] = @"editView.scrubbing";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:5];
    v14 = [v12 startObserving:self keyPaths:v13 includeInitialValue:0 observationHandler:&__block_literal_global_51];

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
  v1 = a1;
  v34[5] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [a1 flexibleSpaceItem];

    if (!v2)
    {
      v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
      [v1 setFlexibleSpaceItem:v3];

      v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v1 action:sel_cancel_];
      [v1 setCancelButton:v4];

      v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:17 target:v1 action:sel_play_];
      [v1 setPlayButton:v5];

      v6 = [MEMORY[0x1E69DC888] systemWhiteColor];
      v7 = [v1 playButton];
      [v7 setTintColor:v6];

      v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:18 target:v1 action:sel_pause_];
      [v1 setPauseButton:v8];

      v9 = [MEMORY[0x1E69DC888] systemWhiteColor];
      v10 = [v1 pauseButton];
      [v10 setTintColor:v9];

      v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v1 action:sel_done_];
      [v1 setDoneButton:v11];

      v12 = [MEMORY[0x1E69DC888] systemYellowColor];
      v13 = [v1 doneButton];
      [v13 setTintColor:v12];
    }

    v14 = [v1 toolbar];
    v15 = [v14 items];
    if (v15)
    {
      v16 = v15;
      v17 = [v1 editView];
      if ([v17 isScrubbing])
      {
LABEL_10:

LABEL_11:
        v20 = [v1 toolbar];
        v1 = [v20 items];
LABEL_17:

        goto LABEL_18;
      }

      v18 = [v1 editView];
      if ([v18 isTrimming])
      {
LABEL_9:

        goto LABEL_10;
      }

      v19 = [v1 playerController];
      if ([v19 isSeeking])
      {

        goto LABEL_9;
      }

      v31 = [v1 playerController];
      v32 = [v31 isScrubbing];

      if (v32)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    v21 = [v1 playerController];
    v22 = [v21 timeControlStatus];

    if (v22)
    {
      v23 = [v1 editView];
      [v23 setPrefersThumbVisible:1];

      v20 = [v1 cancelButton];
      v33[0] = v20;
      v24 = [v1 flexibleSpaceItem];
      v33[1] = v24;
      v25 = [v1 pauseButton];
      v33[2] = v25;
      v26 = [v1 flexibleSpaceItem];
      v33[3] = v26;
      v27 = [v1 doneButton];
      v33[4] = v27;
      v28 = MEMORY[0x1E695DEC8];
      v29 = v33;
    }

    else
    {
      v20 = [v1 cancelButton];
      v34[0] = v20;
      v24 = [v1 flexibleSpaceItem];
      v34[1] = v24;
      v25 = [v1 playButton];
      v34[2] = v25;
      v26 = [v1 flexibleSpaceItem];
      v34[3] = v26;
      v27 = [v1 doneButton];
      v34[4] = v27;
      v28 = MEMORY[0x1E695DEC8];
      v29 = v34;
    }

    v1 = [v28 arrayWithObjects:v29 count:5];

    goto LABEL_17;
  }

LABEL_18:

  return v1;
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

- (AVEditBehaviorContext)initWithAVKitOwner:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = AVEditBehaviorContext;
  v5 = [(AVEditBehaviorContext *)&v19 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_playerViewController, v4);
    [v4 setRequiresImmediateAssetInspection:1];

    v8 = [[AVObservationController alloc] initWithOwner:v6];
    observationController = v6->_observationController;
    v6->_observationController = v8;

    v10 = [MEMORY[0x1E695DF70] array];
    pendingImageRequests = v6->_pendingImageRequests;
    v6->_pendingImageRequests = v10;

    v12 = [MEMORY[0x1E695DF90] dictionary];
    requestedImageTimeToCMTimeMap = v6->_requestedImageTimeToCMTimeMap;
    v6->_requestedImageTimeToCMTimeMap = v12;

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