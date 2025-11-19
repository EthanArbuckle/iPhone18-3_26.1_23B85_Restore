@interface MFComposeNavigationBar
- (void)layoutSubviews;
- (void)setDocked:(BOOL)a3 animated:(BOOL)a4;
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

  v4 = [(MFComposeNavigationBar *)self topItem];
  v5 = [v4 leftBarButtonItem];
  v6 = [v5 view];
  [v6 setAlpha:v3];

  v7 = [(MFComposeNavigationBar *)self topItem];
  v8 = [v7 rightBarButtonItem];
  v9 = [v8 view];
  [v9 setAlpha:v3];
}

- (void)setDocked:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A69C;
  v7[3] = &unk_100018880;
  v7[4] = self;
  v8 = a3;
  v5 = objc_retainBlock(v7);
  v6 = v5;
  if (v4)
  {
    [UIView animateWithDuration:v5 animations:0.2];
  }

  else
  {
    (v5[2])(v5);
  }
}

@end