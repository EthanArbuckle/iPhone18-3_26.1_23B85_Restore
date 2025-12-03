@interface VFXNode_CEKWorkaround
- (id)camera;
@end

@implementation VFXNode_CEKWorkaround

- (id)camera
{
  v4.receiver = self;
  v4.super_class = VFXNode_CEKWorkaround;
  camera = [(VFXNode_CEKWorkaround *)&v4 camera];
  [camera _implementCEKWorkaroundIfNeeded];

  return camera;
}

@end