@interface AKInkSignatureView
- (AKInkSignatureView)initWithCoder:(id)coder;
- (AKInkSignatureView)initWithFrame:(CGRect)frame;
- (CGPath)copyPotracedPathAndReturnDrawing:(id *)drawing;
- (void)_commonInit;
- (void)_updateTool;
- (void)canvasViewDrawingDidChange:(id)change;
- (void)clear;
- (void)layoutSubviews;
- (void)setStrokeColor:(id)color;
@end

@implementation AKInkSignatureView

- (AKInkSignatureView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = AKInkSignatureView;
  v3 = [(AKInkSignatureView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(AKInkSignatureView *)v3 _commonInit];
  }

  return v4;
}

- (AKInkSignatureView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AKInkSignatureView;
  v3 = [(AKInkSignatureView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(AKInkSignatureView *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  blackColor = [MEMORY[0x277D75348] blackColor];
  [(AKInkSignatureView *)self setStrokeColor:blackColor];
}

- (void)layoutSubviews
{
  canvasView = [(AKInkSignatureView *)self canvasView];

  if (!canvasView)
  {
    [(AKInkSignatureView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    superview = [(AKInkSignatureView *)self superview];
    if (superview)
    {
      v29 = superview;
      window = [(AKInkSignatureView *)self window];
      if (window)
      {
        v14 = window;
        v31.origin.x = v5;
        v31.origin.y = v7;
        v31.size.width = v9;
        v31.size.height = v11;
        IsEmpty = CGRectIsEmpty(v31);

        if (IsEmpty)
        {
          return;
        }

        v29 = [objc_alloc(MEMORY[0x277CD95F0]) initWithFrame:{v5, v7, v9, v11}];
        [v29 setDrawingPolicy:1];
        [(AKInkSignatureView *)self setCanvasView:v29];
        [v29 setDelegate:self];
        tool = [(AKInkSignatureView *)self tool];
        [v29 setTool:tool];

        [(AKInkSignatureView *)self addSubview:v29];
        [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
        widthAnchor = [v29 widthAnchor];
        widthAnchor2 = [(AKInkSignatureView *)self widthAnchor];
        v19 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
        [v19 setActive:1];

        heightAnchor = [v29 heightAnchor];
        heightAnchor2 = [(AKInkSignatureView *)self heightAnchor];
        v22 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
        [v22 setActive:1];

        centerXAnchor = [v29 centerXAnchor];
        centerXAnchor2 = [(AKInkSignatureView *)self centerXAnchor];
        v25 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
        [v25 setActive:1];

        centerYAnchor = [v29 centerYAnchor];
        centerYAnchor2 = [(AKInkSignatureView *)self centerYAnchor];
        v28 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
        [v28 setActive:1];
      }
    }
  }
}

- (void)setStrokeColor:(id)color
{
  v4 = MEMORY[0x277CD9640];
  colorCopy = color;
  v6 = [v4 alloc];
  v7 = [v6 initWithInkType:*MEMORY[0x277CD96F8] color:colorCopy];

  [(AKInkSignatureView *)self setTool:v7];

  MEMORY[0x2821F9670](self, sel__updateTool);
}

- (void)_updateTool
{
  canvasView = [(AKInkSignatureView *)self canvasView];
  if (canvasView)
  {
    v5 = canvasView;
    tool = [(AKInkSignatureView *)self tool];
    [v5 setTool:tool];

    canvasView = v5;
  }
}

- (void)clear
{
  [(AKInkSignatureView *)self setLatestDrawing:0];
  canvasView = [(AKInkSignatureView *)self canvasView];

  if (canvasView)
  {
    v4 = objc_alloc(MEMORY[0x277CD95F8]);
    v9 = objc_opt_new();
    canvasView2 = [(AKInkSignatureView *)self canvasView];
    drawing = [canvasView2 drawing];
    v7 = [v4 initWithStrokes:v9 fromDrawing:drawing];
    canvasView3 = [(AKInkSignatureView *)self canvasView];
    [canvasView3 setDrawing:v7];
  }
}

- (CGPath)copyPotracedPathAndReturnDrawing:(id *)drawing
{
  latestDrawing = [(AKInkSignatureView *)self latestDrawing];
  v5 = latestDrawing;
  if (!latestDrawing)
  {
    v15 = 0;
    if (!drawing)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  [latestDrawing bounds];
  v7 = v6;
  v9 = v8;
  v10 = [AKInkRendererHelper renderDrawing:"renderDrawing:clippedToStrokeSpaceRect:scale:" clippedToStrokeSpaceRect:v5 scale:?];
  v11 = v10;
  if (v10)
  {
    v12 = -[AKPotrace initWithCGImage:flipped:whiteIsInside:]([AKPotrace alloc], "initWithCGImage:flipped:whiteIsInside:", [v10 akCGImage], 1, 0);
    v13 = v12;
    if (v12)
    {
      [(AKPotrace *)v12 setTurdsize:0];
      MutableCopy = CGPathCreateMutableCopy([(AKPotrace *)v13 CGPath]);
      v18 = *(MEMORY[0x277CBF2C0] + 16);
      *&v23.a = *MEMORY[0x277CBF2C0];
      v19 = *&v23.a;
      *&v23.c = v18;
      *&v23.tx = *(MEMORY[0x277CBF2C0] + 32);
      v17 = *&v23.tx;
      CGAffineTransformMakeScale(&t2, 0.333333333, 0.333333333);
      *&t1.a = v19;
      *&t1.c = v18;
      *&t1.tx = v17;
      CGAffineTransformConcat(&v23, &t1, &t2);
      CGAffineTransformMakeTranslation(&t1, v7, v9);
      v20 = v23;
      CGAffineTransformConcat(&t2, &v20, &t1);
      v23 = t2;
      v15 = MEMORY[0x245CAE590](MutableCopy, &v23);
      CGPathRelease(MutableCopy);
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  if (drawing)
  {
LABEL_11:
    *drawing = [v5 copy];
  }

LABEL_12:

  return v15;
}

- (void)canvasViewDrawingDidChange:(id)change
{
  drawing = [change drawing];
  if (drawing)
  {
    v6 = drawing;
    [(AKInkSignatureView *)self setLatestDrawing:drawing];
    strokes = [v6 strokes];
    -[AKInkSignatureView setHasStrokes:](self, "setHasStrokes:", [strokes count] != 0);
  }

  MEMORY[0x2821F96F8]();
}

@end