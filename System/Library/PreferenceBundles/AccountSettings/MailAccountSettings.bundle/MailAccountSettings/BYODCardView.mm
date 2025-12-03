@interface BYODCardView
- (BYODCardView)initWithFrame:(CGRect)frame;
@end

@implementation BYODCardView

- (BYODCardView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = BYODCardView;
  return [(BYODCardView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

@end