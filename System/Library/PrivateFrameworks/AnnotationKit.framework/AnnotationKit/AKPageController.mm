@interface AKPageController
+ (AKPageController)pageControllerWithController:(id)a3 andPageModelController:(id)a4;
- (AKController)controller;
- (AKControllerDelegateProtocol)delegate;
- (BOOL)relinquishablesAreLoaded;
- (CGPoint)convertPointFromModelToOverlay:(CGPoint)a3;
- (CGPoint)convertPointFromOverlayToModel:(CGPoint)a3;
- (CGRect)convertRectFromModelToOverlay:(CGRect)a3;
- (CGRect)convertRectFromOverlayToModel:(CGRect)a3;
- (CGRect)maxPageRect;
- (CGRect)stickyViewFrameForNoteEditor:(id)a3;
- (CGRect)visibleRectOfOverlay;
- (double)currentModelToScreenScaleFactor;
- (double)modelBaseScaleFactor;
- (id)_initWithController:(id)a3 andPageModelController:(id)a4;
- (id)_popoverPresentingViewController;
- (id)annotationsBeneathLoupe:(id)a3;
- (id)initForTesting;
- (id)newContentSnapshotPDFDataAtScale:(double)a3 inRect:(CGRect)a4 forLoupeAnnotation:(id)a5;
- (id)stickyContainerForNoteEditor:(id)a3;
- (int64_t)currentModelToScreenExifOrientation;
- (void)_updateOverlayVisibilityWithToolPicker:(id)a3 visible:(BOOL)a4;
- (void)addPopupToAnnotation:(id)a3 openPopup:(BOOL)a4;
- (void)editorController:(id)a3 deleteAnnotation:(id)a4;
- (void)editorController:(id)a3 editNote:(id)a4;
- (void)editorController:(id)a3 setTheme:(id)a4 forAnnotation:(id)a5;
- (void)noteEditorDidFinishEditing:(id)a3;
- (void)noteEditorWillDismissFromFullScreen:(id)a3;
- (void)noteEditorWillPresentFullScreen:(id)a3;
- (void)openPopoverForHighlightAnnotation:(id)a3;
- (void)openPopupAnnotation:(id)a3;
- (void)overlayWasAddedToSuperview;
- (void)releaseRelinquishables;
- (void)removeNoteFromAnnotation:(id)a3;
- (void)setupRelinquishables;
- (void)teardown;
- (void)unregisterFromUndoManager:(id)a3;
- (void)updateOverlayViewLayers;
- (void)updateScaleFactor:(double)a3 isLiveUpdate:(BOOL)a4 forceUpdate:(BOOL)a5;
@end

@implementation AKPageController

+ (AKPageController)pageControllerWithController:(id)a3 andPageModelController:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] _initWithController:v7 andPageModelController:v6];

  return v8;
}

