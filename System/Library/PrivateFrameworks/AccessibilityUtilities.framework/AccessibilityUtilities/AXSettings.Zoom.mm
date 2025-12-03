@interface AXSettings.Zoom
- (BOOL)magnifyingGlassShouldLockPassthroughDepthToHands;
- (void)setMagnifyingGlassShouldLockPassthroughDepthToHands:(BOOL)hands;
@end

@implementation AXSettings.Zoom

- (BOOL)magnifyingGlassShouldLockPassthroughDepthToHands
{
  selfCopy = self;
  v3 = AXSettings.Zoom.shouldLockPassthroughDepthToHands.getter();

  return v3 & 1;
}

- (void)setMagnifyingGlassShouldLockPassthroughDepthToHands:(BOOL)hands
{
  selfCopy = self;
  AXSettings.Zoom.shouldLockPassthroughDepthToHands.setter(hands);
}

@end