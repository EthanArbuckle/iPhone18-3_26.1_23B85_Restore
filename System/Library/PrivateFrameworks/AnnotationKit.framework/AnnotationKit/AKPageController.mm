@interface AKPageController
+ (AKPageController)pageControllerWithController:(id)controller andPageModelController:(id)modelController;
- (AKController)controller;
- (AKControllerDelegateProtocol)delegate;
- (BOOL)relinquishablesAreLoaded;
- (CGPoint)convertPointFromModelToOverlay:(CGPoint)overlay;
- (CGPoint)convertPointFromOverlayToModel:(CGPoint)model;
- (CGRect)convertRectFromModelToOverlay:(CGRect)overlay;
- (CGRect)convertRectFromOverlayToModel:(CGRect)model;
- (CGRect)maxPageRect;
- (CGRect)stickyViewFrameForNoteEditor:(id)editor;
- (CGRect)visibleRectOfOverlay;
- (double)currentModelToScreenScaleFactor;
- (double)modelBaseScaleFactor;
- (id)_initWithController:(id)controller andPageModelController:(id)modelController;
- (id)_popoverPresentingViewController;
- (id)annotationsBeneathLoupe:(id)loupe;
- (id)initForTesting;
- (id)newContentSnapshotPDFDataAtScale:(double)scale inRect:(CGRect)rect forLoupeAnnotation:(id)annotation;
- (id)stickyContainerForNoteEditor:(id)editor;
- (int64_t)currentModelToScreenExifOrientation;
- (void)_updateOverlayVisibilityWithToolPicker:(id)picker visible:(BOOL)visible;
- (void)addPopupToAnnotation:(id)annotation openPopup:(BOOL)popup;
- (void)editorController:(id)controller deleteAnnotation:(id)annotation;
- (void)editorController:(id)controller editNote:(id)note;
- (void)editorController:(id)controller setTheme:(id)theme forAnnotation:(id)annotation;
- (void)noteEditorDidFinishEditing:(id)editing;
- (void)noteEditorWillDismissFromFullScreen:(id)screen;
- (void)noteEditorWillPresentFullScreen:(id)screen;
- (void)openPopoverForHighlightAnnotation:(id)annotation;
- (void)openPopupAnnotation:(id)annotation;
- (void)overlayWasAddedToSuperview;
- (void)releaseRelinquishables;
- (void)removeNoteFromAnnotation:(id)annotation;
- (void)setupRelinquishables;
- (void)teardown;
- (void)unregisterFromUndoManager:(id)manager;
- (void)updateOverlayViewLayers;
- (void)updateScaleFactor:(double)factor isLiveUpdate:(BOOL)update forceUpdate:(BOOL)forceUpdate;
@end

@implementation AKPageController

+ (AKPageController)pageControllerWithController:(id)controller andPageModelController:(id)modelController
{
  modelControllerCopy = modelController;
  controllerCopy = controller;
  v8 = [[self alloc] _initWithController:controllerCopy andPageModelController:modelControllerCopy];

  return v8;
}

- (id)_initWithController:(id)controller andPageModelController:(id)modelController
{
  controllerCopy = controller;
  modelControllerCopy = modelController;
  v14.receiver = self;
  v14.super_class = AKPageController;
  v8 = [(AKPageController *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(AKPageController *)v8 setController:controllerCopy];
    [(AKPageController *)v9 setPageModelController:modelControllerCopy];
    statisticsLogger = [controllerCopy statisticsLogger];
    [modelControllerCopy setStatisticsLogger:statisticsLogger];

    [(AKPageController *)v9 setPageIndex:0x7FFFFFFFFFFFFFFFLL];
    v11 = objc_opt_new();
    [(AKPageController *)v9 setNoteEditors:v11];

    v12 = [AKInkPageOverlayController newInkOverlayDrawingUndoTargetWithPageController:v9];
    [(AKPageController *)v9 setInkOverlayDrawingUndoTarget:v12];

    [(AKPageController *)v9 setGeometryHelper:0];
    [(AKPageController *)v9 setLayerPresentationManager:0];
    [(AKPageController *)v9 setInkPageOverlayController:0];
    [(AKPageController *)v9 setOverlayView:0];
  }

  return v9;
}

