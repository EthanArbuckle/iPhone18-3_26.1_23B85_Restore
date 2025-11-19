@interface AVTRenderer_CEKWorkaround
- (id)pointOfView;
- (id)scene;
@end

@implementation AVTRenderer_CEKWorkaround

- (id)scene
{
  v4.receiver = self;
  v4.super_class = AVTRenderer_CEKWorkaround;
  v2 = [(AVTRenderer_CEKWorkaround *)&v4 world];
  [v2 _implementCEKWorkaroundIfNeeded];

  return v2;
}

- (id)pointOfView
{
  v4.receiver = self;
  v4.super_class = AVTRenderer_CEKWorkaround;
  v2 = [(AVTRenderer_CEKWorkaround *)&v4 pointOfView];
  [v2 _implementCEKWorkaroundIfNeeded];

  return v2;
}

@end