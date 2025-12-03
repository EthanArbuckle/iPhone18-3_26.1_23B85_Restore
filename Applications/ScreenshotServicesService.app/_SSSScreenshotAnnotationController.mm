@interface _SSSScreenshotAnnotationController
+ (id)annotationDataFromAnnotations:(id)annotations;
+ (id)annotationsFromAnnotationData:(id)data;
- (BOOL)_updateAnnotationsForViewState:(id)state createUndoCommand:(BOOL)command;
- (CGRect)maxPageRectWithPageIndex:(unint64_t)index forAnnotationController:(id)controller;
- (CGRect)rectToCenterAboveKeyboard;
- (CGRect)visibleRectOfOverlayAtPageIndex:(unint64_t)index forAnnotationController:(id)controller;
- (_SSSScreenshotAnnotationController)init;
- (double)modelBaseScaleFactorOfPageAtIndex:(unint64_t)index forAnnotationController:(id)controller;
- (id)contentSnapshot;
- (id)doubleTapGestureRecognizer;
- (id)gestureRecognizers;
- (id)layerContainingQuickBackgroundForLoupeOnOverlayAtPageIndex:(unint64_t)index forAnnotationController:(id)controller;
- (id)longPressGestureRecognizer;
- (id)newContentSnapshotPDFDataIncludingAdornments:(BOOL)adornments atScale:(double)scale inRect:(CGRect)rect onOverlayAtPageIndex:(unint64_t)index forAnnotationController:(id)controller;
- (id)overlayView;
- (id)pageModelController;
- (id)panGestureRecognizer;
- (id)popoverPresentingViewControllerForAnnotationController:(id)controller;
- (id)rotationGestureRecognizer;
- (id)tapGestureRecognizer;
- (id)undoManagerForAnnotationController:(id)controller;
- (void)_enableInkingOnAKController:(BOOL)controller;
- (void)_prepareAKController;
- (void)_updateAnnotationsCreateUndoCommand:(BOOL)command;
- (void)controllerDidDismissPopover:(id)popover;
- (void)dealloc;
- (void)editDetectedForAnnotationController:(id)controller;
- (void)endedEditingWithOverlay;
- (void)handleDrawingGestureRecognizerUpdate:(id)update;
- (void)installDrawingGestureRecognizer:(id)recognizer forPageAtIndex:(unint64_t)index forAnnotationController:(id)controller;
- (void)logDidEnterEditingWithOverlay;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)penStrokeCompletedForAnnotationController:(id)controller;
- (void)setActive:(BOOL)active;
- (void)setAnnotationKitController:(id)controller didAllocate:(BOOL)allocate;
- (void)setGesturesEnabled:(BOOL)enabled;
- (void)setScreenshot:(id)screenshot;
- (void)uninstallDrawingGestureRecognizer:(id)recognizer forPageAtIndex:(unint64_t)index forAnnotationController:(id)controller;
- (void)updateDrawingGestureRecognizer:(id)recognizer forPageAtIndex:(unint64_t)index withPriority:(BOOL)priority forAnnotationController:(id)controller;
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
  annotationKitController = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  if (annotationKitController)
  {
    if (-[_SSSScreenshotAnnotationController _isEditingScreenshotImage](self, "_isEditingScreenshotImage") && [annotationKitController isOverlayViewLoadedAtIndex:0])
    {
      [annotationKitController relinquishOverlayAtIndex:0];
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
    annotationKitController = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
    modelController = [annotationKitController modelController];
    [(_SSSScreenshotContentOverlayController *)self viewState];
    v3 = [modelController pageModelControllerForPage:v6];
  }

  return v3;
}

