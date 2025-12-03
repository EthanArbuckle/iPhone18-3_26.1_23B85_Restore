@interface ZWUIMinimapView
- (CGRect)zoomedRect;
- (ZWUIMinimapView)initWithFrame:(CGRect)frame;
- (void)setEnabled:(BOOL)enabled;
- (void)setZoomedRect:(CGRect)rect screenRect:(CGRect)screenRect;
@end

@implementation ZWUIMinimapView

- (ZWUIMinimapView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = ZWUIMinimapView;
  return [(ZWUIMinimapView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (void)setEnabled:(BOOL)enabled
{
  self->_enabled = enabled;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __30__ZWUIMinimapView_setEnabled___block_invoke;
  v3[3] = &unk_78BD0;
  v3[4] = self;
  enabledCopy = enabled;
  [UIView animateWithDuration:4 delay:v3 options:0 animations:0.25 completion:0.0];
}

id __30__ZWUIMinimapView_setEnabled___block_invoke(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(a1 + 32) setAlpha:v1];
}

- (void)setZoomedRect:(CGRect)rect screenRect:(CGRect)screenRect
{
  height = screenRect.size.height;
  width = screenRect.size.width;
  x = screenRect.origin.x;
  y = screenRect.origin.y;
  v6 = rect.size.height;
  v7 = rect.size.width;
  v8 = rect.origin.y;
  v9 = rect.origin.x;
  [(ZWUIMinimapView *)self setZoomedRect:?];
  [(ZWUIMinimapView *)self bounds];
  v22 = CGRectInset(v21, 1.0, 1.0);
  v11 = v22.size.width;
  v12 = v22.size.height;
  v22.origin.x = v9;
  v22.origin.y = v8;
  v22.size.width = v7;
  v22.size.height = v6;
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v23 = CGRectIntersection(v22, v24);
  v13 = v23.origin.x / width * v11 + 1.0;
  v14 = v23.origin.y / height * v12 + 1.0;
  v15 = v11 * (v23.size.width / width);
  v16 = v12 * (v23.size.height / height);
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:"hideSelf" object:0];
  [(ZWUIMinimapView *)self performSelector:"hideSelf" withObject:0 afterDelay:1.25];
  zoomedView = self->_zoomedView;

  [(UIView *)zoomedView setFrame:v13, v14, v15, v16];
}

- (CGRect)zoomedRect
{
  x = self->_zoomedRect.origin.x;
  y = self->_zoomedRect.origin.y;
  width = self->_zoomedRect.size.width;
  height = self->_zoomedRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end