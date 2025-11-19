@interface ASCLockupMediaView
- (ASCLockupMediaView)initWithCoder:(id)a3;
- (ASCLockupMediaView)initWithFrame:(CGRect)a3;
- (CGSize)estimatedMediaContentSize;
- (CGSize)intrinsicContentSize;
- (CGSize)preferredScreenshotSize;
- (CGSize)sizeThatFits:(CGSize)a3;
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
- (void)setContext:(id)a3;
- (void)setImage:(id)a3 atIndex:(int64_t)a4;
- (void)setScreenshots:(id)a3 andTrailers:(id)a4;
- (void)setVideoLoopingEnabled:(BOOL)a3;
- (void)setVideoMuted:(BOOL)a3;
- (void)setVideoView:(id)a3;
- (void)updateImageViews;
@end

@implementation ASCLockupMediaView

- (ASCLockupMediaView)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = ASCLockupMediaView;
  v3 = [(ASCLockupMediaView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (ASCLockupMediaView)initWithCoder:(id)a3
{
  [(ASCLockupMediaView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CGSize)preferredScreenshotSize
{
  [(ASCLockupMediaView *)self estimatedMediaContentSize];
  v4 = v3;
  v6 = v5;
  v7 = [(ASCLockupMediaView *)self context];
  v8 = [(ASCLockupMediaView *)self screenshots];
  v9 = [(ASCLockupMediaView *)self trailers];
  v10 = [(UIView *)self asc_layoutTraitEnvironment];
  [__ASCLayoutProxy lockupMediaPreferredMediaSizeWithFitting:v7 for:v8 with:v9 and:v10 in:v4, v6];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)setVideoView:(id)a3
{
  v9 = a3;
  v5 = self->_videoView;
  if (v9 && v5)
  {
    v6 = [(ASCVideoView *)v5 isEqual:v9];

    if (v6)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v5 == v9)
    {
      goto LABEL_11;
    }
  }

  v7 = [(ASCVideoView *)self->_videoView superview];

  if (v7)
  {
    [(ASCVideoView *)self->_videoView removeFromSuperview];
  }

  objc_storeStrong(&self->_videoView, a3);
  if (self->_videoView)
  {
    [(ASCVideoView *)self->_videoView setLoopingEnabled:[(ASCLockupMediaView *)self isVideoLoopingEnabled]];
    [(ASCVideoView *)self->_videoView setMuted:[(ASCLockupMediaView *)self isVideoMuted]];
    v8 = [(ASCLockupMediaView *)self containerView];
    [v8 addSubview:self->_videoView];
  }

  [(ASCLockupMediaView *)self updateImageViews];
  [(ASCLockupMediaView *)self setNeedsLayout];
  [(ASCLockupMediaView *)self invalidateIntrinsicContentSize];
LABEL_11:
}

- (NSArray)mediaViews
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(ASCLockupMediaView *)self videoView];

  if (v4)
  {
    v5 = [(ASCLockupMediaView *)self videoView];
    [v3 addObject:v5];
  }

  v6 = [(ASCLockupMediaView *)self imageViews];
  [v3 addObjectsFromArray:v6];

  return v3;
}

- (void)setVideoLoopingEnabled:(BOOL)a3
{
  if (self->_videoLoopingEnabled != a3)
  {
    v4 = a3;
    self->_videoLoopingEnabled = a3;
    v5 = [(ASCLockupMediaView *)self videoView];
    [v5 setLoopingEnabled:v4];
  }
}

- (void)setVideoMuted:(BOOL)a3
{
  if (self->_videoMuted != a3)
  {
    v4 = a3;
    self->_videoMuted = a3;
    v5 = [(ASCLockupMediaView *)self videoView];
    [v5 setMuted:v4];
  }
}

- (void)setContext:(id)a3
{
  v9 = a3;
  objc_storeStrong(&self->_context, a3);
  if (ASCLockupContextIsAdGridContext(v9))
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
  v3 = [(ASCLockupMediaView *)self context];
  v4 = [(ASCLockupMediaView *)self screenshots];
  v5 = [(ASCLockupMediaView *)self trailers];
  v6 = [(ASCLockupMediaView *)self containerView];
  v7 = [(ASCLockupMediaView *)self mediaViews];
  v8 = [__ASCLayoutProxy lockupMediaLayoutFor:v3 screenshots:v4 trailers:v5 containerView:v6 mediaViews:v7];

  return v8;
}

- (id)makeSizingLayout
{
  v3 = [(ASCLockupMediaView *)self context];
  v4 = [(ASCLockupMediaView *)self screenshots];
  v5 = [(ASCLockupMediaView *)self trailers];
  v6 = [(ASCLockupMediaView *)self containerView];
  v7 = [(ASCLockupMediaView *)self mediaViews];
  v8 = [__ASCLayoutProxy lockupMediaSizingLayoutFor:v3 screenshots:v4 trailers:v5 containerView:v6 mediaViews:v7];

  return v8;
}

- (CGSize)estimatedMediaContentSize
{
  v3 = [(ASCLockupMediaView *)self context];
  v4 = [(ASCLockupMediaView *)self screenshots];
  v5 = [(ASCLockupMediaView *)self trailers];
  [(ASCLockupMediaView *)self bounds];
  v7 = v6;
  v9 = v8;
  v10 = [(UIView *)self asc_layoutTraitEnvironment];
  [__ASCLayoutProxy estimatedMediaContentSizeFor:v3 screenshots:v4 trailers:v5 fitting:v10 in:v7, v9];
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
    v3 = [(ASCLockupMediaView *)self superview];
    [v3 invalidateIntrinsicContentSize];
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(ASCLockupMediaView *)self layoutMarginsForCurrentContext];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = width - v8 - v12;
  v15 = height - v6 - v10;
  v16 = [(ASCLockupMediaView *)self context];
  v17 = [(ASCLockupMediaView *)self screenshots];
  v18 = [(ASCLockupMediaView *)self trailers];
  v19 = [(UIView *)self asc_layoutTraitEnvironment];
  [__ASCLayoutProxy estimatedMediaContentSizeFor:v16 screenshots:v17 trailers:v18 fitting:v19 in:v14, v15];
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
  v3 = [(ASCLockupMediaView *)self containerView];
  v4 = *(MEMORY[0x277CBF2C0] + 16);
  *&v30.a = *MEMORY[0x277CBF2C0];
  *&v30.c = v4;
  *&v30.tx = *(MEMORY[0x277CBF2C0] + 32);
  [v3 setTransform:&v30];

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
  v21 = [(ASCLockupMediaView *)self makeLayout];
  v22 = [(UIView *)self asc_layoutTraitEnvironment];
  [v21 placeChildrenRelativeToRect:v22 inTraitEnvironment:{v14, v16, v18, v20}];

  v23 = [(ASCLockupMediaView *)self context];
  v24 = [(ASCLockupMediaView *)self screenshots];
  v25 = [(ASCLockupMediaView *)self trailers];
  [__ASCLayoutProxy containerViewRotationAngleFor:v23 screenshots:v24 trailers:v25];
  v27 = v26;

  if (v27 != 0.0)
  {
    CGAffineTransformMakeRotation(&v29, v27 * 3.14159265 / 180.0);
    v28 = [(ASCLockupMediaView *)self containerView];
    v30 = v29;
    [v28 setTransform:&v30];
  }
}

