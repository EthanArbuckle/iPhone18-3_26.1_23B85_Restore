@interface PDFKitSignatureView
- (BOOL)becomeFirstResponder;
- (PDFKitSignatureView)initWithAnnotation:(id)annotation pdfPageView:(id)view pdfView:(id)pdfView;
- (void)_applyScale:(double)scale toView:(id)view;
- (void)_setup;
- (void)_updateScaleFactor;
- (void)removeFromSuperview;
@end

@implementation PDFKitSignatureView

- (PDFKitSignatureView)initWithAnnotation:(id)annotation pdfPageView:(id)view pdfView:(id)pdfView
{
  annotationCopy = annotation;
  viewCopy = view;
  pdfViewCopy = pdfView;
  v23.receiver = self;
  v23.super_class = PDFKitSignatureView;
  v12 = [(PDFKitSignatureView *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_annotation, annotation);
    objc_storeStrong(&v13->_pdfPageView, view);
    objc_storeStrong(&v13->_pdfView, pdfView);
    [annotationCopy bounds];
    v18 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v14, v15, v16, v17}];
    view = v13->_view;
    v13->_view = v18;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    documentScrollView = [pdfViewCopy documentScrollView];
    [defaultCenter addObserver:v13 selector:sel__didChangeZoomFactor_ name:@"PDFScrollViewDidChangeZoomFactor" object:documentScrollView];

    [(PDFKitSignatureView *)v13 _setup];
  }

  return v13;
}

- (void)removeFromSuperview
{
  [(UIView *)self->_view removeFromSuperview];
  annotation = [(PDFKitSignatureView *)self annotation];
  accessibilityNode = [annotation accessibilityNode];
  [accessibilityNode _setSignatureWidgetAsKeyboardFocused:0];
}

- (BOOL)becomeFirstResponder
{
  becomeFirstResponder = [(UIView *)self->_view becomeFirstResponder];
  if (becomeFirstResponder)
  {
    v4 = self->_pdfView;
    v5 = v4;
    if (v4)
    {
      v6 = self->_annotation == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      [(PDFView *)v4 interactWithAnnotation:?];
    }
  }

  return becomeFirstResponder;
}

- (void)_setup
{
  v8 = self->_pdfPageView;
  v3 = self->_annotation;
  v4 = v3;
  if (v3)
  {
    v5 = [(PDFAnnotation *)v3 isAppearanceStreamEmpty]? -200.0 : 0.0;
    layer = [(UIView *)self->_view layer];
    [layer setZPosition:v5];

    layer2 = [(UIView *)self->_view layer];
    [layer2 setDrawsAsynchronously:1];

    [(PDFAnnotation *)v4 setControl:self];
    if (v8)
    {
      [(PDFPageView *)v8 addSubview:self->_view];
      [(PDFKitSignatureView *)self _updateScaleFactor];
      [(PDFKitSignatureView *)self becomeFirstResponder];
    }
  }
}

- (void)_updateScaleFactor
{
  [(PDFView *)self->_pdfView scaleFactor];
  v4 = v3 * PDFScreenGetBackingScaleFactor();
  view = self->_view;

  [(PDFKitSignatureView *)self _applyScale:view toView:v4];
}

- (void)_applyScale:(double)scale toView:(id)view
{
  v17 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  [viewCopy setContentScaleFactor:scale];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  subviews = [viewCopy subviews];
  v8 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(subviews);
        }

        [(PDFKitSignatureView *)self _applyScale:*(*(&v12 + 1) + 8 * v11++) toView:scale];
      }

      while (v9 != v11);
      v9 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

@end