- (id)initForTesting
{
  v3.receiver = self;
  v3.super_class = AKPageController;
  return [(AKPageController *)&v3 init];
}

- (void)unregisterFromUndoManager:(id)manager
{
  managerCopy = manager;
  inkOverlayDrawingUndoTarget = [(AKPageController *)self inkOverlayDrawingUndoTarget];

  if (inkOverlayDrawingUndoTarget)
  {
    inkOverlayDrawingUndoTarget2 = [(AKPageController *)self inkOverlayDrawingUndoTarget];
    [managerCopy removeAllActionsWithTarget:inkOverlayDrawingUndoTarget2];
  }
}

- (void)teardown
{
  [(AKPageController *)self setNoteEditors:0];

  [(AKPageController *)self setPageModelController:0];
}

- (void)setupRelinquishables
{
  geometryHelper = [(AKPageController *)self geometryHelper];

  if (!geometryHelper)
  {
    v4 = [[AKGeometryHelper alloc] initWithPageController:self];
    [(AKPageController *)self setGeometryHelper:v4];

    [(AKPageController *)self setSuperviewDependentThingsWereSetUp:0];
    v5 = [[AKLayerPresentationManager alloc] initWithPageController:self];
    [(AKPageController *)self setLayerPresentationManager:v5];

    shouldPixelate = [(AKPageController *)self shouldPixelate];
    layerPresentationManager = [(AKPageController *)self layerPresentationManager];
    [layerPresentationManager setShouldPixelate:shouldPixelate];

    v8 = [[AKOverlayView alloc] initWithPageController:self];
    [(AKPageController *)self setOverlayView:v8];

    v9 = [[AKInkPageOverlayController alloc] initWithPageController:self];
    [(AKPageController *)self setInkPageOverlayController:v9];
  }
}

- (void)releaseRelinquishables
{
  controller = [(AKPageController *)self controller];
  textEditorController = [controller textEditorController];
  annotation = [textEditorController annotation];

  if (annotation)
  {
    pageModelController = [(AKPageController *)self pageModelController];
    annotations = [pageModelController annotations];
    v7 = [annotations containsObject:annotation];

    if (v7)
    {
      textEditorController2 = [controller textEditorController];
      [textEditorController2 endEditing];
    }
  }

  if ([(AKPageController *)self superviewDependentThingsWereSetUp])
  {
    layerPresentationManager = [(AKPageController *)self layerPresentationManager];
    [layerPresentationManager teardown];

    inkPageOverlayController = [(AKPageController *)self inkPageOverlayController];
    [inkPageOverlayController teardown];

    [(AKPageController *)self setSuperviewDependentThingsWereSetUp:0];
  }

  [(AKPageController *)self setOverlayView:0];
  [(AKPageController *)self setInkPageOverlayController:0];
  [(AKPageController *)self setLayerPresentationManager:0];
  [(AKPageController *)self setGeometryHelper:0];
}

- (BOOL)relinquishablesAreLoaded
{
  overlayView = [(AKPageController *)self overlayView];
  v3 = overlayView != 0;

  return v3;
}

- (void)overlayWasAddedToSuperview
{
  if (![(AKPageController *)self superviewDependentThingsWereSetUp])
  {
    layerPresentationManager = [(AKPageController *)self layerPresentationManager];
    [layerPresentationManager setup];

    inkPageOverlayController = [(AKPageController *)self inkPageOverlayController];
    [inkPageOverlayController setup];

    [(AKPageController *)self setSuperviewDependentThingsWereSetUp:1];
  }
}

- (void)updateOverlayViewLayers
{
  overlayView = [(AKPageController *)self overlayView];
  [overlayView updateLayers];
}

