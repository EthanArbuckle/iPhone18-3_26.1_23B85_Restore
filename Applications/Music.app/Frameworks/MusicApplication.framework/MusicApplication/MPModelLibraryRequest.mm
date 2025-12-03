@interface MPModelLibraryRequest
- (id)playbackIntentFor:(id)for itemKind:(id)kind itemProperties:(id)properties;
- (id)requestForDetailFor:(id)for kind:(id)kind requestedProperties:(id)properties;
- (void)updateAlbumLibraryDataIfNeededWithModelAlbum:(id)album containerDetailViewModel:(id)model;
@end

@implementation MPModelLibraryRequest

- (id)requestForDetailFor:(id)for kind:(id)kind requestedProperties:(id)properties
{
  forCopy = for;
  kindCopy = kind;
  propertiesCopy = properties;
  selfCopy = self;
  v12 = sub_20FFB0(forCopy, kindCopy, propertiesCopy);

  return v12;
}

- (void)updateAlbumLibraryDataIfNeededWithModelAlbum:(id)album containerDetailViewModel:(id)model
{
  albumCopy = album;
  modelCopy = model;
  selfCopy = self;
  sub_2101B8(albumCopy, modelCopy);
}

- (id)playbackIntentFor:(id)for itemKind:(id)kind itemProperties:(id)properties
{
  forCopy = for;
  kindCopy = kind;
  propertiesCopy = properties;
  selfCopy = self;
  v12 = sub_210AB4(forCopy, kindCopy, propertiesCopy);

  return v12;
}

@end