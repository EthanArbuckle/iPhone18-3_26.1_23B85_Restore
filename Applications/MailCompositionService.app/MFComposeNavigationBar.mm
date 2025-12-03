@interface MFComposeNavigationBar
- (void)layoutSubviews;
- (void)setDocked:(BOOL)docked animated:(BOOL)animated;
@end

@implementation MFComposeNavigationBar

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = MFComposeNavigationBar;
  [(MFComposeNavigationBar *)&v10 layoutSubviews];
  if ([(MFComposeNavigationBar *)self docked])
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  topItem = [(MFComposeNavigationBar *)self topItem];
  leftBarButtonItem = [topItem leftBarButtonItem];
  view = [leftBarButtonItem view];
  [view setAlpha:v3];

  topItem2 = [(MFComposeNavigationBar *)self topItem];
  rightBarButtonItem = [topItem2 rightBarButtonItem];
  view2 = [rightBarButtonItem view];
  [view2 setAlpha:v3];
}

- (void)setDocked:(BOOL)docked animated:(BOOL)animated
{
  animatedCopy = animated;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A69C;
  v7[3] = &unk_100018880;
  v7[4] = self;
  dockedCopy = docked;
  v5 = objc_retainBlock(v7);
  v6 = v5;
  if (animatedCopy)
  {
    [UIView animateWithDuration:v5 animations:0.2];
  }

  else
  {
    (v5[2])(v5);
  }
}

@end