- (UIEdgeInsets)layoutMarginsForCurrentContext
{
  [(ASCLockupMediaView *)self layoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(ASCLockupMediaView *)self context];
  [__ASCLayoutProxy layoutMarginsFor:v11 existingLayoutMargins:v4, v6, v8, v10];
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
  v3 = [(ASCLockupMediaView *)self videoView];

  result = [(ASCLockupMediaView *)self numberOfViews];
  if (v3)
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
  v4 = [(ASCLockupMediaView *)self screenshots];
  v5 = [v4 mediaPlatform];
  v6 = [v5 deviceCornerRadiusFactor];
  v21 = [(ASCScreenshotDisplayConfiguration *)v3 initWithDeviceCornerRadiusFactor:v6];

  v7 = [(ASCLockupMediaView *)self numberOfImageViews];
  v8 = [(NSMutableArray *)self->_imageViews count];
  if (v8 >= v7)
  {
    v9 = v7;
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
      v12 = [v11 artworkView];
      [v12 setScreenshotDisplayConfiguration:v21];

      v13 = [(NSMutableArray *)self->_imageViews count];
      if (v13 >= v7)
      {
        v14 = v7;
      }

      else
      {
        v14 = v13;
      }
    }
  }

  if ([(NSMutableArray *)self->_imageViews count]!= v7)
  {
    v15 = *MEMORY[0x277CBF3A0];
    v16 = *(MEMORY[0x277CBF3A0] + 8);
    v17 = *(MEMORY[0x277CBF3A0] + 16);
    v18 = *(MEMORY[0x277CBF3A0] + 24);
    do
    {
      if ([(NSMutableArray *)self->_imageViews count]>= v7)
      {
        v19 = [(NSMutableArray *)self->_imageViews lastObject];
        if (v19)
        {
          [(NSMutableArray *)self->_imageViews removeLastObject];
          [(ASCBorderedScreenshotView *)v19 removeFromSuperview];
        }
      }

      else
      {
        v19 = [[ASCBorderedScreenshotView alloc] initWithFrame:v21 screenshotDisplayConfiguration:v15, v16, v17, v18];
        [(NSMutableArray *)self->_imageViews addObject:v19];
        v20 = [(ASCLockupMediaView *)self containerView];
        [v20 addSubview:v19];
      }
    }

    while ([(NSMutableArray *)self->_imageViews count]!= v7);
  }
}

