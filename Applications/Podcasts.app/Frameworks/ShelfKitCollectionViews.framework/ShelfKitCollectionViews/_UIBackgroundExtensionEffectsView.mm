@interface _UIBackgroundExtensionEffectsView
- (void)layoutSublayersOfLayer:(id)layer;
@end

@implementation _UIBackgroundExtensionEffectsView

- (void)layoutSublayersOfLayer:(id)layer
{
  layerCopy = layer;
  selfCopy = self;
  sub_151E5C(layerCopy);
}

@end