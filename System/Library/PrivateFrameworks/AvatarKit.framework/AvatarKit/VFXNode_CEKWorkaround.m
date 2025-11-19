@interface VFXNode_CEKWorkaround
- (id)camera;
@end

@implementation VFXNode_CEKWorkaround

- (id)camera
{
  v4.receiver = self;
  v4.super_class = VFXNode_CEKWorkaround;
  v2 = [(VFXNode_CEKWorkaround *)&v4 camera];
  [v2 _implementCEKWorkaroundIfNeeded];

  return v2;
}

@end