- (void)setAnnotationKitController:(id)controller didAllocate:(BOOL)allocate
{
  allocateCopy = allocate;
  controllerCopy = controller;
  annotationKitController = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  v8 = annotationKitController;
  if (annotationKitController != controllerCopy)
  {
    if (self->_shouldTeardownAnnotationController)
    {
      [annotationKitController removeObserver:self forKeyPath:@"modifiedImageDescription" context:off_1000D3B60];
      [v8 teardown];
    }

    v9.receiver = self;
    v9.super_class = _SSSScreenshotAnnotationController;
    [(_SSSScreenshotContentOverlayController *)&v9 setAnnotationKitController:controllerCopy];
    self->_shouldTeardownAnnotationController = allocateCopy;
    if (controllerCopy && allocateCopy)
    {
      [controllerCopy addObserver:self forKeyPath:@"modifiedImageDescription" options:1 context:off_1000D3B60];
    }
  }
}

- (void)_prepareAKController
{
  annotationKitController = [(_SSSScreenshotContentOverlayController *)self annotationKitController];

  if (annotationKitController)
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

  annotationKitController2 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  [annotationKitController2 setAnnotationEditingEnabled:1];

  annotationKitController3 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  [annotationKitController3 setPencilAlwaysDraws:1];

  annotationKitController4 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  [annotationKitController4 setUseHighVisibilityDefaultInks:1];

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

  annotationKitController5 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  modelController = [annotationKitController5 modelController];
  v16 = [modelController mutableArrayValueForKey:@"pageModelControllers"];
  [v16 addObject:self->_pageModelController];

  annotationKitController6 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  [annotationKitController6 setCurrentPageIndex:0];

  [(_SSSScreenshotAnnotationController *)self _enableInkingOnAKController:1];
  annotationKitController7 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  [annotationKitController7 prepareOverlayAtIndex:0];

  overlayView = self->_overlayView;
  annotationKitController8 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  v21 = [annotationKitController8 overlayViewAtIndex:0];
  [(_SSSScreenshotAnnotationControllerAKOverlayContainerView *)overlayView setManagedView:v21];

  annotationKitController9 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  [annotationKitController9 setRulerHostingDelegate:self];
}

- (void)_enableInkingOnAKController:(BOOL)controller
{
  annotationKitController = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  [annotationKitController setToolMode:4];
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  if ([(_SSSScreenshotContentOverlayController *)self active]!= active)
  {
    annotationKitController = [(_SSSScreenshotContentOverlayController *)self annotationKitController];

    if (annotationKitController)
    {
      v14.receiver = self;
      v14.super_class = _SSSScreenshotAnnotationController;
      [(_SSSScreenshotContentOverlayController *)&v14 setActive:activeCopy];
      _isEditingScreenshotImage = [(_SSSScreenshotAnnotationController *)self _isEditingScreenshotImage];
      if (activeCopy)
      {
        if (_isEditingScreenshotImage)
        {
          annotationKitController2 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
          [annotationKitController2 prepareOverlayAtIndex:0];

          overlayView = self->_overlayView;
          annotationKitController3 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
          v10 = [annotationKitController3 overlayViewAtIndex:0];
          [(_SSSScreenshotAnnotationControllerAKOverlayContainerView *)overlayView setManagedView:v10];
        }

        annotationKitController4 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
        [annotationKitController4 setRulerHostingDelegate:self];

        [(_SSSScreenshotAnnotationController *)self _enableInkingOnAKController:1];
      }

      else
      {
        if (_isEditingScreenshotImage)
        {
          [(_SSSScreenshotAnnotationControllerAKOverlayContainerView *)self->_overlayView setManagedView:0];
          annotationKitController5 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
          [annotationKitController5 relinquishOverlayAtIndex:0];
        }

        annotationKitController6 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
        [annotationKitController6 setRulerHostingDelegate:0];
      }
    }
  }
}

