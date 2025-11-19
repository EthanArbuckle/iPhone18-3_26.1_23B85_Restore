@interface NSObject(MusicKit_SoftLinking_MPModelInnerObjectProviding)
- (id)_musicKit_innerModelObject;
@end

@implementation NSObject(MusicKit_SoftLinking_MPModelInnerObjectProviding)

- (id)_musicKit_innerModelObject
{
  getMPModelObjectClass();
  if (objc_opt_isKindOfClass())
  {
    v2 = a1;
    v3 = [v2 relativeModelObjectForStoreLibraryPersonalization];
    getMPModelGenericObjectClass();
    if (objc_opt_isKindOfClass())
    {
      v4 = v2;
      if ([v4 type] == 5)
      {
        v5 = [v4 playlistEntry];

        v3 = v5;
      }

      if (!v3)
      {
        v3 = [v4 anyObject];
      }
    }

    else
    {
      getMPModelLibraryPinClass();
      if ((objc_opt_isKindOfClass() & 1) != 0 && !v3)
      {
        v3 = [v2 anyObject];
      }
    }

    if (!v3)
    {
      v3 = v2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end