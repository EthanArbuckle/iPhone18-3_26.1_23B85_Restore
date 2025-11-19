@interface THPageLayerAndSubviewHost
- (CGRect)canvasBoundsFrame;
- (NSString)description;
- (THPageLayerAndSubviewHost)initWithPageInfo:(id)a3 scrimEnabled:(BOOL)a4 delegate:(id)a5;
- (UIViewController)containerViewController;
- (id)p_largeThumbnail;
- (id)topLevelReps;
- (void)dealloc;
- (void)loadPreviewOnQueue:(id)a3;
- (void)p_layoutLayersWithFrame:(CGRect)a3;
- (void)recycle;
- (void)setFrame;
- (void)setHidden:(BOOL)a3;
- (void)setRep:(id)a3;
- (void)setUnscaledFrame:(CGRect)a3 unscaledLayerOffset:(CGPoint)a4 viewScale:(double)a5;
- (void)teardown;
- (void)unloadPreviewAnimated:(BOOL)a3;
- (void)updateTopLevelLayers;
@end

@implementation THPageLayerAndSubviewHost

- (THPageLayerAndSubviewHost)initWithPageInfo:(id)a3 scrimEnabled:(BOOL)a4 delegate:(id)a5
{
  v6 = a4;
  v15.receiver = self;
  v15.super_class = THPageLayerAndSubviewHost;
  v8 = [(THPageLayerAndSubviewHost *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_delegate = a5;
    v8->_pageInfo = a3;
    v9->_view = objc_alloc_init(THPageLayerAndSubviewHostView);
    v9->_borderView = objc_alloc_init(THPageLayerAndSubviewNoHitView);
    v9->_containerView = objc_alloc_init(THPageLayerAndSubviewNoHitView);
    [(CALayer *)[(UIView *)v9->_borderView layer] setZPosition:-1.0];
    v9->_pageHostLayer = objc_alloc_init(TSDTilingHostingLayer);
    v9->_pageContainerLayer = objc_alloc_init(TSDNoDefaultImplicitActionLayer);
    v10 = objc_alloc_init(TSDNoDefaultImplicitActionLayer);
    v9->_borderLayer = v10;
    y = CGPointZero.y;
    [(CALayer *)v10 setAnchorPoint:CGPointZero.x, y];
    -[CALayer setBorderColor:](v9->_borderLayer, "setBorderColor:", [objc_msgSend(+[TSUColor blackColor](TSUColor "blackColor")]);
    [(CALayer *)v9->_borderLayer setBorderWidth:1.0];
    borderLayer = v9->_borderLayer;
    [(CALayer *)[(UIView *)v9->_borderView layer] setSublayers:[NSArray arrayWithObjects:&borderLayer count:1]];
    [(UIView *)v9->_containerView setClipsToBounds:1];
    -[UIView setBackgroundColor:](v9->_containerView, "setBackgroundColor:", [+[TSUColor whiteColor](TSUColor "whiteColor")]);
    [(CALayer *)[(UIView *)v9->_containerView layer] addSublayer:v9->_pageHostLayer];
    v12 = objc_alloc_init(TSDNoDefaultImplicitActionLayer);
    v9->_previewLayer = v12;
    [(CALayer *)v12 setAnchorPoint:CGPointZero.x, y];
    if (v6)
    {
      v13 = objc_alloc_init(TSDNoDefaultImplicitActionLayer);
      v9->_scrimLayer = v13;
      [(CALayer *)v13 setAnchorPoint:CGPointZero.x, y];
      -[CALayer setBackgroundColor:](v9->_scrimLayer, "setBackgroundColor:", [objc_msgSend(+[TSUColor whiteColor](TSUColor "whiteColor")]);
      [(CALayer *)v9->_scrimLayer setHidden:1];
    }

    [(CALayer *)v9->_previewLayer setHidden:1];
    [(UIView *)v9->_view addSubview:v9->_containerView];
    [(CALayer *)[(UIView *)v9->_view layer] addSublayer:v9->_previewLayer];
    if (v9->_scrimLayer)
    {
      [(CALayer *)[(UIView *)v9->_view layer] addSublayer:v9->_scrimLayer];
    }

    pageContainerLayer = v9->_pageContainerLayer;
    [(TSDTilingHostingLayer *)v9->_pageHostLayer setSublayers:[NSArray arrayWithObjects:&pageContainerLayer count:1]];
    v9->_subviewsController = [[TSDCanvasSubviewsController alloc] initWithLayerAndSubviewHost:v9];
    v9->_previewState = 0;
    v9->_visible = 1;
  }

  return v9;
}

- (void)dealloc
{
  [(TSDTilingHostingLayer *)self->_pageHostLayer setController:0];

  if ([(UIView *)self->_view superview])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(UIView *)self->_view removeFromSuperview];

  if ([(UIView *)self->_borderView superview])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(UIView *)self->_borderView removeFromSuperview];

  v3.receiver = self;
  v3.super_class = THPageLayerAndSubviewHost;
  [(THPageLayerAndSubviewHost *)&v3 dealloc];
}

- (void)teardown
{
  if (self->_rep)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THPageLayerAndSubviewHost *)self setRep:0];
  [(TSDCanvasSubviewsController *)self->_subviewsController teardown];
  if ([(UIView *)self->_view superview])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(UIView *)self->_view removeFromSuperview];
  if ([(UIView *)self->_borderView superview])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  borderView = self->_borderView;

  [(UIView *)borderView removeFromSuperview];
}

