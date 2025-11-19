@interface HWPluginContentView
+ (id)_backgroundColor;
+ (id)_inkColor;
- (CGSize)cachedSize;
- (HWPluginContentView)initWithFrame:(CGRect)a3;
- (id)currentBackgroundColor;
- (void)_lazySetupGLInkView;
- (void)_teardownInkView;
- (void)_updateCachedImageForSize:(CGSize)a3 completionBlock:(id)a4;
- (void)cleanupAfterAnimation;
- (void)layoutSubviews;
- (void)replayDrawingWithCompletionBlock:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HWPluginContentView

- (HWPluginContentView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = HWPluginContentView;
  v3 = [(HWPluginContentView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(HWPluginContentView *)v3 currentBackgroundColor];
    [(HWPluginContentView *)v4 setBackgroundColor:v5];

    v6 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(HWPluginContentView *)v4 setImageView:v6];

    v7 = [(HWPluginContentView *)v4 imageView];
    [v7 setContentMode:4];

    v8 = +[UIDevice currentDevice];
    v9 = [v8 dk_deviceSupportsGL];

    if (v9)
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
  v2 = [(HWPluginContentView *)self dataSource];
  if ([v2 payloadInShelf])
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

- (void)traitCollectionDidChange:(id)a3
{
  v11.receiver = self;
  v11.super_class = HWPluginContentView;
  v4 = a3;
  [(HWPluginContentView *)&v11 traitCollectionDidChange:v4];
  v5 = [(HWPluginContentView *)self traitCollection:v11.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    self->_cachedSize = CGSizeZero;
    v8 = [(HWPluginContentView *)self imageView];
    [v8 setContentMode:1];

    [(HWPluginContentView *)self bounds];
    [(HWPluginContentView *)self _updateCachedImageForSize:0 completionBlock:v9, v10];
  }
}

+ (id)_inkColor
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == &dword_4)
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
    v4 = [v3 userInterfaceIdiom];

    if (v4 == &dword_4)
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
  v3 = [(HWPluginContentView *)self currentBackgroundColor];
  [(HWPluginContentView *)self setBackgroundColor:v3];

  [(HWPluginContentView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(HWPluginContentView *)self imageView];
  [v12 setFrame:{v5, v7, v9, v11}];

  [(HWPluginContentView *)self bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(HWPluginContentView *)self inkView];
  [v21 setFrame:{v14, v16, v18, v20}];

  v22 = +[UIDevice currentDevice];
  if ([v22 dk_deviceSupportsGL])
  {
    v23 = [(HWPluginContentView *)self dataSource];
    v24 = [v23 shouldAnimate];

    if (v24)
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
  v3 = [(HWPluginContentView *)self inkView];
  if (v3)
  {
  }

  else
  {
    v4 = +[UIDevice currentDevice];
    v5 = [v4 dk_deviceSupportsGL];

    if (v5)
    {
      v6 = [DKInkView alloc];
      [(HWPluginContentView *)self bounds];
      v7 = [v6 initWithFrame:?];
      [(HWPluginContentView *)self setInkView:v7];

      v8 = [(HWPluginContentView *)self inkView];
      [v8 setUserInteractionEnabled:0];

      v9 = [(HWPluginContentView *)self inkView];
      [v9 setMode:1];

      v10 = [(HWPluginContentView *)self inkView];
      [v10 setAllowInput:0];

      v11 = [(HWPluginContentView *)self inkView];
      [v11 setScaleDrawingToFitCanvas:1];

      v12 = [(HWPluginContentView *)self inkView];
      [v12 setRenderPreviewMode:0];

      v13 = [objc_opt_class() _inkColor];
      v14 = [(HWPluginContentView *)self inkView];
      [v14 setStrokeColor:v13];

      [(HWPluginContentView *)self addSubview:self->_inkView];
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v15 = [(HWPluginContentView *)self inkView];
      v16 = [v15 layer];
      v17 = [v16 sublayers];

      v18 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
              objc_enumerationMutation(v17);
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
          v19 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v19);
      }

      v23 = [(HWPluginContentView *)self inkView];
      [v23 setNeedsLayout];
    }
  }
}

- (void)_teardownInkView
{
  v3 = [(HWPluginContentView *)self inkView];
  [v3 teardown];

  v4 = [(HWPluginContentView *)self inkView];
  [v4 removeFromSuperview];

  [(HWPluginContentView *)self setInkView:0];
  v5 = [(HWPluginContentView *)self imageView];
  [v5 setHidden:0];
}

- (void)replayDrawingWithCompletionBlock:(id)a3
{
  v4 = a3;
  [(HWPluginContentView *)self _lazySetupGLInkView];
  objc_initWeak(&location, self);
  v5 = [(HWPluginContentView *)self handwriting];
  v6 = [v5 drawing];
  v7 = [(HWPluginContentView *)self inkView];
  v8 = [v7 currentDrawing];

  if (v8 == v6)
  {
    if (v4)
    {
      v4[2](v4);
    }
  }

  else
  {
    v9 = [(HWPluginContentView *)self inkView];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_12BE0;
    v10[3] = &unk_28A98;
    v11 = v4;
    objc_copyWeak(&v12, &location);
    [v9 setCurrentDrawing:v6 scaleDrawingToFitBounds:1 withAnimationType:1 animationCompletionHandler:v10];

    objc_destroyWeak(&v12);
  }

  objc_destroyWeak(&location);
}

- (void)cleanupAfterAnimation
{
  v3 = [(HWPluginContentView *)self inkView];
  [v3 pauseRendering];

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

- (void)_updateCachedImageForSize:(CGSize)a3 completionBlock:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = +[HWPluginContentView _inkColor];
  [(HWPluginContentView *)self bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(HWPluginContentView *)self handwriting];

  if (v17)
  {
    v18 = [(HWPluginContentView *)self handwriting];
    v19 = [v18 drawing];
    IsValid = DKDrawingIsValid();

    if (IsValid)
    {
      v21 = [(HWPluginContentView *)self traitCollection];
      v22 = [v21 userInterfaceStyle];

      cachedImage = self->_cachedImage;
      v24 = [(HWPluginContentView *)self imageView];
      [v24 setImage:cachedImage];

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
        v31[1] = v22;
        v31[2] = v10;
        v31[3] = v12;
        v31[4] = v14;
        v31[5] = v16;
        v29 = v8;
        v32 = v34;
        v30 = v7;
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

  if (v7)
  {
    v7[2](v7);
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