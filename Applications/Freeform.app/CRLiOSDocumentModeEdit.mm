@interface CRLiOSDocumentModeEdit
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldHandleDoubleTapAtPoint:(CGPoint)point touchType:(int64_t)type;
@end

@implementation CRLiOSDocumentModeEdit

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = [equalCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

- (BOOL)shouldHandleDoubleTapAtPoint:(CGPoint)point touchType:(int64_t)type
{
  y = point.y;
  x = point.x;
  v8 = [CRLFeatureFlagsHelper isOSFeatureEnabled:9];
  boardViewController = [(CRLiOSDocumentMode *)self boardViewController];
  interactiveCanvasController = [boardViewController interactiveCanvasController];

  documentIsSharedReadOnly = [interactiveCanvasController documentIsSharedReadOnly];
  v12 = 0;
  if (v8 && (documentIsSharedReadOnly & 1) == 0)
  {
    layerHost = [interactiveCanvasController layerHost];
    asiOSCVC = [layerHost asiOSCVC];

    delegate = [asiOSCVC delegate];
    v16 = [delegate pencilKitCanvasViewControllerForCanvasViewController:asiOSCVC];

    v17 = [interactiveCanvasController hitRep:{x, y}];
    repForSelecting = [v17 repForSelecting];

    v19 = objc_opt_class();
    v20 = sub_100014370(v19, repForSelecting);
    v21 = v20;
    if (v20 && ([v20 isLocked] & 1) == 0)
    {
      freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
      [freehandDrawingToolkit beginDrawingModeIfNeededForTouchType:type];

      freehandDrawingToolkit2 = [interactiveCanvasController freehandDrawingToolkit];
      [freehandDrawingToolkit2 setCurrentToolSelection:10];

      canvasView = [asiOSCVC canvasView];
      unscaledCoordinateSpace = [canvasView unscaledCoordinateSpace];
      canvasView2 = [asiOSCVC canvasView];
      window = [canvasView2 window];
      coordinateSpace = [window coordinateSpace];
      [unscaledCoordinateSpace convertPoint:coordinateSpace toCoordinateSpace:{x, y}];
      v30 = v29;
      v32 = v31;

      smartSelectionManager = [asiOSCVC smartSelectionManager];
      smartSelectionView = [v16 smartSelectionView];
      [smartSelectionView frame];
      [interactiveCanvasController convertBoundsToUnscaledRect:?];
      v39.x = x;
      v39.y = y;
      v35 = CGRectContainsPoint(v40, v39);

      smartSelectionView2 = [v16 smartSelectionView];

      if (smartSelectionView2 && smartSelectionManager && v35)
      {
        smartSelectionView3 = [v16 smartSelectionView];
        [smartSelectionManager handleDoubleTapInputAtUnscaledPoint:smartSelectionView3 inSelectionView:{v30, v32}];
      }

      else
      {
        [smartSelectionManager handleDoubleTapInputAtUnscaledPoint:{v30, v32}];
      }

      v12 = 1;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  boardViewController = [(CRLiOSDocumentMode *)self boardViewController];
  interactiveCanvasController = [boardViewController interactiveCanvasController];

  layerHost = [interactiveCanvasController layerHost];
  asiOSCVC = [layerHost asiOSCVC];

  v12 = [CRLFeatureFlagsHelper isOSFeatureEnabled:9];
  v13 = [CRLFeatureFlagsHelper isOSFeatureEnabled:11];
  drawingIntelligenceProvider = [interactiveCanvasController drawingIntelligenceProvider];
  v15 = drawingIntelligenceProvider;
  v17 = 0;
  if ((v12 & 1) != 0 || v13)
  {
    if ([drawingIntelligenceProvider isGestureRecognizerFromDescendantOfDetectorView:gestureRecognizerCopy])
    {
      doubleTapGestureRecognizer = [asiOSCVC doubleTapGestureRecognizer];

      if (doubleTapGestureRecognizer == recognizerCopy)
      {
        v17 = 1;
      }
    }
  }

  return v17;
}

@end