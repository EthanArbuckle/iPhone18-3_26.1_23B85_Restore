@interface PKSelectionHighlightRenderer
- (CGPoint)editMenuLocation;
- (PKSelectionHighlightRenderer)initWithStrokeSelection:(id)a3 renderingDelegate:(id)a4;
- (id)initForLiveSelectionWithRenderingDelegate:(id)a3;
- (void)_renderLiveSelectionPath:(CGPath *)a3 forStrokes:(id)a4 inDrawing:(id)a5 liveScrollOffset:(CGPoint)a6;
- (void)_setupHighlightIfNecessary;
@end

@implementation PKSelectionHighlightRenderer

- (PKSelectionHighlightRenderer)initWithStrokeSelection:(id)a3 renderingDelegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKSelectionHighlightRenderer;
  v9 = [(PKSelectionHighlightRenderer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_strokeSelection, a3);
    objc_storeWeak(&v10->_renderingDelegate, v8);
  }

  return v10;
}

- (id)initForLiveSelectionWithRenderingDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKSelectionHighlightRenderer;
  v5 = [(PKSelectionHighlightRenderer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_renderingDelegate, v4);
    [(PKSelectionHighlightRenderer *)v6 _setupHighlightIfNecessary];
  }

  return v6;
}

- (void)_setupHighlightIfNecessary
{
  if (a1 && !*(a1 + 8))
  {
    v2 = [MEMORY[0x1E69794A0] layer];
    v3 = *(a1 + 8);
    *(a1 + 8) = v2;

    [*(a1 + 24) bounds];
    v5 = v4;
    v7 = v6;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v9 = [*(a1 + 24) drawing];
    [WeakRetained scaleForDrawing:v9];
    v11 = v10;

    v12 = [MEMORY[0x1E69DC728] bezierPathWithRect:{0.0, 0.0, v5 * v11, v7 * v11}];
    v13 = *(a1 + 16);
    *(a1 + 16) = v12;
    v18 = v12;

    [*(a1 + 8) setContentsScale:1.0];
    v14 = v18;
    [*(a1 + 8) setPath:{objc_msgSend(v18, "CGPath")}];
    v15 = *(a1 + 8);
    v16 = [MEMORY[0x1E69DC888] systemYellowColor];
    [v15 setFillColor:{objc_msgSend(v16, "CGColor")}];

    LODWORD(v17) = 1050253722;
    [*(a1 + 8) setOpacity:v17];
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

- (void)_renderLiveSelectionPath:(CGPath *)a3 forStrokes:(id)a4 inDrawing:(id)a5 liveScrollOffset:(CGPoint)a6
{
  v8 = a5;
  if (self)
  {
    [PKDrawing _boundingBoxForStrokes:a4];
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
    [WeakRetained transformFromStrokeSpaceToViewInDrawing:v8];
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