@interface _PKDataDetectorInteraction
- (BOOL)handleTapAtPoint:(CGPoint)point;
- (CGAffineTransform)drawingTransform;
- (CGAffineTransform)highlightPreviewTransform;
- (CGAffineTransform)highlightTransform;
- (CGRect)sourceRect;
- (UIView)view;
- (_PKDataDetectorInteraction)initWithRecognitionController:(id)controller;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)dataDetectorHitTest:(CGPoint)test;
- (id)itemWithIdentifier:(id)identifier;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)didMoveToView:(id)view;
- (void)setDrawingTransform:(CGAffineTransform *)transform;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlightPreviewTransform:(CGAffineTransform *)transform;
- (void)setHighlightTransform:(CGAffineTransform *)transform;
- (void)tapHandler:(id)handler;
- (void)willMoveToView:(id)view;
@end

@implementation _PKDataDetectorInteraction

- (_PKDataDetectorInteraction)initWithRecognitionController:(id)controller
{
  controllerCopy = controller;
  v16.receiver = self;
  v16.super_class = _PKDataDetectorInteraction;
  v6 = [(_PKDataDetectorInteraction *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recognitionController, controller);
    dataDetectorController = [controllerCopy dataDetectorController];
    dataDetectorController = v7->_dataDetectorController;
    v7->_dataDetectorController = dataDetectorController;

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

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled == enabled)
  {
    return;
  }

  enabledCopy = enabled;
  self->_enabled = enabled;
  [(UITapGestureRecognizer *)self->_tapGestureRecognizer setEnabled:?];
  view = [(_PKDataDetectorInteraction *)self view];
  if (!view || !enabledCopy)
  {

    if (enabledCopy)
    {
      return;
    }

    goto LABEL_8;
  }

  menuInteraction = self->_menuInteraction;

  if (menuInteraction)
  {
    if (enabledCopy)
    {
      return;
    }

LABEL_8:
    if (!self->_menuInteraction)
    {
      return;
    }

    view2 = [(_PKDataDetectorInteraction *)self view];
    [view2 removeInteraction:self->_menuInteraction];

    v8 = self->_menuInteraction;
    self->_menuInteraction = 0;
    goto LABEL_12;
  }

  v9 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:self];
  v10 = self->_menuInteraction;
  self->_menuInteraction = v9;

  view3 = [(_PKDataDetectorInteraction *)self view];
  [(UIContextMenuInteraction *)view3 addInteraction:self->_menuInteraction];
  v8 = view3;
LABEL_12:
}

- (void)willMoveToView:(id)view
{
  view = [(_PKDataDetectorInteraction *)self view];
  if (view)
  {
    v5 = view;
    menuInteraction = [(_PKDataDetectorInteraction *)self menuInteraction];

    if (menuInteraction)
    {
      view2 = [(_PKDataDetectorInteraction *)self view];
      menuInteraction2 = [(_PKDataDetectorInteraction *)self menuInteraction];
      [view2 removeInteraction:menuInteraction2];

      menuInteraction = self->_menuInteraction;
      self->_menuInteraction = 0;
    }
  }
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  [(_PKDataDetectorInteraction *)self setView:viewCopy];
  v4 = viewCopy;
  if (viewCopy)
  {
    if ([(_PKDataDetectorInteraction *)self isEnabled])
    {
      v5 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:self];
      menuInteraction = self->_menuInteraction;
      self->_menuInteraction = v5;

      [viewCopy addInteraction:self->_menuInteraction];
    }

    v7 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_tapHandler_];
    tapGestureRecognizer = self->_tapGestureRecognizer;
    self->_tapGestureRecognizer = v7;

    [(UITapGestureRecognizer *)self->_tapGestureRecognizer setEnabled:[(_PKDataDetectorInteraction *)self isEnabled]];
    [viewCopy addGestureRecognizer:self->_tapGestureRecognizer];
    v4 = viewCopy;
  }
}

- (id)dataDetectorHitTest:(CGPoint)test
{
  y = test.y;
  x = test.x;
  view = [(_PKDataDetectorInteraction *)self view];
  if ([view isHidden])
  {
  }

  else
  {
    view2 = [(_PKDataDetectorInteraction *)self view];
    [view2 alpha];
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

- (id)itemWithIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  currentItems = [(_PKDataDetectorController *)self->_dataDetectorController currentItems];
  v6 = [currentItems countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(currentItems);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          identifier = [v11 identifier];
          v13 = [identifier isEqualToString:identifierCopy];

          if (v13)
          {
            goto LABEL_12;
          }
        }
      }

      v7 = [currentItems countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (void)tapHandler:(id)handler
{
  handlerCopy = handler;
  view = [(_PKDataDetectorInteraction *)self view];
  [handlerCopy locationInView:view];
  v7 = v6;
  v9 = v8;

  [(_PKDataDetectorInteraction *)self handleTapAtPoint:v7, v9];
}

- (BOOL)handleTapAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = [(_PKDataDetectorInteraction *)self dataDetectorHitTest:?];
  v7 = v6;
  if (v6)
  {
    memset(&v21, 0, sizeof(v21));
    [v6 _frame];
    v9 = v8;
    [v7 _frame];
    CGAffineTransformMakeTranslation(&v21, v9, v10);
    menuInteraction = [(_PKDataDetectorInteraction *)self menuInteraction];
    view = [(_PKDataDetectorInteraction *)self view];
    [(_PKDataDetectorInteraction *)self drawingTransform];
    [(_PKDataDetectorInteraction *)self highlightTransform];
    [(_PKDataDetectorInteraction *)self sourceRect];
    v18 = v21;
    [v7 handleTapForMenuForInteraction:menuInteraction location:view view:&v18 viewTransform:v20 drawingTransform:v19 highlightTransform:x sourceRect:{y, v13, v14, v15, v16}];
  }

  return v7 != 0;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v7 = [(_PKDataDetectorInteraction *)self dataDetectorHitTest:interaction];
  menuInteraction = [(_PKDataDetectorInteraction *)self menuInteraction];
  view = [(_PKDataDetectorInteraction *)self view];
  identifier = [v7 identifier];
  [(_PKDataDetectorInteraction *)self sourceRect];
  v15 = [v7 contextMenuInteraction:menuInteraction configurationForMenuAtLocation:view view:identifier identifier:x sourceRect:{y, v11, v12, v13, v14}];

  return v15;
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier
{
  configurationCopy = configuration;
  interactionCopy = interaction;
  v10 = [(_PKDataDetectorInteraction *)self itemWithIdentifier:identifier];
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
  view = [(_PKDataDetectorInteraction *)self view];
  v24 = [v10 contextMenuInteraction:interactionCopy configuration:configurationCopy highlightPreviewInContainerView:view frame:{x, y, width, height}];

  return v24;
}

- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  configurationCopy = configuration;
  interactionCopy = interaction;
  identifier = [configurationCopy identifier];
  v12 = [(_PKDataDetectorInteraction *)self itemWithIdentifier:identifier];

  [v12 contextMenuInteraction:interactionCopy willPerformPreviewActionForMenuWithConfiguration:configurationCopy animator:animatorCopy];
}

- (CGAffineTransform)drawingTransform
{
  v3 = *&self[2].b;
  *&retstr->a = *&self[1].ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[2].d;
  return self;
}

- (void)setDrawingTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->c;
  *&self->_drawingTransform.tx = *&transform->tx;
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

- (void)setHighlightTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->c;
  *&self->_highlightTransform.tx = *&transform->tx;
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

- (void)setHighlightPreviewTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->c;
  *&self->_highlightPreviewTransform.tx = *&transform->tx;
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