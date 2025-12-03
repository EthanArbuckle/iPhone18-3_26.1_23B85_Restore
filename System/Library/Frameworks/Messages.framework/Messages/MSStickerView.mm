@interface MSStickerView
- (BOOL)_isInsideMessagesCamera;
- (BOOL)isAnimated;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MSStickerView)initWithCoder:(id)coder;
- (MSStickerView)initWithFrame:(CGRect)frame;
- (MSStickerView)initWithFrame:(CGRect)frame sticker:(MSSticker *)sticker;
- (_MSStickerDragPreviewContainerView)container;
- (id)_dragInteraction:(id)interaction sessionPropertiesForSession:(id)session;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (id)representationForRole:(id)role;
- (void)_buildEffectView;
- (void)_configureDragAndDrop;
- (void)_configureEffectView;
- (void)_configureStickerView;
- (void)_dragInteractionDidCancelLiftWithoutDragging:(id)dragging;
- (void)_enableEffectView;
- (void)_loadAnimatedStickerIfNecessary;
- (void)_loadSticker;
- (void)_logStickerUsage;
- (void)_prepareForReuse;
- (void)_registerRepresentationsInItemProvider:(id)provider;
- (void)_registerStandardRepresentationsInItemProvider:(id)provider;
- (void)_removeEffectView;
- (void)_resetPeel;
- (void)_sendStickerUsageAnalyticsForDragAndDrop;
- (void)_setImage:(id)image;
- (void)_stickerPreviewCachePreviewDidChange:(id)change;
- (void)_swapWithOutlineImage;
- (void)_updateStickerView;
- (void)addHEICImage:(id)image completion:(id)completion;
- (void)addPNGImage:(id)image completion:(id)completion;
- (void)animatedStickerCreationProgressChanged:(id)changed progress:(double)progress;
- (void)animationTimerFired:(double)fired;
- (void)clearCachedPreviewsForCurrentSticker;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator;
- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation;
- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin;
- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session;
- (void)handleLongPress:(id)press;
- (void)handleTap:(id)tap;
- (void)layoutSubviews;
- (void)pauseVisionKitEffect:(BOOL)effect;
- (void)prepareForSnapshotting;
- (void)setAnimating:(BOOL)animating;
- (void)setEffectView:(id)view;
- (void)setImage:(id)image;
- (void)setSticker:(MSSticker *)sticker;
- (void)stageStickerForce:(BOOL)force;
- (void)updateAnimationTimerObserving;
@end

@implementation MSStickerView

- (void)_configureStickerView
{
  if (!self->_imageView)
  {
    v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
    [(MSStickerView *)self bounds];
    v4 = [v3 initWithFrame:?];
    [(UIImageView *)v4 setContentMode:1];
    v5 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleTap_];
    tapRecognizer = self->_tapRecognizer;
    self->_tapRecognizer = v5;

    [(MSStickerView *)self addGestureRecognizer:self->_tapRecognizer];
    v7 = _configureStickerView_PXPhotosRoundProgressViewClass;
    if (!_configureStickerView_PXPhotosRoundProgressViewClass)
    {
      v7 = MEMORY[0x1CCAA9AD0](@"PXRoundProgressView", @"PhotosUICore");
      _configureStickerView_PXPhotosRoundProgressViewClass = v7;
    }

    if (!self->_roundProgressView)
    {
      v8 = [v7 alloc];
      v9 = [v8 initWithFrame:5 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      roundProgressView = self->_roundProgressView;
      self->_roundProgressView = v9;

      [(PXRoundProgressView *)self->_roundProgressView setHidden:1];
      [(MSStickerView *)self addSubview:self->_roundProgressView];
    }

    [(MSStickerView *)self _configureDragAndDrop];
    [(MSStickerView *)self addSubview:v4];
    imageView = self->_imageView;
    self->_imageView = v4;

    [(MSStickerView *)self setClipsToBounds:1];
  }

  if (!self->_outlineImageView)
  {
    v12 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    outlineImageView = self->_outlineImageView;
    self->_outlineImageView = v12;

    [(UIImageView *)self->_outlineImageView setContentMode:1];
    [(UIImageView *)self->_outlineImageView setHidden:1];
    [(MSStickerView *)self addSubview:self->_outlineImageView];
  }

  [(MSStickerView *)self setEffectView:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__stickerPreviewCachePreviewDidChange_ name:@"MSStickerPreviewCachePreviewDidChange" object:0];
}

- (MSStickerView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MSStickerView;
  v3 = [(MSStickerView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MSStickerView *)v3 _configureStickerView];
  }

  return v4;
}

- (MSStickerView)initWithFrame:(CGRect)frame sticker:(MSSticker *)sticker
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9 = sticker;
  height = [(MSStickerView *)self initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(MSStickerView *)height setSticker:v9];
  }

  return v11;
}

- (MSStickerView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = MSStickerView;
  v3 = [(MSStickerView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(MSStickerView *)v3 _configureStickerView];
  }

  return v4;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_1CADE6000, v0, v1, "Failed to load weak link class: '%@': %s:%i (%s)", v2, v3, v4, v5, 2u);
}

- (void)_prepareForReuse
{
  imageView = [(MSStickerView *)self imageView];
  [imageView setImage:0];

  [(MSStickerView *)self setImage:0];
  [(MSStickerView *)self setImageData:0];
  [(MSStickerView *)self setFrames:0];
  [(MSStickerView *)self setIsPeeled:0];
  [(MSStickerView *)self setAnimating:0];
  [(MSStickerView *)self setStickerError:0];
  [(MSStickerView *)self setStickerImage:0];
  roundProgressView = [(MSStickerView *)self roundProgressView];
  [roundProgressView setHidden:1];

  roundProgressView2 = [(MSStickerView *)self roundProgressView];
  [roundProgressView2 prepareForReuse];

  [(MSStickerView *)self setEffectView:0];
  self->_animationDuration = 0.0;

  [(MSStickerView *)self updateAnimationTimerObserving];
}

