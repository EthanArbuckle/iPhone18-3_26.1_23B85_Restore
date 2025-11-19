@interface NonRotatingARSCNView
- (void)layoutSubviews;
- (void)lockRendererOrientation;
- (void)setLockedOrientation:(int64_t)a3;
- (void)windowWillAnimateRotateNotification:(id)a3;
@end

@implementation NonRotatingARSCNView

- (void)setLockedOrientation:(int64_t)a3
{
  self->_lockedOrientation = a3;
  [(NonRotatingARSCNView *)self lockRendererOrientation];
  v5 = +[NSNotificationCenter defaultCenter];
  v4 = [(NonRotatingARSCNView *)self renderer];
  [v5 removeObserver:v4 name:UIApplicationDidChangeStatusBarOrientationNotification object:0];
}

- (void)windowWillAnimateRotateNotification:(id)a3
{
  v4 = [(NonRotatingARSCNView *)self renderer];
  [v4 _setInterfaceOrientation:{-[NonRotatingARSCNView lockedOrientation](self, "lockedOrientation")}];
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
  v3 = [(NonRotatingARSCNView *)self renderer];
  [v3 _setInterfaceOrientation:{-[NonRotatingARSCNView lockedOrientation](self, "lockedOrientation")}];
}

@end