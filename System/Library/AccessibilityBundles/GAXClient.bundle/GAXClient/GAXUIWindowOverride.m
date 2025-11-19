@interface GAXUIWindowOverride
- (id)_targetForStolenStatusBarTouchesAtPoint:(CGPoint)a3 withEvent:(id)a4 excludingWindow:(id)a5;
- (unint64_t)_gaxOverridingBackgroundColorToClearRequestsCount;
- (void)_gaxBeginOverridingBackgroundColorToClear;
- (void)_gaxEndOverridingBackgroundColorToClear;
- (void)_gaxSetOverridingBackgroundColorToClearRequestsCount:(unint64_t)a3;
- (void)setBackgroundColor:(id)a3;
@end

@implementation GAXUIWindowOverride

- (unint64_t)_gaxOverridingBackgroundColorToClearRequestsCount
{
  v2 = objc_getAssociatedObject(self, &unk_1BCA8);
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)_gaxSetOverridingBackgroundColorToClearRequestsCount:(unint64_t)a3
{
  if (a3)
  {
    a3 = [NSNumber numberWithUnsignedInteger:?];
  }

  v4 = a3;
  objc_setAssociatedObject(self, &unk_1BCA8, a3, &dword_0 + 1);
}

- (void)_gaxBeginOverridingBackgroundColorToClear
{
  v3 = [(GAXUIWindowOverride *)self _gaxOverridingBackgroundColorToClearRequestsCount];
  [(GAXUIWindowOverride *)self _gaxSetOverridingBackgroundColorToClearRequestsCount:v3 + 1];
  if (!v3)
  {
    v4 = [(GAXUIWindowOverride *)self backgroundColor];
    [(GAXUIWindowOverride *)self _gaxSetOriginalBackgroundColor:v4];

    v5 = +[UIColor clearColor];
    v6.receiver = self;
    v6.super_class = GAXUIWindowOverride;
    [(GAXUIWindowOverride *)&v6 setBackgroundColor:v5];
  }
}

- (void)_gaxEndOverridingBackgroundColorToClear
{
  v3 = [(GAXUIWindowOverride *)self _gaxOverridingBackgroundColorToClearRequestsCount];
  if (v3)
  {
    v4 = v3 - 1;
  }

  else
  {
    _AXAssert();
    v4 = 0;
  }

  [(GAXUIWindowOverride *)self _gaxSetOverridingBackgroundColorToClearRequestsCount:v4];
  if (v3 <= 1)
  {
    v5 = [(GAXUIWindowOverride *)self _gaxOriginalBackgroundColor];
    v6.receiver = self;
    v6.super_class = GAXUIWindowOverride;
    [(GAXUIWindowOverride *)&v6 setBackgroundColor:v5];

    [(GAXUIWindowOverride *)self _gaxSetOriginalBackgroundColor:0];
  }
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  if ([(GAXUIWindowOverride *)self _gaxOverridingBackgroundColorToClearRequestsCount])
  {
    [(GAXUIWindowOverride *)self _gaxSetOriginalBackgroundColor:v4];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = GAXUIWindowOverride;
    [(GAXUIWindowOverride *)&v5 setBackgroundColor:v4];
  }
}

- (id)_targetForStolenStatusBarTouchesAtPoint:(CGPoint)a3 withEvent:(id)a4 excludingWindow:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = a5;
  v11 = +[GAXClient sharedInstance];
  v12 = [v11 serverMode];

  if (v12 == 2)
  {
    v13 = 0;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = GAXUIWindowOverride;
    v13 = [(GAXUIWindowOverride *)&v15 _targetForStolenStatusBarTouchesAtPoint:v9 withEvent:v10 excludingWindow:x, y];
  }

  return v13;
}

@end