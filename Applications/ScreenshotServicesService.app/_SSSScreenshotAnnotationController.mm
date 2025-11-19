@interface _SSSScreenshotAnnotationController
+ (id)annotationDataFromAnnotations:(id)a3;
+ (id)annotationsFromAnnotationData:(id)a3;
- (BOOL)_updateAnnotationsForViewState:(id)a3 createUndoCommand:(BOOL)a4;
- (CGRect)maxPageRectWithPageIndex:(unint64_t)a3 forAnnotationController:(id)a4;
- (CGRect)rectToCenterAboveKeyboard;
- (CGRect)visibleRectOfOverlayAtPageIndex:(unint64_t)a3 forAnnotationController:(id)a4;
- (_SSSScreenshotAnnotationController)init;
- (double)modelBaseScaleFactorOfPageAtIndex:(unint64_t)a3 forAnnotationController:(id)a4;
- (id)contentSnapshot;
- (id)doubleTapGestureRecognizer;
- (id)gestureRecognizers;
- (id)layerContainingQuickBackgroundForLoupeOnOverlayAtPageIndex:(unint64_t)a3 forAnnotationController:(id)a4;
- (id)longPressGestureRecognizer;
- (id)newContentSnapshotPDFDataIncludingAdornments:(BOOL)a3 atScale:(double)a4 inRect:(CGRect)a5 onOverlayAtPageIndex:(unint64_t)a6 forAnnotationController:(id)a7;
- (id)overlayView;
- (id)pageModelController;
- (id)panGestureRecognizer;
- (id)popoverPresentingViewControllerForAnnotationController:(id)a3;
- (id)rotationGestureRecognizer;
- (id)tapGestureRecognizer;
- (id)undoManagerForAnnotationController:(id)a3;
- (void)_enableInkingOnAKController:(BOOL)a3;
- (void)_prepareAKController;
- (void)_updateAnnotationsCreateUndoCommand:(BOOL)a3;
- (void)controllerDidDismissPopover:(id)a3;
- (void)dealloc;
- (void)editDetectedForAnnotationController:(id)a3;
- (void)endedEditingWithOverlay;
- (void)handleDrawingGestureRecognizerUpdate:(id)a3;
- (void)installDrawingGestureRecognizer:(id)a3 forPageAtIndex:(unint64_t)a4 forAnnotationController:(id)a5;
- (void)logDidEnterEditingWithOverlay;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)penStrokeCompletedForAnnotationController:(id)a3;
- (void)setActive:(BOOL)a3;
- (void)setAnnotationKitController:(id)a3 didAllocate:(BOOL)a4;
- (void)setGesturesEnabled:(BOOL)a3;
- (void)setScreenshot:(id)a3;
- (void)uninstallDrawingGestureRecognizer:(id)a3 forPageAtIndex:(unint64_t)a4 forAnnotationController:(id)a5;
- (void)updateDrawingGestureRecognizer:(id)a3 forPageAtIndex:(unint64_t)a4 withPriority:(BOOL)a5 forAnnotationController:(id)a6;
- (void)updateUndoState;
@end

@implementation _SSSScreenshotAnnotationController

- (_SSSScreenshotAnnotationController)init
{
  v6.receiver = self;
  v6.super_class = _SSSScreenshotAnnotationController;
  v2 = [(_SSSScreenshotAnnotationController *)&v6 init];
  v3 = objc_alloc_init(_SSSScreenshotAnnotationControllerAKOverlayContainerView);
  overlayView = v2->_overlayView;
  v2->_overlayView = v3;

  return v2;
}

- (void)dealloc
{
  v3 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  if (v3)
  {
    if (-[_SSSScreenshotAnnotationController _isEditingScreenshotImage](self, "_isEditingScreenshotImage") && [v3 isOverlayViewLoadedAtIndex:0])
    {
      [v3 relinquishOverlayAtIndex:0];
    }

    [(_SSSScreenshotAnnotationController *)self setAnnotationKitController:0];
  }

  v4.receiver = self;
  v4.super_class = _SSSScreenshotAnnotationController;
  [(_SSSScreenshotAnnotationController *)&v4 dealloc];
}

