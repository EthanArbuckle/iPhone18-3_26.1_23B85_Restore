@interface SegmentedControlComponent
- (void)prepareForReuse;
- (void)segmentedControlAction;
@end

@implementation SegmentedControlComponent

- (void)prepareForReuse
{
  v2 = self;
  sub_57964();
}

- (void)segmentedControlAction
{
  v2 = self;
  sub_57AB8();
}

@end