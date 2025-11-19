@interface BYODCardView
- (BYODCardView)initWithFrame:(CGRect)a3;
@end

@implementation BYODCardView

- (BYODCardView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = BYODCardView;
  return [(BYODCardView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

@end