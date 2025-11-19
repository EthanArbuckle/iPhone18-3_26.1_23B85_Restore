@interface AXSettings.Zoom
- (BOOL)magnifyingGlassShouldLockPassthroughDepthToHands;
- (void)setMagnifyingGlassShouldLockPassthroughDepthToHands:(BOOL)a3;
@end

@implementation AXSettings.Zoom

- (BOOL)magnifyingGlassShouldLockPassthroughDepthToHands
{
  v2 = self;
  v3 = AXSettings.Zoom.shouldLockPassthroughDepthToHands.getter();

  return v3 & 1;
}

- (void)setMagnifyingGlassShouldLockPassthroughDepthToHands:(BOOL)a3
{
  v4 = self;
  AXSettings.Zoom.shouldLockPassthroughDepthToHands.setter(a3);
}

@end