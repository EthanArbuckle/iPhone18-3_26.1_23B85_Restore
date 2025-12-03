@interface NonRotatingARSCNView
- (void)layoutSubviews;
- (void)lockRendererOrientation;
- (void)setLockedOrientation:(int64_t)orientation;
- (void)windowWillAnimateRotateNotification:(id)notification;
@end

@implementation NonRotatingARSCNView

- (void)setLockedOrientation:(int64_t)orientation
{
  self->_lockedOrientation = orientation;
  [(NonRotatingARSCNView *)self lockRendererOrientation];
  v5 = +[NSNotificationCenter defaultCenter];
  renderer = [(NonRotatingARSCNView *)self renderer];
  [v5 removeObserver:renderer name:UIApplicationDidChangeStatusBarOrientationNotification object:0];
}

- (void)windowWillAnimateRotateNotification:(id)notification
{
  renderer = [(NonRotatingARSCNView *)self renderer];
  [renderer _setInterfaceOrientation:{-[NonRotatingARSCNView lockedOrientation](self, "lockedOrientation")}];
}

- (void)layoutSubviews
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100003284;
  v2[3] = &unk_100464AA0;
  v2[4] = self;
  [UIWindowScene performWhileInterfaceOrientationLocked:v2];
}

- (void)lockRendererOrientation
{
  renderer = [(NonRotatingARSCNView *)self renderer];
  [renderer _setInterfaceOrientation:{-[NonRotatingARSCNView lockedOrientation](self, "lockedOrientation")}];
}

@end