- (id)pageModelController
{
  if ([(_SSSScreenshotAnnotationController *)self _isEditingScreenshotImage])
  {
    v3 = self->_pageModelController;
  }

  else
  {
    v4 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
    v5 = [v4 modelController];
    [(_SSSScreenshotContentOverlayController *)self viewState];
    v3 = [v5 pageModelControllerForPage:v6];
  }

  return v3;
}

- (void)setAnnotationKitController:(id)a3 didAllocate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  v8 = v7;
  if (v7 != v6)
  {
    if (self->_shouldTeardownAnnotationController)
    {
      [v7 removeObserver:self forKeyPath:@"modifiedImageDescription" context:off_1000D3B60];
      [v8 teardown];
    }

    v9.receiver = self;
    v9.super_class = _SSSScreenshotAnnotationController;
    [(_SSSScreenshotContentOverlayController *)&v9 setAnnotationKitController:v6];
    self->_shouldTeardownAnnotationController = v4;
    if (v6 && v4)
    {
      [v6 addObserver:self forKeyPath:@"modifiedImageDescription" options:1 context:off_1000D3B60];
    }
  }
}

- (void)_prepareAKController
{
  v3 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];

  if (v3)
  {
    [(_SSSScreenshotAnnotationController *)self setAnnotationKitController:0];
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v4 = qword_1000D4A90;
  v31 = qword_1000D4A90;
  if (!qword_1000D4A90)
  {
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_10003D5BC;
    v26 = &unk_1000B9FA8;
    v27 = &v28;
    sub_10003D5BC(&v23);
    v4 = v29[3];
  }

  v5 = v4;
  _Block_object_dispose(&v28, 8);
  v6 = [v4 controllerWithDelegate:self];
  [(_SSSScreenshotAnnotationController *)self setAnnotationKitController:v6 didAllocate:1];

  v7 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  [v7 setAnnotationEditingEnabled:1];

  v8 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  [v8 setPencilAlwaysDraws:1];

  v9 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  [v9 setUseHighVisibilityDefaultInks:1];

  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v10 = qword_1000D4AA0;
  v31 = qword_1000D4AA0;
  if (!qword_1000D4AA0)
  {
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_10003D788;
    v26 = &unk_1000B9FA8;
    v27 = &v28;
    sub_10003D788(&v23);
    v10 = v29[3];
  }

  v11 = v10;
  _Block_object_dispose(&v28, 8);
  v12 = objc_alloc_init(v10);
  pageModelController = self->_pageModelController;
  self->_pageModelController = v12;

  v14 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  v15 = [v14 modelController];
  v16 = [v15 mutableArrayValueForKey:@"pageModelControllers"];
  [v16 addObject:self->_pageModelController];

  v17 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  [v17 setCurrentPageIndex:0];

  [(_SSSScreenshotAnnotationController *)self _enableInkingOnAKController:1];
  v18 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  [v18 prepareOverlayAtIndex:0];

  overlayView = self->_overlayView;
  v20 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  v21 = [v20 overlayViewAtIndex:0];
  [(_SSSScreenshotAnnotationControllerAKOverlayContainerView *)overlayView setManagedView:v21];

  v22 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  [v22 setRulerHostingDelegate:self];
}

- (void)_enableInkingOnAKController:(BOOL)a3
{
  v3 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  [v3 setToolMode:4];
}

- (void)setActive:(BOOL)a3
{
  v3 = a3;
  if ([(_SSSScreenshotContentOverlayController *)self active]!= a3)
  {
    v5 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];

    if (v5)
    {
      v14.receiver = self;
      v14.super_class = _SSSScreenshotAnnotationController;
      [(_SSSScreenshotContentOverlayController *)&v14 setActive:v3];
      v6 = [(_SSSScreenshotAnnotationController *)self _isEditingScreenshotImage];
      if (v3)
      {
        if (v6)
        {
          v7 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
          [v7 prepareOverlayAtIndex:0];

          overlayView = self->_overlayView;
          v9 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
          v10 = [v9 overlayViewAtIndex:0];
          [(_SSSScreenshotAnnotationControllerAKOverlayContainerView *)overlayView setManagedView:v10];
        }

        v11 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
        [v11 setRulerHostingDelegate:self];

        [(_SSSScreenshotAnnotationController *)self _enableInkingOnAKController:1];
      }

      else
      {
        if (v6)
        {
          [(_SSSScreenshotAnnotationControllerAKOverlayContainerView *)self->_overlayView setManagedView:0];
          v12 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
          [v12 relinquishOverlayAtIndex:0];
        }

        v13 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
        [v13 setRulerHostingDelegate:0];
      }
    }
  }
}

