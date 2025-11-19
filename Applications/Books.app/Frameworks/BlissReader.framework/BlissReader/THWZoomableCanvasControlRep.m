@interface THWZoomableCanvasControlRep
- (THWZoomableCanvasControlRep)initWithLayout:(id)a3 canvas:(id)a4;
- (id)viewControllerForView:(id)a3;
- (void)addAlternateLayersForChildViewsToArray:(id)a3;
- (void)addChildViewsToArray:(id)a3;
- (void)dealloc;
- (void)didAddChildView:(id)a3;
- (void)updateFromLayout;
- (void)willBeRemoved;
- (void)willRemoveChildView:(id)a3;
@end

@implementation THWZoomableCanvasControlRep

- (THWZoomableCanvasControlRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v17.receiver = self;
  v17.super_class = THWZoomableCanvasControlRep;
  v5 = [(THWZoomableCanvasControlRep *)&v17 initWithLayout:a3 canvas:?];
  if (v5)
  {
    v6 = -[THWZoomableCanvasController initWithDocumentRoot:]([THWZoomableCanvasController alloc], "initWithDocumentRoot:", [a4 documentRoot]);
    v5->_zoomableCanvasController = v6;
    [-[THWZoomableCanvasControlRep layout](v5 "layout")];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [-[THWZoomableCanvasControlRep canvas](v5 "canvas")];
    [(THWZoomableCanvasController *)v6 createLayerHostIfNeededWithUnscaledFrame:v8 viewScale:v10, v12, v14, v15];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWZoomableCanvasControlRep;
  [(THWZoomableCanvasControlRep *)&v3 dealloc];
}

- (void)updateFromLayout
{
  v13.receiver = self;
  v13.super_class = THWZoomableCanvasControlRep;
  [(THWZoomableCanvasControlRep *)&v13 updateFromLayout];
  [-[THWZoomableCanvasControlRep layout](self "layout")];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  zoomableCanvasController = self->_zoomableCanvasController;
  [-[THWZoomableCanvasControlRep canvas](self "canvas")];
  [(THWZoomableCanvasController *)zoomableCanvasController setUnscaledFrame:v4 viewScale:v6, v8, v10, v12];
}

- (void)addAlternateLayersForChildViewsToArray:(id)a3
{
  v4 = [(THWClippingLayerHost *)[(THWZoomableCanvasController *)self->_zoomableCanvasController clippingLayerHost] layer];
  if (v4)
  {

    [a3 addObject:v4];
  }
}

- (void)addChildViewsToArray:(id)a3
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [-[THWZoomableCanvasControlRep layout](self "layout")];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  zoomableCanvasController = self->_zoomableCanvasController;
  [-[THWZoomableCanvasControlRep interactiveCanvasController](self "interactiveCanvasController")];
  [(THWZoomableCanvasController *)zoomableCanvasController createViewIfNeededWithUnscaledFrame:v6 viewScale:v8, v10, v12, v14];
  v15 = [(THWZoomableCanvasController *)self->_zoomableCanvasController scrollView];
  if (v15)
  {

    [a3 addObject:v15];
  }
}

- (id)viewControllerForView:(id)a3
{
  if ([(THWZoomableCanvasController *)self->_zoomableCanvasController scrollView]!= a3)
  {
    return 0;
  }

  v5 = [(THWZoomableCanvasController *)self->_zoomableCanvasController layerHost];

  return [(TSDCanvasLayerHosting *)v5 viewController];
}

- (void)willBeRemoved
{
  v3.receiver = self;
  v3.super_class = THWZoomableCanvasControlRep;
  [(THWControlRep *)&v3 willBeRemoved];
  [(THWZoomableCanvasController *)self->_zoomableCanvasController teardownController];
  [(THWZoomableCanvasController *)self->_zoomableCanvasController setDelegate:0];
}

- (void)willRemoveChildView:(id)a3
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (a3)
  {
    zoomableCanvasController = self->_zoomableCanvasController;
    if (zoomableCanvasController)
    {
      if ([(THWZoomableCanvasController *)zoomableCanvasController scrollView]== a3)
      {
        v6 = self->_zoomableCanvasController;

        [(THWZoomableCanvasController *)v6 teardownView];
      }
    }
  }
}

- (void)didAddChildView:(id)a3
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (a3)
  {
    zoomableCanvasController = self->_zoomableCanvasController;

    [(THWZoomableCanvasController *)zoomableCanvasController didAddView];
  }
}

@end