- (id)_initWithController:(id)a3 andPageModelController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = AKPageController;
  v8 = [(AKPageController *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(AKPageController *)v8 setController:v6];
    [(AKPageController *)v9 setPageModelController:v7];
    v10 = [v6 statisticsLogger];
    [v7 setStatisticsLogger:v10];

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

- (void)unregisterFromUndoManager:(id)a3
{
  v6 = a3;
  v4 = [(AKPageController *)self inkOverlayDrawingUndoTarget];

  if (v4)
  {
    v5 = [(AKPageController *)self inkOverlayDrawingUndoTarget];
    [v6 removeAllActionsWithTarget:v5];
  }
}

- (void)teardown
{
  [(AKPageController *)self setNoteEditors:0];

  [(AKPageController *)self setPageModelController:0];
}

- (void)setupRelinquishables
{
  v3 = [(AKPageController *)self geometryHelper];

  if (!v3)
  {
    v4 = [[AKGeometryHelper alloc] initWithPageController:self];
    [(AKPageController *)self setGeometryHelper:v4];

    [(AKPageController *)self setSuperviewDependentThingsWereSetUp:0];
    v5 = [[AKLayerPresentationManager alloc] initWithPageController:self];
    [(AKPageController *)self setLayerPresentationManager:v5];

    v6 = [(AKPageController *)self shouldPixelate];
    v7 = [(AKPageController *)self layerPresentationManager];
    [v7 setShouldPixelate:v6];

    v8 = [[AKOverlayView alloc] initWithPageController:self];
    [(AKPageController *)self setOverlayView:v8];

    v9 = [[AKInkPageOverlayController alloc] initWithPageController:self];
    [(AKPageController *)self setInkPageOverlayController:v9];
  }
}

- (void)releaseRelinquishables
{
  v11 = [(AKPageController *)self controller];
  v3 = [v11 textEditorController];
  v4 = [v3 annotation];

  if (v4)
  {
    v5 = [(AKPageController *)self pageModelController];
    v6 = [v5 annotations];
    v7 = [v6 containsObject:v4];

    if (v7)
    {
      v8 = [v11 textEditorController];
      [v8 endEditing];
    }
  }

  if ([(AKPageController *)self superviewDependentThingsWereSetUp])
  {
    v9 = [(AKPageController *)self layerPresentationManager];
    [v9 teardown];

    v10 = [(AKPageController *)self inkPageOverlayController];
    [v10 teardown];

    [(AKPageController *)self setSuperviewDependentThingsWereSetUp:0];
  }

  [(AKPageController *)self setOverlayView:0];
  [(AKPageController *)self setInkPageOverlayController:0];
  [(AKPageController *)self setLayerPresentationManager:0];
  [(AKPageController *)self setGeometryHelper:0];
}

- (BOOL)relinquishablesAreLoaded
{
  v2 = [(AKPageController *)self overlayView];
  v3 = v2 != 0;

  return v3;
}

- (void)overlayWasAddedToSuperview
{
  if (![(AKPageController *)self superviewDependentThingsWereSetUp])
  {
    v3 = [(AKPageController *)self layerPresentationManager];
    [v3 setup];

    v4 = [(AKPageController *)self inkPageOverlayController];
    [v4 setup];

    [(AKPageController *)self setSuperviewDependentThingsWereSetUp:1];
  }
}

- (void)updateOverlayViewLayers
{
  v2 = [(AKPageController *)self overlayView];
  [v2 updateLayers];
}

- (void)updateScaleFactor:(double)a3 isLiveUpdate:(BOOL)a4 forceUpdate:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = [(AKPageController *)self layerPresentationManager];
  [v8 updateScaleFactor:v6 isLiveUpdate:v5 forceUpdate:a3];
}

- (int64_t)currentModelToScreenExifOrientation
{
  v3 = [(AKPageController *)self overlayView];
  v4 = [v3 window];

  if (v4)
  {
    v5 = [(AKPageController *)self overlayView];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_23F46B500;
    v9[3] = &unk_278C7BFD8;
    v9[4] = self;
    v10 = v5;
    v6 = v5;
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
  v3 = [(AKPageController *)self overlayView];
  v4 = [v3 window];

  if (!v4)
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
  v14 = [(AKPageController *)self overlayView];
  v15 = [v14 superview];
  [v14 convertRect:v15 toView:{v7, v9, v11, v13}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [v15 window];
  v25 = [v24 screen];
  v26 = [v25 coordinateSpace];
  [v15 convertRect:v26 toCoordinateSpace:{v17, v19, v21, v23}];
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
  v2 = [(AKPageController *)self controller];
  v3 = [v2 delegate];

  return v3;
}

- (CGPoint)convertPointFromOverlayToModel:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(AKPageController *)self pageIndex];
  v7 = [(AKPageController *)self controller];
  v8 = [v7 delegate];
  v9 = v8;
  if (v8)
  {
    [v8 convertPoint:v6 fromOverlayToModelWithPageIndex:v7 forAnnotationController:{x, y}];
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

- (CGPoint)convertPointFromModelToOverlay:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(AKPageController *)self pageIndex];
  v7 = [(AKPageController *)self controller];
  v8 = [v7 delegate];
  v9 = v8;
  if (v8)
  {
    [v8 convertPoint:v6 fromModelToOverlayWithPageIndex:v7 forAnnotationController:{x, y}];
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

- (CGRect)convertRectFromOverlayToModel:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(AKPageController *)self pageIndex];
  v9 = [(AKPageController *)self controller];
  v10 = [v9 delegate];
  if (v10)
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
    [v10 convertPoint:v8 fromOverlayToModelWithPageIndex:v9 forAnnotationController:{MinX, MinY}];
    v16 = v15;
    v18 = v17;
    [v10 convertPoint:v8 fromOverlayToModelWithPageIndex:v9 forAnnotationController:{MaxX, MaxY}];
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

- (CGRect)convertRectFromModelToOverlay:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(AKPageController *)self pageIndex];
  v9 = [(AKPageController *)self controller];
  v10 = [v9 delegate];
  if (v10)
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
    [v10 convertPoint:v8 fromModelToOverlayWithPageIndex:v9 forAnnotationController:{MinX, MinY}];
    v16 = v15;
    v18 = v17;
    [v10 convertPoint:v8 fromModelToOverlayWithPageIndex:v9 forAnnotationController:{MaxX, MaxY}];
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
  v3 = [(AKPageController *)self controller];
  v4 = [v3 delegate];
  [v4 maxPageRectWithPageIndex:-[AKPageController pageIndex](self forAnnotationController:{"pageIndex"), v3}];
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