- (void)setScreenshot:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _SSSScreenshotAnnotationController;
  [(_SSSScreenshotContentOverlayController *)&v11 setScreenshot:v4];
  v5 = +[NSNotificationCenter defaultCenter];
  v6 = sub_10003B1BC();
  [v5 removeObserver:self name:v6 object:0];

  if ([(_SSSScreenshotAnnotationController *)self _isEditingScreenshotImage])
  {
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      [(_SSSScreenshotAnnotationController *)self _prepareAKController];
    }
  }

  else if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v7 = [v4 representation];
    v8 = [v7 screenshotRepresentationAKControllerForPDF];

    v9 = +[NSNotificationCenter defaultCenter];
    v10 = sub_10003B1BC();
    [v9 addObserver:self selector:"handleDrawingGestureRecognizerUpdate:" name:v10 object:v8];

    [v8 _updateGestureDependencyPriority];
  }
}

- (id)overlayView
{
  if ([(_SSSScreenshotAnnotationController *)self _isEditingScreenshotImage])
  {
    v3 = self->_overlayView;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CGRect)rectToCenterAboveKeyboard
{
  v42.receiver = self;
  v42.super_class = _SSSScreenshotAnnotationController;
  [(_SSSScreenshotContentOverlayController *)&v42 rectToCenterAboveKeyboard];
  x = v2;
  y = v4;
  width = v6;
  height = v8;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v10 = [(_SSSScreenshotAnnotationController *)self pageModelController];
  v11 = [v10 selectedAnnotations];

  v12 = [v11 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v12)
  {
    v13 = *v39;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v38 + 1) + 8 * i);
        t2.a = 0.0;
        *&t2.b = &t2;
        *&t2.c = 0x2050000000;
        v16 = qword_1000D4AB0;
        *&t2.d = qword_1000D4AB0;
        if (!qword_1000D4AB0)
        {
          *&v37.a = _NSConcreteStackBlock;
          *&v37.b = 3221225472;
          *&v37.c = sub_10003D830;
          *&v37.d = &unk_1000B9FA8;
          *&v37.tx = &t2;
          sub_10003D830(&v37);
          v16 = *(*&t2.b + 24);
        }

        v17 = v16;
        _Block_object_dispose(&t2, 8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v15 drawingBounds];
          x = v18;
          y = v19;
          width = v20;
          height = v21;
          goto LABEL_13;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  if (!CGRectIsNull(v44))
  {
    v22 = [(_SSSScreenshotContentOverlayController *)self screenshot];
    v23 = [v22 environmentDescription];
    [v23 imagePointSize];
    v25 = v24;

    v31 = *&CGAffineTransformIdentity.c;
    *&v37.a = *&CGAffineTransformIdentity.a;
    v33 = *&v37.a;
    *&v37.c = v31;
    *&v37.tx = *&CGAffineTransformIdentity.tx;
    v30 = *&v37.tx;
    CGAffineTransformMakeScale(&t2, 1.0, -1.0);
    *&t1.a = v33;
    *&t1.c = v31;
    *&t1.tx = v30;
    CGAffineTransformConcat(&v37, &t1, &t2);
    CGAffineTransformMakeTranslation(&t1, 0.0, v25);
    v34 = v37;
    CGAffineTransformConcat(&t2, &v34, &t1);
    v37 = t2;
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    v46 = CGRectApplyAffineTransform(v45, &t2);
    x = v46.origin.x;
    y = v46.origin.y;
    width = v46.size.width;
    height = v46.size.height;
  }

  v26 = x;
  v27 = y;
  v28 = width;
  v29 = height;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (id)gestureRecognizers
{
  v3 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];

  if (v3)
  {
    v15 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
    v4 = [v15 tapGestureRecognizer];
    v16[0] = v4;
    v5 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
    v6 = [v5 pressGestureRecognizer];
    v16[1] = v6;
    v7 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
    v8 = [v7 doubleTapGestureRecognizer];
    v16[2] = v8;
    v9 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
    v10 = [v9 panGestureRecognizer];
    v16[3] = v10;
    v11 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
    v12 = [v11 rotationGestureRecognizer];
    v16[4] = v12;
    v13 = [NSArray arrayWithObjects:v16 count:5];
  }

  else
  {
    v13 = &__NSArray0__struct;
  }

  return v13;
}