- (void)layoutSubviews
{
  v32.receiver = self;
  v32.super_class = MSStickerView;
  [(MSStickerView *)&v32 layoutSubviews];
  [(MSStickerView *)self bounds];
  v4 = v3;
  v30 = v5;
  v31 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  imageView = [(MSStickerView *)self imageView];
  [imageView setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v8, v10}];
  [imageView frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v33.origin.x = v4;
  v33.origin.y = v6;
  v33.size.width = v8;
  v33.size.height = v10;
  v20 = CGRectGetWidth(v33) * 0.5;
  v34.origin.x = v13;
  v34.origin.y = v15;
  v34.size.width = v17;
  v34.size.height = v19;
  v21 = v20 - CGRectGetWidth(v34) * 0.5;
  v35.origin.y = v30;
  v35.origin.x = v31;
  v35.size.width = v8;
  v35.size.height = v10;
  v22 = CGRectGetHeight(v35) * 0.5;
  v36.origin.x = v21;
  v36.origin.y = v15;
  v36.size.width = v17;
  v36.size.height = v19;
  v23 = v22 - CGRectGetHeight(v36) * 0.5;
  [imageView setFrame:{v21, v23, v17, v19}];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isStickersAppEnabled = [mEMORY[0x1E69A8070] isStickersAppEnabled];

  if (isStickersAppEnabled)
  {
    effectView = [(MSStickerView *)self effectView];
    [effectView setFrame:{v21, v23, v17, v19}];
  }

  if (![(MSStickerView *)self initialLayoutComplete])
  {
    [(MSStickerView *)self bounds];
    if (!CGRectEqualToRect(v37, *MEMORY[0x1E695F058]))
    {
      [(MSStickerView *)self setInitialLayoutComplete:1];
      sticker = [(MSStickerView *)self sticker];
      if (sticker)
      {
        v28 = sticker;
        image = [(MSStickerView *)self image];

        if (!image)
        {
          [(MSStickerView *)self _loadSticker];
        }
      }
    }
  }

  [(PXRoundProgressView *)self->_roundProgressView setFrame:v17 + -20.0, v19 + -20.0, 20.0, 20.0];
  [(MSStickerView *)self bringSubviewToFront:self->_roundProgressView];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  imageData = [(MSStickerView *)self imageData];
  [imageData pxSize];
  v7 = v6;
  v9 = v8;

  CKUIBehaviorClass_0 = getCKUIBehaviorClass_0();
  v11 = IMLogHandleForCategory();
  v12 = v11;
  if (CKUIBehaviorClass_0)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [MSStickerView sizeThatFits:?];
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [MSStickerView sizeThatFits:];
  }

  cKUIBehaviorClass_0 = [(objc_class *)CKUIBehaviorClass_0 sharedBehaviors];
  [cKUIBehaviorClass_0 stickerScreenScale];
  v15 = v14;

  v16 = v7 / v15;
  v17 = v9 / v15;
  v18 = v9 / v15 > height;
  if (v7 / v15 > width)
  {
    v18 = 1;
  }

  if (v18)
  {
    v17 = height;
    v16 = width;
  }

  result.height = v17;
  result.width = v16;
  return result;
}

- (void)setSticker:(MSSticker *)sticker
{
  v44[1] = *MEMORY[0x1E69E9840];
  v5 = sticker;
  if (self->_sticker != v5)
  {
    objc_storeStrong(&self->_sticker, sticker);
    stickerError = self->_stickerError;
    self->_stickerError = 0;

    if (v5)
    {
      representations = [(MSSticker *)self->_sticker representations];

      if (representations)
      {
        [(MSSticker *)self->_sticker _generateImageData];
      }

      _imageData = [(MSSticker *)self->_sticker _imageData];
      v9 = self->_sticker;
      if (_imageData)
      {
        _stickerError = [(MSSticker *)v9 _stickerError];
        v11 = self->_stickerError;
        self->_stickerError = _stickerError;

        if (!self->_stickerError)
        {
          v12 = _imageData;
LABEL_22:
          [(MSStickerView *)self setImageData:v12];
          if ([(MSStickerView *)self initialLayoutComplete])
          {
            [(MSStickerView *)self _loadSticker];
          }

          goto LABEL_25;
        }
      }

      else
      {
        imageFileURL = [(MSSticker *)v9 imageFileURL];
        v14 = imageFileURL;
        if (imageFileURL)
        {
          if ([imageFileURL __ms_conformsToUTI:*MEMORY[0x1E69637F8]])
          {
            v37 = 0;
            v38 = &v37;
            v39 = 0x2050000000;
            v15 = getCKImageDataClass_softClass_0;
            v40 = getCKImageDataClass_softClass_0;
            if (!getCKImageDataClass_softClass_0)
            {
              v36[0] = MEMORY[0x1E69E9820];
              v36[1] = 3221225472;
              v36[2] = __getCKImageDataClass_block_invoke_0;
              v36[3] = &unk_1E83A2BA8;
              v36[4] = &v37;
              __getCKImageDataClass_block_invoke_0(v36);
              v15 = v38[3];
            }

            v16 = v15;
            _Block_object_dispose(&v37, 8);
            v17 = IMLogHandleForCategory();
            v18 = v17;
            if (v15)
            {
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                [MSStickerView setSticker:v15];
              }
            }

            else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              [MSStickerView setSticker:];
            }

            v25 = [v15 alloc];
            imageFileURL2 = [(MSSticker *)self->_sticker imageFileURL];
            v12 = [v25 initWithURL:imageFileURL2];

            if (v12)
            {

              goto LABEL_22;
            }

            defaultManager = [MEMORY[0x1E696AC08] defaultManager];
            path = [v14 path];
            if ([defaultManager fileExistsAtPath:path])
            {
              v31 = 2;
            }

            else
            {
              v31 = 1;
            }

            v32 = MEMORY[0x1E696ABC0];
            v41 = @"MSStickersErrorStickerInfoKey";
            v42 = v14;
            v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
            v34 = [v32 errorWithDomain:@"com.apple.messages.stickers-error" code:v31 userInfo:v33];
            v35 = self->_stickerError;
            self->_stickerError = v34;
          }

          else
          {
            v21 = MEMORY[0x1E696ABC0];
            v43 = @"MSStickersErrorStickerInfoKey";
            v44[0] = v14;
            v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
            v23 = [v21 errorWithDomain:@"com.apple.messages.stickers-error" code:3 userInfo:v22];
            v24 = self->_stickerError;
            self->_stickerError = v23;
          }
        }

        else
        {
          v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.messages.stickers-error" code:1 userInfo:0];
          v20 = self->_stickerError;
          self->_stickerError = v19;
        }
      }

      goto LABEL_33;
    }

    [(MSStickerView *)self _prepareForReuse];
  }

LABEL_25:
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isStickersAppEnabled = [mEMORY[0x1E69A8070] isStickersAppEnabled];

  if (isStickersAppEnabled)
  {
    [(MSStickerView *)self _configureEffectView];
  }

LABEL_33:
}

