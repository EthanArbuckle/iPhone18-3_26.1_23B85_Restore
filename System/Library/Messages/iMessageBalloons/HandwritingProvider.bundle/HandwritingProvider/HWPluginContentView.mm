@interface HWPluginContentView
+ (id)_backgroundColor;
+ (id)_inkColor;
- (CGSize)cachedSize;
- (HWPluginContentView)initWithFrame:(CGRect)frame;
- (id)currentBackgroundColor;
- (void)_lazySetupGLInkView;
- (void)_teardownInkView;
- (void)_updateCachedImageForSize:(CGSize)size completionBlock:(id)block;
- (void)cleanupAfterAnimation;
- (void)layoutSubviews;
- (void)replayDrawingWithCompletionBlock:(id)block;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HWPluginContentView

- (HWPluginContentView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = HWPluginContentView;
  v3 = [(HWPluginContentView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    currentBackgroundColor = [(HWPluginContentView *)v3 currentBackgroundColor];
    [(HWPluginContentView *)v4 setBackgroundColor:currentBackgroundColor];

    v6 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(HWPluginContentView *)v4 setImageView:v6];

    imageView = [(HWPluginContentView *)v4 imageView];
    [imageView setContentMode:4];

    v8 = +[UIDevice currentDevice];
    dk_deviceSupportsGL = [v8 dk_deviceSupportsGL];

    if (dk_deviceSupportsGL)
    {
      v10 = +[(HWAbstractBalloonController *)HWBalloonController];
      [v10 setMaxConcurrentOperationCount:1];
    }

    [(HWPluginContentView *)v4 addSubview:v4->_imageView];
    v4->_cachedSize = CGSizeZero;
  }

  return v4;
}

- (id)currentBackgroundColor
{
  dataSource = [(HWPluginContentView *)self dataSource];
  if ([dataSource payloadInShelf])
  {
    +[UIColor clearColor];
  }

  else
  {
    +[HWPluginContentView _backgroundColor];
  }
  v3 = ;

  return v3;
}

- (void)traitCollectionDidChange:(id)change
{
  v11.receiver = self;
  v11.super_class = HWPluginContentView;
  changeCopy = change;
  [(HWPluginContentView *)&v11 traitCollectionDidChange:changeCopy];
  v5 = [(HWPluginContentView *)self traitCollection:v11.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    self->_cachedSize = CGSizeZero;
    imageView = [(HWPluginContentView *)self imageView];
    [imageView setContentMode:1];

    [(HWPluginContentView *)self bounds];
    [(HWPluginContentView *)self _updateCachedImageForSize:0 completionBlock:v9, v10];
  }
}

+ (id)_inkColor
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if (userInterfaceIdiom == &dword_4)
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor inkColor];
  }
  v4 = ;

  return v4;
}

