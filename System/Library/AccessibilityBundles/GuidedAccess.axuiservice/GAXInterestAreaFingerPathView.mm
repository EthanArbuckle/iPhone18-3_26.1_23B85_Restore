@interface GAXInterestAreaFingerPathView
- (GAXInterestAreaFingerPathView)initWithCoder:(id)coder;
- (GAXInterestAreaFingerPathView)initWithFrame:(CGRect)frame;
- (GAXInterestAreaFingerPathViewDataSource)dataSource;
- (void)_commonInit;
- (void)_enumerateInterestAreaPathsUsingBlock:(id)block;
- (void)drawRect:(CGRect)rect;
- (void)setDataSource:(id)source;
- (void)setStyleProvider:(id)provider;
@end

@implementation GAXInterestAreaFingerPathView

- (void)_commonInit
{
  v3 = +[UIColor clearColor];
  [(GAXInterestAreaFingerPathView *)self setBackgroundColor:v3];

  [(GAXInterestAreaFingerPathView *)self setUserInteractionEnabled:0];
}

- (GAXInterestAreaFingerPathView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = GAXInterestAreaFingerPathView;
  v3 = [(GAXInterestAreaFingerPathView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(GAXInterestAreaFingerPathView *)v3 _commonInit];
  }

  return v4;
}

- (GAXInterestAreaFingerPathView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = GAXInterestAreaFingerPathView;
  v3 = [(GAXInterestAreaFingerPathView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(GAXInterestAreaFingerPathView *)v3 _commonInit];
  }

  return v4;
}

- (void)setDataSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    [(GAXInterestAreaFingerPathView *)self setNeedsDisplay];
    v5 = obj;
  }
}

- (void)setStyleProvider:(id)provider
{
  providerCopy = provider;
  if (self->_styleProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_styleProvider, provider);
    [(GAXInterestAreaFingerPathView *)self setNeedsDisplay];
    providerCopy = v6;
  }
}

- (void)_enumerateInterestAreaPathsUsingBlock:(id)block
{
  blockCopy = block;
  dataSource = [(GAXInterestAreaFingerPathView *)self dataSource];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v10 = 0;
    v6 = [dataSource numberOfInterestAreaPathsForInterestAreaFingerPathView:self];
    if (v6)
    {
      v7 = v6;
      v8 = 1;
      do
      {
        v9 = [dataSource interestAreaFingerPathView:self interestAreaPathAtIndex:v8 - 1];
        blockCopy[2](blockCopy, v9, v8 - 1, &v10);

        if (v8 >= v7)
        {
          break;
        }

        ++v8;
      }

      while ((v10 & 1) == 0);
    }
  }
}

- (void)drawRect:(CGRect)rect
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  styleProvider = [(GAXInterestAreaFingerPathView *)self styleProvider];
  [styleProvider interestAreaViewFingerPathLineWidth];
  CGContextSetLineWidth(CurrentContext, v6);
  CGContextSetLineCap(CurrentContext, kCGLineCapRound);
  CGContextSetLineJoin(CurrentContext, kCGLineJoinRound);
  interestAreaViewFingerPathStrokeColor = [styleProvider interestAreaViewFingerPathStrokeColor];
  CGContextSetStrokeColorWithColor(CurrentContext, [interestAreaViewFingerPathStrokeColor CGColor]);

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_13D94;
  v8[3] = &unk_5D400;
  v8[4] = CurrentContext;
  [(GAXInterestAreaFingerPathView *)self _enumerateInterestAreaPathsUsingBlock:v8];
  CGContextRestoreGState(CurrentContext);
}

- (GAXInterestAreaFingerPathViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end