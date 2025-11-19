@interface THWPagedCanvasControlRep
- (THWPagedCanvasControlRep)initWithLayout:(id)a3 canvas:(id)a4;
- (id)viewControllerForView:(id)a3;
- (void)addAlternateLayersForChildViewsToArray:(id)a3;
- (void)addChildViewsToArray:(id)a3;
- (void)dealloc;
- (void)updateFromLayout;
- (void)viewScrollingEnded;
- (void)willBeRemoved;
- (void)willRemoveChildView:(id)a3;
@end

@implementation THWPagedCanvasControlRep

- (THWPagedCanvasControlRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v23.receiver = self;
  v23.super_class = THWPagedCanvasControlRep;
  v6 = [THWPagedCanvasControlRep initWithLayout:"initWithLayout:canvas:" canvas:?];
  if (v6)
  {
    v6->_pagedCanvasController = -[THWPagedCanvasController initWithDocumentRoot:]([THWPagedCanvasController alloc], "initWithDocumentRoot:", [a4 documentRoot]);
    v7 = [(THWPagedCanvasControlRep *)v6 canvas];
    [a3 frameInRoot];
    [v7 convertUnscaledToBoundsRect:?];
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
  v2 = [(THWPagedCanvasControlRep *)self interactiveCanvasController];

  [v2 invalidateReps];
}

- (void)addAlternateLayersForChildViewsToArray:(id)a3
{
  v4 = [(THWPagedCanvasController *)self->_pagedCanvasController alternateLayerForView];
  if (v4)
  {

    [a3 addObject:v4];
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

- (void)addChildViewsToArray:(id)a3
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
  v19 = [(THWPagedCanvasController *)self->_pagedCanvasController view];
  if (v19)
  {

    [a3 addObject:v19];
  }
}

- (id)viewControllerForView:(id)a3
{
  if ([(THWPagedCanvasController *)self->_pagedCanvasController view]!= a3)
  {
    return 0;
  }

  v5 = [(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)self->_pagedCanvasController interactiveCanvasController] layerHost];

  return [v5 viewController];
}

- (void)willBeRemoved
{
  v3.receiver = self;
  v3.super_class = THWPagedCanvasControlRep;
  [(THWControlRep *)&v3 willBeRemoved];
  [(THWPagedCanvasController *)self->_pagedCanvasController teardownController];
  [(THWPagedCanvasController *)self->_pagedCanvasController setDelegate:0];
}

- (void)willRemoveChildView:(id)a3
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (a3)
  {
    pagedCanvasController = self->_pagedCanvasController;
    if (pagedCanvasController)
    {
      if ([(THWPagedCanvasController *)pagedCanvasController view]== a3)
      {
        v6 = self->_pagedCanvasController;

        [(THWPagedCanvasController *)v6 teardownView];
      }
    }
  }
}

@end