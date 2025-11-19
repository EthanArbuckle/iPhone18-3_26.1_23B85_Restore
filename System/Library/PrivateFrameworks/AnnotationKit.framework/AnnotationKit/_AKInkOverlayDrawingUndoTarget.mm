@interface _AKInkOverlayDrawingUndoTarget
- (AKPageController)pageController;
- (_AKInkOverlayDrawingUndoTarget)initWithPageController:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation _AKInkOverlayDrawingUndoTarget

- (_AKInkOverlayDrawingUndoTarget)initWithPageController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _AKInkOverlayDrawingUndoTarget;
  v5 = [(_AKInkOverlayDrawingUndoTarget *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_pageController, v4);
  }

  return v6;
}

- (void)performUndo:(id)a3
{
  v19 = a3;
  v4 = [(_AKInkOverlayDrawingUndoTarget *)self pageController];
  v5 = v4;
  if (v4)
  {
    if ([v4 relinquishablesAreLoaded])
    {
      v6 = [v5 inkPageOverlayController];
      v7 = [v6 inkOverlayView];
      v8 = [v7 canvasView];
      v9 = [v8 drawing];

      v10 = [v9 uuid];
      v11 = [v19 drawingUUID];
      v12 = [v10 isEqual:v11];

      if (v12)
      {
        v13 = [v7 canvasView];
        [v13 performUndo:v19];
LABEL_8:
      }
    }

    else
    {
      v6 = [v5 pageModelController];
      v14 = [v6 inkCanvasAnnotation];
      v7 = v14;
      if (!v14)
      {
LABEL_10:

        goto LABEL_11;
      }

      v9 = [v14 drawing];
      if (v9)
      {
        v15 = [v5 controller];
        v16 = [v15 undoController];
        v13 = [v16 undoManager];

        v17 = [v19 actionName];
        [v13 setActionName:v17];

        v18 = [v19 inverted];
        [v18 registerWithUndoManager:v13 target:self selector:sel_performUndo_];
        [v19 applyToDrawing:v9];

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