@interface MPModelGenericObject
- (MPModelObject)innermostModelObject;
- (double)preferredArtworkAspectRatio;
- (id)storeContentItemObjectPropertiesFor:(id)a3;
@end

@implementation MPModelGenericObject

- (id)storeContentItemObjectPropertiesFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(MPModelGenericObject *)v5 anyObject];
  v7 = [v6 storeContentItemObjectPropertiesFor:v4];

  return v7;
}

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
  if ([(MPModelGenericObject *)v2 type]== &dword_0 + 1)
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