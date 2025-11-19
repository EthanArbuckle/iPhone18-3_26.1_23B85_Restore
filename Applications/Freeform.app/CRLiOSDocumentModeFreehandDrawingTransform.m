@interface CRLiOSDocumentModeFreehandDrawingTransform
- (BOOL)allowGestureInRestrictedGestureMode:(id)a3;
- (CRLiOSDocumentModeFreehandDrawingTransform)initWithBoardViewController:(id)a3 andInteractiveCanvasController:(id)a4;
- (void)modeDidBeginFromMode:(id)a3 forced:(BOOL)a4;
- (void)modeWillBeginFromMode:(id)a3 forced:(BOOL)a4;
- (void)modeWillEndForMode:(id)a3 forced:(BOOL)a4;
- (void)p_doneButtonTapped:(id)a3;
- (void)p_endTransformMode;
- (void)selectionPathDidChange:(id)a3;
- (void)toolkitDidUpdateCurrentToolSelection;
@end

@implementation CRLiOSDocumentModeFreehandDrawingTransform

- (CRLiOSDocumentModeFreehandDrawingTransform)initWithBoardViewController:(id)a3 andInteractiveCanvasController:(id)a4
{
  v5.receiver = self;
  v5.super_class = CRLiOSDocumentModeFreehandDrawingTransform;
  return [(CRLiOSDocumentModeFreehandDrawing *)&v5 initWithBoardViewController:a3 andInteractiveCanvasController:a4];
}

- (void)modeWillBeginFromMode:(id)a3 forced:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
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
  [(CRLiOSDocumentModeFreehandDrawing *)&v12 modeWillBeginFromMode:v6 forced:v4];
}

- (void)modeDidBeginFromMode:(id)a3 forced:(BOOL)a4
{
  v9.receiver = self;
  v9.super_class = CRLiOSDocumentModeFreehandDrawingTransform;
  [(CRLiOSDocumentModeFreehandDrawing *)&v9 modeDidBeginFromMode:a3 forced:a4];
  if ([CRLFeatureFlagsHelper isOSFeatureEnabled:9])
  {
    v5 = [(CRLiOSDocumentModeFreehandDrawing *)self interactiveCanvasController];
    v6 = [v5 layerHost];
    v7 = [v6 asiOSCVC];

    v8 = [v7 smartSelectionManager];
    [v8 beginSuppressingSmartSelection];
  }
}

- (void)modeWillEndForMode:(id)a3 forced:(BOOL)a4
{
  v9.receiver = self;
  v9.super_class = CRLiOSDocumentModeFreehandDrawingTransform;
  [(CRLiOSDocumentModeFreehandDrawing *)&v9 modeWillEndForMode:a3 forced:a4];
  if ([CRLFeatureFlagsHelper isOSFeatureEnabled:9])
  {
    v5 = [(CRLiOSDocumentModeFreehandDrawing *)self interactiveCanvasController];
    v6 = [v5 layerHost];
    v7 = [v6 asiOSCVC];

    v8 = [v7 smartSelectionManager];
    [v8 endSuppressingSmartSelection];
  }
}

- (BOOL)allowGestureInRestrictedGestureMode:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSDocumentModeFreehandDrawing *)self interactiveCanvasController];
  v6 = [v5 layerHost];
  v7 = [v6 asiOSCVC];

  v11.receiver = self;
  v11.super_class = CRLiOSDocumentModeFreehandDrawingTransform;
  if ([(CRLiOSDocumentModeFreehandDrawing *)&v11 allowGestureInRestrictedGestureMode:v4])
  {
    v8 = 1;
  }

  else
  {
    v9 = [v7 repRotateGestureRecognizer];
    v8 = v9 == v4;
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

- (void)p_doneButtonTapped:(id)a3
{
  v4 = [(CRLiOSDocumentMode *)self boardViewController];
  v3 = [v4 documentModeController];
  [v3 resetToDefaultModeAnimated:1];
}

- (void)selectionPathDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = CRLiOSDocumentModeFreehandDrawingTransform;
  [(CRLiOSDocumentModeFreehandDrawing *)&v4 selectionPathDidChange:a3];
  [(CRLiOSDocumentModeFreehandDrawingTransform *)self p_endTransformMode];
}

- (void)p_endTransformMode
{
  v7 = [(CRLiOSDocumentMode *)self boardViewController];
  v3 = [CRLiOSDocumentModeFreehandDrawing alloc];
  v4 = [(CRLiOSDocumentModeFreehandDrawing *)self interactiveCanvasController];
  v5 = [(CRLiOSDocumentModeFreehandDrawing *)v3 initWithBoardViewController:v7 andInteractiveCanvasController:v4];

  v6 = [v7 documentModeController];
  [v6 setMode:v5 animated:0];
}

@end