+ (id)_backgroundColor
{
  if (_UISolariumEnabled())
  {
    v2 = +[UIColor clearColor];
  }

  else
  {
    v3 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v3 userInterfaceIdiom];

    if (userInterfaceIdiom == &dword_4)
    {
      +[UIColor blackColor];
    }

    else
    {
      +[UIColor drawingCanvasBackgroundColor];
    }
    v2 = ;
  }

  return v2;
}

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = HWPluginContentView;
  [(HWPluginContentView *)&v33 layoutSubviews];
  currentBackgroundColor = [(HWPluginContentView *)self currentBackgroundColor];
  [(HWPluginContentView *)self setBackgroundColor:currentBackgroundColor];

  [(HWPluginContentView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  imageView = [(HWPluginContentView *)self imageView];
  [imageView setFrame:{v5, v7, v9, v11}];

  [(HWPluginContentView *)self bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  inkView = [(HWPluginContentView *)self inkView];
  [inkView setFrame:{v14, v16, v18, v20}];

  v22 = +[UIDevice currentDevice];
  if ([v22 dk_deviceSupportsGL])
  {
    dataSource = [(HWPluginContentView *)self dataSource];
    shouldAnimate = [dataSource shouldAnimate];

    if (shouldAnimate)
    {
      return;
    }
  }

  else
  {
  }

  [(HWPluginContentView *)self bounds];
  width = self->_cachedSize.width;
  height = self->_cachedSize.height;
  if (width != v28 || height != v25)
  {
    v30 = [(HWPluginContentView *)self imageView:width];
    [v30 setContentMode:1];

    [(HWPluginContentView *)self bounds];
    [(HWPluginContentView *)self _updateCachedImageForSize:0 completionBlock:v31, v32];
  }
}

- (void)_lazySetupGLInkView
{
  inkView = [(HWPluginContentView *)self inkView];
  if (inkView)
  {
  }

  else
  {
    v4 = +[UIDevice currentDevice];
    dk_deviceSupportsGL = [v4 dk_deviceSupportsGL];

    if (dk_deviceSupportsGL)
    {
      v6 = [DKInkView alloc];
      [(HWPluginContentView *)self bounds];
      v7 = [v6 initWithFrame:?];
      [(HWPluginContentView *)self setInkView:v7];

      inkView2 = [(HWPluginContentView *)self inkView];
      [inkView2 setUserInteractionEnabled:0];

      inkView3 = [(HWPluginContentView *)self inkView];
      [inkView3 setMode:1];

      inkView4 = [(HWPluginContentView *)self inkView];
      [inkView4 setAllowInput:0];

      inkView5 = [(HWPluginContentView *)self inkView];
      [inkView5 setScaleDrawingToFitCanvas:1];

      inkView6 = [(HWPluginContentView *)self inkView];
      [inkView6 setRenderPreviewMode:0];

      _inkColor = [objc_opt_class() _inkColor];
      inkView7 = [(HWPluginContentView *)self inkView];
      [inkView7 setStrokeColor:_inkColor];

      [(HWPluginContentView *)self addSubview:self->_inkView];
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      inkView8 = [(HWPluginContentView *)self inkView];
      layer = [inkView8 layer];
      sublayers = [layer sublayers];

      v18 = [sublayers countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v25;
        do
        {
          v21 = 0;
          do
          {
            if (*v25 != v20)
            {
              objc_enumerationMutation(sublayers);
            }

            v22 = *(*(&v24 + 1) + 8 * v21);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v22 setAllowsDisplayCompositing:0];
            }

            v21 = v21 + 1;
          }

          while (v19 != v21);
          v19 = [sublayers countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v19);
      }

      inkView9 = [(HWPluginContentView *)self inkView];
      [inkView9 setNeedsLayout];
    }
  }
}

- (void)_teardownInkView
{
  inkView = [(HWPluginContentView *)self inkView];
  [inkView teardown];

  inkView2 = [(HWPluginContentView *)self inkView];
  [inkView2 removeFromSuperview];

  [(HWPluginContentView *)self setInkView:0];
  imageView = [(HWPluginContentView *)self imageView];
  [imageView setHidden:0];
}

- (void)replayDrawingWithCompletionBlock:(id)block
{
  blockCopy = block;
  [(HWPluginContentView *)self _lazySetupGLInkView];
  objc_initWeak(&location, self);
  handwriting = [(HWPluginContentView *)self handwriting];
  drawing = [handwriting drawing];
  inkView = [(HWPluginContentView *)self inkView];
  currentDrawing = [inkView currentDrawing];

  if (currentDrawing == drawing)
  {
    if (blockCopy)
    {
      blockCopy[2](blockCopy);
    }
  }

  else
  {
    inkView2 = [(HWPluginContentView *)self inkView];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_12BE0;
    v10[3] = &unk_28A98;
    v11 = blockCopy;
    objc_copyWeak(&v12, &location);
    [inkView2 setCurrentDrawing:drawing scaleDrawingToFitBounds:1 withAnimationType:1 animationCompletionHandler:v10];

    objc_destroyWeak(&v12);
  }

  objc_destroyWeak(&location);
}

- (void)cleanupAfterAnimation
{
  inkView = [(HWPluginContentView *)self inkView];
  [inkView pauseRendering];

  objc_initWeak(&location, self);
  [(HWPluginContentView *)self bounds];
  v5 = v4;
  v7 = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_12D38;
  v8[3] = &unk_28AC0;
  objc_copyWeak(&v9, &location);
  [(HWPluginContentView *)self _updateCachedImageForSize:v8 completionBlock:v5, v7];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_updateCachedImageForSize:(CGSize)size completionBlock:(id)block
{
  height = size.height;
  width = size.width;
  blockCopy = block;
  v8 = +[HWPluginContentView _inkColor];
  [(HWPluginContentView *)self bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  handwriting = [(HWPluginContentView *)self handwriting];

  if (handwriting)
  {
    handwriting2 = [(HWPluginContentView *)self handwriting];
    drawing = [handwriting2 drawing];
    IsValid = DKDrawingIsValid();

    if (IsValid)
    {
      traitCollection = [(HWPluginContentView *)self traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];

      cachedImage = self->_cachedImage;
      imageView = [(HWPluginContentView *)self imageView];
      [imageView setImage:cachedImage];

      p_cachedSize = &self->_cachedSize;
      if (self->_cachedSize.width != width || self->_cachedSize.height != height)
      {
        v34 = *p_cachedSize;
        p_cachedSize->width = width;
        self->_cachedSize.height = height;
        objc_initWeak(&location, self);
        v27 = +[(HWAbstractBalloonController *)HWBalloonController];
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_12FE8;
        v28[3] = &unk_28B10;
        objc_copyWeak(v31, &location);
        v31[1] = userInterfaceStyle;
        v31[2] = v10;
        v31[3] = v12;
        v31[4] = v14;
        v31[5] = v16;
        v29 = v8;
        v32 = v34;
        v30 = blockCopy;
        [v27 addOperationWithBlock:v28];

        objc_destroyWeak(v31);
        objc_destroyWeak(&location);
        goto LABEL_12;
      }
    }

    else
    {
      NSLog(@"Drawing has invalid dimensions.");
    }
  }

  else
  {
    NSLog(@"Received unrecognized payload to render.");
  }

  if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }

LABEL_12:
}

- (CGSize)cachedSize
{
  objc_copyStruct(v4, &self->_cachedSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end