- (void)setScreenshot:(id)screenshot
{
  screenshotCopy = screenshot;
  v11.receiver = self;
  v11.super_class = _SSSScreenshotAnnotationController;
  [(_SSSScreenshotContentOverlayController *)&v11 setScreenshot:screenshotCopy];
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
    representation = [screenshotCopy representation];
    screenshotRepresentationAKControllerForPDF = [representation screenshotRepresentationAKControllerForPDF];

    v9 = +[NSNotificationCenter defaultCenter];
    v10 = sub_10003B1BC();
    [v9 addObserver:self selector:"handleDrawingGestureRecognizerUpdate:" name:v10 object:screenshotRepresentationAKControllerForPDF];

    [screenshotRepresentationAKControllerForPDF _updateGestureDependencyPriority];
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
  pageModelController = [(_SSSScreenshotAnnotationController *)self pageModelController];
  selectedAnnotations = [pageModelController selectedAnnotations];

  v12 = [selectedAnnotations countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v12)
  {
    v13 = *v39;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(selectedAnnotations);
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

      v12 = [selectedAnnotations countByEnumeratingWithState:&v38 objects:v43 count:16];
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
    screenshot = [(_SSSScreenshotContentOverlayController *)self screenshot];
    environmentDescription = [screenshot environmentDescription];
    [environmentDescription imagePointSize];
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
  annotationKitController = [(_SSSScreenshotContentOverlayController *)self annotationKitController];

  if (annotationKitController)
  {
    annotationKitController2 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
    tapGestureRecognizer = [annotationKitController2 tapGestureRecognizer];
    v16[0] = tapGestureRecognizer;
    annotationKitController3 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
    pressGestureRecognizer = [annotationKitController3 pressGestureRecognizer];
    v16[1] = pressGestureRecognizer;
    annotationKitController4 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
    doubleTapGestureRecognizer = [annotationKitController4 doubleTapGestureRecognizer];
    v16[2] = doubleTapGestureRecognizer;
    annotationKitController5 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
    panGestureRecognizer = [annotationKitController5 panGestureRecognizer];
    v16[3] = panGestureRecognizer;
    annotationKitController6 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
    rotationGestureRecognizer = [annotationKitController6 rotationGestureRecognizer];
    v16[4] = rotationGestureRecognizer;
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
  annotationKitController = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  tapGestureRecognizer = [annotationKitController tapGestureRecognizer];

  return tapGestureRecognizer;
}

- (id)doubleTapGestureRecognizer
{
  annotationKitController = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  doubleTapGestureRecognizer = [annotationKitController doubleTapGestureRecognizer];

  return doubleTapGestureRecognizer;
}

- (id)longPressGestureRecognizer
{
  annotationKitController = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  pressGestureRecognizer = [annotationKitController pressGestureRecognizer];

  return pressGestureRecognizer;
}

- (id)panGestureRecognizer
{
  annotationKitController = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  panGestureRecognizer = [annotationKitController panGestureRecognizer];

  return panGestureRecognizer;
}

- (id)rotationGestureRecognizer
{
  annotationKitController = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  rotationGestureRecognizer = [annotationKitController rotationGestureRecognizer];

  return rotationGestureRecognizer;
}

- (void)setGesturesEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6.receiver = self;
  v6.super_class = _SSSScreenshotAnnotationController;
  [(_SSSScreenshotContentOverlayController *)&v6 setGesturesEnabled:?];
  annotationKitController = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  [annotationKitController setAnnotationEditingEnabled:enabledCopy];
}

- (void)updateUndoState
{
  annotationKitController = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  [annotationKitController validateUndo:0];

  annotationKitController2 = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  [annotationKitController2 validateRedo:0];
}

- (void)logDidEnterEditingWithOverlay
{
  annotationKitController = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
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

  [annotationKitController beginLogging:@"screenshotservices" documentType:*v3];
}

- (void)endedEditingWithOverlay
{
  annotationKitController = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  [annotationKitController endLogging];
}

- (void)_updateAnnotationsCreateUndoCommand:(BOOL)command
{
  commandCopy = command;
  if ([(_SSSScreenshotAnnotationController *)self _isEditingScreenshotImage])
  {
    viewState = [(_SSSScreenshotContentOverlayController *)self viewState];

    [(_SSSScreenshotAnnotationController *)self _updateAnnotationsForViewState:viewState createUndoCommand:v5, commandCopy];
    return;
  }

  screenshot = [(_SSSScreenshotContentOverlayController *)self screenshot];
  pDFDocument = [screenshot PDFDocument];
  pageCount = [pDFDocument pageCount];

  if (pageCount <= 1 && !commandCopy)
  {
    delegate = [(_SSSScreenshotContentOverlayController *)self delegate];
    screenshot2 = [(_SSSScreenshotContentOverlayController *)self screenshot];
    v11 = delegate;
    v12 = screenshot2;
    v13 = 0;
LABEL_16:
    [v11 screenshot:v12 didHaveChangeOnPage:v13];

    return;
  }

  screenshot3 = [(_SSSScreenshotContentOverlayController *)self screenshot];
  pDFDocument2 = [screenshot3 PDFDocument];
  pageCount2 = [pDFDocument2 pageCount];

  if (pageCount2)
  {
    v17 = 0;
    v18 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      if ([(_SSSScreenshotAnnotationController *)self _updateAnnotationsForViewState:[(_SSSScreenshotContentOverlayController *)self viewState] createUndoCommand:v17, commandCopy])
      {
        v18 = v17;
      }

      ++v17;
      screenshot4 = [(_SSSScreenshotContentOverlayController *)self screenshot];
      pDFDocument3 = [screenshot4 PDFDocument];
      pageCount3 = [pDFDocument3 pageCount];
    }

    while (v17 < pageCount3);
    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      delegate = [(_SSSScreenshotContentOverlayController *)self delegate];
      screenshot2 = [(_SSSScreenshotContentOverlayController *)self screenshot];
      v11 = delegate;
      v12 = screenshot2;
      v13 = v18;
      goto LABEL_16;
    }
  }
}

