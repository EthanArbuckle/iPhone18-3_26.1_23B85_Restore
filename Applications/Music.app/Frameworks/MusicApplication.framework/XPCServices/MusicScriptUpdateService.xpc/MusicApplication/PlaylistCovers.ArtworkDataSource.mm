@interface PlaylistCovers.ArtworkDataSource
- (_TtCO9MusicCore14PlaylistCovers17ArtworkDataSource)init;
- (id)existingRepresentationForArtworkCatalog:(id)catalog;
- (id)visualIdenticalityIdentifierForCatalog:(id)catalog;
- (void)loadRepresentationForArtworkCatalog:(MPArtworkCatalog *)catalog completionHandler:(id)handler;
@end

@implementation PlaylistCovers.ArtworkDataSource

- (id)existingRepresentationForArtworkCatalog:(id)catalog
{
  catalogCopy = catalog;
  selfCopy = self;
  v6 = PlaylistCovers.ArtworkDataSource.existingRepresentation(for:)(catalogCopy);

  return v6;
}

- (void)loadRepresentationForArtworkCatalog:(MPArtworkCatalog *)catalog completionHandler:(id)handler
{
  v7 = sub_100003ABC(&qword_1006014F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = catalog;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1004BC4B4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1004D5558;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1004D5568;
  v14[5] = v13;
  catalogCopy = catalog;
  selfCopy = self;
  sub_100222194(0, 0, v9, &unk_1004D5578, v14);
}

- (id)visualIdenticalityIdentifierForCatalog:(id)catalog
{
  catalogCopy = catalog;
  token = [catalogCopy token];
  sub_1004BD284();
  swift_unknownObjectRelease();

  type metadata accessor for PlaylistCovers.ArtworkToken();
  if (swift_dynamicCast())
  {
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_TtCO9MusicCore14PlaylistCovers17ArtworkDataSource)init
{
  v3 = OBJC_IVAR____TtCO9MusicCore14PlaylistCovers17ArtworkDataSource_cache;
  *(&self->super.isa + v3) = [objc_allocWithZone(NSCache) init];
  v5.receiver = self;
  v5.super_class = type metadata accessor for PlaylistCovers.ArtworkDataSource();
  return [(PlaylistCovers.ArtworkDataSource *)&v5 init];
}

@end