- (void)updateScaleFactor:(double)factor isLiveUpdate:(BOOL)update forceUpdate:(BOOL)forceUpdate
{
  forceUpdateCopy = forceUpdate;
  updateCopy = update;
  layerPresentationManager = [(AKPageController *)self layerPresentationManager];
  [layerPresentationManager updateScaleFactor:updateCopy isLiveUpdate:forceUpdateCopy forceUpdate:factor];
}

- (int64_t)currentModelToScreenExifOrientation
{
  overlayView = [(AKPageController *)self overlayView];
  window = [overlayView window];

  if (window)
  {
    overlayView2 = [(AKPageController *)self overlayView];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_23F46B500;
    v9[3] = &unk_278C7BFD8;
    v9[4] = self;
    v10 = overlayView2;
    v6 = overlayView2;
    v7 = [AKGeometryHelper exifOrientationWithConversionBlock:v9];
  }

  else
  {
    v6 = os_log_create("com.apple.annotationkit", "Page Controller");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_23F4BD124(self);
    }

    v7 = 1;
  }

  return v7;
}

- (double)currentModelToScreenScaleFactor
{
  overlayView = [(AKPageController *)self overlayView];
  window = [overlayView window];

  if (!window)
  {
    v5 = os_log_create("com.apple.annotationkit", "Page Controller");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_23F4BD1A8(self);
    }
  }

  [(AKPageController *)self convertRectFromModelToOverlay:0.0, 0.0, 1.0, 1.0];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  overlayView2 = [(AKPageController *)self overlayView];
  superview = [overlayView2 superview];
  [overlayView2 convertRect:superview toView:{v7, v9, v11, v13}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  window2 = [superview window];
  screen = [window2 screen];
  coordinateSpace = [screen coordinateSpace];
  [superview convertRect:coordinateSpace toCoordinateSpace:{v17, v19, v21, v23}];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v39.origin.x = v28;
  v39.origin.y = v30;
  v39.size.width = v32;
  v39.size.height = v34;
  Width = CGRectGetWidth(v39);
  v40.origin.x = v28;
  v40.origin.y = v30;
  v40.size.width = v32;
  v40.size.height = v34;
  Height = CGRectGetHeight(v40);
  if (Width >= Height)
  {
    v37 = Width;
  }

  else
  {
    v37 = Height;
  }

  return v37;
}

- (AKControllerDelegateProtocol)delegate
{
  controller = [(AKPageController *)self controller];
  delegate = [controller delegate];

  return delegate;
}

