@interface MPModelGenericObject
- (MPModelObject)innermostModelObject;
- (double)preferredArtworkAspectRatio;
@end

@implementation MPModelGenericObject

- (MPModelObject)innermostModelObject
{
  v2 = self;
  v3 = MPModelGenericObject.innermostModelObject.getter();

  return v3;
}

- (double)preferredArtworkAspectRatio
{
  v2 = self;
  v3 = 1.0;
  if ([(MPModelGenericObject *)v2 type]== 1)
  {
    v4 = [(MPModelGenericObject *)v2 song];
    if (v4)
    {
      v5 = v4;
      [v4 preferredArtworkAspectRatio];
      v3 = v6;
    }
  }

  return v3;
}

@end