@interface AllRefinementsSectionBackground
- (AllRefinementsSectionBackground)initWithFrame:(CGRect)frame;
@end

@implementation AllRefinementsSectionBackground

- (AllRefinementsSectionBackground)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = AllRefinementsSectionBackground;
  v3 = [(AllRefinementsSectionBackground *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    [MUPlatterConfigurator configureView:v3];
  }

  return v3;
}

@end