- (void)setRep:(id)a3
{
  if (self->_rep != a3)
  {
    self->_rep = a3;
    -[TSDTilingHostingLayer setController:](self->_pageHostLayer, "setController:", [a3 interactiveCanvasController]);
    [(TSDTilingHostingLayer *)self->_pageHostLayer setDelegate:[(TSDRep *)self->_rep interactiveCanvasController]];
    v5 = [(TSDRep *)self->_rep interactiveCanvasController];
    pageContainerLayer = self->_pageContainerLayer;

    [(CALayer *)pageContainerLayer setDelegate:v5];
  }
}

- (void)recycle
{
  if (self->_rep)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  delegate = self->_delegate;

  [(THPageLayerAndSubviewHostDelegate *)delegate pageLayerAndSubviewHostRecycle:self];
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  [(UIView *)[(THPageLayerAndSubviewHost *)self view] setHidden:a3];
  v5 = [(THPageLayerAndSubviewHost *)self borderView];

  [(UIView *)v5 setHidden:v3];
}

- (void)p_layoutLayersWithFrame:(CGRect)a3
{
  TSDRectWithSize();
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  v11 = CGRectInset(v10, -1.0, -1.0);
  [(CALayer *)self->_borderLayer setFrame:v11.origin.x, v11.origin.y, v11.size.width, v11.size.height];
  [(CALayer *)self->_previewLayer setFrame:x, y, width, height];
  scrimLayer = self->_scrimLayer;

  [(CALayer *)scrimLayer setFrame:x, y, width, height];
}

- (void)setFrame
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (+[NSThread isMainThread])
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [(UIView *)self->_view setFrame:self->_canvasBoundsFrame.origin.x, self->_canvasBoundsFrame.origin.y, self->_canvasBoundsFrame.size.width, self->_canvasBoundsFrame.size.height];
    TSDRectWithSize();
    [(UIView *)self->_view setBounds:?];
    TSDRectWithSize();
    [(UIView *)self->_containerView setFrame:?];
    [(UIView *)self->_containerView setBounds:self->_canvasBoundsFrame.origin.x, self->_canvasBoundsFrame.origin.y, self->_canvasBoundsFrame.size.width, self->_canvasBoundsFrame.size.height];
    [(UIView *)self->_borderView setFrame:self->_canvasBoundsFrame.origin.x, self->_canvasBoundsFrame.origin.y, self->_canvasBoundsFrame.size.width, self->_canvasBoundsFrame.size.height];
    [(THPageLayerAndSubviewHost *)self p_layoutLayersWithFrame:self->_canvasBoundsFrame.origin.x, self->_canvasBoundsFrame.origin.y, self->_canvasBoundsFrame.size.width, self->_canvasBoundsFrame.size.height];

    +[CATransaction commit];
  }
}

- (void)setUnscaledFrame:(CGRect)a3 unscaledLayerOffset:(CGPoint)a4 viewScale:(double)a5
{
  TSDMultiplyRectScalar();
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  if (!CGRectEqualToRect(v16, self->_canvasBoundsFrame))
  {
    self->_canvasBoundsFrame.origin.x = x;
    self->_canvasBoundsFrame.origin.y = y;
    self->_canvasBoundsFrame.size.width = width;
    self->_canvasBoundsFrame.size.height = height;
    [(THPageLayerAndSubviewHost *)self setFrame];
  }

  TSDMultiplyPointScalar();
  if (v10 != self->_layerBoundsOffset.x || v11 != self->_layerBoundsOffset.y)
  {
    self->_layerBoundsOffset.x = v10;
    self->_layerBoundsOffset.y = v11;
    CATransform3DMakeTranslation(&v15, v10, v11, 0.0);
    pageContainerLayer = self->_pageContainerLayer;
    v14 = v15;
    [(CALayer *)pageContainerLayer setSublayerTransform:&v14];
  }
}

