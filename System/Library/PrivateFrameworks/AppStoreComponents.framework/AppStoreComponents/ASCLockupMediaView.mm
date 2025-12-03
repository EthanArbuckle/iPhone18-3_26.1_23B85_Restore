@interface ASCLockupMediaView
- (ASCLockupMediaView)initWithCoder:(id)coder;
- (ASCLockupMediaView)initWithFrame:(CGRect)frame;
- (CGSize)estimatedMediaContentSize;
- (CGSize)intrinsicContentSize;
- (CGSize)preferredScreenshotSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSArray)mediaViews;
- (UIEdgeInsets)layoutMarginsForCurrentContext;
- (id)accessibilityElements;
- (id)makeLayout;
- (id)makeSizingLayout;
- (unint64_t)numberOfImageViews;
- (void)invalidateIntrinsicContentSize;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setContext:(id)context;
- (void)setImage:(id)image atIndex:(int64_t)index;
- (void)setScreenshots:(id)screenshots andTrailers:(id)trailers;
- (void)setVideoLoopingEnabled:(BOOL)enabled;
- (void)setVideoMuted:(BOOL)muted;
- (void)setVideoView:(id)view;
- (void)updateImageViews;
@end

@implementation ASCLockupMediaView

- (ASCLockupMediaView)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = ASCLockupMediaView;
  v3 = [(ASCLockupMediaView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_numberOfViews = 0;
    v5 = objc_alloc(MEMORY[0x277D75D18]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    containerView = v4->_containerView;
    v4->_containerView = v6;

    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
    imageViews = v4->_imageViews;
    v4->_imageViews = v8;

    videoView = v4->_videoView;
    v4->_videoView = 0;

    screenshots = v4->_screenshots;
    v4->_screenshots = 0;

    trailers = v4->_trailers;
    v4->_trailers = 0;

    v4->_videoLoopingEnabled = 1;
    v4->_videoMuted = 1;
    [(ASCLockupMediaView *)v4 setLayoutMargins:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    [(UIView *)v4->_containerView setUserInteractionEnabled:0];
    [(ASCLockupMediaView *)v4 addSubview:v4->_containerView];
    [(ASCLockupMediaView *)v4 setClipsToBounds:1];
  }

  return v4;
}

- (ASCLockupMediaView)initWithCoder:(id)coder
{
  [(ASCLockupMediaView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CGSize)preferredScreenshotSize
{
  [(ASCLockupMediaView *)self estimatedMediaContentSize];
  v4 = v3;
  v6 = v5;
  context = [(ASCLockupMediaView *)self context];
  screenshots = [(ASCLockupMediaView *)self screenshots];
  trailers = [(ASCLockupMediaView *)self trailers];
  asc_layoutTraitEnvironment = [(UIView *)self asc_layoutTraitEnvironment];
  [__ASCLayoutProxy lockupMediaPreferredMediaSizeWithFitting:context for:screenshots with:trailers and:asc_layoutTraitEnvironment in:v4, v6];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)setVideoView:(id)view
{
  viewCopy = view;
  v5 = self->_videoView;
  if (viewCopy && v5)
  {
    v6 = [(ASCVideoView *)v5 isEqual:viewCopy];

    if (v6)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v5 == viewCopy)
    {
      goto LABEL_11;
    }
  }

  superview = [(ASCVideoView *)self->_videoView superview];

  if (superview)
  {
    [(ASCVideoView *)self->_videoView removeFromSuperview];
  }

  objc_storeStrong(&self->_videoView, view);
  if (self->_videoView)
  {
    [(ASCVideoView *)self->_videoView setLoopingEnabled:[(ASCLockupMediaView *)self isVideoLoopingEnabled]];
    [(ASCVideoView *)self->_videoView setMuted:[(ASCLockupMediaView *)self isVideoMuted]];
    containerView = [(ASCLockupMediaView *)self containerView];
    [containerView addSubview:self->_videoView];
  }

  [(ASCLockupMediaView *)self updateImageViews];
  [(ASCLockupMediaView *)self setNeedsLayout];
  [(ASCLockupMediaView *)self invalidateIntrinsicContentSize];
LABEL_11:
}

- (NSArray)mediaViews
{
  array = [MEMORY[0x277CBEB18] array];
  videoView = [(ASCLockupMediaView *)self videoView];

  if (videoView)
  {
    videoView2 = [(ASCLockupMediaView *)self videoView];
    [array addObject:videoView2];
  }

  imageViews = [(ASCLockupMediaView *)self imageViews];
  [array addObjectsFromArray:imageViews];

  return array;
}

- (void)setVideoLoopingEnabled:(BOOL)enabled
{
  if (self->_videoLoopingEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_videoLoopingEnabled = enabled;
    videoView = [(ASCLockupMediaView *)self videoView];
    [videoView setLoopingEnabled:enabledCopy];
  }
}

- (void)setVideoMuted:(BOOL)muted
{
  if (self->_videoMuted != muted)
  {
    mutedCopy = muted;
    self->_videoMuted = muted;
    videoView = [(ASCLockupMediaView *)self videoView];
    [videoView setMuted:mutedCopy];
  }
}

- (void)setContext:(id)context
{
  contextCopy = context;
  objc_storeStrong(&self->_context, context);
  if (ASCLockupContextIsAdGridContext(contextCopy))
  {
    v5 = MEMORY[0x277D75348];
    v6 = [MEMORY[0x277D75348] colorWithRed:0.93333333 green:0.93333333 blue:0.93333333 alpha:1.0];
    v7 = [MEMORY[0x277D75348] colorWithRed:0.12941176 green:0.12941176 blue:0.12941176 alpha:1.0];
    v8 = [v5 asc_colorWithLightColor:v6 darkColor:v7];
    [(ASCLockupMediaView *)self setBackgroundColor:v8];
  }

  else
  {
    [(ASCLockupMediaView *)self setBackgroundColor:0];
  }
}

- (id)makeLayout
{
  context = [(ASCLockupMediaView *)self context];
  screenshots = [(ASCLockupMediaView *)self screenshots];
  trailers = [(ASCLockupMediaView *)self trailers];
  containerView = [(ASCLockupMediaView *)self containerView];
  mediaViews = [(ASCLockupMediaView *)self mediaViews];
  v8 = [__ASCLayoutProxy lockupMediaLayoutFor:context screenshots:screenshots trailers:trailers containerView:containerView mediaViews:mediaViews];

  return v8;
}

- (id)makeSizingLayout
{
  context = [(ASCLockupMediaView *)self context];
  screenshots = [(ASCLockupMediaView *)self screenshots];
  trailers = [(ASCLockupMediaView *)self trailers];
  containerView = [(ASCLockupMediaView *)self containerView];
  mediaViews = [(ASCLockupMediaView *)self mediaViews];
  v8 = [__ASCLayoutProxy lockupMediaSizingLayoutFor:context screenshots:screenshots trailers:trailers containerView:containerView mediaViews:mediaViews];

  return v8;
}

- (CGSize)estimatedMediaContentSize
{
  context = [(ASCLockupMediaView *)self context];
  screenshots = [(ASCLockupMediaView *)self screenshots];
  trailers = [(ASCLockupMediaView *)self trailers];
  [(ASCLockupMediaView *)self bounds];
  v7 = v6;
  v9 = v8;
  asc_layoutTraitEnvironment = [(UIView *)self asc_layoutTraitEnvironment];
  [__ASCLayoutProxy estimatedMediaContentSizeFor:context screenshots:screenshots trailers:trailers fitting:asc_layoutTraitEnvironment in:v7, v9];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)invalidateIntrinsicContentSize
{
  v4.receiver = self;
  v4.super_class = ASCLockupMediaView;
  [(ASCLockupMediaView *)&v4 invalidateIntrinsicContentSize];
  if ([(ASCLockupMediaView *)self translatesAutoresizingMaskIntoConstraints])
  {
    superview = [(ASCLockupMediaView *)self superview];
    [superview invalidateIntrinsicContentSize];
  }
}

- (CGSize)intrinsicContentSize
{
  [(ASCLockupMediaView *)self bounds];

  [(ASCLockupMediaView *)self sizeThatFits:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(ASCLockupMediaView *)self layoutMarginsForCurrentContext];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = width - v8 - v12;
  v15 = height - v6 - v10;
  context = [(ASCLockupMediaView *)self context];
  screenshots = [(ASCLockupMediaView *)self screenshots];
  trailers = [(ASCLockupMediaView *)self trailers];
  asc_layoutTraitEnvironment = [(UIView *)self asc_layoutTraitEnvironment];
  [__ASCLayoutProxy estimatedMediaContentSizeFor:context screenshots:screenshots trailers:trailers fitting:asc_layoutTraitEnvironment in:v14, v15];
  v21 = v20;
  v23 = v22;

  v24 = v9 + v13 + v21;
  v25 = v7 + v11 + v23;
  result.height = v25;
  result.width = v24;
  return result;
}

- (void)layoutSubviews
{
  v31.receiver = self;
  v31.super_class = ASCLockupMediaView;
  [(ASCLockupMediaView *)&v31 layoutSubviews];
  containerView = [(ASCLockupMediaView *)self containerView];
  v4 = *(MEMORY[0x277CBF2C0] + 16);
  *&v30.a = *MEMORY[0x277CBF2C0];
  *&v30.c = v4;
  *&v30.tx = *(MEMORY[0x277CBF2C0] + 32);
  [containerView setTransform:&v30];

  [(ASCLockupMediaView *)self layoutMarginsForCurrentContext];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(ASCLockupMediaView *)self bounds];
  v14 = v8 + v13;
  v16 = v6 + v15;
  v18 = v17 - (v8 + v12);
  v20 = v19 - (v6 + v10);
  makeLayout = [(ASCLockupMediaView *)self makeLayout];
  asc_layoutTraitEnvironment = [(UIView *)self asc_layoutTraitEnvironment];
  [makeLayout placeChildrenRelativeToRect:asc_layoutTraitEnvironment inTraitEnvironment:{v14, v16, v18, v20}];

  context = [(ASCLockupMediaView *)self context];
  screenshots = [(ASCLockupMediaView *)self screenshots];
  trailers = [(ASCLockupMediaView *)self trailers];
  [__ASCLayoutProxy containerViewRotationAngleFor:context screenshots:screenshots trailers:trailers];
  v27 = v26;

  if (v27 != 0.0)
  {
    CGAffineTransformMakeRotation(&v29, v27 * 3.14159265 / 180.0);
    containerView2 = [(ASCLockupMediaView *)self containerView];
    v30 = v29;
    [containerView2 setTransform:&v30];
  }
}

- (UIEdgeInsets)layoutMarginsForCurrentContext
{
  [(ASCLockupMediaView *)self layoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  context = [(ASCLockupMediaView *)self context];
  [__ASCLayoutProxy layoutMarginsFor:context existingLayoutMargins:v4, v6, v8, v10];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.right = v23;
  result.bottom = v22;
  result.left = v21;
  result.top = v20;
  return result;
}

- (unint64_t)numberOfImageViews
{
  videoView = [(ASCLockupMediaView *)self videoView];

  result = [(ASCLockupMediaView *)self numberOfViews];
  if (videoView)
  {
    if (result)
    {
      return [(ASCLockupMediaView *)self numberOfViews]- 1;
    }
  }

  return result;
}

- (void)updateImageViews
{
  v3 = [ASCScreenshotDisplayConfiguration alloc];
  screenshots = [(ASCLockupMediaView *)self screenshots];
  mediaPlatform = [screenshots mediaPlatform];
  deviceCornerRadiusFactor = [mediaPlatform deviceCornerRadiusFactor];
  v21 = [(ASCScreenshotDisplayConfiguration *)v3 initWithDeviceCornerRadiusFactor:deviceCornerRadiusFactor];

  numberOfImageViews = [(ASCLockupMediaView *)self numberOfImageViews];
  v8 = [(NSMutableArray *)self->_imageViews count];
  if (v8 >= numberOfImageViews)
  {
    v9 = numberOfImageViews;
  }

  else
  {
    v9 = v8;
  }

  if (v9)
  {
    for (i = 0; i < v14; ++i)
    {
      v11 = [(NSMutableArray *)self->_imageViews objectAtIndexedSubscript:i];
      artworkView = [v11 artworkView];
      [artworkView setScreenshotDisplayConfiguration:v21];

      v13 = [(NSMutableArray *)self->_imageViews count];
      if (v13 >= numberOfImageViews)
      {
        v14 = numberOfImageViews;
      }

      else
      {
        v14 = v13;
      }
    }
  }

  if ([(NSMutableArray *)self->_imageViews count]!= numberOfImageViews)
  {
    v15 = *MEMORY[0x277CBF3A0];
    v16 = *(MEMORY[0x277CBF3A0] + 8);
    v17 = *(MEMORY[0x277CBF3A0] + 16);
    v18 = *(MEMORY[0x277CBF3A0] + 24);
    do
    {
      if ([(NSMutableArray *)self->_imageViews count]>= numberOfImageViews)
      {
        lastObject = [(NSMutableArray *)self->_imageViews lastObject];
        if (lastObject)
        {
          [(NSMutableArray *)self->_imageViews removeLastObject];
          [(ASCBorderedScreenshotView *)lastObject removeFromSuperview];
        }
      }

      else
      {
        lastObject = [[ASCBorderedScreenshotView alloc] initWithFrame:v21 screenshotDisplayConfiguration:v15, v16, v17, v18];
        [(NSMutableArray *)self->_imageViews addObject:lastObject];
        containerView = [(ASCLockupMediaView *)self containerView];
        [containerView addSubview:lastObject];
      }
    }

    while ([(NSMutableArray *)self->_imageViews count]!= numberOfImageViews);
  }
}

- (void)prepareForReuse
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  imageViews = [(ASCLockupMediaView *)self imageViews];
  v4 = [imageViews countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(imageViews);
        }

        artworkView = [*(*(&v10 + 1) + 8 * v7) artworkView];
        [artworkView setImage:0];

        ++v7;
      }

      while (v5 != v7);
      v5 = [imageViews countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  imageViews2 = [(ASCLockupMediaView *)self imageViews];
  [imageViews2 removeAllObjects];

  [(ASCLockupMediaView *)self setVideoView:0];
}

- (void)setScreenshots:(id)screenshots andTrailers:(id)trailers
{
  screenshotsCopy = screenshots;
  trailersCopy = trailers;
  v7 = screenshotsCopy;
  v8 = trailersCopy;
  screenshots = self->_screenshots;
  if (!screenshotsCopy || !screenshots)
  {
    if (screenshots == screenshotsCopy)
    {
      goto LABEL_4;
    }

LABEL_6:
    v12 = [(ASCScreenshots *)v7 copy];
    v13 = self->_screenshots;
    self->_screenshots = v12;

    v11 = 1;
    goto LABEL_7;
  }

  v10 = [(ASCScreenshots *)screenshots isEqual:screenshotsCopy];
  v7 = screenshotsCopy;
  if (!v10)
  {
    goto LABEL_6;
  }

LABEL_4:
  v11 = 0;
LABEL_7:
  trailers = self->_trailers;
  if (v8 && trailers)
  {
    if ([(ASCTrailers *)trailers isEqual:v8])
    {
      goto LABEL_10;
    }

LABEL_13:
    v15 = [(ASCTrailers *)v8 copy];
    v16 = self->_trailers;
    self->_trailers = v15;

    goto LABEL_14;
  }

  if (trailers != v8)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (v11)
  {
LABEL_14:
    context = [(ASCLockupMediaView *)self context];
    screenshots = [(ASCLockupMediaView *)self screenshots];
    trailers = [(ASCLockupMediaView *)self trailers];
    [(ASCLockupMediaView *)self setNumberOfViews:[__ASCLayoutProxy numberOfViewsInLockupMediaLayoutFor:context with:screenshots and:trailers]];

    [(ASCLockupMediaView *)self updateImageViews];
    [(ASCLockupMediaView *)self setNeedsLayout];
    [(ASCLockupMediaView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setImage:(id)image atIndex:(int64_t)index
{
  v37 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  mediaViews = [(ASCLockupMediaView *)self mediaViews];
  if ([mediaViews count] > index)
  {
    screenshots = [(ASCLockupMediaView *)self screenshots];
    artwork = [screenshots artwork];
    v10 = [artwork count];

    trailers = [(ASCLockupMediaView *)self trailers];
    if (trailers)
    {
      v12 = trailers;
      trailers2 = [(ASCLockupMediaView *)self trailers];
      videos = [trailers2 videos];
      v15 = [videos count];

      if (v15)
      {
        ++v10;
      }
    }

    for (i = objc_alloc_init(MEMORY[0x277CBEB18]); index < [mediaViews count]; index += v10)
    {
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:index];
      [i addObject:v17];
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = i;
    v18 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v33;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v33 != v20)
          {
            objc_enumerationMutation(obj);
          }

          integerValue = [*(*(&v32 + 1) + 8 * j) integerValue];
          objc_opt_class();
          v23 = [mediaViews objectAtIndexedSubscript:integerValue];
          if (v23)
          {
            if (objc_opt_isKindOfClass())
            {
              v24 = v23;
            }

            else
            {
              v24 = 0;
            }
          }

          else
          {
            v24 = 0;
          }

          v25 = v24;

          if (v25)
          {
            [v25 setImage:imageCopy];
            previewFrameArtwork = [v25 previewFrameArtwork];
            [previewFrameArtwork setNeedsDisplay];
          }

          else
          {
            objc_opt_class();
            v27 = [mediaViews objectAtIndexedSubscript:integerValue];
            if (v27)
            {
              if (objc_opt_isKindOfClass())
              {
                v28 = v27;
              }

              else
              {
                v28 = 0;
              }
            }

            else
            {
              v28 = 0;
            }

            previewFrameArtwork = v28;

            if (previewFrameArtwork)
            {
              artworkView = [previewFrameArtwork artworkView];
              [artworkView setImage:imageCopy];

              artworkView2 = [previewFrameArtwork artworkView];
              [artworkView2 setNeedsDisplay];

              [previewFrameArtwork setUserInteractionEnabled:0];
            }
          }
        }

        v19 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v19);
    }
  }
}

- (id)accessibilityElements
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  videoView = [(ASCLockupMediaView *)self videoView];

  if (videoView)
  {
    videoView2 = [(ASCLockupMediaView *)self videoView];
    [videoView2 setIsAccessibilityElement:1];

    v6 = *MEMORY[0x277D76588];
    videoView3 = [(ASCLockupMediaView *)self videoView];
    [videoView3 setAccessibilityTraits:v6];

    v9 = ASCLocalizedString(@"AX_VIDEO", v8);
    videoView4 = [(ASCLockupMediaView *)self videoView];
    [videoView4 setAccessibilityLabel:v9];

    videoView5 = [(ASCLockupMediaView *)self videoView];
    [v3 addObject:videoView5];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  imageViews = [(ASCLockupMediaView *)self imageViews];
  v13 = [imageViews countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    v16 = *MEMORY[0x277D76560];
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(imageViews);
        }

        v18 = *(*(&v27 + 1) + 8 * i);
        artworkView = [v18 artworkView];
        [artworkView setIsAccessibilityElement:1];

        artworkView2 = [v18 artworkView];
        [artworkView2 setAccessibilityTraits:v16];

        v22 = ASCLocalizedString(@"AX_ARTWORK", v21);
        artworkView3 = [v18 artworkView];
        [artworkView3 setAccessibilityLabel:v22];

        artworkView4 = [v18 artworkView];
        [v3 addObject:artworkView4];
      }

      v14 = [imageViews countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v14);
  }

  v25 = [v3 copy];

  return v25;
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = ASCLockupMediaView;
  [(ASCLockupMediaView *)&v3 layoutMarginsDidChange];
  if (self)
  {
    [(ASCLockupMediaView *)self updateImageViews];
    [(ASCLockupMediaView *)self setNeedsLayout];
    [(ASCLockupMediaView *)self invalidateIntrinsicContentSize];
  }
}

@end