- (void)_configureEffectView
{
  sticker = [(MSStickerView *)self sticker];
  [sticker stickerEffectType];

  if (!self->_sticker || (IMStickerEffectTypeShouldAvoidEffectView() & 1) != 0 || [(MSStickerView *)self isAnimated])
  {

    [(MSStickerView *)self _removeEffectView];
  }

  else
  {
    [(MSStickerView *)self _buildEffectView];

    [(MSStickerView *)self _enableEffectView];
  }
}

- (void)_removeEffectView
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isStickersAppEnabled = [mEMORY[0x1E69A8070] isStickersAppEnabled];

  if (isStickersAppEnabled)
  {
    if (self->_imageView)
    {
      [(MSStickerView *)self addSubview:?];
    }

    [(MSStickerView *)self setEffectView:0];
  }
}

- (void)_buildEffectView
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isStickersAppEnabled = [mEMORY[0x1E69A8070] isStickersAppEnabled];

  if (!isStickersAppEnabled)
  {
    return;
  }

  image = [(UIImageView *)self->_imageView image];

  if (!image)
  {
    [(MSStickerView *)self _loadSticker];
  }

  effectView = self->_effectView;
  if (effectView)
  {
    [(VKCStickerEffectView *)effectView removeFromSuperview];
  }

  else
  {
    v7 = MTLCreateSystemDefaultDevice();
    v8 = [objc_alloc(MEMORY[0x1E69DFA08]) initWithDevice:v7];
    [(MSStickerView *)self setEffectView:v8];
  }

  [(VKCStickerEffectView *)self->_effectView setContentMode:1];
  [(UIImageView *)self->_imageView frame];
  [(VKCStickerEffectView *)self->_effectView setFrame:?];
  v9 = MEMORY[0x1E69DFA00];
  sticker = [(MSStickerView *)self sticker];
  v11 = [v9 effectWithType:{objc_msgSend(sticker, "stickerEffectType")}];
  [(VKCStickerEffectView *)self->_effectView setEffect:v11];

  if (![(MSStickerView *)self isAnimated])
  {
    [(VKCStickerEffectView *)self->_effectView setImage:self->_stickerImage];
    v17 = MEMORY[0x1E69DFA00];
    sticker2 = [(MSStickerView *)self sticker];
    v18 = [v17 effectWithType:{objc_msgSend(sticker2, "stickerEffectType")}];
    [(VKCStickerEffectView *)self->_effectView setEffect:v18];

    goto LABEL_12;
  }

  sticker3 = [(MSStickerView *)self sticker];
  representations = [sticker3 representations];
  firstObject = [representations firstObject];
  type = [firstObject type];
  v16 = [type containsString:@"public.heic"];

  if (v16)
  {
    sticker2 = [(IMImageDataProtocol *)self->_imageData data];
    [(VKCStickerEffectView *)self->_effectView setVideoData:sticker2];
LABEL_12:

    return;
  }

  stickerImage = self->_stickerImage;
  v20 = self->_effectView;

  [(VKCStickerEffectView *)v20 setImage:stickerImage];
}

- (void)setEffectView:(id)view
{
  viewCopy = view;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isStickersAppEnabled = [mEMORY[0x1E69A8070] isStickersAppEnabled];

  if (isStickersAppEnabled)
  {
    [(VKCStickerEffectView *)self->_effectView setPaused:1];
    [(VKCStickerEffectView *)self->_effectView removeFromSuperview];
    objc_storeStrong(&self->_effectView, view);
    if (!self->_effectView && ([(MSStickerView *)self containsView:self->_imageView]& 1) == 0)
    {
      [(MSStickerView *)self addSubview:self->_imageView];
    }
  }
}

- (void)_enableEffectView
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isStickersAppEnabled = [mEMORY[0x1E69A8070] isStickersAppEnabled];

  if (isStickersAppEnabled)
  {
    if (self->_effectView && ([(MSStickerView *)self containsView:?]& 1) == 0)
    {
      [(MSStickerView *)self addSubview:self->_effectView];
    }

    if ([(MSStickerView *)self containsView:self->_imageView])
    {
      [(UIImageView *)self->_imageView removeFromSuperview];
    }

    effectView = self->_effectView;

    [(VKCStickerEffectView *)effectView setPaused:0];
  }
}

- (void)_stickerPreviewCachePreviewDidChange:(id)change
{
  sticker = [(MSStickerView *)self sticker];
  v5 = [MSSticker MSStickerPreviewCacheKeyForSticker:sticker];

  CKPreviewDispatchCacheClass = getCKPreviewDispatchCacheClass();
  v7 = IMLogHandleForCategory();
  v8 = v7;
  if (CKPreviewDispatchCacheClass)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [MSStickerView _stickerPreviewCachePreviewDidChange:?];
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MSStickerView _stickerPreviewCachePreviewDidChange:];
  }

  stickerPreviewCache = [(objc_class *)CKPreviewDispatchCacheClass stickerPreviewCache];
  v10 = [stickerPreviewCache cachedPreviewForKey:v5];

  if (v10 && v10 != self->_image)
  {
    [(MSStickerView *)self setImage:v10];
    frames = [(IMAnimatedImageProtocol *)v10 frames];
    [(MSStickerView *)self setFrames:frames];

    [(MSStickerView *)self _updateStickerView];
    [(MSStickerView *)self setNeedsLayout];
    [(MSStickerView *)self layoutIfNeeded];
  }
}

- (void)setImage:(id)image
{
  v19 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    objc_storeStrong(&self->_image, image);
    self->_animationDuration = 0.0;
    image = [(MSStickerView *)self image];
    durations = [image durations];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = durations;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v14 + 1) + 8 * v12) doubleValue];
          self->_animationDuration = v13 + self->_animationDuration;
          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

- (void)_loadSticker
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_1CADE6000, v0, v1, "Failed to load weak link class: '%@': %s:%i (%s)", v2, v3, v4, v5, 2u);
}

- (void)clearCachedPreviewsForCurrentSticker
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_1CADE6000, v0, v1, "Failed to load weak link class: '%@': %s:%i (%s)", v2, v3, v4, v5, 2u);
}

- (void)_loadAnimatedStickerIfNecessary
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_1CADE6000, v0, v1, "Failed to load weak link class: '%@': %s:%i (%s)", v2, v3, v4, v5, 2u);
}

