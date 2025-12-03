@interface SegmentedControlComponent
- (void)prepareForReuse;
- (void)segmentedControlAction;
@end

@implementation SegmentedControlComponent

- (void)prepareForReuse
{
  selfCopy = self;
  sub_57964();
}

- (void)segmentedControlAction
{
  selfCopy = self;
  sub_57AB8();
}

@end