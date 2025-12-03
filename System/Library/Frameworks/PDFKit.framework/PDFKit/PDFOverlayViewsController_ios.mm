@interface PDFOverlayViewsController_ios
- (PDFOverlayViewsController_ios)initWithPDFView:(id)view;
- (void)_installOverlayForPageView:(id)view ofPage:(id)page atIndex:(unint64_t)index;
- (void)_uninstallOverlayForPageView:(id)view ofPage:(id)page atIndex:(unint64_t)index;
@end

@implementation PDFOverlayViewsController_ios

- (PDFOverlayViewsController_ios)initWithPDFView:(id)view
{
  v4.receiver = self;
  v4.super_class = PDFOverlayViewsController_ios;
  return [(PDFOverlayViewsController *)&v4 initWithPDFView:view];
}

- (void)_installOverlayForPageView:(id)view ofPage:(id)page atIndex:(unint64_t)index
{
  viewCopy = view;
  pageCopy = page;
  v10 = pageCopy;
  if (viewCopy && pageCopy && index != 0x7FFFFFFFFFFFFFFFLL)
  {
    viewProvider = [(PDFOverlayViewsController *)self viewProvider];
    pdfView = [(PDFOverlayViewsController *)self pdfView];
    v13 = [(PDFOverlayViewsController *)self _callOverlayViewForPage:v10];
    if (v13)
    {
      v14 = viewCopy;
      superview = [v13 superview];

      if (superview != v14)
      {
        [v10 boundsForBox:1];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        rotation = [v10 rotation];
        v25 = PDFDegToRad(rotation);
        [pdfView convertRect:v10 fromPage:{v17, v19, v21, v23}];
        [v14 convertRect:pdfView fromView:?];
        x = v56.origin.x;
        y = v56.origin.y;
        width = v56.size.width;
        height = v56.size.height;
        if (!CGRectIsEmpty(v56))
        {
          v49 = *(MEMORY[0x1E695EFD0] + 16);
          v50 = *MEMORY[0x1E695EFD0];
          *&v55.a = *MEMORY[0x1E695EFD0];
          *&v55.c = v49;
          v48 = *(MEMORY[0x1E695EFD0] + 32);
          *&v55.tx = v48;
          v30 = viewProvider;
          if ((objc_opt_respondsToSelector() & 1) != 0 && [v30 shouldVerticallyFlipOverlayViews])
          {
            CGAffineTransformMakeScale(&t2, 1.0, -1.0);
            *&t1.a = v50;
            *&t1.c = v49;
            *&t1.tx = v48;
            CGAffineTransformConcat(&v55, &t1, &t2);
          }

          v51 = v30;
          if (rotation)
          {
            CGAffineTransformMakeRotation(&t1, v25);
            v52 = v55;
            CGAffineTransformConcat(&t2, &v52, &t1);
            v55 = t2;
          }

          layer = [v13 layer];
          [layer setAnchorPoint:{0.5, 0.5}];

          t2 = v55;
          [v13 setTransform:&t2];
          [v13 setFrame:{x, y, width, height}];
          [v14 addSubview:v13];
          [v14 setOverlayViewInstalled:1];
          [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
          centerXAnchor = [v13 centerXAnchor];
          centerXAnchor2 = [v14 centerXAnchor];
          v34 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
          [v34 setActive:1];

          centerYAnchor = [v13 centerYAnchor];
          centerYAnchor2 = [v14 centerYAnchor];
          v37 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
          [v37 setActive:1];

          if (rotation == 270 || rotation == 90)
          {
            widthAnchor = [v13 widthAnchor];
            heightAnchor = [v14 heightAnchor];
            v40 = [widthAnchor constraintEqualToAnchor:heightAnchor];
            [v40 setActive:1];

            heightAnchor2 = [v13 heightAnchor];
            widthAnchor2 = [v14 widthAnchor];
          }

          else
          {
            widthAnchor3 = [v13 widthAnchor];
            widthAnchor4 = [v14 widthAnchor];
            v45 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
            [v45 setActive:1];

            heightAnchor2 = [v13 heightAnchor];
            widthAnchor2 = [v14 heightAnchor];
          }

          v46 = widthAnchor2;
          v47 = [heightAnchor2 constraintEqualToAnchor:widthAnchor2];
          [v47 setActive:1];

          if (objc_opt_respondsToSelector())
          {
            [v51 pdfView:pdfView willDisplayOverlayView:v13 forPage:v10];
          }
        }
      }
    }
  }
}

- (void)_uninstallOverlayForPageView:(id)view ofPage:(id)page atIndex:(unint64_t)index
{
  viewCopy = view;
  pageCopy = page;
  if ([viewCopy isOverlayViewInstalled])
  {
    v8 = [(PDFOverlayViewsController *)self _cachedOverlayViewForPage:pageCopy];
    [(PDFOverlayViewsController *)self _callWillEndDisplayingOverlayViewForPage:pageCopy];
    if ([v8 isFirstResponder])
    {
      pdfDocument = [(PDFOverlayViewsController *)self pdfDocument];
      akDocumentAdaptor = [pdfDocument akDocumentAdaptor];

      akMainController = [akDocumentAdaptor akMainController];
      modernToolbarView = [akMainController modernToolbarView];
      [modernToolbarView becomeFirstResponder];
    }

    else
    {
      akDocumentAdaptor = [v8 superview];
      [akDocumentAdaptor becomeFirstResponder];
    }

    [viewCopy setOverlayViewInstalled:0];
    [v8 removeFromSuperview];
  }
}

@end