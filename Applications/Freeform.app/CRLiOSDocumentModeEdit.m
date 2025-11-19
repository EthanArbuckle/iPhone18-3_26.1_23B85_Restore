@interface CRLiOSDocumentModeEdit
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldHandleDoubleTapAtPoint:(CGPoint)a3 touchType:(int64_t)a4;
@end

@implementation CRLiOSDocumentModeEdit

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  v4 = [v3 isMemberOfClass:objc_opt_class()];

  return v4;
}

- (BOOL)shouldHandleDoubleTapAtPoint:(CGPoint)a3 touchType:(int64_t)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [CRLFeatureFlagsHelper isOSFeatureEnabled:9];
  v9 = [(CRLiOSDocumentMode *)self boardViewController];
  v10 = [v9 interactiveCanvasController];

  v11 = [v10 documentIsSharedReadOnly];
  v12 = 0;
  if (v8 && (v11 & 1) == 0)
  {
    v13 = [v10 layerHost];
    v14 = [v13 asiOSCVC];

    v15 = [v14 delegate];
    v16 = [v15 pencilKitCanvasViewControllerForCanvasViewController:v14];

    v17 = [v10 hitRep:{x, y}];
    v18 = [v17 repForSelecting];

    v19 = objc_opt_class();
    v20 = sub_100014370(v19, v18);
    v21 = v20;
    if (v20 && ([v20 isLocked] & 1) == 0)
    {
      v22 = [v10 freehandDrawingToolkit];
      [v22 beginDrawingModeIfNeededForTouchType:a4];

      v23 = [v10 freehandDrawingToolkit];
      [v23 setCurrentToolSelection:10];

      v24 = [v14 canvasView];
      v25 = [v24 unscaledCoordinateSpace];
      v26 = [v14 canvasView];
      v27 = [v26 window];
      v28 = [v27 coordinateSpace];
      [v25 convertPoint:v28 toCoordinateSpace:{x, y}];
      v30 = v29;
      v32 = v31;

      v33 = [v14 smartSelectionManager];
      v34 = [v16 smartSelectionView];
      [v34 frame];
      [v10 convertBoundsToUnscaledRect:?];
      v39.x = x;
      v39.y = y;
      v35 = CGRectContainsPoint(v40, v39);

      v36 = [v16 smartSelectionView];

      if (v36 && v33 && v35)
      {
        v37 = [v16 smartSelectionView];
        [v33 handleDoubleTapInputAtUnscaledPoint:v37 inSelectionView:{v30, v32}];
      }

      else
      {
        [v33 handleDoubleTapInputAtUnscaledPoint:{v30, v32}];
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

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRLiOSDocumentMode *)self boardViewController];
  v9 = [v8 interactiveCanvasController];

  v10 = [v9 layerHost];
  v11 = [v10 asiOSCVC];

  v12 = [CRLFeatureFlagsHelper isOSFeatureEnabled:9];
  v13 = [CRLFeatureFlagsHelper isOSFeatureEnabled:11];
  v14 = [v9 drawingIntelligenceProvider];
  v15 = v14;
  v17 = 0;
  if ((v12 & 1) != 0 || v13)
  {
    if ([v14 isGestureRecognizerFromDescendantOfDetectorView:v7])
    {
      v16 = [v11 doubleTapGestureRecognizer];

      if (v16 == v6)
      {
        v17 = 1;
      }
    }
  }

  return v17;
}

@end