@interface MPModelPlaylistEntry
- (MPModelObject)innermostModelObject;
@end

@implementation MPModelPlaylistEntry

- (MPModelObject)innermostModelObject
{
  v2 = self;
  v3 = MPModelPlaylistEntry.innermostModelObject.getter();

  return v3;
}

@end