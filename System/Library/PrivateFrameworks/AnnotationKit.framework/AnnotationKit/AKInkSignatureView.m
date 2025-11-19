@interface AKInkSignatureView
- (AKInkSignatureView)initWithCoder:(id)a3;
- (AKInkSignatureView)initWithFrame:(CGRect)a3;
- (CGPath)copyPotracedPathAndReturnDrawing:(id *)a3;
- (void)_commonInit;
- (void)_updateTool;
- (void)canvasViewDrawingDidChange:(id)a3;
- (void)clear;
- (void)layoutSubviews;
- (void)setStrokeColor:(id)a3;
@end

@implementation AKInkSignatureView

- (AKInkSignatureView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = AKInkSignatureView;
  v3 = [(AKInkSignatureView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(AKInkSignatureView *)v3 _commonInit];
  }

  return v4;
}

- (AKInkSignatureView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AKInkSignatureView;
  v3 = [(AKInkSignatureView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(AKInkSignatureView *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  v3 = [MEMORY[0x277D75348] blackColor];
  [(AKInkSignatureView *)self setStrokeColor:v3];
}

- (void)layoutSubviews
{
  v3 = [(AKInkSignatureView *)self canvasView];

  if (!v3)
  {
    [(AKInkSignatureView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [(AKInkSignatureView *)self superview];
    if (v12)
    {
      v29 = v12;
      v13 = [(AKInkSignatureView *)self window];
      if (v13)
      {
        v14 = v13;
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
        v16 = [(AKInkSignatureView *)self tool];
        [v29 setTool:v16];

        [(AKInkSignatureView *)self addSubview:v29];
        [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
        v17 = [v29 widthAnchor];
        v18 = [(AKInkSignatureView *)self widthAnchor];
        v19 = [v17 constraintEqualToAnchor:v18];
        [v19 setActive:1];

        v20 = [v29 heightAnchor];
        v21 = [(AKInkSignatureView *)self heightAnchor];
        v22 = [v20 constraintEqualToAnchor:v21];
        [v22 setActive:1];

        v23 = [v29 centerXAnchor];
        v24 = [(AKInkSignatureView *)self centerXAnchor];
        v25 = [v23 constraintEqualToAnchor:v24];
        [v25 setActive:1];

        v26 = [v29 centerYAnchor];
        v27 = [(AKInkSignatureView *)self centerYAnchor];
        v28 = [v26 constraintEqualToAnchor:v27];
        [v28 setActive:1];
      }
    }
  }
}

- (void)setStrokeColor:(id)a3
{
  v4 = MEMORY[0x277CD9640];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v6 initWithInkType:*MEMORY[0x277CD96F8] color:v5];

  [(AKInkSignatureView *)self setTool:v7];

  MEMORY[0x2821F9670](self, sel__updateTool);
}

- (void)_updateTool
{
  v3 = [(AKInkSignatureView *)self canvasView];
  if (v3)
  {
    v5 = v3;
    v4 = [(AKInkSignatureView *)self tool];
    [v5 setTool:v4];

    v3 = v5;
  }
}

- (void)clear
{
  [(AKInkSignatureView *)self setLatestDrawing:0];
  v3 = [(AKInkSignatureView *)self canvasView];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CD95F8]);
    v9 = objc_opt_new();
    v5 = [(AKInkSignatureView *)self canvasView];
    v6 = [v5 drawing];
    v7 = [v4 initWithStrokes:v9 fromDrawing:v6];
    v8 = [(AKInkSignatureView *)self canvasView];
    [v8 setDrawing:v7];
  }
}

- (CGPath)copyPotracedPathAndReturnDrawing:(id *)a3
{
  v4 = [(AKInkSignatureView *)self latestDrawing];
  v5 = v4;
  if (!v4)
  {
    v15 = 0;
    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  [v4 bounds];
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

  if (a3)
  {
LABEL_11:
    *a3 = [v5 copy];
  }

LABEL_12:

  return v15;
}

- (void)canvasViewDrawingDidChange:(id)a3
{
  v4 = [a3 drawing];
  if (v4)
  {
    v6 = v4;
    [(AKInkSignatureView *)self setLatestDrawing:v4];
    v5 = [v6 strokes];
    -[AKInkSignatureView setHasStrokes:](self, "setHasStrokes:", [v5 count] != 0);
  }

  MEMORY[0x2821F96F8]();
}

@end