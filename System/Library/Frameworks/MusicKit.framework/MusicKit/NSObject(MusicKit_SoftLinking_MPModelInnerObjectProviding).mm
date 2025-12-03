@interface NSObject(MusicKit_SoftLinking_MPModelInnerObjectProviding)
- (id)_musicKit_innerModelObject;
@end

@implementation NSObject(MusicKit_SoftLinking_MPModelInnerObjectProviding)

- (id)_musicKit_innerModelObject
{
  getMPModelObjectClass();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    relativeModelObjectForStoreLibraryPersonalization = [selfCopy relativeModelObjectForStoreLibraryPersonalization];
    getMPModelGenericObjectClass();
    if (objc_opt_isKindOfClass())
    {
      v4 = selfCopy;
      if ([v4 type] == 5)
      {
        playlistEntry = [v4 playlistEntry];

        relativeModelObjectForStoreLibraryPersonalization = playlistEntry;
      }

      if (!relativeModelObjectForStoreLibraryPersonalization)
      {
        relativeModelObjectForStoreLibraryPersonalization = [v4 anyObject];
      }
    }

    else
    {
      getMPModelLibraryPinClass();
      if ((objc_opt_isKindOfClass() & 1) != 0 && !relativeModelObjectForStoreLibraryPersonalization)
      {
        relativeModelObjectForStoreLibraryPersonalization = [selfCopy anyObject];
      }
    }

    if (!relativeModelObjectForStoreLibraryPersonalization)
    {
      relativeModelObjectForStoreLibraryPersonalization = selfCopy;
    }
  }

  else
  {
    relativeModelObjectForStoreLibraryPersonalization = 0;
  }

  return relativeModelObjectForStoreLibraryPersonalization;
}

@end