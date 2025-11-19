@interface _PKDataDetectorInteraction
- (BOOL)handleTapAtPoint:(CGPoint)a3;
- (CGAffineTransform)drawingTransform;
- (CGAffineTransform)highlightPreviewTransform;
- (CGAffineTransform)highlightTransform;
- (CGRect)sourceRect;
- (UIView)view;
- (_PKDataDetectorInteraction)initWithRecognitionController:(id)a3;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)dataDetectorHitTest:(CGPoint)a3;
- (id)itemWithIdentifier:(id)a3;
- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)didMoveToView:(id)a3;
- (void)setDrawingTransform:(CGAffineTransform *)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlightPreviewTransform:(CGAffineTransform *)a3;
- (void)setHighlightTransform:(CGAffineTransform *)a3;
- (void)tapHandler:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation _PKDataDetectorInteraction

- (_PKDataDetectorInteraction)initWithRecognitionController:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = _PKDataDetectorInteraction;
  v6 = [(_PKDataDetectorInteraction *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recognitionController, a3);
    v8 = [v5 dataDetectorController];
    dataDetectorController = v7->_dataDetectorController;
    v7->_dataDetectorController = v8;

    v10 = MEMORY[0x1E695EFD0];
    v11 = *MEMORY[0x1E695EFD0];
    v12 = *(MEMORY[0x1E695EFD0] + 16);
    *&v7->_drawingTransform.a = *MEMORY[0x1E695EFD0];
    *&v7->_drawingTransform.c = v12;
    v13 = *(v10 + 32);
    *&v7->_drawingTransform.tx = v13;
    *&v7->_highlightTransform.a = v11;
    *&v7->_highlightTransform.c = v12;
    *&v7->_highlightTransform.tx = v13;
    *&v7->_highlightPreviewTransform.tx = v13;
    *&v7->_highlightPreviewTransform.a = v11;
    *&v7->_highlightPreviewTransform.c = v12;
    v14 = *MEMORY[0x1E695F050];
    v7->_sourceRect.size = *(MEMORY[0x1E695F050] + 16);
    v7->_sourceRect.origin = v14;
  }

  return v7;
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled == a3)
  {
    return;
  }

  v3 = a3;
  self->_enabled = a3;
  [(UITapGestureRecognizer *)self->_tapGestureRecognizer setEnabled:?];
  v5 = [(_PKDataDetectorInteraction *)self view];
  if (!v5 || !v3)
  {

    if (v3)
    {
      return;
    }

    goto LABEL_8;
  }

  menuInteraction = self->_menuInteraction;

  if (menuInteraction)
  {
    if (v3)
    {
      return;
    }

LABEL_8:
    if (!self->_menuInteraction)
    {
      return;
    }

    v7 = [(_PKDataDetectorInteraction *)self view];
    [v7 removeInteraction:self->_menuInteraction];

    v8 = self->_menuInteraction;
    self->_menuInteraction = 0;
    goto LABEL_12;
  }

  v9 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:self];
  v10 = self->_menuInteraction;
  self->_menuInteraction = v9;

  v11 = [(_PKDataDetectorInteraction *)self view];
  [(UIContextMenuInteraction *)v11 addInteraction:self->_menuInteraction];
  v8 = v11;
LABEL_12:
}

- (void)willMoveToView:(id)a3
{
  v4 = [(_PKDataDetectorInteraction *)self view];
  if (v4)
  {
    v5 = v4;
    v6 = [(_PKDataDetectorInteraction *)self menuInteraction];

    if (v6)
    {
      v7 = [(_PKDataDetectorInteraction *)self view];
      v8 = [(_PKDataDetectorInteraction *)self menuInteraction];
      [v7 removeInteraction:v8];

      menuInteraction = self->_menuInteraction;
      self->_menuInteraction = 0;
    }
  }
}

- (void)didMoveToView:(id)a3
{
  v9 = a3;
  [(_PKDataDetectorInteraction *)self setView:v9];
  v4 = v9;
  if (v9)
  {
    if ([(_PKDataDetectorInteraction *)self isEnabled])
    {
      v5 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:self];
      menuInteraction = self->_menuInteraction;
      self->_menuInteraction = v5;

      [v9 addInteraction:self->_menuInteraction];
    }

    v7 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_tapHandler_];
    tapGestureRecognizer = self->_tapGestureRecognizer;
    self->_tapGestureRecognizer = v7;

    [(UITapGestureRecognizer *)self->_tapGestureRecognizer setEnabled:[(_PKDataDetectorInteraction *)self isEnabled]];
    [v9 addGestureRecognizer:self->_tapGestureRecognizer];
    v4 = v9;
  }
}

