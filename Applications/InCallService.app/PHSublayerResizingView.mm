@interface PHSublayerResizingView
- (PHSublayerResizingView)initWithFrame:(CGRect)frame;
- (void)setFrame:(CGRect)frame;
@end

@implementation PHSublayerResizingView

- (PHSublayerResizingView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = PHSublayerResizingView;
  return [(PHSublayerResizingView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(PHSublayerResizingView *)self frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17.receiver = self;
  v17.super_class = PHSublayerResizingView;
  [(PHSublayerResizingView *)&v17 setFrame:x, y, width, height];
  if (([(PHSublayerResizingView *)self isHidden]& 1) == 0)
  {
    v18.origin.x = v9;
    v18.origin.y = v11;
    v18.size.width = v13;
    v18.size.height = v15;
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    if (!CGRectEqualToRect(v18, v19))
    {
      v16 = +[NSNotificationCenter defaultCenter];
      [v16 postNotificationName:@"PHSublayerResizingViewDidResizeNotification" object:0];
    }
  }
}

@end