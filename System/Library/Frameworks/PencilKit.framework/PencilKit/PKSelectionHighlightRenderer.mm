@interface PKSelectionHighlightRenderer
- (CGPoint)editMenuLocation;
- (PKSelectionHighlightRenderer)initWithStrokeSelection:(id)selection renderingDelegate:(id)delegate;
- (id)initForLiveSelectionWithRenderingDelegate:(id)delegate;
- (void)_renderLiveSelectionPath:(CGPath *)path forStrokes:(id)strokes inDrawing:(id)drawing liveScrollOffset:(CGPoint)offset;
- (void)_setupHighlightIfNecessary;
@end

@implementation PKSelectionHighlightRenderer

- (PKSelectionHighlightRenderer)initWithStrokeSelection:(id)selection renderingDelegate:(id)delegate
{
  selectionCopy = selection;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = PKSelectionHighlightRenderer;
  v9 = [(PKSelectionHighlightRenderer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_strokeSelection, selection);
    objc_storeWeak(&v10->_renderingDelegate, delegateCopy);
  }

  return v10;
}

- (id)initForLiveSelectionWithRenderingDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = PKSelectionHighlightRenderer;
  v5 = [(PKSelectionHighlightRenderer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_renderingDelegate, delegateCopy);
    [(PKSelectionHighlightRenderer *)v6 _setupHighlightIfNecessary];
  }

  return v6;
}

- (void)_setupHighlightIfNecessary
{
  if (self && !*(self + 8))
  {
    layer = [MEMORY[0x1E69794A0] layer];
    v3 = *(self + 8);
    *(self + 8) = layer;

    [*(self + 24) bounds];
    v5 = v4;
    v7 = v6;
    WeakRetained = objc_loadWeakRetained((self + 32));
    drawing = [*(self + 24) drawing];
    [WeakRetained scaleForDrawing:drawing];
    v11 = v10;

    v12 = [MEMORY[0x1E69DC728] bezierPathWithRect:{0.0, 0.0, v5 * v11, v7 * v11}];
    v13 = *(self + 16);
    *(self + 16) = v12;
    v18 = v12;

    [*(self + 8) setContentsScale:1.0];
    v14 = v18;
    [*(self + 8) setPath:{objc_msgSend(v18, "CGPath")}];
    v15 = *(self + 8);
    systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
    [v15 setFillColor:{objc_msgSend(systemYellowColor, "CGColor")}];

    LODWORD(v17) = 1050253722;
    [*(self + 8) setOpacity:v17];
  }
}

- (CGPoint)editMenuLocation
{
  v2 = 0.0;
  v3 = 0.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)_renderLiveSelectionPath:(CGPath *)path forStrokes:(id)strokes inDrawing:(id)drawing liveScrollOffset:(CGPoint)offset
{
  drawingCopy = drawing;
  if (self)
  {
    [PKDrawing _boundingBoxForStrokes:strokes];
    v9 = [MEMORY[0x1E69DC728] bezierPathWithRect:?];
  }

  else
  {
    v9 = 0;
  }

  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_renderingDelegate);
  v11 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained transformFromStrokeSpaceToViewInDrawing:drawingCopy];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
  }

  v12[0] = v13;
  v12[1] = v14;
  v12[2] = v15;
  [v9 applyTransform:v12];
  [(PKSelectionHighlightRenderer *)self _setupHighlightIfNecessary];
  -[CAShapeLayer setPath:](self->_highlightLayer, "setPath:", [v9 CGPath]);
}

@end