- (CGPoint)convertPointFromOverlayToModel:(CGPoint)model
{
  y = model.y;
  x = model.x;
  pageIndex = [(AKPageController *)self pageIndex];
  controller = [(AKPageController *)self controller];
  delegate = [controller delegate];
  v9 = delegate;
  if (delegate)
  {
    [delegate convertPoint:pageIndex fromOverlayToModelWithPageIndex:controller forAnnotationController:{x, y}];
    x = v10;
    y = v11;
  }

  else
  {
    v12 = os_log_create("com.apple.annotationkit", "Page Controller");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_23F3EC000, v12, OS_LOG_TYPE_INFO, "AKController instance did not have a delegate.", v15, 2u);
    }
  }

  v13 = x;
  v14 = y;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGPoint)convertPointFromModelToOverlay:(CGPoint)overlay
{
  y = overlay.y;
  x = overlay.x;
  pageIndex = [(AKPageController *)self pageIndex];
  controller = [(AKPageController *)self controller];
  delegate = [controller delegate];
  v9 = delegate;
  if (delegate)
  {
    [delegate convertPoint:pageIndex fromModelToOverlayWithPageIndex:controller forAnnotationController:{x, y}];
    x = v10;
    y = v11;
  }

  else
  {
    v12 = os_log_create("com.apple.annotationkit", "Page Controller");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_23F3EC000, v12, OS_LOG_TYPE_INFO, "AKController instance did not have a delegate.", v15, 2u);
    }
  }

  v13 = x;
  v14 = y;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGRect)convertRectFromOverlayToModel:(CGRect)model
{
  height = model.size.height;
  width = model.size.width;
  y = model.origin.y;
  x = model.origin.x;
  pageIndex = [(AKPageController *)self pageIndex];
  controller = [(AKPageController *)self controller];
  delegate = [controller delegate];
  if (delegate)
  {
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    MinX = CGRectGetMinX(v27);
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    MinY = CGRectGetMinY(v28);
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    MaxX = CGRectGetMaxX(v29);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    MaxY = CGRectGetMaxY(v30);
    [delegate convertPoint:pageIndex fromOverlayToModelWithPageIndex:controller forAnnotationController:{MinX, MinY}];
    v16 = v15;
    v18 = v17;
    [delegate convertPoint:pageIndex fromOverlayToModelWithPageIndex:controller forAnnotationController:{MaxX, MaxY}];
    v31.size.width = v19 - v16;
    v31.size.height = v20 - v18;
    v31.origin.x = v16;
    v31.origin.y = v18;
    v32 = CGRectStandardize(v31);
    x = v32.origin.x;
    y = v32.origin.y;
    width = v32.size.width;
    height = v32.size.height;
  }

  else
  {
    v21 = os_log_create("com.apple.annotationkit", "Page Controller");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *v26 = 0;
      _os_log_impl(&dword_23F3EC000, v21, OS_LOG_TYPE_INFO, "AKController instance did not have a delegate.", v26, 2u);
    }
  }

  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)convertRectFromModelToOverlay:(CGRect)overlay
{
  height = overlay.size.height;
  width = overlay.size.width;
  y = overlay.origin.y;
  x = overlay.origin.x;
  pageIndex = [(AKPageController *)self pageIndex];
  controller = [(AKPageController *)self controller];
  delegate = [controller delegate];
  if (delegate)
  {
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    MinX = CGRectGetMinX(v27);
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    MinY = CGRectGetMinY(v28);
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    MaxX = CGRectGetMaxX(v29);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    MaxY = CGRectGetMaxY(v30);
    [delegate convertPoint:pageIndex fromModelToOverlayWithPageIndex:controller forAnnotationController:{MinX, MinY}];
    v16 = v15;
    v18 = v17;
    [delegate convertPoint:pageIndex fromModelToOverlayWithPageIndex:controller forAnnotationController:{MaxX, MaxY}];
    v31.size.width = v19 - v16;
    v31.size.height = v20 - v18;
    v31.origin.x = v16;
    v31.origin.y = v18;
    v32 = CGRectStandardize(v31);
    x = v32.origin.x;
    y = v32.origin.y;
    width = v32.size.width;
    height = v32.size.height;
  }

  else
  {
    v21 = os_log_create("com.apple.annotationkit", "Page Controller");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *v26 = 0;
      _os_log_impl(&dword_23F3EC000, v21, OS_LOG_TYPE_INFO, "AKController instance did not have a delegate.", v26, 2u);
    }
  }

  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)maxPageRect
{
  controller = [(AKPageController *)self controller];
  delegate = [controller delegate];
  [delegate maxPageRectWithPageIndex:-[AKPageController pageIndex](self forAnnotationController:{"pageIndex"), controller}];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (id)newContentSnapshotPDFDataAtScale:(double)scale inRect:(CGRect)rect forLoupeAnnotation:(id)annotation
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v56 = *MEMORY[0x277D85DE8];
  annotationCopy = annotation;
  controller = [(AKPageController *)self controller];
  delegate = [controller delegate];
  v14 = [delegate newContentSnapshotPDFDataIncludingAdornments:1 atScale:-[AKPageController pageIndex](self inRect:"pageIndex") onOverlayAtPageIndex:controller forAnnotationController:{scale, x, y, width, height}];
  v15 = [(AKPageController *)self annotationsBeneathLoupe:annotationCopy];
  if (![v15 count])
  {
    v17 = v14;
    goto LABEL_30;
  }

  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
  v17 = Mutable;
  if (Mutable)
  {
    v18 = CGDataConsumerCreateWithCFData(Mutable);
    if (v18)
    {
      v19 = v18;
      memset(&mediaBox, 0, sizeof(mediaBox));
      v20 = CGDataProviderCreateWithCFData(v14);
      provider = v20;
      if (v20 && (v21 = CGPDFDocumentCreateWithProvider(v20)) != 0)
      {
        document = v21;
        Page = CGPDFDocumentGetPage(v21, 1uLL);
        if (Page)
        {
          v23 = Page;
          v24 = 0;
          mediaBox = CGPDFPageGetBoxRect(Page, kCGPDFCropBox);
LABEL_13:
          consumer = v19;
          v26 = CGPDFContextCreate(v19, &mediaBox, 0);
          if (v26)
          {
            v27 = v26;
            v44 = v14;
            v45 = delegate;
            v46 = annotationCopy;
            CGPDFContextBeginPage(v26, 0);
            CGContextSaveGState(v27);
            if ((v24 & 1) == 0)
            {
              CGContextDrawPDFPage(v27, v23);
            }

            CGContextTranslateCTM(v27, mediaBox.origin.x, mediaBox.origin.y);
            CGContextScaleCTM(v27, mediaBox.size.width, mediaBox.size.height);
            [(AKPageController *)self convertRectFromOverlayToModel:x, y, width, height];
            v29 = v28;
            v31 = v30;
            CGContextScaleCTM(v27, 1.0 / v32, 1.0 / v33);
            CGContextTranslateCTM(v27, -v29, -v31);
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v34 = v15;
            v35 = [v34 countByEnumeratingWithState:&v50 objects:v55 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v51;
              do
              {
                for (i = 0; i != v36; ++i)
                {
                  if (*v51 != v37)
                  {
                    objc_enumerationMutation(v34);
                  }

                  v39 = *(*(&v50 + 1) + 8 * i);
                  CGContextSaveGState(v27);
                  [v39 integralDrawingBounds];
                  v40 = v57.origin.x;
                  v41 = v57.origin.y;
                  if (!CGRectIsInfinite(v57))
                  {
                    CGContextTranslateCTM(v27, v40, v41);
                  }

                  [AKController renderAnnotation:v39 inContext:v27, v44, v45, v46];
                  CGContextRestoreGState(v27);
                }

                v36 = [v34 countByEnumeratingWithState:&v50 objects:v55 count:16];
              }

              while (v36);
            }

            CGContextRestoreGState(v27);
            CGPDFContextEndPage(v27);
            CGPDFContextClose(v27);
            CGContextRelease(v27);
            delegate = v45;
            annotationCopy = v46;
            v14 = v44;
          }

          CGDataConsumerRelease(consumer);
          if (document)
          {
            CGPDFDocumentRelease(document);
          }

          if (provider)
          {
            CGDataProviderRelease(provider);
          }

          goto LABEL_30;
        }
      }

      else
      {
        document = 0;
      }

      mediaBox.origin.x = 0.0;
      mediaBox.origin.y = 0.0;
      mediaBox.size.width = width;
      mediaBox.size.height = height;
      v25 = os_log_create("com.apple.annotationkit", "Page Controller");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        sub_23F4BD22C(v25);
      }

      v23 = 0;
      v24 = 1;
      goto LABEL_13;
    }
  }

