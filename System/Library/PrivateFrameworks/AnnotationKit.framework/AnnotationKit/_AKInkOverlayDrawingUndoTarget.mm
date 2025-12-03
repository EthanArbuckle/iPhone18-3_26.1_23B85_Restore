@interface _AKInkOverlayDrawingUndoTarget
- (AKPageController)pageController;
- (_AKInkOverlayDrawingUndoTarget)initWithPageController:(id)controller;
- (void)performUndo:(id)undo;
@end

@implementation _AKInkOverlayDrawingUndoTarget

- (_AKInkOverlayDrawingUndoTarget)initWithPageController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = _AKInkOverlayDrawingUndoTarget;
  v5 = [(_AKInkOverlayDrawingUndoTarget *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_pageController, controllerCopy);
  }

  return v6;
}

- (void)performUndo:(id)undo
{
  undoCopy = undo;
  pageController = [(_AKInkOverlayDrawingUndoTarget *)self pageController];
  v5 = pageController;
  if (pageController)
  {
    if ([pageController relinquishablesAreLoaded])
    {
      inkPageOverlayController = [v5 inkPageOverlayController];
      inkOverlayView = [inkPageOverlayController inkOverlayView];
      canvasView = [inkOverlayView canvasView];
      drawing = [canvasView drawing];

      uuid = [drawing uuid];
      drawingUUID = [undoCopy drawingUUID];
      v12 = [uuid isEqual:drawingUUID];

      if (v12)
      {
        canvasView2 = [inkOverlayView canvasView];
        [canvasView2 performUndo:undoCopy];
LABEL_8:
      }
    }

    else
    {
      inkPageOverlayController = [v5 pageModelController];
      inkCanvasAnnotation = [inkPageOverlayController inkCanvasAnnotation];
      inkOverlayView = inkCanvasAnnotation;
      if (!inkCanvasAnnotation)
      {
LABEL_10:

        goto LABEL_11;
      }

      drawing = [inkCanvasAnnotation drawing];
      if (drawing)
      {
        controller = [v5 controller];
        undoController = [controller undoController];
        canvasView2 = [undoController undoManager];

        actionName = [undoCopy actionName];
        [canvasView2 setActionName:actionName];

        inverted = [undoCopy inverted];
        [inverted registerWithUndoManager:canvasView2 target:self selector:sel_performUndo_];
        [undoCopy applyToDrawing:drawing];

        goto LABEL_8;
      }
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (AKPageController)pageController
{
  WeakRetained = objc_loadWeakRetained(&self->_pageController);

  return WeakRetained;
}

@end