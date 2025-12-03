@interface AVTRenderer_CEKWorkaround
- (id)pointOfView;
- (id)scene;
@end

@implementation AVTRenderer_CEKWorkaround

- (id)scene
{
  v4.receiver = self;
  v4.super_class = AVTRenderer_CEKWorkaround;
  world = [(AVTRenderer_CEKWorkaround *)&v4 world];
  [world _implementCEKWorkaroundIfNeeded];

  return world;
}

- (id)pointOfView
{
  v4.receiver = self;
  v4.super_class = AVTRenderer_CEKWorkaround;
  pointOfView = [(AVTRenderer_CEKWorkaround *)&v4 pointOfView];
  [pointOfView _implementCEKWorkaroundIfNeeded];

  return pointOfView;
}

@end