id __48__MSStickerView__loadAnimatedStickerIfNecessary__block_invoke(uint64_t a1)
{
  CKAnimatedImageClass = getCKAnimatedImageClass();
  v3 = IMLogHandleForCategory();
  v4 = v3;
  if (CKAnimatedImageClass)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __48__MSStickerView__loadAnimatedStickerIfNecessary__block_invoke_cold_1(CKAnimatedImageClass);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __48__MSStickerView__loadAnimatedStickerIfNecessary__block_invoke_cold_2();
  }

  v5 = CKAnimatedImageClass;
  v6 = *(a1 + 32);
  v20 = 0;
  v7 = [(objc_class *)v5 animatedImageFromOptimizedBitmapAtFileURL:v6 error:&v20];
  v8 = v20;
  if (v7)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v9 = v7;
  }

  else
  {
    v10 = [MEMORY[0x1E695DF70] array];
    if ([*(a1 + 40) count])
    {
      v11 = 0;
      do
      {
        v12 = [*(a1 + 40) thumbnailAtIndex:v11 fillToSize:0x7FFFFFFFLL maxCount:{1.79769313e308, 1.79769313e308}];
        if (v12)
        {
          [v10 addObject:v12];
        }

        ++v11;
      }

      while (v11 < [*(a1 + 40) count]);
    }

    v13 = [*(a1 + 40) durationsWithMaxCount:0x7FFFFFFFLL];
    v14 = [*(a1 + 48) roundProgressView];

    if (v14)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __48__MSStickerView__loadAnimatedStickerIfNecessary__block_invoke_2;
      v19[3] = &unk_1E83A2C20;
      v19[4] = *(a1 + 48);
      dispatch_async(MEMORY[0x1E69E96A0], v19);
    }

    v15 = getCKAnimatedImageClass();
    v16 = IMLogHandleForCategory();
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        __48__MSStickerView__loadAnimatedStickerIfNecessary__block_invoke_cold_3(v15);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __48__MSStickerView__loadAnimatedStickerIfNecessary__block_invoke_cold_4();
    }

    v9 = [[v15 alloc] initWithImages:v10 durations:v13];
  }

  return v9;
}

void __48__MSStickerView__loadAnimatedStickerIfNecessary__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) roundProgressView];
  LODWORD(v3) = 1.0;
  [v2 setProgress:v3];

  v4 = [*(a1 + 32) roundProgressView];
  [v4 setHidden:1];
}

void __48__MSStickerView__loadAnimatedStickerIfNecessary__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedPreviewForKey:*(a1 + 40)];
  if (v2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__MSStickerView__loadAnimatedStickerIfNecessary__block_invoke_4;
    block[3] = &unk_1E83A2C20;
    block[4] = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
    {
      v3 = *(a1 + 32);
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __48__MSStickerView__loadAnimatedStickerIfNecessary__block_invoke_5;
      v4[3] = &unk_1E83A2CE8;
      v5 = v2;
      v6 = *(a1 + 56);
      [v3 enqueueSaveBlock:v4 withPriority:0];
    }
  }
}

void __48__MSStickerView__loadAnimatedStickerIfNecessary__block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MSStickerPreviewCachePreviewDidChange" object:*(*(a1 + 32) + 416)];
}

uint64_t __48__MSStickerView__loadAnimatedStickerIfNecessary__block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4 = 0;
  return [v2 writeAsOptimizedBitmapToFileURL:v1 error:&v4];
}

- (void)_updateStickerView
{
  frames = [(MSStickerView *)self frames];
  firstObject = [frames firstObject];
  stickerImage = self->_stickerImage;
  self->_stickerImage = firstObject;

  [(MSStickerView *)self _setImage:self->_stickerImage];

  [(MSStickerView *)self updateAnimationTimerObserving];
}

- (void)_setImage:(id)image
{
  imageCopy = image;
  v4 = self->_imageView;
  image = [(UIImageView *)v4 image];

  if (image != imageCopy)
  {
    [(MSStickerView *)self setStickerImage:imageCopy];
    [(UIImageView *)v4 setImage:imageCopy];
  }
}

- (void)_swapWithOutlineImage
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_1CADE6000, v0, v1, "Failed to load weak link class: '%@': %s:%i (%s)", v2, v3, v4, v5, 2u);
}

- (void)_resetPeel
{
  outlineImageView = [(MSStickerView *)self outlineImageView];
  [outlineImageView setHidden:1];

  imageView = [(MSStickerView *)self imageView];
  [(MSStickerView *)self addSubview:imageView];

  stickerImage = [(MSStickerView *)self stickerImage];
  imageView2 = [(MSStickerView *)self imageView];
  [imageView2 setImage:stickerImage];

  [(MSStickerView *)self setIsPeeled:0];
  [(MSStickerView *)self setAnimating:1];

  [(MSStickerView *)self _configureEffectView];
}

- (void)setAnimating:(BOOL)animating
{
  animatingCopy = animating;
  if ([(MSStickerView *)self isAnimated]&& ![(MSStickerView *)self isPeeled]&& self->_animating != animatingCopy)
  {
    self->_animating = animatingCopy;
    stickerImage = [(MSStickerView *)self stickerImage];
    [(MSStickerView *)self _setImage:stickerImage];

    [(MSStickerView *)self updateAnimationTimerObserving];
  }
}

- (BOOL)isAnimated
{
  imageData = [(MSStickerView *)self imageData];
  v3 = [imageData count] > 1;

  return v3;
}

- (void)updateAnimationTimerObserving
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_1CADE6000, v0, v1, "Failed to load weak link class: '%@': %s:%i (%s)", v2, v3, v4, v5, 2u);
}

