@interface GAXInterestAreaClippedView
- (CGPoint)_centerForBackground;
- (CGSize)backgroundSize;
- (GAXInterestAreaClippedView)initWithCoder:(id)a3;
- (GAXInterestAreaClippedView)initWithFrame:(CGRect)a3;
- (GAXInterestAreaClippedViewDelegate)delegate;
- (id)backgroundColor;
- (void)_commonInit;
- (void)_updateBackgroundViewCenter;
- (void)_updateMaskLayer;
- (void)_updateMaskLayerFrame;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)setBackgroundColor:(id)a3;
- (void)setBackgroundPatternScaleFactor:(double)a3;
- (void)setBackgroundSize:(CGSize)a3;
- (void)setBounds:(CGRect)a3;
- (void)setCenter:(CGPoint)a3;
- (void)setClippingPath:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation GAXInterestAreaClippedView

- (void)_commonInit
{
  v3 = [UIView alloc];
  [(GAXInterestAreaClippedView *)self bounds];
  v5 = [v3 initWithFrame:?];
  [(GAXInterestAreaClippedView *)self addSubview:v5];
  [(GAXInterestAreaClippedView *)self setBackgroundView:v5];
  [(GAXInterestAreaClippedView *)self setBackgroundPatternScaleFactor:1.0];
  v4 = [(GAXInterestAreaClippedView *)self layer];
  [v4 setMasksToBounds:1];
}

- (GAXInterestAreaClippedView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = GAXInterestAreaClippedView;
  v3 = [(GAXInterestAreaClippedView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(GAXInterestAreaClippedView *)v3 _commonInit];
  }

  return v4;
}

- (GAXInterestAreaClippedView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = GAXInterestAreaClippedView;
  v3 = [(GAXInterestAreaClippedView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(GAXInterestAreaClippedView *)v3 _commonInit];
  }

  return v4;
}

- (void)dealloc
{
  [(GAXInterestAreaClippedView *)self setClippingPath:0];
  v3.receiver = self;
  v3.super_class = GAXInterestAreaClippedView;
  [(GAXInterestAreaClippedView *)&v3 dealloc];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(GAXInterestAreaClippedView *)self _updateBackgroundViewCenter];
    v5 = obj;
  }
}

- (void)setClippingPath:(id)a3
{
  if (self->_clippingPath != a3)
  {
    v4 = [a3 copy];
    clippingPath = self->_clippingPath;
    self->_clippingPath = v4;

    [(GAXInterestAreaClippedView *)self _updateMaskLayer];
  }
}

- (CGSize)backgroundSize
{
  v2 = [(GAXInterestAreaClippedView *)self backgroundView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setBackgroundSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(GAXInterestAreaClippedView *)self _centerForBackground];
  v7 = v6 - width * 0.5;
  v9 = v8 - height * 0.5;
  v10 = [(GAXInterestAreaClippedView *)self backgroundView];
  [v10 setFrame:{v7, v9, width, height}];
}

- (id)backgroundColor
{
  v2 = [(GAXInterestAreaClippedView *)self backgroundView];
  v3 = [v2 backgroundColor];

  return v3;
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(GAXInterestAreaClippedView *)self backgroundView];
  [v5 setBackgroundColor:v4];
}

- (void)setBackgroundPatternScaleFactor:(double)a3
{
  if (self->_backgroundPatternScaleFactor != a3)
  {
    v10 = v3;
    v11 = v4;
    memset(&v9, 0, sizeof(v9));
    CGAffineTransformMakeScale(&v9, a3, a3);
    v8 = v9;
    v6 = [(GAXInterestAreaClippedView *)self backgroundView];
    v7 = v8;
    [v6 setTransform:&v7];
  }
}

