@interface GAXInterestAreaFingerPathView
- (GAXInterestAreaFingerPathView)initWithCoder:(id)a3;
- (GAXInterestAreaFingerPathView)initWithFrame:(CGRect)a3;
- (GAXInterestAreaFingerPathViewDataSource)dataSource;
- (void)_commonInit;
- (void)_enumerateInterestAreaPathsUsingBlock:(id)a3;
- (void)drawRect:(CGRect)a3;
- (void)setDataSource:(id)a3;
- (void)setStyleProvider:(id)a3;
@end

@implementation GAXInterestAreaFingerPathView

- (void)_commonInit
{
  v3 = +[UIColor clearColor];
  [(GAXInterestAreaFingerPathView *)self setBackgroundColor:v3];

  [(GAXInterestAreaFingerPathView *)self setUserInteractionEnabled:0];
}

- (GAXInterestAreaFingerPathView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = GAXInterestAreaFingerPathView;
  v3 = [(GAXInterestAreaFingerPathView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(GAXInterestAreaFingerPathView *)v3 _commonInit];
  }

  return v4;
}

- (GAXInterestAreaFingerPathView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = GAXInterestAreaFingerPathView;
  v3 = [(GAXInterestAreaFingerPathView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(GAXInterestAreaFingerPathView *)v3 _commonInit];
  }

  return v4;
}

- (void)setDataSource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    [(GAXInterestAreaFingerPathView *)self setNeedsDisplay];
    v5 = obj;
  }
}

- (void)setStyleProvider:(id)a3
{
  v5 = a3;
  if (self->_styleProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_styleProvider, a3);
    [(GAXInterestAreaFingerPathView *)self setNeedsDisplay];
    v5 = v6;
  }
}

- (void)_enumerateInterestAreaPathsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(GAXInterestAreaFingerPathView *)self dataSource];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v10 = 0;
    v6 = [v5 numberOfInterestAreaPathsForInterestAreaFingerPathView:self];
    if (v6)
    {
      v7 = v6;
      v8 = 1;
      do
      {
        v9 = [v5 interestAreaFingerPathView:self interestAreaPathAtIndex:v8 - 1];
        v4[2](v4, v9, v8 - 1, &v10);

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

- (void)drawRect:(CGRect)a3
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v5 = [(GAXInterestAreaFingerPathView *)self styleProvider];
  [v5 interestAreaViewFingerPathLineWidth];
  CGContextSetLineWidth(CurrentContext, v6);
  CGContextSetLineCap(CurrentContext, kCGLineCapRound);
  CGContextSetLineJoin(CurrentContext, kCGLineJoinRound);
  v7 = [v5 interestAreaViewFingerPathStrokeColor];
  CGContextSetStrokeColorWithColor(CurrentContext, [v7 CGColor]);

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