- (id)newContentSnapshotPDFDataAtScale:(double)a3 inRect:(CGRect)a4 forLoupeAnnotation:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v56 = *MEMORY[0x277D85DE8];
  v11 = a5;
  v12 = [(AKPageController *)self controller];
  v13 = [v12 delegate];
  v14 = [v13 newContentSnapshotPDFDataIncludingAdornments:1 atScale:-[AKPageController pageIndex](self inRect:"pageIndex") onOverlayAtPageIndex:v12 forAnnotationController:{a3, x, y, width, height}];
  v15 = [(AKPageController *)self annotationsBeneathLoupe:v11];
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
            v45 = v13;
            v46 = v11;
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
            v13 = v45;
            v11 = v46;
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

- (id)annotationsBeneathLoupe:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB40] orderedSet];
  v6 = [(AKPageController *)self pageModelController];
  v7 = [v6 annotations];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v7;
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
      if (v13 == v4)
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
          [v4 drawingBounds];
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
            [v5 addObject:v13];
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

  return v5;
}

- (double)modelBaseScaleFactor
{
  v3 = [(AKPageController *)self pageIndex];
  v4 = [(AKPageController *)self controller];
  v5 = [v4 delegate];
  v6 = 1.0;
  if (objc_opt_respondsToSelector())
  {
    [v5 modelBaseScaleFactorOfPageAtIndex:v3 forAnnotationController:v4];
    v6 = v7;
  }

  return v6;
}