- (void)setCenter:(CGPoint)a3
{
  v4.receiver = self;
  v4.super_class = GAXInterestAreaClippedView;
  [(GAXInterestAreaClippedView *)&v4 setCenter:a3.x, a3.y];
  [(GAXInterestAreaClippedView *)self _updateBackgroundViewCenter];
  [(GAXInterestAreaClippedView *)self _updateMaskLayerFrame];
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = GAXInterestAreaClippedView;
  [(GAXInterestAreaClippedView *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(GAXInterestAreaClippedView *)self _updateBackgroundViewCenter];
  [(GAXInterestAreaClippedView *)self _updateMaskLayerFrame];
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = GAXInterestAreaClippedView;
  [(GAXInterestAreaClippedView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(GAXInterestAreaClippedView *)self _updateBackgroundViewCenter];
  [(GAXInterestAreaClippedView *)self _updateMaskLayerFrame];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = GAXInterestAreaClippedView;
  [(GAXInterestAreaClippedView *)&v3 didMoveToWindow];
  [(GAXInterestAreaClippedView *)self _updateMaskLayer];
  [(GAXInterestAreaClippedView *)self _updateBackgroundViewCenter];
}

- (CGPoint)_centerForBackground
{
  v3 = [(GAXInterestAreaClippedView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 centerForBackgroundOfInterestAreaClippedView:self];
  }

  else
  {
    [(GAXInterestAreaClippedView *)self center];
  }

  v6 = v4;
  v7 = v5;

  v8 = v6;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (void)_updateBackgroundViewCenter
{
  [(GAXInterestAreaClippedView *)self _centerForBackground];
  v4 = v3;
  v6 = v5;
  v7 = [(GAXInterestAreaClippedView *)self backgroundView];
  [v7 setCenter:{v4, v6}];
}

- (void)_updateMaskLayer
{
  v3 = [(GAXInterestAreaClippedView *)self clippingPath];
  if (v3)
  {
    v21 = v3;
    if (([v3 isEmpty] & 1) == 0)
    {
      v4 = [(GAXInterestAreaClippedView *)self window];
      if (v4)
      {
        if ([v21 _gaxIsSimpleRectangle])
        {
          v5 = [(GAXInterestAreaClippedView *)self layer];
          [v5 setMask:0];
        }

        else
        {
          [(GAXInterestAreaClippedView *)self bounds];
          v7 = v6;
          v9 = v8;
          v11 = v10;
          v13 = v12;
          v14 = [v4 screen];
          [v14 scale];
          v16 = v15;

          v23.width = v11;
          v23.height = v13;
          UIGraphicsBeginImageContextWithOptions(v23, 0, v16);
          CurrentContext = UIGraphicsGetCurrentContext();
          CGContextSaveGState(CurrentContext);
          v18 = +[UIColor blackColor];
          CGContextSetFillColorWithColor(CurrentContext, [v18 CGColor]);

          CGContextAddPath(CurrentContext, [v21 CGPath]);
          CGContextFillPath(CurrentContext);
          v5 = UIGraphicsGetImageFromCurrentImageContext();
          CGContextRestoreGState(CurrentContext);
          UIGraphicsEndImageContext();
          v19 = [(GAXInterestAreaClippedView *)self layer];
          v20 = [v19 mask];
          if (!v20)
          {
            v20 = objc_opt_new();
            [v19 setMask:v20];
          }

          [v20 setContents:{objc_msgSend(v5, "CGImage")}];
          [v5 scale];
          [v20 setContentsScale:?];
          [v20 setFrame:{v7, v9, v11, v13}];
        }
      }
    }
  }

  _objc_release_x1();
}

- (void)_updateMaskLayerFrame
{
  v3 = [(GAXInterestAreaClippedView *)self layer];
  v4 = [v3 mask];

  if (v4)
  {
    +[CATransaction begin];
    [CATransaction setValue:kCFBooleanTrue forKey:kCATransactionDisableActions];
    [(GAXInterestAreaClippedView *)self bounds];
    [v4 setFrame:?];
    +[CATransaction commit];
  }
}

- (GAXInterestAreaClippedViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end