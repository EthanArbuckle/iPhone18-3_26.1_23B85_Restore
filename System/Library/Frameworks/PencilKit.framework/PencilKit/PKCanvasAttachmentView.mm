@interface PKCanvasAttachmentView
- (BOOL)disableTileAnimations;
- (CGAffineTransform)drawingTransform;
- (PKCanvasView)canvasView;
- (id)tiledView;
- (void)drawingDidChangeVisibleStrokes:(BOOL)strokes;
- (void)fullyRendered;
@end

@implementation PKCanvasAttachmentView

- (void)drawingDidChangeVisibleStrokes:(BOOL)strokes
{
  v5.receiver = self;
  v5.super_class = PKCanvasAttachmentView;
  [(PKAttachmentView *)&v5 drawingDidChangeVisibleStrokes:strokes];
  canvasView = [(PKCanvasAttachmentView *)self canvasView];
  [canvasView _drawingDidChange];
}

- (void)fullyRendered
{
  canvasView = [(PKCanvasAttachmentView *)self canvasView];
  [canvasView _fullyRendered];
}

- (BOOL)disableTileAnimations
{
  canvasView = [(PKCanvasAttachmentView *)self canvasView];
  v4 = ([canvasView isHidden] & 1) != 0 || -[NSMutableArray count](self->_fullyRenderedCompletionBlocks, "count") != 0;

  return v4;
}

- (CGAffineTransform)drawingTransform
{
  result = [(PKCanvasAttachmentView *)self drawingWidth];
  if (v6 <= 0.0)
  {
    v11 = MEMORY[0x1E695EFD0];
    v12 = *(MEMORY[0x1E695EFD0] + 16);
    *&retstr->a = *MEMORY[0x1E695EFD0];
    *&retstr->c = v12;
    *&retstr->tx = *(v11 + 32);
  }

  else
  {
    [(PKCanvasAttachmentView *)self bounds];
    v8 = v7;
    [(PKCanvasAttachmentView *)self drawingWidth];
    v10 = v8 / v9;

    return CGAffineTransformMakeScale(retstr, v10, v10);
  }

  return result;
}

- (id)tiledView
{
  canvasView = [(PKCanvasAttachmentView *)self canvasView];
  _tiledView = [canvasView _tiledView];

  return _tiledView;
}

- (PKCanvasView)canvasView
{
  WeakRetained = objc_loadWeakRetained(&self->_canvasView);

  return WeakRetained;
}

@end