- (id)tapGestureRecognizer
{
  v2 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  v3 = [v2 tapGestureRecognizer];

  return v3;
}

- (id)doubleTapGestureRecognizer
{
  v2 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  v3 = [v2 doubleTapGestureRecognizer];

  return v3;
}

- (id)longPressGestureRecognizer
{
  v2 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  v3 = [v2 pressGestureRecognizer];

  return v3;
}

- (id)panGestureRecognizer
{
  v2 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  v3 = [v2 panGestureRecognizer];

  return v3;
}

- (id)rotationGestureRecognizer
{
  v2 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  v3 = [v2 rotationGestureRecognizer];

  return v3;
}

- (void)setGesturesEnabled:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = _SSSScreenshotAnnotationController;
  [(_SSSScreenshotContentOverlayController *)&v6 setGesturesEnabled:?];
  v5 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  [v5 setAnnotationEditingEnabled:v3];
}

- (void)updateUndoState
{
  v3 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  [v3 validateUndo:0];

  v4 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  [v4 validateRedo:0];
}

- (void)logDidEnterEditingWithOverlay
{
  v2 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v3 = qword_1000D4AB8;
  v9 = qword_1000D4AB8;
  if (!qword_1000D4AB8)
  {
    v4 = sub_10003D614();
    v7[3] = dlsym(v4, "AKStatisticsDocumentTypeImage");
    qword_1000D4AB8 = v7[3];
    v3 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v3)
  {
    v5 = sub_100074B84();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  [v2 beginLogging:@"screenshotservices" documentType:*v3];
}

- (void)endedEditingWithOverlay
{
  v2 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  [v2 endLogging];
}

- (void)_updateAnnotationsCreateUndoCommand:(BOOL)a3
{
  v3 = a3;
  if ([(_SSSScreenshotAnnotationController *)self _isEditingScreenshotImage])
  {
    v6 = [(_SSSScreenshotContentOverlayController *)self viewState];

    [(_SSSScreenshotAnnotationController *)self _updateAnnotationsForViewState:v6 createUndoCommand:v5, v3];
    return;
  }

  v7 = [(_SSSScreenshotContentOverlayController *)self screenshot];
  v8 = [v7 PDFDocument];
  v9 = [v8 pageCount];

  if (v9 <= 1 && !v3)
  {
    v22 = [(_SSSScreenshotContentOverlayController *)self delegate];
    v10 = [(_SSSScreenshotContentOverlayController *)self screenshot];
    v11 = v22;
    v12 = v10;
    v13 = 0;
LABEL_16:
    [v11 screenshot:v12 didHaveChangeOnPage:v13];

    return;
  }

  v14 = [(_SSSScreenshotContentOverlayController *)self screenshot];
  v15 = [v14 PDFDocument];
  v16 = [v15 pageCount];

  if (v16)
  {
    v17 = 0;
    v18 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      if ([(_SSSScreenshotAnnotationController *)self _updateAnnotationsForViewState:[(_SSSScreenshotContentOverlayController *)self viewState] createUndoCommand:v17, v3])
      {
        v18 = v17;
      }

      ++v17;
      v19 = [(_SSSScreenshotContentOverlayController *)self screenshot];
      v20 = [v19 PDFDocument];
      v21 = [v20 pageCount];
    }

    while (v17 < v21);
    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = [(_SSSScreenshotContentOverlayController *)self delegate];
      v10 = [(_SSSScreenshotContentOverlayController *)self screenshot];
      v11 = v22;
      v12 = v10;
      v13 = v18;
      goto LABEL_16;
    }
  }
}

