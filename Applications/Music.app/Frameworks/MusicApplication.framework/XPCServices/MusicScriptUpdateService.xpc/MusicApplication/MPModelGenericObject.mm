@interface MPModelGenericObject
- (MPModelObject)innermostModelObject;
- (double)preferredArtworkAspectRatio;
@end

@implementation MPModelGenericObject

- (MPModelObject)innermostModelObject
{
  selfCopy = self;
  v3 = MPModelGenericObject.innermostModelObject.getter();

  return v3;
}

- (double)preferredArtworkAspectRatio
{
  selfCopy = self;
  v3 = 1.0;
  if ([(MPModelGenericObject *)selfCopy type]== 1)
  {
    song = [(MPModelGenericObject *)selfCopy song];
    if (song)
    {
      v5 = song;
      [song preferredArtworkAspectRatio];
      v3 = v6;
    }
  }

  return v3;
}

@end