@interface CRLiOSDocumentModeFreehandDrawingTransform
- (BOOL)allowGestureInRestrictedGestureMode:(id)mode;
- (CRLiOSDocumentModeFreehandDrawingTransform)initWithBoardViewController:(id)controller andInteractiveCanvasController:(id)canvasController;
- (void)modeDidBeginFromMode:(id)mode forced:(BOOL)forced;
- (void)modeWillBeginFromMode:(id)mode forced:(BOOL)forced;
- (void)modeWillEndForMode:(id)mode forced:(BOOL)forced;
- (void)p_doneButtonTapped:(id)tapped;
- (void)p_endTransformMode;
- (void)selectionPathDidChange:(id)change;
- (void)toolkitDidUpdateCurrentToolSelection;
@end

@implementation CRLiOSDocumentModeFreehandDrawingTransform

- (CRLiOSDocumentModeFreehandDrawingTransform)initWithBoardViewController:(id)controller andInteractiveCanvasController:(id)canvasController
{
  v5.receiver = self;
  v5.super_class = CRLiOSDocumentModeFreehandDrawingTransform;
  return [(CRLiOSDocumentModeFreehandDrawing *)&v5 initWithBoardViewController:controller andInteractiveCanvasController:canvasController];
}

- (void)modeWillBeginFromMode:(id)mode forced:(BOOL)forced
{
  forcedCopy = forced;
  modeCopy = mode;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101356AF0();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101356B04(v7, v8);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101356BB0();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v9, v7);
    }

    v10 = [NSString stringWithUTF8String:"[CRLiOSDocumentModeFreehandDrawingTransform modeWillBeginFromMode:forced:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLiOSDocumentModeFreehandDrawingTransform.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:23 isFatal:0 description:"Transform mode is a submode of freehand drawing mode and can only transition from a freehand drawing mode"];
  }

  v12.receiver = self;
  v12.super_class = CRLiOSDocumentModeFreehandDrawingTransform;
  [(CRLiOSDocumentModeFreehandDrawing *)&v12 modeWillBeginFromMode:modeCopy forced:forcedCopy];
}

- (void)modeDidBeginFromMode:(id)mode forced:(BOOL)forced
{
  v9.receiver = self;
  v9.super_class = CRLiOSDocumentModeFreehandDrawingTransform;
  [(CRLiOSDocumentModeFreehandDrawing *)&v9 modeDidBeginFromMode:mode forced:forced];
  if ([CRLFeatureFlagsHelper isOSFeatureEnabled:9])
  {
    interactiveCanvasController = [(CRLiOSDocumentModeFreehandDrawing *)self interactiveCanvasController];
    layerHost = [interactiveCanvasController layerHost];
    asiOSCVC = [layerHost asiOSCVC];

    smartSelectionManager = [asiOSCVC smartSelectionManager];
    [smartSelectionManager beginSuppressingSmartSelection];
  }
}

- (void)modeWillEndForMode:(id)mode forced:(BOOL)forced
{
  v9.receiver = self;
  v9.super_class = CRLiOSDocumentModeFreehandDrawingTransform;
  [(CRLiOSDocumentModeFreehandDrawing *)&v9 modeWillEndForMode:mode forced:forced];
  if ([CRLFeatureFlagsHelper isOSFeatureEnabled:9])
  {
    interactiveCanvasController = [(CRLiOSDocumentModeFreehandDrawing *)self interactiveCanvasController];
    layerHost = [interactiveCanvasController layerHost];
    asiOSCVC = [layerHost asiOSCVC];

    smartSelectionManager = [asiOSCVC smartSelectionManager];
    [smartSelectionManager endSuppressingSmartSelection];
  }
}

- (BOOL)allowGestureInRestrictedGestureMode:(id)mode
{
  modeCopy = mode;
  interactiveCanvasController = [(CRLiOSDocumentModeFreehandDrawing *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  asiOSCVC = [layerHost asiOSCVC];

  v11.receiver = self;
  v11.super_class = CRLiOSDocumentModeFreehandDrawingTransform;
  if ([(CRLiOSDocumentModeFreehandDrawing *)&v11 allowGestureInRestrictedGestureMode:modeCopy])
  {
    v8 = 1;
  }

  else
  {
    repRotateGestureRecognizer = [asiOSCVC repRotateGestureRecognizer];
    v8 = repRotateGestureRecognizer == modeCopy;
  }

  return v8;
}

- (void)toolkitDidUpdateCurrentToolSelection
{
  v3.receiver = self;
  v3.super_class = CRLiOSDocumentModeFreehandDrawingTransform;
  [(CRLiOSDocumentModeFreehandDrawing *)&v3 toolkitDidUpdateCurrentToolSelection];
  [(CRLiOSDocumentModeFreehandDrawingTransform *)self p_endTransformMode];
}

- (void)p_doneButtonTapped:(id)tapped
{
  boardViewController = [(CRLiOSDocumentMode *)self boardViewController];
  documentModeController = [boardViewController documentModeController];
  [documentModeController resetToDefaultModeAnimated:1];
}

- (void)selectionPathDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = CRLiOSDocumentModeFreehandDrawingTransform;
  [(CRLiOSDocumentModeFreehandDrawing *)&v4 selectionPathDidChange:change];
  [(CRLiOSDocumentModeFreehandDrawingTransform *)self p_endTransformMode];
}

- (void)p_endTransformMode
{
  boardViewController = [(CRLiOSDocumentMode *)self boardViewController];
  v3 = [CRLiOSDocumentModeFreehandDrawing alloc];
  interactiveCanvasController = [(CRLiOSDocumentModeFreehandDrawing *)self interactiveCanvasController];
  v5 = [(CRLiOSDocumentModeFreehandDrawing *)v3 initWithBoardViewController:boardViewController andInteractiveCanvasController:interactiveCanvasController];

  documentModeController = [boardViewController documentModeController];
  [documentModeController setMode:v5 animated:0];
}

@end