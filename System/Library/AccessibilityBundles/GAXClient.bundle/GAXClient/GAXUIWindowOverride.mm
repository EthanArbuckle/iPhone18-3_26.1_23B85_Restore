@interface GAXUIWindowOverride
- (id)_targetForStolenStatusBarTouchesAtPoint:(CGPoint)point withEvent:(id)event excludingWindow:(id)window;
- (unint64_t)_gaxOverridingBackgroundColorToClearRequestsCount;
- (void)_gaxBeginOverridingBackgroundColorToClear;
- (void)_gaxEndOverridingBackgroundColorToClear;
- (void)_gaxSetOverridingBackgroundColorToClearRequestsCount:(unint64_t)count;
- (void)setBackgroundColor:(id)color;
@end

@implementation GAXUIWindowOverride

- (unint64_t)_gaxOverridingBackgroundColorToClearRequestsCount
{
  v2 = objc_getAssociatedObject(self, &unk_1BCA8);
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)_gaxSetOverridingBackgroundColorToClearRequestsCount:(unint64_t)count
{
  if (count)
  {
    count = [NSNumber numberWithUnsignedInteger:?];
  }

  countCopy = count;
  objc_setAssociatedObject(self, &unk_1BCA8, count, &dword_0 + 1);
}

- (void)_gaxBeginOverridingBackgroundColorToClear
{
  _gaxOverridingBackgroundColorToClearRequestsCount = [(GAXUIWindowOverride *)self _gaxOverridingBackgroundColorToClearRequestsCount];
  [(GAXUIWindowOverride *)self _gaxSetOverridingBackgroundColorToClearRequestsCount:_gaxOverridingBackgroundColorToClearRequestsCount + 1];
  if (!_gaxOverridingBackgroundColorToClearRequestsCount)
  {
    backgroundColor = [(GAXUIWindowOverride *)self backgroundColor];
    [(GAXUIWindowOverride *)self _gaxSetOriginalBackgroundColor:backgroundColor];

    v5 = +[UIColor clearColor];
    v6.receiver = self;
    v6.super_class = GAXUIWindowOverride;
    [(GAXUIWindowOverride *)&v6 setBackgroundColor:v5];
  }
}

- (void)_gaxEndOverridingBackgroundColorToClear
{
  _gaxOverridingBackgroundColorToClearRequestsCount = [(GAXUIWindowOverride *)self _gaxOverridingBackgroundColorToClearRequestsCount];
  if (_gaxOverridingBackgroundColorToClearRequestsCount)
  {
    v4 = _gaxOverridingBackgroundColorToClearRequestsCount - 1;
  }

  else
  {
    _AXAssert();
    v4 = 0;
  }

  [(GAXUIWindowOverride *)self _gaxSetOverridingBackgroundColorToClearRequestsCount:v4];
  if (_gaxOverridingBackgroundColorToClearRequestsCount <= 1)
  {
    _gaxOriginalBackgroundColor = [(GAXUIWindowOverride *)self _gaxOriginalBackgroundColor];
    v6.receiver = self;
    v6.super_class = GAXUIWindowOverride;
    [(GAXUIWindowOverride *)&v6 setBackgroundColor:_gaxOriginalBackgroundColor];

    [(GAXUIWindowOverride *)self _gaxSetOriginalBackgroundColor:0];
  }
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  if ([(GAXUIWindowOverride *)self _gaxOverridingBackgroundColorToClearRequestsCount])
  {
    [(GAXUIWindowOverride *)self _gaxSetOriginalBackgroundColor:colorCopy];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = GAXUIWindowOverride;
    [(GAXUIWindowOverride *)&v5 setBackgroundColor:colorCopy];
  }
}

- (id)_targetForStolenStatusBarTouchesAtPoint:(CGPoint)point withEvent:(id)event excludingWindow:(id)window
{
  y = point.y;
  x = point.x;
  eventCopy = event;
  windowCopy = window;
  v11 = +[GAXClient sharedInstance];
  serverMode = [v11 serverMode];

  if (serverMode == 2)
  {
    v13 = 0;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = GAXUIWindowOverride;
    v13 = [(GAXUIWindowOverride *)&v15 _targetForStolenStatusBarTouchesAtPoint:eventCopy withEvent:windowCopy excludingWindow:x, y];
  }

  return v13;
}

@end