- (id)dataDetectorHitTest:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v4 = [(_PKDataDetectorInteraction *)self view];
  if ([v4 isHidden])
  {
  }

  else
  {
    v5 = [(_PKDataDetectorInteraction *)self view];
    [v5 alpha];
    v7 = v6;

    if (v7 > 0.0)
    {
      memset(&v13, 0, sizeof(v13));
      [(_PKDataDetectorInteraction *)self drawingTransform];
      CGAffineTransformInvert(&v13, &v12);
      v8 = [(_PKDataDetectorController *)self->_dataDetectorController hitTest:vaddq_f64(*&v13.tx, vmlaq_n_f64(vmulq_n_f64(*&v13.c, y), *&v13.a, x))];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_7;
      }
    }
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)itemWithIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(_PKDataDetectorController *)self->_dataDetectorController currentItems];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = [v11 identifier];
          v13 = [v12 isEqualToString:v4];

          if (v13)
          {
            goto LABEL_12;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (void)tapHandler:(id)a3
{
  v4 = a3;
  v5 = [(_PKDataDetectorInteraction *)self view];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  [(_PKDataDetectorInteraction *)self handleTapAtPoint:v7, v9];
}

- (BOOL)handleTapAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(_PKDataDetectorInteraction *)self dataDetectorHitTest:?];
  v7 = v6;
  if (v6)
  {
    memset(&v21, 0, sizeof(v21));
    [v6 _frame];
    v9 = v8;
    [v7 _frame];
    CGAffineTransformMakeTranslation(&v21, v9, v10);
    v11 = [(_PKDataDetectorInteraction *)self menuInteraction];
    v12 = [(_PKDataDetectorInteraction *)self view];
    [(_PKDataDetectorInteraction *)self drawingTransform];
    [(_PKDataDetectorInteraction *)self highlightTransform];
    [(_PKDataDetectorInteraction *)self sourceRect];
    v18 = v21;
    [v7 handleTapForMenuForInteraction:v11 location:v12 view:&v18 viewTransform:v20 drawingTransform:v19 highlightTransform:x sourceRect:{y, v13, v14, v15, v16}];
  }

  return v7 != 0;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(_PKDataDetectorInteraction *)self dataDetectorHitTest:a3];
  v8 = [(_PKDataDetectorInteraction *)self menuInteraction];
  v9 = [(_PKDataDetectorInteraction *)self view];
  v10 = [v7 identifier];
  [(_PKDataDetectorInteraction *)self sourceRect];
  v15 = [v7 contextMenuInteraction:v8 configurationForMenuAtLocation:v9 view:v10 identifier:x sourceRect:{y, v11, v12, v13, v14}];

  return v15;
}

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(_PKDataDetectorInteraction *)self itemWithIdentifier:a5];
  [v10 _frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(_PKDataDetectorInteraction *)self highlightPreviewTransform];
  v28.origin.x = v12;
  v28.origin.y = v14;
  v28.size.width = v16;
  v28.size.height = v18;
  v29 = CGRectApplyAffineTransform(v28, &v26);
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  v23 = [(_PKDataDetectorInteraction *)self view];
  v24 = [v10 contextMenuInteraction:v9 configuration:v8 highlightPreviewInContainerView:v23 frame:{x, y, width, height}];

  return v24;
}

- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 identifier];
  v12 = [(_PKDataDetectorInteraction *)self itemWithIdentifier:v11];

  [v12 contextMenuInteraction:v10 willPerformPreviewActionForMenuWithConfiguration:v9 animator:v8];
}

- (CGAffineTransform)drawingTransform
{
  v3 = *&self[2].b;
  *&retstr->a = *&self[1].ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[2].d;
  return self;
}

- (void)setDrawingTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->c;
  *&self->_drawingTransform.tx = *&a3->tx;
  *&self->_drawingTransform.c = v4;
  *&self->_drawingTransform.a = v3;
}

- (CGAffineTransform)highlightTransform
{
  v3 = *&self[3].b;
  *&retstr->a = *&self[2].ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[3].d;
  return self;
}

- (void)setHighlightTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->c;
  *&self->_highlightTransform.tx = *&a3->tx;
  *&self->_highlightTransform.c = v4;
  *&self->_highlightTransform.a = v3;
}

- (CGAffineTransform)highlightPreviewTransform
{
  v3 = *&self[4].b;
  *&retstr->a = *&self[3].ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[4].d;
  return self;
}

- (void)setHighlightPreviewTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->c;
  *&self->_highlightPreviewTransform.tx = *&a3->tx;
  *&self->_highlightPreviewTransform.c = v4;
  *&self->_highlightPreviewTransform.a = v3;
}

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end