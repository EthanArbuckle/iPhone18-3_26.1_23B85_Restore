@interface GAXInterestAreaClippedView
- (CGPoint)_centerForBackground;
- (CGSize)backgroundSize;
- (GAXInterestAreaClippedView)initWithCoder:(id)coder;
- (GAXInterestAreaClippedView)initWithFrame:(CGRect)frame;
- (GAXInterestAreaClippedViewDelegate)delegate;
- (id)backgroundColor;
- (void)_commonInit;
- (void)_updateBackgroundViewCenter;
- (void)_updateMaskLayer;
- (void)_updateMaskLayerFrame;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)setBackgroundColor:(id)color;
- (void)setBackgroundPatternScaleFactor:(double)factor;
- (void)setBackgroundSize:(CGSize)size;
- (void)setBounds:(CGRect)bounds;
- (void)setCenter:(CGPoint)center;
- (void)setClippingPath:(id)path;
- (void)setDelegate:(id)delegate;
- (void)setFrame:(CGRect)frame;
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
  layer = [(GAXInterestAreaClippedView *)self layer];
  [layer setMasksToBounds:1];
}

- (GAXInterestAreaClippedView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = GAXInterestAreaClippedView;
  v3 = [(GAXInterestAreaClippedView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(GAXInterestAreaClippedView *)v3 _commonInit];
  }

  return v4;
}

- (GAXInterestAreaClippedView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = GAXInterestAreaClippedView;
  v3 = [(GAXInterestAreaClippedView *)&v6 initWithCoder:coder];
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

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(GAXInterestAreaClippedView *)self _updateBackgroundViewCenter];
    v5 = obj;
  }
}

- (void)setClippingPath:(id)path
{
  if (self->_clippingPath != path)
  {
    v4 = [path copy];
    clippingPath = self->_clippingPath;
    self->_clippingPath = v4;

    [(GAXInterestAreaClippedView *)self _updateMaskLayer];
  }
}

- (CGSize)backgroundSize
{
  backgroundView = [(GAXInterestAreaClippedView *)self backgroundView];
  [backgroundView bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setBackgroundSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(GAXInterestAreaClippedView *)self _centerForBackground];
  v7 = v6 - width * 0.5;
  v9 = v8 - height * 0.5;
  backgroundView = [(GAXInterestAreaClippedView *)self backgroundView];
  [backgroundView setFrame:{v7, v9, width, height}];
}

- (id)backgroundColor
{
  backgroundView = [(GAXInterestAreaClippedView *)self backgroundView];
  backgroundColor = [backgroundView backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  backgroundView = [(GAXInterestAreaClippedView *)self backgroundView];
  [backgroundView setBackgroundColor:colorCopy];
}

- (void)setBackgroundPatternScaleFactor:(double)factor
{
  if (self->_backgroundPatternScaleFactor != factor)
  {
    v10 = v3;
    v11 = v4;
    memset(&v9, 0, sizeof(v9));
    CGAffineTransformMakeScale(&v9, factor, factor);
    v8 = v9;
    backgroundView = [(GAXInterestAreaClippedView *)self backgroundView];
    v7 = v8;
    [backgroundView setTransform:&v7];
  }
}

- (void)setCenter:(CGPoint)center
{
  v4.receiver = self;
  v4.super_class = GAXInterestAreaClippedView;
  [(GAXInterestAreaClippedView *)&v4 setCenter:center.x, center.y];
  [(GAXInterestAreaClippedView *)self _updateBackgroundViewCenter];
  [(GAXInterestAreaClippedView *)self _updateMaskLayerFrame];
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = GAXInterestAreaClippedView;
  [(GAXInterestAreaClippedView *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(GAXInterestAreaClippedView *)self _updateBackgroundViewCenter];
  [(GAXInterestAreaClippedView *)self _updateMaskLayerFrame];
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = GAXInterestAreaClippedView;
  [(GAXInterestAreaClippedView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  delegate = [(GAXInterestAreaClippedView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate centerForBackgroundOfInterestAreaClippedView:self];
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
  backgroundView = [(GAXInterestAreaClippedView *)self backgroundView];
  [backgroundView setCenter:{v4, v6}];
}

- (void)_updateMaskLayer
{
  clippingPath = [(GAXInterestAreaClippedView *)self clippingPath];
  if (clippingPath)
  {
    v21 = clippingPath;
    if (([clippingPath isEmpty] & 1) == 0)
    {
      window = [(GAXInterestAreaClippedView *)self window];
      if (window)
      {
        if ([v21 _gaxIsSimpleRectangle])
        {
          layer = [(GAXInterestAreaClippedView *)self layer];
          [layer setMask:0];
        }

        else
        {
          [(GAXInterestAreaClippedView *)self bounds];
          v7 = v6;
          v9 = v8;
          v11 = v10;
          v13 = v12;
          screen = [window screen];
          [screen scale];
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
          layer = UIGraphicsGetImageFromCurrentImageContext();
          CGContextRestoreGState(CurrentContext);
          UIGraphicsEndImageContext();
          layer2 = [(GAXInterestAreaClippedView *)self layer];
          mask = [layer2 mask];
          if (!mask)
          {
            mask = objc_opt_new();
            [layer2 setMask:mask];
          }

          [mask setContents:{objc_msgSend(layer, "CGImage")}];
          [layer scale];
          [mask setContentsScale:?];
          [mask setFrame:{v7, v9, v11, v13}];
        }
      }
    }
  }

  _objc_release_x1();
}

- (void)_updateMaskLayerFrame
{
  layer = [(GAXInterestAreaClippedView *)self layer];
  mask = [layer mask];

  if (mask)
  {
    +[CATransaction begin];
    [CATransaction setValue:kCFBooleanTrue forKey:kCATransactionDisableActions];
    [(GAXInterestAreaClippedView *)self bounds];
    [mask setFrame:?];
    +[CATransaction commit];
  }
}

- (GAXInterestAreaClippedViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end