- (void)prepareForReuse
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(ASCLockupMediaView *)self imageViews];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) artworkView];
        [v8 setImage:0];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = [(ASCLockupMediaView *)self imageViews];
  [v9 removeAllObjects];

  [(ASCLockupMediaView *)self setVideoView:0];
}

- (void)setScreenshots:(id)a3 andTrailers:(id)a4
{
  v20 = a3;
  v6 = a4;
  v7 = v20;
  v8 = v6;
  screenshots = self->_screenshots;
  if (!v20 || !screenshots)
  {
    if (screenshots == v20)
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

  v10 = [(ASCScreenshots *)screenshots isEqual:v20];
  v7 = v20;
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
    v17 = [(ASCLockupMediaView *)self context];
    v18 = [(ASCLockupMediaView *)self screenshots];
    v19 = [(ASCLockupMediaView *)self trailers];
    [(ASCLockupMediaView *)self setNumberOfViews:[__ASCLayoutProxy numberOfViewsInLockupMediaLayoutFor:v17 with:v18 and:v19]];

    [(ASCLockupMediaView *)self updateImageViews];
    [(ASCLockupMediaView *)self setNeedsLayout];
    [(ASCLockupMediaView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setImage:(id)a3 atIndex:(int64_t)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(ASCLockupMediaView *)self mediaViews];
  if ([v7 count] > a4)
  {
    v8 = [(ASCLockupMediaView *)self screenshots];
    v9 = [v8 artwork];
    v10 = [v9 count];

    v11 = [(ASCLockupMediaView *)self trailers];
    if (v11)
    {
      v12 = v11;
      v13 = [(ASCLockupMediaView *)self trailers];
      v14 = [v13 videos];
      v15 = [v14 count];

      if (v15)
      {
        ++v10;
      }
    }

    for (i = objc_alloc_init(MEMORY[0x277CBEB18]); a4 < [v7 count]; a4 += v10)
    {
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
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

          v22 = [*(*(&v32 + 1) + 8 * j) integerValue];
          objc_opt_class();
          v23 = [v7 objectAtIndexedSubscript:v22];
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
            [v25 setImage:v6];
            v26 = [v25 previewFrameArtwork];
            [v26 setNeedsDisplay];
          }

          else
          {
            objc_opt_class();
            v27 = [v7 objectAtIndexedSubscript:v22];
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

            v26 = v28;

            if (v26)
            {
              v29 = [v26 artworkView];
              [v29 setImage:v6];

              v30 = [v26 artworkView];
              [v30 setNeedsDisplay];

              [v26 setUserInteractionEnabled:0];
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
  v4 = [(ASCLockupMediaView *)self videoView];

  if (v4)
  {
    v5 = [(ASCLockupMediaView *)self videoView];
    [v5 setIsAccessibilityElement:1];

    v6 = *MEMORY[0x277D76588];
    v7 = [(ASCLockupMediaView *)self videoView];
    [v7 setAccessibilityTraits:v6];

    v9 = ASCLocalizedString(@"AX_VIDEO", v8);
    v10 = [(ASCLockupMediaView *)self videoView];
    [v10 setAccessibilityLabel:v9];

    v11 = [(ASCLockupMediaView *)self videoView];
    [v3 addObject:v11];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = [(ASCLockupMediaView *)self imageViews];
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v27 + 1) + 8 * i);
        v19 = [v18 artworkView];
        [v19 setIsAccessibilityElement:1];

        v20 = [v18 artworkView];
        [v20 setAccessibilityTraits:v16];

        v22 = ASCLocalizedString(@"AX_ARTWORK", v21);
        v23 = [v18 artworkView];
        [v23 setAccessibilityLabel:v22];

        v24 = [v18 artworkView];
        [v3 addObject:v24];
      }

      v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
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