- (CGRect)visibleRectOfOverlay
{
  v3 = [(AKPageController *)self controller];
  v4 = [v3 delegate];
  v5 = [(AKPageController *)self overlayView];
  [v5 akVisibleRect];
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
    [v4 visibleRectOfOverlayAtPageIndex:-[AKPageController pageIndex](self forAnnotationController:{"pageIndex"), v3}];
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

- (void)openPopoverForHighlightAnnotation:(id)a3
{
  v4 = a3;
  v5 = [v4 color];
  v6 = [AKHighlightAppearanceHelper attributeTagForHighlightOfColor:v5];

  v7 = [AKHighlightAppearanceHelper annotationStyleForHighlightAttributeWithTag:v6];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = 3;
  }

  v29 = +[AKAnnotationTheme themeForAnnotationStyle:pageTheme:isUnderline:](AKAnnotationTheme, "themeForAnnotationStyle:pageTheme:isUnderline:", v8, 0, [v4 style] == 2);
  v9 = [(AKPageController *)self _popoverPresentingViewController];
  v10 = [v9 view];
  [v4 integralDrawingBounds];
  [(AKPageController *)self convertRectFromModelToOverlay:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(AKPageController *)self overlayView];
  [v19 convertRect:v10 toView:{v12, v14, v16, v18}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = [[AKHighlightColorEditorController alloc] initWithNibName:0 bundle:0];
  [(AKHighlightColorEditorController *)v28 setDelegate:self];
  [(AKAnnotationPopoverViewController *)v28 setAnnotationTheme:v29];
  [(AKHighlightColorEditorController *)v28 setPageTheme:0];
  [(AKAnnotationPopoverViewController *)v28 setAnnotation:v4];

  [(AKAnnotationPopoverViewController *)v28 setAnnotationPageController:self];
  [(AKHighlightColorEditorController *)v28 presentFromRect:v10 view:v21, v23, v25, v27];
}

- (void)editorController:(id)a3 editNote:(id)a4
{
  v5 = a4;
  v6 = [v5 childAnnotation];
  if (!v6)
  {
    [(AKPageController *)self addPopupToAnnotation:v5 openPopup:0];
    v6 = [v5 childAnnotation];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_23F46C808;
  v8[3] = &unk_278C7B810;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

- (void)editorController:(id)a3 setTheme:(id)a4 forAnnotation:(id)a5
{
  v6 = 765200;
  v21 = a4;
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
  v20 = [(AKPageController *)self controller];
  [v20 performActionForSender:v19];

LABEL_13:
}

- (void)editorController:(id)a3 deleteAnnotation:(id)a4
{
  v9 = a4;
  v5 = [(AKPageController *)self pageModelController];
  v6 = [v5 mutableArrayValueForKey:@"annotations"];
  [v6 removeObject:v9];

  if ([v9 conformsToAKParentAnnotationProtocol])
  {
    v7 = [v9 childAnnotation];
    if (v7)
    {
      v8 = [v5 mutableArrayValueForKey:@"annotations"];
      [v8 removeObject:v7];
    }
  }
}

- (void)addPopupToAnnotation:(id)a3 openPopup:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [AKNoteAnnotationHelper newPopupAnnotationWithParent:v6 onPageController:self];
  if (v7)
  {
    v8 = [(AKPageController *)self controller];
    v9 = [v8 toolController];
    [v9 addNewAnnotation:v7 onPageController:self shouldSelect:0 shouldCascade:0];

    [v7 setParentAnnotation:v6];
    [v6 setChildAnnotation:v7];
    if (v4)
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

- (void)removeNoteFromAnnotation:(id)a3
{
  v7 = a3;
  v4 = [v7 childAnnotation];
  if (v4)
  {
    v5 = [(AKPageController *)self pageModelController];
    v6 = [v5 mutableArrayValueForKey:@"annotations"];
    [v6 removeObject:v4];

    [v7 setChildAnnotation:0];
  }
}

- (void)openPopupAnnotation:(id)a3
{
  v9 = a3;
  v4 = [(AKPageController *)self noteEditors];
  v5 = [v9 UUID];
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {
    v6 = objc_alloc_init(AKNoteEditorController);
    v7 = [(AKPageController *)self noteEditors];
    v8 = [v9 UUID];
    [v7 setObject:v6 forKey:v8];

    [(AKNoteEditorController *)v6 setAnnotation:v9];
    [(AKNoteEditorController *)v6 setDelegate:self];
  }

  [(AKNoteEditorController *)v6 show:1];
  [(AKNoteEditorController *)v6 beginEditing:1];
}

- (void)noteEditorDidFinishEditing:(id)a3
{
  v11 = a3;
  v4 = [v11 annotation];
  v5 = [v11 editedText];
  [v4 setContents:v5];

  v6 = [v4 contents];
  v7 = [v6 length];

  if (!v7)
  {
    v8 = [v4 parentAnnotation];
    [(AKPageController *)self removeNoteFromAnnotation:v8];
  }

  v9 = [(AKPageController *)self noteEditors];
  v10 = [v4 UUID];
  [v9 removeObjectForKey:v10];

  [v11 hide];
}

- (id)stickyContainerForNoteEditor:(id)a3
{
  v3 = [(AKPageController *)self _popoverPresentingViewController];
  v4 = [v3 view];

  return v4;
}

- (CGRect)stickyViewFrameForNoteEditor:(id)a3
{
  v4 = a3;
  v5 = [v4 annotation];
  v6 = [v5 parentAnnotation];
  v7 = [v5 visualStyle];
  v8 = v5;
  if (v7 || (objc_opt_self(), v9 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v9, v8 = v6, (isKindOfClass & 1) != 0))
  {
    [v8 rectangle];
  }

  [(AKPageController *)self convertRectFromModelToOverlay:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(AKPageController *)self overlayView];
  v20 = [(AKPageController *)self stickyContainerForNoteEditor:v4];

  [v19 convertRect:v20 toView:{v12, v14, v16, v18}];
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

- (void)noteEditorWillPresentFullScreen:(id)a3
{
  v4 = [(AKPageController *)self controller];
  v3 = [v4 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 controllerWillShowSignatureCaptureView:v4];
  }
}

- (void)noteEditorWillDismissFromFullScreen:(id)a3
{
  v4 = [(AKPageController *)self controller];
  v3 = [v4 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 controllerWillDismissSignatureCaptureView:v4];
  }
}

- (void)_updateOverlayVisibilityWithToolPicker:(id)a3 visible:(BOOL)a4
{
  v4 = a4;
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [(AKPageController *)self overlayView];

  if (v8)
  {
    v9 = [(AKPageController *)self overlayView];
    [v7 addObject:v9];
  }

  v10 = [(AKPageController *)self inkPageOverlayController];
  v11 = [v10 inkOverlayView];

  if (v11)
  {
    v12 = [(AKPageController *)self inkPageOverlayController];
    v13 = [v12 inkOverlayView];
    [v7 addObject:v13];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = v7;
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
        [v6 setVisible:v4 forFirstResponder:{v20, v22, v23}];
        v21 = os_log_create("com.apple.annotationkit", "AKPageController");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v22;
          v28 = v20;
          v29 = 2112;
          v30 = v6;
          v31 = 1024;
          v32 = v4;
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
  v2 = [(AKPageController *)self controller];
  v3 = [v2 delegate];
  v4 = [v3 popoverPresentingViewControllerForAnnotationController:v2];

  return v4;
}

- (AKController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end