- (void)prepareForSnapshotting
{
  if ([(MSStickerView *)self isAnimated])
  {
    [(MSStickerView *)self setAnimating:0];
    frames = [(MSStickerView *)self frames];
    firstObject = [frames firstObject];
    [(MSStickerView *)self _setImage:firstObject];
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = MSStickerView;
  [(MSStickerView *)&v3 didMoveToWindow];
  [(MSStickerView *)self updateAnimationTimerObserving];
}

- (void)pauseVisionKitEffect:(BOOL)effect
{
  effectCopy = effect;
  effectView = [(MSStickerView *)self effectView];
  [effectView setPaused:effectCopy];
}

- (void)_sendStickerUsageAnalyticsForDragAndDrop
{
  v3 = [MSStickerUsageEvent alloc];
  sticker = [(MSStickerView *)self sticker];
  v5 = [(MSStickerUsageEvent *)v3 initWithSticker:sticker];

  [(MSStickerUsageEvent *)v5 setUsageType:1];
  [(MSStickerUsageEvent *)v5 send];
}

- (void)_logStickerUsage
{
  if (getSTKStickerUsageManagerClass())
  {
    getSTKStickerUsageManagerClass();
    if (objc_opt_respondsToSelector())
    {
      sharedManager = [getSTKStickerUsageManagerClass() sharedManager];
      stickerIdentifier = [(MSSticker *)self->_sticker stickerIdentifier];
      uUIDString = [stickerIdentifier UUIDString];
      v5 = +[_MSStickerSendManager sharedInstance];
      hostBundleID = [v5 hostBundleID];
      [sharedManager logStickerWithStickerIdentifier:uUIDString bundleIdentifier:hostBundleID];
    }
  }
}

- (void)_configureDragAndDrop
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isClingEnabled = [mEMORY[0x1E69A8070] isClingEnabled];

  if (isClingEnabled && ![(MSStickerView *)self _isInsideMessagesCamera])
  {
    v8 = [objc_alloc(MEMORY[0x1E69DC988]) initWithDelegate:self];
    dragInteraction = self->_dragInteraction;
    self->_dragInteraction = v8;

    v10 = self->_dragInteraction;

    [(MSStickerView *)self addInteraction:v10];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel_handleLongPress_];
    longPressRecognizer = self->_longPressRecognizer;
    self->_longPressRecognizer = v5;

    [(MSStickerView *)self addGestureRecognizer:self->_longPressRecognizer];
    [(UILongPressGestureRecognizer *)self->_longPressRecognizer setDelegate:self];
    v7 = self->_longPressRecognizer;

    [(UILongPressGestureRecognizer *)v7 setMinimumPressDuration:0.15];
  }
}

- (BOOL)_isInsideMessagesCamera
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = +[_MSMessageAppContext activeExtensionContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    inputItems = [v2 inputItems];
    v4 = [inputItems countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(inputItems);
          }

          userInfo = [*(*(&v13 + 1) + 8 * i) userInfo];
          v9 = [userInfo objectForKeyedSubscript:@"context-is-messages-camera"];
          v10 = [v9 isEqual:&unk_1F4AC7090];

          if (v10)
          {
            v11 = 1;
            goto LABEL_13;
          }
        }

        v5 = [inputItems countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_13:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)animationTimerFired:(double)fired
{
  frames = [(MSStickerView *)self frames];
  if ([frames count] >= 2)
  {
    image = [(MSStickerView *)self image];
    [(MSStickerView *)self animationOffset];
    fired = [image frameForAnimationTime:v6 + fired];

    [(MSStickerView *)self _setImage:fired];
  }
}

- (void)handleTap:(id)tap
{
  if ([tap state] == 3)
  {

    [(MSStickerView *)self stageStickerForce:0];
  }
}

- (void)stageStickerForce:(BOOL)force
{
  forceCopy = force;
  [(MSStickerView *)self frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  window = [(MSStickerView *)self window];
  coordinateSpace = [window coordinateSpace];
  [(MSStickerView *)self convertRect:coordinateSpace toCoordinateSpace:v6, v8, v10, v12];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  imageFileURL = [(MSSticker *)self->_sticker imageFileURL];

  if (imageFileURL)
  {
    [(MSSticker *)self->_sticker _convertImageFileURLIfNeeded];
  }

  _stickerSendManager = [(MSStickerView *)self _stickerSendManager];
  [_stickerSendManager insertSticker:self->_sticker forceStage:forceCopy frameInRemoteView:&__block_literal_global_7 completionHandler:{v16, v18, v20, v22}];

  [(MSStickerView *)self _logStickerUsage];
}

void __35__MSStickerView_stageStickerForce___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_StickerError.isa, a2);
  }
}

- (void)handleLongPress:(id)press
{
  pressCopy = press;
  if ([pressCopy state] == 1)
  {
    [(MSStickerView *)self _swapWithOutlineImage];
    [(MSStickerView *)self setIsPeeled:1];
    imageView = [(MSStickerView *)self imageView];
    [imageView frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    window = [(MSStickerView *)self window];
    [(MSStickerView *)self convertRect:window toView:v7, v9, v11, v13];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = objc_autoreleasePoolPush();
    _stickerSendManager = [(MSStickerView *)self _stickerSendManager];
    sticker = self->_sticker;
    _synchronizedDrawingFence = [MEMORY[0x1E69DD2E8] _synchronizedDrawingFence];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __33__MSStickerView_handleLongPress___block_invoke;
    v27[3] = &unk_1E83A2FB8;
    v27[4] = self;
    [_stickerSendManager startDragSticker:sticker frameInRemoteView:_synchronizedDrawingFence fence:v27 completionHandler:{v16, v18, v20, v22}];

    objc_autoreleasePoolPop(v23);
  }
}

void __33__MSStickerView_handleLongPress___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__MSStickerView_handleLongPress___block_invoke_2;
  v6[3] = &unk_1E83A2CE8;
  v6[4] = *(a1 + 32);
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __33__MSStickerView_handleLongPress___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _resetPeel];
  if (*(a1 + 40))
  {
    NSLog(&cfstr_StickerError.isa, *(a1 + 40));
  }
}

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  v6 = objc_alloc_init(MEMORY[0x1E69DC9A0]);
  v7 = objc_alloc_init(MEMORY[0x1E69DC728]);
  [v6 setShadowPath:v7];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v6 setBackgroundColor:clearColor];

  v9 = +[_MSStickerDragPreviewContainerView shadowPropertiesForDrag];
  if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 _setShadowProperties:v9];
  }

  superview = [(MSStickerView *)self superview];
  v11 = self->_effectView;
  superview2 = [(VKCStickerEffectView *)v11 superview];
  imageView = v11;
  if (!superview2)
  {
    imageView = self->_imageView;
  }

  v14 = imageView;

  dragPreviewLiftContainerProvider = [(MSStickerView *)self dragPreviewLiftContainerProvider];

  if (dragPreviewLiftContainerProvider)
  {
    dragPreviewLiftContainerProvider2 = [(MSStickerView *)self dragPreviewLiftContainerProvider];
    v17 = dragPreviewLiftContainerProvider2[2]();

    if (v17)
    {
      v18 = v17;

      superview = v18;
    }
  }

  superview3 = [(MSStickerView *)self superview];
  [(MSStickerView *)self center];
  [superview3 convertPoint:superview toView:?];
  v21 = v20;
  v23 = v22;

  v24 = objc_alloc(MEMORY[0x1E69DC9A8]);
  +[_MSStickerDragPreviewContainerView targetPreviewTransform];
  v25 = [v24 initWithContainer:superview center:v41 transform:{v21, v23}];
  v26 = [objc_alloc(MEMORY[0x1E69DD068]) initWithView:v14 parameters:v6 target:v25];

  v27 = [[_MSStickerDragPreviewContainerView alloc] initWithIsDropAnimation:0];
  [(MSStickerView *)self setContainer:v27];
  stickerImage = [(MSStickerView *)self stickerImage];
  [(_MSStickerDragPreviewContainerView *)v27 setImage:stickerImage];

  [v26 _setPreviewContainer:v27];
  frames = [(MSStickerView *)self frames];
  if ([frames count] <= 1)
  {

    v37 = 0;
  }

  else
  {
    v40 = v11;
    imageView = [(MSStickerView *)self imageView];
    image = [imageView image];

    if (image)
    {
      frames2 = [(MSStickerView *)self frames];
      imageView2 = [(MSStickerView *)self imageView];
      image2 = [imageView2 image];
      v39 = superview;
      v35 = v9;
      v36 = [frames2 indexOfObject:image2];

      if (v36 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v37 = 0;
      }

      else
      {
        v37 = v36;
      }

      v9 = v35;
      superview = v39;
    }

    else
    {
      v37 = 0;
    }

    v11 = v40;
  }

  [(MSStickerView *)self setInitialFrameIndexForCurrentDrag:v37, v39];

  return v26;
}

- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default
{
  defaultCopy = default;
  superview = [(MSStickerView *)self superview];
  superview2 = [(MSStickerView *)self superview];
  [(MSStickerView *)self center];
  [superview2 convertPoint:superview toView:?];
  v10 = v9;
  v12 = v11;

  v13 = [objc_alloc(MEMORY[0x1E69DC9A8]) initWithContainer:superview center:{v10, v12}];
  v14 = [defaultCopy retargetedPreviewWithTarget:v13];

  return v14;
}

- (void)_dragInteractionDidCancelLiftWithoutDragging:(id)dragging
{
  container = [(MSStickerView *)self container];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__MSStickerView__dragInteractionDidCancelLiftWithoutDragging___block_invoke;
  v5[3] = &unk_1E83A2C20;
  v5[4] = self;
  [container _animateLiftCancellationAlongsideAnimator:0 completion:v5];
}

- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator
{
  animatorCopy = animator;
  container = [(MSStickerView *)self container];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__MSStickerView_dragInteraction_item_willAnimateCancelWithAnimator___block_invoke;
  v8[3] = &unk_1E83A2C20;
  v8[4] = self;
  [container _animateLiftCancellationAlongsideAnimator:animatorCopy completion:v8];
}

- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__MSStickerView_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke;
  v5[3] = &unk_1E83A2FE0;
  v5[4] = self;
  [animator addCompletion:v5];
}

uint64_t __69__MSStickerView_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2 != 1)
  {
    v3 = result;
    [*(result + 32) _swapWithOutlineImage];
    v4 = *(v3 + 32);

    return [v4 setIsPeeled:1];
  }

  return result;
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = ms_defaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1CADE6000, v5, OS_LOG_TYPE_DEFAULT, "<MSStickerView: %p> dragInteraction:itemsForBeginningSession:", buf, 0xCu);
  }

  v6 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  effectView = [(MSStickerView *)self effectView];
  [effectView bounds];
  v9 = v8;
  v11 = v10;
  v12 = *MEMORY[0x1E695F060];
  v13 = *(MEMORY[0x1E695F060] + 8);

  if (v9 != v12 || v11 != v13)
  {
    effectView2 = [(MSStickerView *)self effectView];
    effectView3 = [(MSStickerView *)self effectView];
    [effectView3 center];
    [effectView2 convertPoint:0 toView:?];
    v18 = v17;
    v20 = v19;

    effectView4 = [(MSStickerView *)self effectView];
LABEL_13:
    v32 = effectView4;
    [effectView4 bounds];
    v34 = v33;
    v36 = v35;
    v37 = v18 - v33 * 0.5;
    v38 = v20 - v35 * 0.5;

    goto LABEL_15;
  }

  imageView = [(MSStickerView *)self imageView];
  [imageView bounds];
  v24 = v23;
  v26 = v25;

  if (v24 != v12 || v26 != v13)
  {
    effectView5 = [(MSStickerView *)self effectView];
    effectView6 = [(MSStickerView *)self effectView];
    [effectView6 center];
    [effectView5 convertPoint:0 toView:?];
    v18 = v30;
    v20 = v31;

    effectView4 = [(MSStickerView *)self imageView];
    goto LABEL_13;
  }

  [(MSStickerView *)self frame];
  v37 = v39;
  v38 = v40;
  v34 = v41;
  v36 = v42;
LABEL_15:
  sticker = [(MSStickerView *)self sticker];
  v44 = objc_opt_class();
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __58__MSStickerView_dragInteraction_itemsForBeginningSession___block_invoke;
  v50[3] = &unk_1E83A3008;
  v50[4] = self;
  v51 = sticker;
  v52 = v37;
  v53 = v38;
  v54 = v34;
  v55 = v36;
  v45 = sticker;
  [v6 registerObjectOfClass:v44 visibility:0 loadHandler:v50];
  [(MSStickerView *)self _registerStandardRepresentationsInItemProvider:v6];
  [(MSStickerView *)self _registerRepresentationsInItemProvider:v6];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __58__MSStickerView_dragInteraction_itemsForBeginningSession___block_invoke_277;
  v49[3] = &unk_1E83A3030;
  v49[4] = self;
  [v6 registerItemForTypeIdentifier:@"com.apple.sticker" loadHandler:v49];
  v46 = [objc_alloc(MEMORY[0x1E69DC990]) initWithItemProvider:v6];
  v56 = v46;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];

  return v47;
}

uint64_t __58__MSStickerView_dragInteraction_itemsForBeginningSession___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ms_defaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 134217984;
    v9 = v5;
    _os_log_impl(&dword_1CADE6000, v4, OS_LOG_TYPE_DEFAULT, "<MSStickerView: %p> Item provider load for _MSMessageMediaPayload", &v8, 0xCu);
  }

  v6 = [[_MSMessageMediaPayload alloc] initWithSticker:*(a1 + 40)];
  [(_MSMessageMediaPayload *)v6 setSourceFrame:*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)];
  -[_MSMessageMediaPayload setInitialFrameIndex:](v6, "setInitialFrameIndex:", [*(a1 + 32) initialFrameIndexForCurrentDrag]);
  v3[2](v3, v6, 0);

  return 0;
}

