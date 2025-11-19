@interface PDFKitSignatureView
- (BOOL)becomeFirstResponder;
- (PDFKitSignatureView)initWithAnnotation:(id)a3 pdfPageView:(id)a4 pdfView:(id)a5;
- (void)_applyScale:(double)a3 toView:(id)a4;
- (void)_setup;
- (void)_updateScaleFactor;
- (void)removeFromSuperview;
@end

@implementation PDFKitSignatureView

- (PDFKitSignatureView)initWithAnnotation:(id)a3 pdfPageView:(id)a4 pdfView:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = PDFKitSignatureView;
  v12 = [(PDFKitSignatureView *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_annotation, a3);
    objc_storeStrong(&v13->_pdfPageView, a4);
    objc_storeStrong(&v13->_pdfView, a5);
    [v9 bounds];
    v18 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v14, v15, v16, v17}];
    view = v13->_view;
    v13->_view = v18;

    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    v21 = [v11 documentScrollView];
    [v20 addObserver:v13 selector:sel__didChangeZoomFactor_ name:@"PDFScrollViewDidChangeZoomFactor" object:v21];

    [(PDFKitSignatureView *)v13 _setup];
  }

  return v13;
}

- (void)removeFromSuperview
{
  [(UIView *)self->_view removeFromSuperview];
  v4 = [(PDFKitSignatureView *)self annotation];
  v3 = [v4 accessibilityNode];
  [v3 _setSignatureWidgetAsKeyboardFocused:0];
}

- (BOOL)becomeFirstResponder
{
  v3 = [(UIView *)self->_view becomeFirstResponder];
  if (v3)
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

  return v3;
}

- (void)_setup
{
  v8 = self->_pdfPageView;
  v3 = self->_annotation;
  v4 = v3;
  if (v3)
  {
    v5 = [(PDFAnnotation *)v3 isAppearanceStreamEmpty]? -200.0 : 0.0;
    v6 = [(UIView *)self->_view layer];
    [v6 setZPosition:v5];

    v7 = [(UIView *)self->_view layer];
    [v7 setDrawsAsynchronously:1];

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

- (void)_applyScale:(double)a3 toView:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  [v6 setContentScaleFactor:a3];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [v6 subviews];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v7);
        }

        [(PDFKitSignatureView *)self _applyScale:*(*(&v12 + 1) + 8 * v11++) toView:a3];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

@end