- (BOOL)_updateAnnotationsForViewState:(id)a3 createUndoCommand:(BOOL)a4
{
  v4 = a4;
  var1 = a3.var1;
  var0 = a3.var0;
  v8 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  v9 = [v8 modelController];
  v10 = [v9 pageModelControllerForPage:var1];

  if (v10)
  {
    v11 = [(_SSSScreenshotContentOverlayController *)self screenshot];
    v12 = [v11 viewModificationInfoForState:{var0, var1}];

    v13 = [v10 annotations];
    v14 = [_SSSScreenshotAnnotationController annotationDataFromAnnotations:v13];

    v15 = [v12 annotationNSDatas];
    v16 = [v14 isEqual:v15];
    v17 = v16 ^ 1;
    if ((v16 & 1) == 0)
    {
      v30 = v15;
      v31 = v14;
      v32 = v16 ^ 1;
      v33 = v12;
      v34 = var0;
      v35 = var1;
      v36 = v4;
      v18 = +[NSMutableArray array];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v37 = v10;
      v19 = [v10 annotations];
      v20 = [v19 countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v39;
        do
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v39 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v38 + 1) + 8 * i);
            v25 = [v24 copy];
            if (v25)
            {
              [v18 addObject:v25];
            }

            else
            {
              v26 = os_log_create("com.apple.screenshotservices", "AnnotationEditing");
              if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
              {
                v27 = [v24 displayName];
                *buf = 138412546;
                v43 = v27;
                v44 = 2112;
                v45 = v24;
                _os_log_fault_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, "Copied annotation was nil for annotation %@ %@", buf, 0x16u);
              }
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v38 objects:v46 count:16];
        }

        while (v21);
      }

      v12 = v33;
      [v33 setOriginalAnnotations:v18];
      v14 = v31;
      [v33 setAnnotationNSDatas:v31];
      v28 = [(_SSSScreenshotContentOverlayController *)self screenshot];
      [v28 promoteViewValueToModelValueForKey:1 forState:v34 createUndoCommand:{v35, v36}];

      v10 = v37;
      v17 = v32;
      v15 = v30;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)annotationDataFromAnnotations:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) dataRepresentation];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)annotationsFromAnnotationData:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v23 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v19 = 0;
        v20 = &v19;
        v21 = 0x2050000000;
        v10 = qword_1000D4AC0;
        v22 = qword_1000D4AC0;
        if (!qword_1000D4AC0)
        {
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_10003D8D8;
          v18[3] = &unk_1000B9FA8;
          v18[4] = &v19;
          sub_10003D8D8(v18);
          v10 = v20[3];
        }

        v11 = v10;
        _Block_object_dispose(&v19, 8);
        v12 = [v10 annotationWithData:{v9, v14}];
        [v4 addObject:v12];
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v23 count:16];
    }

    while (v6);
  }

  return v4;
}

- (void)editDetectedForAnnotationController:(id)a3
{
  [(_SSSScreenshotAnnotationController *)self _updateAnnotationsCreateUndoCommand:0];
  if ([(_SSSScreenshotAnnotationController *)self _isEditingScreenshotImage])
  {
    v4 = [(_SSSScreenshotContentOverlayController *)self delegate];
    [v4 screenshotDidMakeAnnotationEditOnImage];
  }
}

- (void)penStrokeCompletedForAnnotationController:(id)a3
{
  self->_didDrawPenStroke = 1;
  [(_SSSScreenshotAnnotationController *)self _updateAnnotations];
  if ([(_SSSScreenshotAnnotationController *)self _isEditingScreenshotImage])
  {
    v4 = [(_SSSScreenshotContentOverlayController *)self delegate];
    [v4 screenshotDidMakeAnnotationEditOnImage];
  }
}