LABEL_30:
  v42 = v17;

  return v42;
}

- (id)annotationsBeneathLoupe:(id)loupe
{
  v32 = *MEMORY[0x277D85DE8];
  loupeCopy = loupe;
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  pageModelController = [(AKPageController *)self pageModelController];
  annotations = [pageModelController annotations];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = annotations;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v28 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v27 + 1) + 8 * v12);
      if (v13 == loupeCopy)
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v13 drawingBounds];
          v15 = v14;
          v17 = v16;
          v19 = v18;
          v21 = v20;
          [loupeCopy drawingBounds];
          v35.origin.x = v22;
          v35.origin.y = v23;
          v35.size.width = v24;
          v35.size.height = v25;
          v34.origin.x = v15;
          v34.origin.y = v17;
          v34.size.width = v19;
          v34.size.height = v21;
          if (CGRectIntersectsRect(v34, v35))
          {
            [orderedSet addObject:v13];
          }
        }
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return orderedSet;
}

- (double)modelBaseScaleFactor
{
  pageIndex = [(AKPageController *)self pageIndex];
  controller = [(AKPageController *)self controller];
  delegate = [controller delegate];
  v6 = 1.0;
  if (objc_opt_respondsToSelector())
  {
    [delegate modelBaseScaleFactorOfPageAtIndex:pageIndex forAnnotationController:controller];
    v6 = v7;
  }

  return v6;
}