- (BOOL)_updateAnnotationsForViewState:(id)state createUndoCommand:(BOOL)command
{
  commandCopy = command;
  var1 = state.var1;
  var0 = state.var0;
  annotationKitController = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
  modelController = [annotationKitController modelController];
  v10 = [modelController pageModelControllerForPage:var1];

  if (v10)
  {
    screenshot = [(_SSSScreenshotContentOverlayController *)self screenshot];
    v12 = [screenshot viewModificationInfoForState:{var0, var1}];

    annotations = [v10 annotations];
    v14 = [_SSSScreenshotAnnotationController annotationDataFromAnnotations:annotations];

    annotationNSDatas = [v12 annotationNSDatas];
    v16 = [v14 isEqual:annotationNSDatas];
    v17 = v16 ^ 1;
    if ((v16 & 1) == 0)
    {
      v30 = annotationNSDatas;
      v31 = v14;
      v32 = v16 ^ 1;
      v33 = v12;
      v34 = var0;
      v35 = var1;
      v36 = commandCopy;
      v18 = +[NSMutableArray array];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v37 = v10;
      annotations2 = [v10 annotations];
      v20 = [annotations2 countByEnumeratingWithState:&v38 objects:v46 count:16];
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
              objc_enumerationMutation(annotations2);
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
                displayName = [v24 displayName];
                *buf = 138412546;
                v43 = displayName;
                v44 = 2112;
                v45 = v24;
                _os_log_fault_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, "Copied annotation was nil for annotation %@ %@", buf, 0x16u);
              }
            }
          }

          v21 = [annotations2 countByEnumeratingWithState:&v38 objects:v46 count:16];
        }

        while (v21);
      }

      v12 = v33;
      [v33 setOriginalAnnotations:v18];
      v14 = v31;
      [v33 setAnnotationNSDatas:v31];
      screenshot2 = [(_SSSScreenshotContentOverlayController *)self screenshot];
      [screenshot2 promoteViewValueToModelValueForKey:1 forState:v34 createUndoCommand:{v35, v36}];

      v10 = v37;
      v17 = v32;
      annotationNSDatas = v30;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)annotationDataFromAnnotations:(id)annotations
{
  annotationsCopy = annotations;
  v4 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = annotationsCopy;
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

        dataRepresentation = [*(*(&v12 + 1) + 8 * i) dataRepresentation];
        [v4 addObject:dataRepresentation];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)annotationsFromAnnotationData:(id)data
{
  dataCopy = data;
  v4 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = dataCopy;
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

- (void)editDetectedForAnnotationController:(id)controller
{
  [(_SSSScreenshotAnnotationController *)self _updateAnnotationsCreateUndoCommand:0];
  if ([(_SSSScreenshotAnnotationController *)self _isEditingScreenshotImage])
  {
    delegate = [(_SSSScreenshotContentOverlayController *)self delegate];
    [delegate screenshotDidMakeAnnotationEditOnImage];
  }
}

- (void)penStrokeCompletedForAnnotationController:(id)controller
{
  self->_didDrawPenStroke = 1;
  [(_SSSScreenshotAnnotationController *)self _updateAnnotations];
  if ([(_SSSScreenshotAnnotationController *)self _isEditingScreenshotImage])
  {
    delegate = [(_SSSScreenshotContentOverlayController *)self delegate];
    [delegate screenshotDidMakeAnnotationEditOnImage];
  }
}

- (CGRect)maxPageRectWithPageIndex:(unint64_t)index forAnnotationController:(id)controller
{
  y = CGRectZero.origin.y;
  v5 = [(_SSSScreenshotContentOverlayController *)self screenshot:index];
  environmentDescription = [v5 environmentDescription];
  [environmentDescription imagePointSize];
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

- (CGRect)visibleRectOfOverlayAtPageIndex:(unint64_t)index forAnnotationController:(id)controller
{
  v22 = 0u;
  v23 = 0;
  v21 = 0u;
  v5 = [(_SSSScreenshotContentOverlayController *)self screenshot:index];
  viewState = [(_SSSScreenshotContentOverlayController *)self viewState];
  v8 = [v5 modelModificationInfoForState:{viewState, v7}];
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

- (double)modelBaseScaleFactorOfPageAtIndex:(unint64_t)index forAnnotationController:(id)controller
{
  v5 = [(_SSSScreenshotAnnotationController *)self overlayView:index];
  window = [v5 window];

  v7 = 1.0;
  if ([(_SSSScreenshotContentOverlayController *)self active]&& window)
  {
    overlayView = [(_SSSScreenshotAnnotationController *)self overlayView];
    [overlayView bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    overlayView2 = [(_SSSScreenshotAnnotationController *)self overlayView];
    [window convertRect:overlayView2 fromView:{v10, v12, v14, v16}];
    v19 = v18;

    [window bounds];
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

- (id)newContentSnapshotPDFDataIncludingAdornments:(BOOL)adornments atScale:(double)scale inRect:(CGRect)rect onOverlayAtPageIndex:(unint64_t)index forAnnotationController:(id)controller
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  controllerCopy = controller;
  screenshot = [(_SSSScreenshotContentOverlayController *)self screenshot];
  imageProvider = [screenshot imageProvider];
  requestCGImageBackedUneditedImageForUIBlocking = [imageProvider requestCGImageBackedUneditedImageForUIBlocking];
  cGImage = [requestCGImageBackedUneditedImageForUIBlocking CGImage];

  v19 = [controllerCopy overlayViewAtIndex:index];

  screenshot2 = [(_SSSScreenshotContentOverlayController *)self screenshot];
  environmentDescription = [screenshot2 environmentDescription];
  [environmentDescription imageScale];
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
  sx = scale;
  v63.c = v65.size.width * scale;
  v63.d = v65.size.height * scale;
  v28 = CGImageGetWidth(cGImage);
  v29 = CGImageGetHeight(cGImage);
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
  ColorSpace = CGImageGetColorSpace(cGImage);
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
    CGContextDrawImage(v43, v71, cGImage);
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
  delegate = [(_SSSScreenshotContentOverlayController *)self delegate];
  contentSnapshot = [delegate contentSnapshot];

  return contentSnapshot;
}

- (id)undoManagerForAnnotationController:(id)controller
{
  screenshot = [(_SSSScreenshotContentOverlayController *)self screenshot];
  v5 = [screenshot undoManagerForEditMode:{-[_SSSScreenshotContentOverlayController viewState](self, "viewState")}];

  return v5;
}

- (id)popoverPresentingViewControllerForAnnotationController:(id)controller
{
  delegate = [(_SSSScreenshotContentOverlayController *)self delegate];
  viewControllerForOverlayPresentations = [delegate viewControllerForOverlayPresentations];

  return viewControllerForOverlayPresentations;
}

- (void)controllerDidDismissPopover:(id)popover
{
  v4 = [(_SSSScreenshotAnnotationController *)self popoverPresentingViewControllerForAnnotationController:popover];
  view = [v4 view];
  [view setNeedsLayout];
}

- (id)layerContainingQuickBackgroundForLoupeOnOverlayAtPageIndex:(unint64_t)index forAnnotationController:(id)controller
{
  v4 = [(_SSSScreenshotContentOverlayController *)self delegate:index];
  viewContainingScreenshotContents = [v4 viewContainingScreenshotContents];
  layer = [viewContainingScreenshotContents layer];

  return layer;
}

- (void)installDrawingGestureRecognizer:(id)recognizer forPageAtIndex:(unint64_t)index forAnnotationController:(id)controller
{
  recognizerCopy = recognizer;
  delegate = [(_SSSScreenshotContentOverlayController *)self delegate];
  [delegate installInterstitialGesture:recognizerCopy];
}

- (void)uninstallDrawingGestureRecognizer:(id)recognizer forPageAtIndex:(unint64_t)index forAnnotationController:(id)controller
{
  recognizerCopy = recognizer;
  delegate = [(_SSSScreenshotContentOverlayController *)self delegate];
  [delegate uninstallInterstitialGesture:recognizerCopy];
}

- (void)updateDrawingGestureRecognizer:(id)recognizer forPageAtIndex:(unint64_t)index withPriority:(BOOL)priority forAnnotationController:(id)controller
{
  priorityCopy = priority;
  recognizerCopy = recognizer;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  gestureRecognizers = [(_SSSScreenshotAnnotationController *)self gestureRecognizers];
  v10 = [gestureRecognizers countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(gestureRecognizers);
        }

        [recognizerCopy requireGestureRecognizerToFail:*(*(&v16 + 1) + 8 * i)];
      }

      v11 = [gestureRecognizers countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  delegate = [(_SSSScreenshotContentOverlayController *)self delegate];
  v15 = delegate;
  if (priorityCopy)
  {
    [delegate requireAllOtherGestureRecognizersToFailBeforeGestureRecognizer:recognizerCopy];
  }

  else
  {
    [delegate requireGestureRecognizerToFailBeforeAllOtherGestureRecognizers:recognizerCopy];
  }
}

- (void)handleDrawingGestureRecognizerUpdate:(id)update
{
  userInfo = [update userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"drawingGestureRecognizer"];
  v5 = [userInfo objectForKeyedSubscript:@"highPriority"];
  bOOLValue = [v5 BOOLValue];

  delegate = [(_SSSScreenshotContentOverlayController *)self delegate];
  v8 = delegate;
  if (bOOLValue)
  {
    [delegate requireAllOtherGestureRecognizersToFailBeforeGestureRecognizer:v4];
  }

  else
  {
    [delegate requireGestureRecognizerToFailBeforeAllOtherGestureRecognizers:v4];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (off_1000D3B60 == context)
  {
    if ([path isEqualToString:{@"modifiedImageDescription", object, change}])
    {
      screenshot = [(_SSSScreenshotContentOverlayController *)self screenshot];
      viewModificationInfo = [screenshot viewModificationInfo];
      annotationKitController = [(_SSSScreenshotContentOverlayController *)self annotationKitController];
      modifiedImageDescription = [annotationKitController modifiedImageDescription];
      [viewModificationInfo setImageDescription:modifiedImageDescription];

      screenshot2 = [(_SSSScreenshotContentOverlayController *)self screenshot];
      viewState = [(_SSSScreenshotContentOverlayController *)self viewState];
      [screenshot2 promoteViewValueToModelValueForKey:4 forState:viewState createUndoCommand:{v12, 0}];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = _SSSScreenshotAnnotationController;
    [(_SSSScreenshotAnnotationController *)&v14 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

@end