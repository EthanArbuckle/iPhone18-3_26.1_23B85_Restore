@interface ClearRootView
- (ClearRootView)initWithFrame:(CGRect)frame;
@end

@implementation ClearRootView

- (ClearRootView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ClearRootView;
  v3 = [(RootView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(ClearRootView *)v3 setBackgroundColor:v4];
  }

  return v3;
}

@end