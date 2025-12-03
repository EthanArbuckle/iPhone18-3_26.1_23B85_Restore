@interface THWPagedCanvasControlRep
- (THWPagedCanvasControlRep)initWithLayout:(id)layout canvas:(id)canvas;
- (id)viewControllerForView:(id)view;
- (void)addAlternateLayersForChildViewsToArray:(id)array;
- (void)addChildViewsToArray:(id)array;
- (void)dealloc;
- (void)updateFromLayout;
- (void)viewScrollingEnded;
- (void)willBeRemoved;
- (void)willRemoveChildView:(id)view;
@end

@implementation THWPagedCanvasControlRep

- (THWPagedCanvasControlRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v23.receiver = self;
  v23.super_class = THWPagedCanvasControlRep;
  v6 = [THWPagedCanvasControlRep initWithLayout:"initWithLayout:canvas:" canvas:?];
  if (v6)
  {
    v6->_pagedCanvasController = -[THWPagedCanvasController initWithDocumentRoot:]([THWPagedCanvasController alloc], "initWithDocumentRoot:", [canvas documentRoot]);
    canvas = [(THWPagedCanvasControlRep *)v6 canvas];
    [layout frameInRoot];
    [canvas convertUnscaledToBoundsRect:?];
    pagedCanvasController = v6->_pagedCanvasController;
    [-[THWPagedCanvasControlRep canvas](v6 "canvas")];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [-[THWPagedCanvasControlRep interactiveCanvasController](v6 "interactiveCanvasController")];
    [(THWPagedCanvasController *)pagedCanvasController createLayerHostIfNeededWithFrame:v14 viewScale:v16, v18, v20, v21];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWPagedCanvasControlRep;
  [(THWPagedCanvasControlRep *)&v3 dealloc];
}

- (void)viewScrollingEnded
{
  interactiveCanvasController = [(THWPagedCanvasControlRep *)self interactiveCanvasController];

  [interactiveCanvasController invalidateReps];
}

- (void)addAlternateLayersForChildViewsToArray:(id)array
{
  alternateLayerForView = [(THWPagedCanvasController *)self->_pagedCanvasController alternateLayerForView];
  if (alternateLayerForView)
  {

    [array addObject:alternateLayerForView];
  }
}

- (void)updateFromLayout
{
  v17.receiver = self;
  v17.super_class = THWPagedCanvasControlRep;
  [(THWPagedCanvasControlRep *)&v17 updateFromLayout];
  [-[THWPagedCanvasControlRep layout](self "layout")];
  [-[THWPagedCanvasControlRep canvas](self "canvas")];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  pagedCanvasController = self->_pagedCanvasController;
  [-[THWPagedCanvasControlRep canvas](self "canvas")];
  [(THWPagedCanvasController *)pagedCanvasController setFrame:v8 scale:v10, v12, v14, v16];
}

- (void)addChildViewsToArray:(id)array
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [-[THWPagedCanvasControlRep layout](self "layout")];
  [-[THWPagedCanvasControlRep canvas](self "canvas")];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  pagedCanvasController = self->_pagedCanvasController;
  [-[THWPagedCanvasControlRep canvas](self "canvas")];
  [(THWPagedCanvasController *)pagedCanvasController createViewIfNeededWithFrame:v10 viewScale:v12, v14, v16, v18];
  view = [(THWPagedCanvasController *)self->_pagedCanvasController view];
  if (view)
  {

    [array addObject:view];
  }
}

- (id)viewControllerForView:(id)view
{
  if ([(THWPagedCanvasController *)self->_pagedCanvasController view]!= view)
  {
    return 0;
  }

  layerHost = [(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)self->_pagedCanvasController interactiveCanvasController] layerHost];

  return [layerHost viewController];
}

- (void)willBeRemoved
{
  v3.receiver = self;
  v3.super_class = THWPagedCanvasControlRep;
  [(THWControlRep *)&v3 willBeRemoved];
  [(THWPagedCanvasController *)self->_pagedCanvasController teardownController];
  [(THWPagedCanvasController *)self->_pagedCanvasController setDelegate:0];
}

- (void)willRemoveChildView:(id)view
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (view)
  {
    pagedCanvasController = self->_pagedCanvasController;
    if (pagedCanvasController)
    {
      if ([(THWPagedCanvasController *)pagedCanvasController view]== view)
      {
        v6 = self->_pagedCanvasController;

        [(THWPagedCanvasController *)v6 teardownView];
      }
    }
  }
}

@end