@interface THWScrollableCanvasControlRep
- (THWScrollableCanvasControlRep)initWithLayout:(id)a3 canvas:(id)a4;
- (void)addChildViewsToArray:(id)a3;
- (void)canvasDidBeginFreeTransform;
- (void)dealloc;
- (void)didAddChildView:(id)a3;
- (void)updateFromLayout;
- (void)viewScrollingEnded;
- (void)willBeRemoved;
- (void)willRemoveChildView:(id)a3;
@end

@implementation THWScrollableCanvasControlRep

- (THWScrollableCanvasControlRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v23.receiver = self;
  v23.super_class = THWScrollableCanvasControlRep;
  v6 = [THWScrollableCanvasControlRep initWithLayout:"initWithLayout:canvas:" canvas:?];
  if (v6)
  {
    v6->_scrollableCanvasController = -[THWScrollableCanvasController initWithDocumentRoot:]([THWScrollableCanvasController alloc], "initWithDocumentRoot:", [a4 documentRoot]);
    v7 = [(THWScrollableCanvasControlRep *)v6 canvas];
    [a3 frameInRoot];
    [v7 convertUnscaledToBoundsRect:?];
    scrollableCanvasController = v6->_scrollableCanvasController;
    [-[THWScrollableCanvasControlRep canvas](v6 "canvas")];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [-[THWScrollableCanvasControlRep canvas](v6 "canvas")];
    [(THWScrollableCanvasController *)scrollableCanvasController createLayerHostIfNeededWithFrame:v14 viewScale:v16, v18, v20, v21];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWScrollableCanvasControlRep;
  [(THWScrollableCanvasControlRep *)&v3 dealloc];
}

- (void)updateFromLayout
{
  v17.receiver = self;
  v17.super_class = THWScrollableCanvasControlRep;
  [(THWScrollableCanvasControlRep *)&v17 updateFromLayout];
  [-[THWScrollableCanvasControlRep layout](self "layout")];
  [-[THWScrollableCanvasControlRep canvas](self "canvas")];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  scrollableCanvasController = self->_scrollableCanvasController;
  [-[THWScrollableCanvasControlRep canvas](self "canvas")];
  [(THWScrollableCanvasController *)scrollableCanvasController setFrame:v8 scale:v10, v12, v14, v16];
}

- (void)addChildViewsToArray:(id)a3
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v5 = [(THWScrollableCanvasControlRep *)self layout];
  v6 = [(THWScrollableCanvasControlRep *)self canvas];
  [v5 frameInRoot];
  [v6 convertUnscaledToBoundsRect:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  scrollableCanvasController = self->_scrollableCanvasController;
  [-[THWScrollableCanvasControlRep canvas](self "canvas")];
  [(THWScrollableCanvasController *)scrollableCanvasController createViewIfNeededWithFrame:v8 viewScale:v10, v12, v14, v16];
  v17 = [(THWScrollableCanvasController *)self->_scrollableCanvasController mainView];
  if (v17)
  {

    [a3 addObject:v17];
  }
}

- (void)willBeRemoved
{
  v3.receiver = self;
  v3.super_class = THWScrollableCanvasControlRep;
  [(THWControlRep *)&v3 willBeRemoved];
  [NSObject cancelPreviousPerformRequestsWithTarget:[(THWScrollableCanvasController *)self->_scrollableCanvasController scrollView] selector:"flashScrollIndicators" object:0];
  [(THWScrollableCanvasController *)self->_scrollableCanvasController teardownController];
  [(THWScrollableCanvasController *)self->_scrollableCanvasController setDelegate:0];
}

- (void)willRemoveChildView:(id)a3
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (a3)
  {
    scrollableCanvasController = self->_scrollableCanvasController;
    if (scrollableCanvasController)
    {
      if ([(THWScrollableCanvasController *)scrollableCanvasController mainView]== a3)
      {
        [NSObject cancelPreviousPerformRequestsWithTarget:[(THWScrollableCanvasController *)self->_scrollableCanvasController scrollView] selector:"flashScrollIndicators" object:0];
        v6 = self->_scrollableCanvasController;

        [(THWScrollableCanvasController *)v6 teardownView];
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
    scrollableCanvasController = self->_scrollableCanvasController;

    [(THWScrollableCanvasController *)scrollableCanvasController didAddView];
  }
}

- (void)viewScrollingEnded
{
  if ([(THWScrollableCanvasControlRep *)self isVisibleOnCanvas])
  {
    [NSObject cancelPreviousPerformRequestsWithTarget:[(THWScrollableCanvasController *)self->_scrollableCanvasController scrollView] selector:"flashScrollIndicators" object:0];
    v3 = [(THWScrollableCanvasController *)self->_scrollableCanvasController scrollView];

    [(TSKScrollView *)v3 performSelector:"flashScrollIndicators" withObject:0 afterDelay:0.2];
  }
}

- (void)canvasDidBeginFreeTransform
{
  v2 = [(THWScrollableCanvasController *)self->_scrollableCanvasController interactiveCanvasController];

  [(THInteractiveCanvasController *)v2 didBeginFreeTransform];
}

@end