- (CGRect)maxPageRectWithPageIndex:(unint64_t)a3 forAnnotationController:(id)a4
{
  y = CGRectZero.origin.y;
  v5 = [(_SSSScreenshotContentOverlayController *)self screenshot:a3];
  v6 = [v5 environmentDescription];
  [v6 imagePointSize];
  v8 = v7;
  v10 = v9;

  x = CGRectZero.origin.x;
  v12 = y;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = x;
  return result;
}

- (CGRect)visibleRectOfOverlayAtPageIndex:(unint64_t)a3 forAnnotationController:(id)a4
{
  v22 = 0u;
  v23 = 0;
  v21 = 0u;
  v5 = [(_SSSScreenshotContentOverlayController *)self screenshot:a3];
  v6 = [(_SSSScreenshotContentOverlayController *)self viewState];
  v8 = [v5 modelModificationInfoForState:{v6, v7}];
  v9 = v8;
  if (v8)
  {
    [v8 cropInfo];
  }

  else
  {
    v22 = 0u;
    v23 = 0;
    v21 = 0u;
  }

  v10 = *(&v22 + 1);
  v11 = v23;
  v13 = *(&v21 + 1);
  v12 = *&v22;
  v15 = *&CGAffineTransformIdentity.c;
  *&v20.a = *&CGAffineTransformIdentity.a;
  v16 = *&v20.a;
  *&v20.c = v15;
  *&v20.tx = *&CGAffineTransformIdentity.tx;
  v14 = *&v20.tx;
  CGAffineTransformMakeScale(&t2, 1.0, -1.0);
  *&t1.a = v16;
  *&t1.c = v15;
  *&t1.tx = v14;
  CGAffineTransformConcat(&v20, &t1, &t2);
  CGAffineTransformMakeTranslation(&t1, 0.0, v13);
  v17 = v20;
  CGAffineTransformConcat(&t2, &v17, &t1);
  v20 = t2;
  v24.origin.x = v12;
  v24.origin.y = v10;
  v24.size = v11;
  return CGRectApplyAffineTransform(v24, &t2);
}

- (double)modelBaseScaleFactorOfPageAtIndex:(unint64_t)a3 forAnnotationController:(id)a4
{
  v5 = [(_SSSScreenshotAnnotationController *)self overlayView:a3];
  v6 = [v5 window];

  v7 = 1.0;
  if ([(_SSSScreenshotContentOverlayController *)self active]&& v6)
  {
    v8 = [(_SSSScreenshotAnnotationController *)self overlayView];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [(_SSSScreenshotAnnotationController *)self overlayView];
    [v6 convertRect:v17 fromView:{v10, v12, v14, v16}];
    v19 = v18;

    [v6 bounds];
    if (v19 <= 0.0)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = v20 / v19;
    }
  }

  return v7;
}

