@interface BuddyFinishedCursiveChildWelcomeView
- (BuddyFinishedCursiveChildWelcomeView)initWithFrame:(CGRect)a3;
- (void)_animateCursiveForTimePassed;
- (void)_createDisplayLink;
- (void)_onDisplayLink:(id)a3;
- (void)_removeDisplayLink;
- (void)_updateFillColor;
- (void)setAccessibilityLabel:(id)a3;
- (void)startAnimation;
@end

@implementation BuddyFinishedCursiveChildWelcomeView

- (BuddyFinishedCursiveChildWelcomeView)initWithFrame:(CGRect)a3
{
  v19 = a3;
  v17 = a2;
  location = 0;
  v16.receiver = self;
  v16.super_class = BuddyFinishedCursiveChildWelcomeView;
  location = [(BuddyFinishedCursiveChildWelcomeView *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  objc_storeStrong(&location, location);
  if (location)
  {
    v3 = objc_alloc_init(BuddyCursiveTextView);
    v4 = *(location + 1);
    *(location + 1) = v3;

    [location _updateFillColor];
    [*(location + 1) setTranslatesAutoresizingMaskIntoConstraints:0];
    [location addSubview:*(location + 1)];
    [*(location + 1) pinToEdges:location];
    v5 = location;
    v20 = objc_opt_class();
    v6 = [NSArray arrayWithObjects:&v20 count:1];
    v10 = _NSConcreteStackBlock;
    v11 = -1073741824;
    v12 = 0;
    v13 = sub_100178A54;
    v14 = &unk_10032DE58;
    v15 = location;
    v7 = [v5 registerForTraitChanges:v6 withHandler:&v10];
    [location setTraitChangeRegistration:v7];

    objc_storeStrong(&v15, 0);
  }

  v8 = location;
  objc_storeStrong(&location, 0);
  return v8;
}

- (void)startAnimation
{
  v6 = self;
  location[1] = a2;
  v2 = +[NSBundle mainBundle];
  location[0] = [(NSBundle *)v2 URLForResource:@"BuddyCursive" withExtension:@"plist" subdirectory:0];

  v3 = [(BuddyFinishedCursiveChildWelcomeView *)v6 cursiveTextView];
  [(BuddyCursiveTextView *)v3 loadText:location[0] pointSize:64.0];

  v4 = [(BuddyFinishedCursiveChildWelcomeView *)v6 cursiveTextView];
  [(BuddyCursiveTextView *)v4 duration];
  [(BuddyFinishedCursiveChildWelcomeView *)v6 setCustomDelayDuration:?];

  [(BuddyFinishedCursiveChildWelcomeView *)v6 setStartTime:CFAbsoluteTimeGetCurrent()];
  [(BuddyFinishedCursiveChildWelcomeView *)v6 _createDisplayLink];
  [(BuddyFinishedCursiveChildWelcomeView *)v6 setNeedsLayout];
  objc_storeStrong(location, 0);
}

- (void)setAccessibilityLabel:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4.receiver = v6;
  v4.super_class = BuddyFinishedCursiveChildWelcomeView;
  [(BuddyFinishedCursiveChildWelcomeView *)&v4 setAccessibilityLabel:location[0]];
  v3 = [(BuddyFinishedCursiveChildWelcomeView *)v6 cursiveTextView];
  [(BuddyCursiveTextView *)v3 setAccessibilityLabel:location[0]];

  objc_storeStrong(location, 0);
}

- (void)_createDisplayLink
{
  if (self->_displayLink)
  {
    [(BuddyFinishedCursiveChildWelcomeView *)self _removeDisplayLink];
  }

  v2 = [CADisplayLink displayLinkWithTarget:self selector:"_onDisplayLink:"];
  [(BuddyFinishedCursiveChildWelcomeView *)self setDisplayLink:v2];

  v3 = [(BuddyFinishedCursiveChildWelcomeView *)self displayLink];
  v7 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(CADisplayLink *)v3 setPreferredFrameRateRange:*&v7.minimum, *&v7.maximum, *&v7.preferred];

  v4 = [(BuddyFinishedCursiveChildWelcomeView *)self displayLink];
  v5 = +[NSRunLoop mainRunLoop];
  [(CADisplayLink *)v4 addToRunLoop:v5 forMode:NSRunLoopCommonModes];
}

- (void)_removeDisplayLink
{
  v2 = [(BuddyFinishedCursiveChildWelcomeView *)self displayLink];
  [(CADisplayLink *)v2 invalidate];

  [(BuddyFinishedCursiveChildWelcomeView *)self setDisplayLink:0];
}

- (void)_onDisplayLink:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [(BuddyFinishedCursiveChildWelcomeView *)v6 displayLink];

  if (v3 == v4)
  {
    [(BuddyFinishedCursiveChildWelcomeView *)v6 _animateCursiveForTimePassed];
  }

  objc_storeStrong(location, 0);
}

- (void)_animateCursiveForTimePassed
{
  Current = CFAbsoluteTimeGetCurrent();
  [(BuddyFinishedCursiveChildWelcomeView *)self startTime];
  v6 = Current - v3;
  v4 = [(BuddyFinishedCursiveChildWelcomeView *)self cursiveTextView];
  HIDWORD(v5) = HIDWORD(v6);
  *&v5 = v6;
  [(BuddyCursiveTextView *)v4 setTime:v5];

  [(BuddyFinishedCursiveChildWelcomeView *)self customDelayDuration];
  if (BSFloatGreaterThanFloat())
  {
    [(BuddyFinishedCursiveChildWelcomeView *)self _removeDisplayLink];
  }
}

- (void)_updateFillColor
{
  v2 = [(BuddyFinishedCursiveChildWelcomeView *)self traitCollection];
  v3 = [v2 userInterfaceStyle];

  v4 = [(BuddyFinishedCursiveChildWelcomeView *)self cursiveTextView];
  if (v3 == 2)
  {
    v5 = +[UIColor whiteColor];
  }

  else
  {
    v5 = +[UIColor blackColor];
  }

  [(BuddyCursiveTextView *)v4 setFillColor:v5];
}

@end