- (id)p_largeThumbnail
{
  objc_opt_class();
  [-[THModelPageInfo context](self->_pageInfo "context")];
  v3 = TSUDynamicCast();
  v4 = [objc_msgSend(v3 "tocModel")];
  v5 = [v3 navigationModel];
  v6 = [(THModelPageInfo *)self->_pageInfo parent];
  v7 = [v5 navigationUnitContainingContentNode:v6];
  v8 = [objc_msgSend(v5 "navigationUnits")];
  v9 = [(THModelNode *)v6 absolutePageIndexForRelativePageIndex:[(THModelPageInfo *)self->_pageInfo relativePageIndexInParent] forPresentationType:[(THModelNode *)v6 paginatedPresentationType]];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v10 = [v7 relativePageIndexForAbsolutePageIndex:v9 forPresentationType:{-[THModelNode paginatedPresentationType](v6, "paginatedPresentationType")}];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v11 = v10;
  if (v8 >= [objc_msgSend(v5 "navigationUnits")])
  {
    return 0;
  }

  v12 = [v4 objectAtIndex:v8];
  if (v11 >= [objc_msgSend(v12 "largerThumbs")])
  {
    return 0;
  }

  v13 = +[TSDBitmapImageProvider temporaryCGImageForImageData:](TSDBitmapImageProvider, "temporaryCGImageForImageData:", [objc_msgSend(v12 "largerThumbs")]);

  return [TSUImage imageWithCGImage:v13];
}

- (void)loadPreviewOnQueue:(id)a3
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  previewState = self->_previewState;
  if (previewState == 3)
  {
    self->_previewState = 2;
    [(CALayer *)self->_previewLayer removeAllAnimations];
    scrimLayer = self->_scrimLayer;

    [(CALayer *)scrimLayer removeAllAnimations];
  }

  else if (!previewState)
  {
    self->_previewState = 1;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_15F358;
    block[3] = &unk_45AE00;
    block[4] = self;
    dispatch_async(a3, block);
  }
}

- (void)unloadPreviewAnimated:(BOOL)a3
{
  previewState = self->_previewState;
  if (previewState >= 2)
  {
    if (previewState == 2)
    {
      if (a3)
      {
        self->_previewState = 3;
        +[CATransaction begin];
        [CATransaction setAnimationDuration:0.2];
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 3221225472;
        v7[2] = sub_15F694;
        v7[3] = &unk_45AE00;
        v7[4] = self;
        [CATransaction setCompletionBlock:v7];
        v5 = [CABasicAnimation animationWithKeyPath:@"opacity"];
        [(CABasicAnimation *)v5 setFromValue:[[(CALayer *)self->_previewLayer presentationLayer] valueForKeyPath:@"opacity"]];
        [(CABasicAnimation *)v5 setToValue:[NSNumber numberWithFloat:0.0]];
        [(CALayer *)self->_previewLayer addAnimation:v5 forKey:@"opacity"];
        [(CALayer *)self->_previewLayer setOpacity:0.0];
        if (self->_scrimLayer)
        {
          v6 = [CABasicAnimation animationWithKeyPath:@"opacity"];
          [(CABasicAnimation *)v6 setFromValue:[[(CALayer *)self->_scrimLayer presentationLayer] valueForKeyPath:@"opacity"]];
          [(CABasicAnimation *)v6 setToValue:[NSNumber numberWithFloat:0.0]];
          [(CALayer *)self->_scrimLayer addAnimation:v6 forKey:@"opacity"];
          [(CALayer *)self->_scrimLayer setOpacity:0.0];
        }

        +[CATransaction commit];
      }

      else
      {
        +[CATransaction begin];
        self->_previewState = 0;
        [(CALayer *)self->_previewLayer setContents:0];
        [(CALayer *)self->_previewLayer setHidden:1];
        [(CALayer *)self->_scrimLayer setHidden:1];

        +[CATransaction commit];
      }
    }
  }

  else
  {
    self->_previewState = 0;
  }
}

- (UIViewController)containerViewController
{
  v2 = [-[TSDRep interactiveCanvasController](self->_rep "interactiveCanvasController")];

  return [v2 viewController];
}

- (id)topLevelReps
{
  v2 = TSUProtocolCast();

  return [v2 childReps];
}

- (void)updateTopLevelLayers
{
  v3 = objc_alloc_init(NSMutableArray);
  [v3 addObject:self->_pageContainerLayer];
  [v3 addObjectsFromArray:{-[TSDCanvasSubviewsController updateAlternateLayersForViews](self->_subviewsController, "updateAlternateLayersForViews")}];
  if (([v3 isEqualToArray:{-[TSDTilingHostingLayer sublayers](self->_pageHostLayer, "sublayers")}] & 1) == 0)
  {
    [(TSDTilingHostingLayer *)self->_pageHostLayer setSublayers:v3];
  }
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  pageInfo = self->_pageInfo;
  rep = self->_rep;
  [(UIView *)self->_view frame];
  return [NSString stringWithFormat:@"<%@ %p; pageInfo=%@ rep=%p frame=%@ view=%@>", v4, self, pageInfo, rep, NSStringFromCGRect(v8), self->_view];
}

- (CGRect)canvasBoundsFrame
{
  x = self->_canvasBoundsFrame.origin.x;
  y = self->_canvasBoundsFrame.origin.y;
  width = self->_canvasBoundsFrame.size.width;
  height = self->_canvasBoundsFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end