- (id)newContentSnapshotPDFDataIncludingAdornments:(BOOL)a3 atScale:(double)a4 inRect:(CGRect)a5 onOverlayAtPageIndex:(unint64_t)a6 forAnnotationController:(id)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v14 = a7;
  v15 = [(_SSSScreenshotContentOverlayController *)self screenshot];
  v16 = [v15 imageProvider];
  v17 = [v16 requestCGImageBackedUneditedImageForUIBlocking];
  v18 = [v17 CGImage];

  v19 = [v14 overlayViewAtIndex:a6];

  v20 = [(_SSSScreenshotContentOverlayController *)self screenshot];
  v21 = [v20 environmentDescription];
  [v21 imageScale];
  v23 = v22;

  CGAffineTransformMakeScale(&v63, v23, v23);
  v64.origin.x = x;
  v64.origin.y = y;
  v64.size.width = width;
  v64.size.height = height;
  v65 = CGRectApplyAffineTransform(v64, &v63);
  v24 = v65.origin.x;
  v25 = v65.origin.y;
  v62 = v65.origin.y;
  v26 = v65.size.width;
  v27 = v65.size.height;
  *&v63.a = CGPointZero;
  sx = a4;
  v63.c = v65.size.width * a4;
  v63.d = v65.size.height * a4;
  v28 = CGImageGetWidth(v18);
  v29 = CGImageGetHeight(v18);
  v66.origin.x = v24;
  v66.origin.y = v25;
  v66.size.width = v26;
  v66.size.height = v27;
  v67 = CGRectIntegral(v66);
  v30 = v67.origin.x;
  v31 = v67.origin.y;
  v32 = v67.size.width;
  v33 = v67.size.height;
  v34 = CGRectGetWidth(v67);
  v60 = v30;
  v68.origin.x = v30;
  v68.origin.y = v31;
  v61 = v33;
  v68.size.width = v32;
  v68.size.height = v33;
  v35 = CGRectGetHeight(v68);
  v69.origin.x = v24;
  v69.origin.y = v62;
  v69.size.width = v26;
  v69.size.height = v27;
  if (CGRectIsEmpty(v69))
  {
    goto LABEL_16;
  }

  v56 = v34;
  v36 = vcvtad_u64_f64(v34);
  v37 = vcvtad_u64_f64(v35);
  ColorSpace = CGImageGetColorSpace(v18);
  if (!ColorSpace || (v39 = ColorSpace, CGColorSpaceUsesExtendedRange(ColorSpace)) || CGColorSpaceIsWideGamutRGB(v39))
  {
    v40 = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
    v39 = v40;
  }

  else
  {
    v40 = 0;
  }

  v41 = CGColorSpaceGetNumberOfComponents(v39) != 1;
  v42 = CGBitmapContextCreate(0, v36, v37, 8uLL, 0, v39, v41);
  if (v42)
  {
    v43 = v42;
    v44 = v28;
    v45 = +[UIColor whiteColor];
    CGContextSetFillColorWithColor(v43, [v45 CGColor]);

    v70.origin.x = v60;
    v70.origin.y = v31;
    v70.size.width = v32;
    v70.size.height = v61;
    CGContextFillRect(v43, v70);
    CGContextTranslateCTM(v43, -v60, -v31);
    CGContextSetInterpolationQuality(v43, kCGInterpolationNone);
    v71.origin.x = 0.0;
    v71.origin.y = 0.0;
    v71.size.width = v44;
    v71.size.height = v29;
    CGContextDrawImage(v43, v71, v18);
    Image = CGBitmapContextCreateImage(v43);
    CGContextRelease(v43);
    if (!v40)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  Image = 0;
  if (v40)
  {
LABEL_8:
    CGColorSpaceRelease(v40);
  }

LABEL_9:
  if (!Image)
  {
LABEL_16:
    v48 = 0;
    goto LABEL_17;
  }

  Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
  v48 = Mutable;
  if (Mutable)
  {
    v49 = CGDataConsumerCreateWithCFData(Mutable);
    if (v49)
    {
      v50 = v49;
      v51 = CGPDFContextCreate(v49, &v63, 0);
      if (v51)
      {
        v52 = v51;
        CGPDFContextBeginPage(v51, 0);
        CGContextSaveGState(v52);
        CGContextScaleCTM(v52, sx, sx);
        v72.origin.x = v24;
        v72.origin.y = v62;
        v72.size.width = v26;
        v72.size.height = v27;
        sxa = CGRectGetMinX(v72);
        v73.origin.x = v60;
        v73.origin.y = v31;
        v73.size.width = v32;
        v73.size.height = v61;
        sxb = sxa - CGRectGetMinX(v73);
        v74.origin.x = v24;
        v74.origin.y = v62;
        v74.size.width = v26;
        v74.size.height = v27;
        MinY = CGRectGetMinY(v74);
        v75.origin.x = v60;
        v75.origin.y = v31;
        v75.size.width = v32;
        v75.size.height = v61;
        v54 = CGRectGetMinY(v75);
        CGContextTranslateCTM(v52, -sxb, -(MinY - v54));
        CGContextSetInterpolationQuality(v52, kCGInterpolationNone);
        v76.origin.x = 0.0;
        v76.origin.y = 0.0;
        v76.size.height = round(v35);
        v76.size.width = round(v56);
        CGContextDrawImage(v52, v76, Image);
        CGContextRestoreGState(v52);
        CGPDFContextEndPage(v52);
        CGPDFContextClose(v52);
        CGContextRelease(v52);
      }

      CGDataConsumerRelease(v50);
    }
  }

  CGImageRelease(Image);
LABEL_17:

  return v48;
}

