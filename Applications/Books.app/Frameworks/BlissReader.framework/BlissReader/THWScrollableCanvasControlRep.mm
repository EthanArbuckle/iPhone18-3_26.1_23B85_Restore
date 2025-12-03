@interface THWScrollableCanvasControlRep
- (THWScrollableCanvasControlRep)initWithLayout:(id)layout canvas:(id)canvas;
- (void)addChildViewsToArray:(id)array;
- (void)canvasDidBeginFreeTransform;
- (void)dealloc;
- (void)didAddChildView:(id)view;
- (void)updateFromLayout;
- (void)viewScrollingEnded;
- (void)willBeRemoved;
- (void)willRemoveChildView:(id)view;
@end

@implementation THWScrollableCanvasControlRep

- (THWScrollableCanvasControlRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v23.receiver = self;
  v23.super_class = THWScrollableCanvasControlRep;
  v6 = [THWScrollableCanvasControlRep initWithLayout:"initWithLayout:canvas:" canvas:?];
  if (v6)
  {
    v6->_scrollableCanvasController = -[THWScrollableCanvasController initWithDocumentRoot:]([THWScrollableCanvasController alloc], "initWithDocumentRoot:", [canvas documentRoot]);
    canvas = [(THWScrollableCanvasControlRep *)v6 canvas];
    [layout frameInRoot];
    [canvas convertUnscaledToBoundsRect:?];
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

- (void)addChildViewsToArray:(id)array
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  layout = [(THWScrollableCanvasControlRep *)self layout];
  canvas = [(THWScrollableCanvasControlRep *)self canvas];
  [layout frameInRoot];
  [canvas convertUnscaledToBoundsRect:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  scrollableCanvasController = self->_scrollableCanvasController;
  [-[THWScrollableCanvasControlRep canvas](self "canvas")];
  [(THWScrollableCanvasController *)scrollableCanvasController createViewIfNeededWithFrame:v8 viewScale:v10, v12, v14, v16];
  mainView = [(THWScrollableCanvasController *)self->_scrollableCanvasController mainView];
  if (mainView)
  {

    [array addObject:mainView];
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

- (void)willRemoveChildView:(id)view
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (view)
  {
    scrollableCanvasController = self->_scrollableCanvasController;
    if (scrollableCanvasController)
    {
      if ([(THWScrollableCanvasController *)scrollableCanvasController mainView]== view)
      {
        [NSObject cancelPreviousPerformRequestsWithTarget:[(THWScrollableCanvasController *)self->_scrollableCanvasController scrollView] selector:"flashScrollIndicators" object:0];
        v6 = self->_scrollableCanvasController;

        [(THWScrollableCanvasController *)v6 teardownView];
      }
    }
  }
}

- (void)didAddChildView:(id)view
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (view)
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
    scrollView = [(THWScrollableCanvasController *)self->_scrollableCanvasController scrollView];

    [(TSKScrollView *)scrollView performSelector:"flashScrollIndicators" withObject:0 afterDelay:0.2];
  }
}

- (void)canvasDidBeginFreeTransform
{
  interactiveCanvasController = [(THWScrollableCanvasController *)self->_scrollableCanvasController interactiveCanvasController];

  [(THInteractiveCanvasController *)interactiveCanvasController didBeginFreeTransform];
}

@end