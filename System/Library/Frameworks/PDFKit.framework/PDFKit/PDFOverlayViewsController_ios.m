@interface PDFOverlayViewsController_ios
- (PDFOverlayViewsController_ios)initWithPDFView:(id)a3;
- (void)_installOverlayForPageView:(id)a3 ofPage:(id)a4 atIndex:(unint64_t)a5;
- (void)_uninstallOverlayForPageView:(id)a3 ofPage:(id)a4 atIndex:(unint64_t)a5;
@end

@implementation PDFOverlayViewsController_ios

- (PDFOverlayViewsController_ios)initWithPDFView:(id)a3
{
  v4.receiver = self;
  v4.super_class = PDFOverlayViewsController_ios;
  return [(PDFOverlayViewsController *)&v4 initWithPDFView:a3];
}

- (void)_installOverlayForPageView:(id)a3 ofPage:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8 && v9 && a5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [(PDFOverlayViewsController *)self viewProvider];
    v12 = [(PDFOverlayViewsController *)self pdfView];
    v13 = [(PDFOverlayViewsController *)self _callOverlayViewForPage:v10];
    if (v13)
    {
      v14 = v8;
      v15 = [v13 superview];

      if (v15 != v14)
      {
        [v10 boundsForBox:1];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v24 = [v10 rotation];
        v25 = PDFDegToRad(v24);
        [v12 convertRect:v10 fromPage:{v17, v19, v21, v23}];
        [v14 convertRect:v12 fromView:?];
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
          v30 = v11;
          if ((objc_opt_respondsToSelector() & 1) != 0 && [v30 shouldVerticallyFlipOverlayViews])
          {
            CGAffineTransformMakeScale(&t2, 1.0, -1.0);
            *&t1.a = v50;
            *&t1.c = v49;
            *&t1.tx = v48;
            CGAffineTransformConcat(&v55, &t1, &t2);
          }

          v51 = v30;
          if (v24)
          {
            CGAffineTransformMakeRotation(&t1, v25);
            v52 = v55;
            CGAffineTransformConcat(&t2, &v52, &t1);
            v55 = t2;
          }

          v31 = [v13 layer];
          [v31 setAnchorPoint:{0.5, 0.5}];

          t2 = v55;
          [v13 setTransform:&t2];
          [v13 setFrame:{x, y, width, height}];
          [v14 addSubview:v13];
          [v14 setOverlayViewInstalled:1];
          [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
          v32 = [v13 centerXAnchor];
          v33 = [v14 centerXAnchor];
          v34 = [v32 constraintEqualToAnchor:v33];
          [v34 setActive:1];

          v35 = [v13 centerYAnchor];
          v36 = [v14 centerYAnchor];
          v37 = [v35 constraintEqualToAnchor:v36];
          [v37 setActive:1];

          if (v24 == 270 || v24 == 90)
          {
            v38 = [v13 widthAnchor];
            v39 = [v14 heightAnchor];
            v40 = [v38 constraintEqualToAnchor:v39];
            [v40 setActive:1];

            v41 = [v13 heightAnchor];
            v42 = [v14 widthAnchor];
          }

          else
          {
            v43 = [v13 widthAnchor];
            v44 = [v14 widthAnchor];
            v45 = [v43 constraintEqualToAnchor:v44];
            [v45 setActive:1];

            v41 = [v13 heightAnchor];
            v42 = [v14 heightAnchor];
          }

          v46 = v42;
          v47 = [v41 constraintEqualToAnchor:v42];
          [v47 setActive:1];

          if (objc_opt_respondsToSelector())
          {
            [v51 pdfView:v12 willDisplayOverlayView:v13 forPage:v10];
          }
        }
      }
    }
  }
}

- (void)_uninstallOverlayForPageView:(id)a3 ofPage:(id)a4 atIndex:(unint64_t)a5
{
  v13 = a3;
  v7 = a4;
  if ([v13 isOverlayViewInstalled])
  {
    v8 = [(PDFOverlayViewsController *)self _cachedOverlayViewForPage:v7];
    [(PDFOverlayViewsController *)self _callWillEndDisplayingOverlayViewForPage:v7];
    if ([v8 isFirstResponder])
    {
      v9 = [(PDFOverlayViewsController *)self pdfDocument];
      v10 = [v9 akDocumentAdaptor];

      v11 = [v10 akMainController];
      v12 = [v11 modernToolbarView];
      [v12 becomeFirstResponder];
    }

    else
    {
      v10 = [v8 superview];
      [v10 becomeFirstResponder];
    }

    [v13 setOverlayViewInstalled:0];
    [v8 removeFromSuperview];
  }
}

@end