void __58__MSStickerView_dragInteraction_itemsForBeginningSession___block_invoke_277(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ms_defaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 134217984;
    v8 = v5;
    _os_log_impl(&dword_1CADE6000, v4, OS_LOG_TYPE_DEFAULT, "<MSStickerView: %p> Item provider load for com.apple.sticker", &v7, 0xCu);
  }

  v6 = [MEMORY[0x1E695DEF0] data];
  v3[2](v3, v6, 0);
}

- (void)_registerRepresentationsInItemProvider:(id)provider
{
  v21 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  sticker = [(MSStickerView *)self sticker];
  representations = [sticker representations];

  v7 = [representations countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(representations);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        type = [v11 type];
        v13 = [providerCopy hasItemConformingToTypeIdentifier:type];

        if ((v13 & 1) == 0)
        {
          type2 = [v11 type];
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __56__MSStickerView__registerRepresentationsInItemProvider___block_invoke;
          v15[3] = &unk_1E83A3030;
          v15[4] = v11;
          [providerCopy registerItemForTypeIdentifier:type2 loadHandler:v15];
        }
      }

      v8 = [representations countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

void __56__MSStickerView__registerRepresentationsInItemProvider___block_invoke(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 data];
  (a2)[2](v4, v5, 0);
}

- (void)_registerStandardRepresentationsInItemProvider:(id)provider
{
  providerCopy = provider;
  sticker = [(MSStickerView *)self sticker];
  imageFileURL = [sticker imageFileURL];

  sticker2 = [(MSStickerView *)self sticker];
  v8 = sticker2;
  if (imageFileURL)
  {
    identifier = [*MEMORY[0x1E6982F28] identifier];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __64__MSStickerView__registerStandardRepresentationsInItemProvider___block_invoke;
    v39[3] = &unk_1E83A3058;
    v40 = v8;
    selfCopy = self;
    firstObject = v8;
    [providerCopy registerItemForTypeIdentifier:identifier loadHandler:v39];

    v11 = v40;
  }

  else
  {
    representations = [sticker2 representations];
    firstObject = [representations firstObject];

    v11 = [(MSStickerView *)self representationForRole:@"com.apple.stickers.role.animated"];
    v13 = [(MSStickerView *)self representationForRole:@"com.apple.stickers.role.still"];
    if (firstObject && firstObject == v11)
    {
      type = [firstObject type];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __64__MSStickerView__registerStandardRepresentationsInItemProvider___block_invoke_2;
      v37[3] = &unk_1E83A3030;
      v38 = firstObject;
      [providerCopy registerItemForTypeIdentifier:type loadHandler:v37];
    }

    if (v13)
    {
      effectView = [(MSStickerView *)self effectView];
      effect = [effectView effect];

      v17 = MEMORY[0x1E69DCAB8];
      data = [v13 data];
      window = [(MSStickerView *)self window];
      screen = [window screen];
      [screen scale];
      v21 = [v17 imageWithData:data scale:?];

      type2 = [v13 type];
      identifier2 = [*MEMORY[0x1E6982E00] identifier];
      LODWORD(screen) = [type2 isEqualToString:identifier2];

      if (screen)
      {
        type3 = [v13 type];
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __64__MSStickerView__registerStandardRepresentationsInItemProvider___block_invoke_3;
        v32[3] = &unk_1E83A30A8;
        v33 = effect;
        v34 = v21;
        selfCopy2 = self;
        v36 = v13;
        [providerCopy registerItemForTypeIdentifier:type3 loadHandler:v32];
      }

      identifier3 = [*MEMORY[0x1E6982F28] identifier];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __64__MSStickerView__registerStandardRepresentationsInItemProvider___block_invoke_5;
      v28[3] = &unk_1E83A30D0;
      v29 = effect;
      v30 = v21;
      selfCopy3 = self;
      v26 = v21;
      v27 = effect;
      [providerCopy registerItemForTypeIdentifier:identifier3 loadHandler:v28];
    }
  }
}

void __64__MSStickerView__registerStandardRepresentationsInItemProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69DCAB8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 imageFileURL];
  v7 = [v6 path];
  v8 = [v3 imageWithContentsOfFile:v7];

  [*(a1 + 40) addPNGImage:v8 completion:v5];
}

void __64__MSStickerView__registerStandardRepresentationsInItemProvider___block_invoke_2(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 data];
  (a2)[2](v4, v5, 0);
}

void __64__MSStickerView__registerStandardRepresentationsInItemProvider___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (*(a1 + 32) && +[MSSticker _isHEICSupported])
  {
    v8 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v9 = [v8 isStickersAppEnabled];

    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __64__MSStickerView__registerStandardRepresentationsInItemProvider___block_invoke_4;
      v13[3] = &unk_1E83A3080;
      v13[4] = *(a1 + 48);
      v14 = v6;
      [v10 applyToImage:v11 completion:v13];
    }
  }

  else
  {
    v12 = [*(a1 + 56) data];
    (*(v6 + 2))(v6, v12, 0);
  }
}

void __64__MSStickerView__registerStandardRepresentationsInItemProvider___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (*(a1 + 32))
  {
    v8 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v9 = [v8 isStickersAppEnabled];

    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __64__MSStickerView__registerStandardRepresentationsInItemProvider___block_invoke_6;
      v12[3] = &unk_1E83A3080;
      v12[4] = *(a1 + 48);
      v13 = v6;
      [v10 applyToImage:v11 completion:v12];
    }
  }

  else
  {
    [*(a1 + 48) addPNGImage:*(a1 + 40) completion:v6];
  }
}