- (CGRect)visibleRectOfOverlay
{
  controller = [(AKPageController *)self controller];
  delegate = [controller delegate];
  overlayView = [(AKPageController *)self overlayView];
  [overlayView akVisibleRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(AKPageController *)self convertRectFromOverlayToModel:v7, v9, v11, v13];
  x = v14;
  y = v16;
  width = v18;
  height = v20;
  if ([AKGeometryHelper isUnpresentableRect:?])
  {
    [(AKPageController *)self maxPageRect];
    x = v22;
    y = v23;
    width = v24;
    height = v25;
  }

  if (objc_opt_respondsToSelector())
  {
    [delegate visibleRectOfOverlayAtPageIndex:-[AKPageController pageIndex](self forAnnotationController:{"pageIndex"), controller}];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    if (![AKGeometryHelper isUnpresentableRect:?])
    {
      v38.origin.x = v27;
      v38.origin.y = v29;
      v38.size.width = v31;
      v38.size.height = v33;
      v41.origin.x = x;
      v41.origin.y = y;
      v41.size.width = width;
      v41.size.height = height;
      v39 = CGRectIntersection(v38, v41);
      x = v39.origin.x;
      y = v39.origin.y;
      width = v39.size.width;
      height = v39.size.height;
    }
  }

  v34 = x;
  v35 = y;
  v36 = width;
  v37 = height;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (void)openPopoverForHighlightAnnotation:(id)annotation
{
  annotationCopy = annotation;
  color = [annotationCopy color];
  v6 = [AKHighlightAppearanceHelper attributeTagForHighlightOfColor:color];

  v7 = [AKHighlightAppearanceHelper annotationStyleForHighlightAttributeWithTag:v6];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = 3;
  }

  v29 = +[AKAnnotationTheme themeForAnnotationStyle:pageTheme:isUnderline:](AKAnnotationTheme, "themeForAnnotationStyle:pageTheme:isUnderline:", v8, 0, [annotationCopy style] == 2);
  _popoverPresentingViewController = [(AKPageController *)self _popoverPresentingViewController];
  view = [_popoverPresentingViewController view];
  [annotationCopy integralDrawingBounds];
  [(AKPageController *)self convertRectFromModelToOverlay:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  overlayView = [(AKPageController *)self overlayView];
  [overlayView convertRect:view toView:{v12, v14, v16, v18}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = [[AKHighlightColorEditorController alloc] initWithNibName:0 bundle:0];
  [(AKHighlightColorEditorController *)v28 setDelegate:self];
  [(AKAnnotationPopoverViewController *)v28 setAnnotationTheme:v29];
  [(AKHighlightColorEditorController *)v28 setPageTheme:0];
  [(AKAnnotationPopoverViewController *)v28 setAnnotation:annotationCopy];

  [(AKAnnotationPopoverViewController *)v28 setAnnotationPageController:self];
  [(AKHighlightColorEditorController *)v28 presentFromRect:view view:v21, v23, v25, v27];
}

- (void)editorController:(id)controller editNote:(id)note
{
  noteCopy = note;
  childAnnotation = [noteCopy childAnnotation];
  if (!childAnnotation)
  {
    [(AKPageController *)self addPopupToAnnotation:noteCopy openPopup:0];
    childAnnotation = [noteCopy childAnnotation];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_23F46C808;
  v8[3] = &unk_278C7B810;
  v8[4] = self;
  v9 = childAnnotation;
  v7 = childAnnotation;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

- (void)editorController:(id)controller setTheme:(id)theme forAnnotation:(id)annotation
{
  v6 = 765200;
  themeCopy = theme;
  v7 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = 765201;
  }

  else
  {
    v9 = objc_opt_self();
    v10 = objc_opt_isKindOfClass();

    if (v10)
    {
      v6 = 765202;
    }

    else
    {
      v11 = objc_opt_self();
      v12 = objc_opt_isKindOfClass();

      if ((v12 & 1) == 0)
      {
        v13 = objc_opt_self();
        v14 = objc_opt_isKindOfClass();

        if (v14)
        {
          v6 = 765203;
        }

        else
        {
          v15 = objc_opt_self();
          v16 = objc_opt_isKindOfClass();

          if (v16)
          {
            v6 = 765204;
          }

          else
          {
            v17 = objc_opt_self();
            v18 = objc_opt_isKindOfClass();

            if ((v18 & 1) == 0)
            {
              goto LABEL_13;
            }

            v6 = 765206;
          }
        }
      }
    }
  }

  v19 = [[AKMinimalUserInterfaceItem alloc] initWithTag:v6];
  controller = [(AKPageController *)self controller];
  [controller performActionForSender:v19];

LABEL_13:
}

- (void)editorController:(id)controller deleteAnnotation:(id)annotation
{
  annotationCopy = annotation;
  pageModelController = [(AKPageController *)self pageModelController];
  v6 = [pageModelController mutableArrayValueForKey:@"annotations"];
  [v6 removeObject:annotationCopy];

  if ([annotationCopy conformsToAKParentAnnotationProtocol])
  {
    childAnnotation = [annotationCopy childAnnotation];
    if (childAnnotation)
    {
      v8 = [pageModelController mutableArrayValueForKey:@"annotations"];
      [v8 removeObject:childAnnotation];
    }
  }
}

- (void)addPopupToAnnotation:(id)annotation openPopup:(BOOL)popup
{
  popupCopy = popup;
  annotationCopy = annotation;
  v7 = [AKNoteAnnotationHelper newPopupAnnotationWithParent:annotationCopy onPageController:self];
  if (v7)
  {
    controller = [(AKPageController *)self controller];
    toolController = [controller toolController];
    [toolController addNewAnnotation:v7 onPageController:self shouldSelect:0 shouldCascade:0];

    [v7 setParentAnnotation:annotationCopy];
    [annotationCopy setChildAnnotation:v7];
    if (popupCopy)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = sub_23F46CBC4;
      v10[3] = &unk_278C7B810;
      v10[4] = self;
      v11 = v7;
      dispatch_async(MEMORY[0x277D85CD0], v10);
    }
  }
}

- (void)removeNoteFromAnnotation:(id)annotation
{
  annotationCopy = annotation;
  childAnnotation = [annotationCopy childAnnotation];
  if (childAnnotation)
  {
    pageModelController = [(AKPageController *)self pageModelController];
    v6 = [pageModelController mutableArrayValueForKey:@"annotations"];
    [v6 removeObject:childAnnotation];

    [annotationCopy setChildAnnotation:0];
  }
}

- (void)openPopupAnnotation:(id)annotation
{
  annotationCopy = annotation;
  noteEditors = [(AKPageController *)self noteEditors];
  uUID = [annotationCopy UUID];
  v6 = [noteEditors objectForKey:uUID];

  if (!v6)
  {
    v6 = objc_alloc_init(AKNoteEditorController);
    noteEditors2 = [(AKPageController *)self noteEditors];
    uUID2 = [annotationCopy UUID];
    [noteEditors2 setObject:v6 forKey:uUID2];

    [(AKNoteEditorController *)v6 setAnnotation:annotationCopy];
    [(AKNoteEditorController *)v6 setDelegate:self];
  }

  [(AKNoteEditorController *)v6 show:1];
  [(AKNoteEditorController *)v6 beginEditing:1];
}

- (void)noteEditorDidFinishEditing:(id)editing
{
  editingCopy = editing;
  annotation = [editingCopy annotation];
  editedText = [editingCopy editedText];
  [annotation setContents:editedText];

  contents = [annotation contents];
  v7 = [contents length];

  if (!v7)
  {
    parentAnnotation = [annotation parentAnnotation];
    [(AKPageController *)self removeNoteFromAnnotation:parentAnnotation];
  }

  noteEditors = [(AKPageController *)self noteEditors];
  uUID = [annotation UUID];
  [noteEditors removeObjectForKey:uUID];

  [editingCopy hide];
}

- (id)stickyContainerForNoteEditor:(id)editor
{
  _popoverPresentingViewController = [(AKPageController *)self _popoverPresentingViewController];
  view = [_popoverPresentingViewController view];

  return view;
}

- (CGRect)stickyViewFrameForNoteEditor:(id)editor
{
  editorCopy = editor;
  annotation = [editorCopy annotation];
  parentAnnotation = [annotation parentAnnotation];
  visualStyle = [annotation visualStyle];
  v8 = annotation;
  if (visualStyle || (objc_opt_self(), v9 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v9, v8 = parentAnnotation, (isKindOfClass & 1) != 0))
  {
    [v8 rectangle];
  }

  [(AKPageController *)self convertRectFromModelToOverlay:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  overlayView = [(AKPageController *)self overlayView];
  v20 = [(AKPageController *)self stickyContainerForNoteEditor:editorCopy];

  [overlayView convertRect:v20 toView:{v12, v14, v16, v18}];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = v22;
  v30 = v24;
  v31 = v26;
  v32 = v28;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (void)noteEditorWillPresentFullScreen:(id)screen
{
  controller = [(AKPageController *)self controller];
  delegate = [controller delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate controllerWillShowSignatureCaptureView:controller];
  }
}

- (void)noteEditorWillDismissFromFullScreen:(id)screen
{
  controller = [(AKPageController *)self controller];
  delegate = [controller delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate controllerWillDismissSignatureCaptureView:controller];
  }
}

- (void)_updateOverlayVisibilityWithToolPicker:(id)picker visible:(BOOL)visible
{
  visibleCopy = visible;
  v34 = *MEMORY[0x277D85DE8];
  pickerCopy = picker;
  array = [MEMORY[0x277CBEB18] array];
  overlayView = [(AKPageController *)self overlayView];

  if (overlayView)
  {
    overlayView2 = [(AKPageController *)self overlayView];
    [array addObject:overlayView2];
  }

  inkPageOverlayController = [(AKPageController *)self inkPageOverlayController];
  inkOverlayView = [inkPageOverlayController inkOverlayView];

  if (inkOverlayView)
  {
    inkPageOverlayController2 = [(AKPageController *)self inkPageOverlayController];
    inkOverlayView2 = [inkPageOverlayController2 inkOverlayView];
    [array addObject:inkOverlayView2];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = array;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v15)
  {
    v17 = v15;
    v18 = *v24;
    *&v16 = 138412802;
    v22 = v16;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v23 + 1) + 8 * i);
        [pickerCopy setVisible:visibleCopy forFirstResponder:{v20, v22, v23}];
        v21 = os_log_create("com.apple.annotationkit", "AKPageController");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v22;
          v28 = v20;
          v29 = 2112;
          v30 = pickerCopy;
          v31 = 1024;
          v32 = visibleCopy;
          _os_log_impl(&dword_23F3EC000, v21, OS_LOG_TYPE_DEFAULT, "Updated visibility for overlay: %@, with toolpicker: %@, to visible: %d", buf, 0x1Cu);
        }
      }

      v17 = [v14 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v17);
  }
}

- (id)_popoverPresentingViewController
{
  controller = [(AKPageController *)self controller];
  delegate = [controller delegate];
  v4 = [delegate popoverPresentingViewControllerForAnnotationController:controller];

  return v4;
}

- (AKController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end