- (id)contentSnapshot
{
  v2 = [(_SSSScreenshotContentOverlayController *)self delegate];
  v3 = [v2 contentSnapshot];

  return v3;
}

- (id)undoManagerForAnnotationController:(id)a3
{
  v4 = [(_SSSScreenshotContentOverlayController *)self screenshot];
  v5 = [v4 undoManagerForEditMode:{-[_SSSScreenshotContentOverlayController viewState](self, "viewState")}];

  return v5;
}

- (id)popoverPresentingViewControllerForAnnotationController:(id)a3
{
  v3 = [(_SSSScreenshotContentOverlayController *)self delegate];
  v4 = [v3 viewControllerForOverlayPresentations];

  return v4;
}

- (void)controllerDidDismissPopover:(id)a3
{
  v4 = [(_SSSScreenshotAnnotationController *)self popoverPresentingViewControllerForAnnotationController:a3];
  v3 = [v4 view];
  [v3 setNeedsLayout];
}

- (id)layerContainingQuickBackgroundForLoupeOnOverlayAtPageIndex:(unint64_t)a3 forAnnotationController:(id)a4
{
  v4 = [(_SSSScreenshotContentOverlayController *)self delegate:a3];
  v5 = [v4 viewContainingScreenshotContents];
  v6 = [v5 layer];

  return v6;
}

- (void)installDrawingGestureRecognizer:(id)a3 forPageAtIndex:(unint64_t)a4 forAnnotationController:(id)a5
{
  v6 = a3;
  v7 = [(_SSSScreenshotContentOverlayController *)self delegate];
  [v7 installInterstitialGesture:v6];
}

- (void)uninstallDrawingGestureRecognizer:(id)a3 forPageAtIndex:(unint64_t)a4 forAnnotationController:(id)a5
{
  v6 = a3;
  v7 = [(_SSSScreenshotContentOverlayController *)self delegate];
  [v7 uninstallInterstitialGesture:v6];
}

- (void)updateDrawingGestureRecognizer:(id)a3 forPageAtIndex:(unint64_t)a4 withPriority:(BOOL)a5 forAnnotationController:(id)a6
{
  v6 = a5;
  v8 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [(_SSSScreenshotAnnotationController *)self gestureRecognizers];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v8 requireGestureRecognizerToFail:*(*(&v16 + 1) + 8 * i)];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v14 = [(_SSSScreenshotContentOverlayController *)self delegate];
  v15 = v14;
  if (v6)
  {
    [v14 requireAllOtherGestureRecognizersToFailBeforeGestureRecognizer:v8];
  }

  else
  {
    [v14 requireGestureRecognizerToFailBeforeAllOtherGestureRecognizers:v8];
  }
}

- (void)handleDrawingGestureRecognizerUpdate:(id)a3
{
  v9 = [a3 userInfo];
  v4 = [v9 objectForKeyedSubscript:@"drawingGestureRecognizer"];
  v5 = [v9 objectForKeyedSubscript:@"highPriority"];
  v6 = [v5 BOOLValue];

  v7 = [(_SSSScreenshotContentOverlayController *)self delegate];
  v8 = v7;
  if (v6)
  {
    [v7 requireAllOtherGestureRecognizersToFailBeforeGestureRecognizer:v4];
  }

  else
  {
    [v7 requireGestureRecognizerToFailBeforeAllOtherGestureRecognizers:v4];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (off_1000D3B60 == a6)
  {
    if ([a3 isEqualToString:{@"modifiedImageDescription", a4, a5}])
    {
      v7 = [(_SSSScreenshotContentOverlayController *)self screenshot];
      v8 = [v7 viewModificationInfo];
      v9 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
      v10 = [v9 modifiedImageDescription];
      [v8 setImageDescription:v10];

      v13 = [(_SSSScreenshotContentOverlayController *)self screenshot];
      v11 = [(_SSSScreenshotContentOverlayController *)self viewState];
      [v13 promoteViewValueToModelValueForKey:4 forState:v11 createUndoCommand:{v12, 0}];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = _SSSScreenshotAnnotationController;
    [(_SSSScreenshotAnnotationController *)&v14 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

@end