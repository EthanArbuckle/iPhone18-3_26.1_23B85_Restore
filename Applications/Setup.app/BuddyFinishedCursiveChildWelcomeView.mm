@interface BuddyFinishedCursiveChildWelcomeView
- (BuddyFinishedCursiveChildWelcomeView)initWithFrame:(CGRect)frame;
- (void)_animateCursiveForTimePassed;
- (void)_createDisplayLink;
- (void)_onDisplayLink:(id)link;
- (void)_removeDisplayLink;
- (void)_updateFillColor;
- (void)setAccessibilityLabel:(id)label;
- (void)startAnimation;
@end

@implementation BuddyFinishedCursiveChildWelcomeView

- (BuddyFinishedCursiveChildWelcomeView)initWithFrame:(CGRect)frame
{
  frameCopy = frame;
  v17 = a2;
  location = 0;
  v16.receiver = self;
  v16.super_class = BuddyFinishedCursiveChildWelcomeView;
  location = [(BuddyFinishedCursiveChildWelcomeView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  selfCopy = self;
  location[1] = a2;
  v2 = +[NSBundle mainBundle];
  location[0] = [(NSBundle *)v2 URLForResource:@"BuddyCursive" withExtension:@"plist" subdirectory:0];

  cursiveTextView = [(BuddyFinishedCursiveChildWelcomeView *)selfCopy cursiveTextView];
  [(BuddyCursiveTextView *)cursiveTextView loadText:location[0] pointSize:64.0];

  cursiveTextView2 = [(BuddyFinishedCursiveChildWelcomeView *)selfCopy cursiveTextView];
  [(BuddyCursiveTextView *)cursiveTextView2 duration];
  [(BuddyFinishedCursiveChildWelcomeView *)selfCopy setCustomDelayDuration:?];

  [(BuddyFinishedCursiveChildWelcomeView *)selfCopy setStartTime:CFAbsoluteTimeGetCurrent()];
  [(BuddyFinishedCursiveChildWelcomeView *)selfCopy _createDisplayLink];
  [(BuddyFinishedCursiveChildWelcomeView *)selfCopy setNeedsLayout];
  objc_storeStrong(location, 0);
}

- (void)setAccessibilityLabel:(id)label
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, label);
  v4.receiver = selfCopy;
  v4.super_class = BuddyFinishedCursiveChildWelcomeView;
  [(BuddyFinishedCursiveChildWelcomeView *)&v4 setAccessibilityLabel:location[0]];
  cursiveTextView = [(BuddyFinishedCursiveChildWelcomeView *)selfCopy cursiveTextView];
  [(BuddyCursiveTextView *)cursiveTextView setAccessibilityLabel:location[0]];

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

  displayLink = [(BuddyFinishedCursiveChildWelcomeView *)self displayLink];
  v7 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(CADisplayLink *)displayLink setPreferredFrameRateRange:*&v7.minimum, *&v7.maximum, *&v7.preferred];

  displayLink2 = [(BuddyFinishedCursiveChildWelcomeView *)self displayLink];
  v5 = +[NSRunLoop mainRunLoop];
  [(CADisplayLink *)displayLink2 addToRunLoop:v5 forMode:NSRunLoopCommonModes];
}

- (void)_removeDisplayLink
{
  displayLink = [(BuddyFinishedCursiveChildWelcomeView *)self displayLink];
  [(CADisplayLink *)displayLink invalidate];

  [(BuddyFinishedCursiveChildWelcomeView *)self setDisplayLink:0];
}

- (void)_onDisplayLink:(id)link
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, link);
  v3 = location[0];
  displayLink = [(BuddyFinishedCursiveChildWelcomeView *)selfCopy displayLink];

  if (v3 == displayLink)
  {
    [(BuddyFinishedCursiveChildWelcomeView *)selfCopy _animateCursiveForTimePassed];
  }

  objc_storeStrong(location, 0);
}

- (void)_animateCursiveForTimePassed
{
  Current = CFAbsoluteTimeGetCurrent();
  [(BuddyFinishedCursiveChildWelcomeView *)self startTime];
  v6 = Current - v3;
  cursiveTextView = [(BuddyFinishedCursiveChildWelcomeView *)self cursiveTextView];
  HIDWORD(v5) = HIDWORD(v6);
  *&v5 = v6;
  [(BuddyCursiveTextView *)cursiveTextView setTime:v5];

  [(BuddyFinishedCursiveChildWelcomeView *)self customDelayDuration];
  if (BSFloatGreaterThanFloat())
  {
    [(BuddyFinishedCursiveChildWelcomeView *)self _removeDisplayLink];
  }
}

- (void)_updateFillColor
{
  traitCollection = [(BuddyFinishedCursiveChildWelcomeView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  cursiveTextView = [(BuddyFinishedCursiveChildWelcomeView *)self cursiveTextView];
  if (userInterfaceStyle == 2)
  {
    v5 = +[UIColor whiteColor];
  }

  else
  {
    v5 = +[UIColor blackColor];
  }

  [(BuddyCursiveTextView *)cursiveTextView setFillColor:v5];
}

@end