- (id)representationForRole:(id)role
{
  v19 = *MEMORY[0x1E69E9840];
  roleCopy = role;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  sticker = [(MSStickerView *)self sticker];
  representations = [sticker representations];

  v7 = [representations countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(representations);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        role = [v10 role];
        v12 = [role isEqualToString:roleCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [representations countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)addHEICImage:(id)image completion:(id)completion
{
  completionCopy = completion;
  __ms_HEICData = [image __ms_HEICData];
  if (__ms_HEICData)
  {
    completionCopy[2](completionCopy, __ms_HEICData, 0);
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.messages.stickers-error" code:-1 userInfo:0];
    (completionCopy)[2](completionCopy, 0, v6);
  }
}

- (void)addPNGImage:(id)image completion:(id)completion
{
  completionCopy = completion;
  __ms_PNGData = [image __ms_PNGData];
  completionCopy[2](completionCopy, __ms_PNGData, 0);
}

- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin
{
  v4 = [(MSStickerView *)self _stickerSendManager:interaction];
  [v4 stickerDruidDragStarted];
}

- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation
{
  v7 = [(MSStickerView *)self _stickerSendManager:interaction];
  sticker = [(MSStickerView *)self sticker];
  [v7 stickerDruidDragEndedWithMSSticker:sticker];

  [(MSStickerView *)self _resetPeel];
  if ((operation & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [(MSStickerView *)self _logStickerUsage];

    [(MSStickerView *)self _sendStickerUsageAnalyticsForDragAndDrop];
  }
}

- (id)_dragInteraction:(id)interaction sessionPropertiesForSession:(id)session
{
  v5 = objc_alloc_init(MEMORY[0x1E69DD480]);
  [v5 set_wantsElasticEffects:1];
  [v5 set_resizable:1];
  [v5 set_rotatable:1];
  [(MSStickerView *)self frame];
  v7 = v6;
  v9 = v8;
  [v5 set_maximumResizableSize:{300.0, 300.0}];
  [v5 set_minimumResizableSize:{v7, v9}];

  return v5;
}

- (void)animatedStickerCreationProgressChanged:(id)changed progress:(double)progress
{
  changedCopy = changed;
  sticker = [(MSStickerView *)self sticker];
  stickerIdentifier = [sticker stickerIdentifier];
  v9 = [changedCopy valueForKey:@"stickerIDs"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__MSStickerView_animatedStickerCreationProgressChanged_progress___block_invoke;
  block[3] = &unk_1E83A30F8;
  block[4] = self;
  v15 = sticker;
  v16 = stickerIdentifier;
  v17 = v9;
  v18 = changedCopy;
  progressCopy = progress;
  v20 = 1119092736;
  v10 = changedCopy;
  v11 = v9;
  v12 = stickerIdentifier;
  v13 = sticker;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __65__MSStickerView_animatedStickerCreationProgressChanged_progress___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return;
  }

  v3 = [v2 sticker];
  v4 = *(a1 + 40);

  if (v3 != v4)
  {
    return;
  }

  v5 = *(a1 + 48);
  v6 = [*(a1 + 56) objectAtIndexedSubscript:0];
  if ([v5 isEqual:v6])
  {
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = [*(a1 + 56) objectAtIndexedSubscript:1];
    LODWORD(v7) = [v7 isEqual:v8];

    if (!v7)
    {
      return;
    }
  }

  v19 = [*(a1 + 64) valueForKey:@"type"];
  if ([v19 isEqualToString:@"begin"])
  {
    v9 = [*(a1 + 32) roundProgressView];
    v10 = v9;
    v11 = 0;
LABEL_11:
    [v9 setHidden:v11];
    goto LABEL_12;
  }

  if ([v19 isEqualToString:@"end"])
  {
    v12 = [*(a1 + 32) roundProgressView];
    LODWORD(v13) = 1.0;
    [v12 setProgress:v13];

    v9 = [*(a1 + 32) roundProgressView];
    v10 = v9;
    v11 = 1;
    goto LABEL_11;
  }

  if (![v19 isEqualToString:@"update"])
  {
    goto LABEL_13;
  }

  v14 = [*(a1 + 32) roundProgressView];
  [v14 setHidden:0];

  v15 = *(a1 + 72);
  if (v15 == 100.0)
  {
    v16 = [*(a1 + 32) roundProgressView];
    v10 = v16;
    *&v17 = *(a1 + 80) / 100.0;
  }

  else
  {
    v18 = v15 * *(a1 + 80) / 100.0;
    v16 = [*(a1 + 32) roundProgressView];
    v10 = v16;
    v17 = v18 / 100.0;
    *&v17 = v18 / 100.0;
  }

  [v16 setProgress:v17];
LABEL_12:

LABEL_13:
}

- (_MSStickerDragPreviewContainerView)container
{
  WeakRetained = objc_loadWeakRetained(&self->_container);

  return WeakRetained;
}

- (void)sizeThatFits:(objc_class *)a1 .cold.1(objc_class *a1)
{
  v1 = NSStringFromClass(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_1CADE6000, v2, v3, "Loaded weak linked class: '%@': %s:%i (%s)", v4, v5, v6, v7, v8);
}

- (void)sizeThatFits:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_1CADE6000, v0, v1, "Failed to load weak link class: '%@': %s:%i (%s)", v2, v3, v4, v5, 2u);
}

- (void)setSticker:(objc_class *)a1 .cold.1(objc_class *a1)
{
  v1 = NSStringFromClass(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_1CADE6000, v2, v3, "Loaded weak linked class: '%@': %s:%i (%s)", v4, v5, v6, v7, v8);
}

- (void)setSticker:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_1CADE6000, v0, v1, "Failed to load weak link class: '%@': %s:%i (%s)", v2, v3, v4, v5, 2u);
}

- (void)_stickerPreviewCachePreviewDidChange:(objc_class *)a1 .cold.1(objc_class *a1)
{
  v1 = NSStringFromClass(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_1CADE6000, v2, v3, "Loaded weak linked class: '%@': %s:%i (%s)", v4, v5, v6, v7, v8);
}

- (void)_stickerPreviewCachePreviewDidChange:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_1CADE6000, v0, v1, "Failed to load weak link class: '%@': %s:%i (%s)", v2, v3, v4, v5, 2u);
}

void __48__MSStickerView__loadAnimatedStickerIfNecessary__block_invoke_cold_1(objc_class *a1)
{
  v1 = NSStringFromClass(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_1CADE6000, v2, v3, "Loaded weak linked class: '%@': %s:%i (%s)", v4, v5, v6, v7, v8);
}

void __48__MSStickerView__loadAnimatedStickerIfNecessary__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_1CADE6000, v0, v1, "Failed to load weak link class: '%@': %s:%i (%s)", v2, v3, v4, v5, 2u);
}

void __48__MSStickerView__loadAnimatedStickerIfNecessary__block_invoke_cold_3(objc_class *a1)
{
  v1 = NSStringFromClass(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_1CADE6000, v2, v3, "Loaded weak linked class: '%@': %s:%i (%s)", v4, v5, v6, v7, v8);
}

void __48__MSStickerView__loadAnimatedStickerIfNecessary__block_invoke_cold_4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_1CADE6000, v0, v1, "Failed to load weak link class: '%@': %s:%i (%s)", v2, v3, v4, v5, 2u);
}

@end