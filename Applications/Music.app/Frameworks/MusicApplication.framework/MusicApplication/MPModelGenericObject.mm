@interface MPModelGenericObject
- (MPModelObject)innermostModelObject;
- (double)preferredArtworkAspectRatio;
- (id)storeContentItemObjectPropertiesFor:(id)for;
@end

@implementation MPModelGenericObject

- (id)storeContentItemObjectPropertiesFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  anyObject = [(MPModelGenericObject *)selfCopy anyObject];
  v7 = [anyObject storeContentItemObjectPropertiesFor:forCopy];

  return v7;
}

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
  if ([(MPModelGenericObject *)selfCopy type]== &dword_0 + 1)
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