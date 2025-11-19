@interface THWAutosizedCanvasController
- (BOOL)allowSelectionPopover;
- (BOOL)interactiveCanvasController:(id)a3 allowsEditMenuForRep:(id)a4;
- (BOOL)interactiveCanvasController:(id)a3 shouldBeginEditingTHWPRep:(id)a4 withGesture:(id)a5;
- (BOOL)interactiveCanvasControllerIsRelatedCanvasScrolling:(id)a3;
- (CGSize)canvasLayoutSize;
- (THWAutosizedCanvasController)initWithDelegate:(id)a3 documentRoot:(id)a4;
- (id)interactiveCanvasController:(id)a3 delegateConformingToProtocol:(id)a4 forRep:(id)a5;
- (id)interactiveCanvasController:(id)a3 layoutGeometryProviderForLayout:(id)a4;
- (id)interactiveCanvasController:(id)a3 primaryTargetForGesture:(id)a4;
- (void)dealloc;
- (void)interactiveCanvasControllerDidLayout:(id)a3;
- (void)interactiveCanvasControllerDidLayoutAndRenderOnBackgroundThread:(id)a3;
- (void)invalidateLayoutsAndFrames;
- (void)setupImmediatePressGesture;
- (void)teardown;
@end

@implementation THWAutosizedCanvasController

- (THWAutosizedCanvasController)initWithDelegate:(id)a3 documentRoot:(id)a4
{
  v8.receiver = self;
  v8.super_class = THWAutosizedCanvasController;
  v6 = [(THWAutosizedCanvasController *)&v8 init];
  if (v6)
  {
    v6->_documentRoot = a4;
    v6->_delegate = a3;
    THCanvasCreate(v6, &v6->_interactiveCanvasController, &v6->_canvasViewController);
    [(TSDInteractiveCanvasController *)v6->_interactiveCanvasController disableAllGestures];
    [(TSDInteractiveCanvasController *)v6->_interactiveCanvasController setAllowLayoutAndRenderOnThread:1];
    [(TSDInteractiveCanvasController *)v6->_interactiveCanvasController setCreateRepsForOffscreenLayouts:1];
  }

  return v6;
}

- (void)dealloc
{
  [(TSDInteractiveCanvasController *)[(THWAutosizedCanvasController *)self interactiveCanvasController] setDelegate:0];

  v3.receiver = self;
  v3.super_class = THWAutosizedCanvasController;
  [(THWAutosizedCanvasController *)&v3 dealloc];
}

- (void)teardown
{
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController teardown];
  canvasViewController = self->_canvasViewController;

  [(TSDiOSCanvasViewController *)canvasViewController teardown];
}

- (BOOL)allowSelectionPopover
{
  v3 = [(THWAutosizedCanvasController *)self delegate];

  return [(THWAutosizedCanvasControllerDelegate *)v3 allowSelectionPopoverForAutosizedCanvasController:self];
}

- (id)interactiveCanvasController:(id)a3 layoutGeometryProviderForLayout:(id)a4
{
  v6 = [(THWAutosizedCanvasController *)self delegate];

  return [(THWAutosizedCanvasControllerDelegate *)v6 autosizedCanvasController:self geometryProviderForLayout:a4];
}

- (id)interactiveCanvasController:(id)a3 delegateConformingToProtocol:(id)a4 forRep:(id)a5
{
  v8 = [(THWAutosizedCanvasController *)self delegate];

  return [(THWAutosizedCanvasControllerDelegate *)v8 autosizedCanvasController:self delegateConformingToProtocol:a4 forRep:a5];
}

- (id)interactiveCanvasController:(id)a3 primaryTargetForGesture:(id)a4
{
  v6 = [(THWAutosizedCanvasController *)self delegate];

  return [(THWAutosizedCanvasControllerDelegate *)v6 autosizedCanvasController:self primaryTargetForGesture:a4];
}

- (void)interactiveCanvasControllerDidLayout:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  v4 = sub_177DF4;
  v5 = &unk_45AE00;
  v6 = self;
  if (+[NSThread isMainThread])
  {
    v4(block);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (BOOL)interactiveCanvasControllerIsRelatedCanvasScrolling:(id)a3
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = self->_delegate;

  return [(THWAutosizedCanvasControllerDelegate *)delegate autosizedCanvasControllerIsRelatedCanvasScrolling:self];
}

- (void)interactiveCanvasControllerDidLayoutAndRenderOnBackgroundThread:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [(THWAutosizedCanvasControllerDelegate *)delegate autosizedCanvasControllerDidLayoutAndRenderOnBackgroundThread:self];
  }
}

- (BOOL)interactiveCanvasController:(id)a3 allowsEditMenuForRep:(id)a4
{
  v6 = [(THWAutosizedCanvasController *)self delegate];

  return [(THWAutosizedCanvasControllerDelegate *)v6 autosizedCanvasController:self allowsEditMenuForRep:a4];
}

- (BOOL)interactiveCanvasController:(id)a3 shouldBeginEditingTHWPRep:(id)a4 withGesture:(id)a5
{
  v6 = [(THWAutosizedCanvasController *)self delegate];
  objc_opt_class();
  v7 = TSUDynamicCast();

  return [(THWAutosizedCanvasControllerDelegate *)v6 autosizedCanvasController:self allowsSelectionForRep:v7];
}

- (void)setupImmediatePressGesture
{
  if (!self->_immediatePressGesture)
  {
    v4 = [TSWPLongPressGestureRecognizer alloc];
    v5 = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController gestureDispatcher];
    v6 = [v4 initWithGestureDispatcher:v5 gestureKind:TSWPImmediatePress];
    self->_immediatePressGesture = v6;
    [(TSWPLongPressGestureRecognizer *)v6 setNumberOfTapsRequired:0];
    [(TSWPLongPressGestureRecognizer *)self->_immediatePressGesture setNumberOfTouchesRequired:1];
    [(TSWPLongPressGestureRecognizer *)self->_immediatePressGesture setMinimumPressDuration:0.0];
    v7 = [(TSDiOSCanvasViewController *)self->_canvasViewController viewForGestureRecognizer:self->_immediatePressGesture];
    immediatePressGesture = self->_immediatePressGesture;

    [v7 addGestureRecognizer:immediatePressGesture];
  }
}

- (void)invalidateLayoutsAndFrames
{
  v2 = [-[TSDInteractiveCanvasController layoutController](self->_interactiveCanvasController "layoutController")];
  v3 = objc_alloc_init(NSMutableArray);
  [v2 addLayoutsToArray:v3];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
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

        objc_opt_class();
        v8 = TSUDynamicCast();
        if (v8)
        {
          v9 = v8;
          [v8 invalidateFrame];
          [v9 invalidateChildren];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (CGSize)canvasLayoutSize
{
  width = self->_canvasLayoutSize.width;
  height = self->_canvasLayoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end