@interface ModelObjectBackedStoreItemMetadata
- (BOOL)hasArtistBiography;
- (BOOL)hasLyrics;
- (BOOL)hasSocialPosts;
- (BOOL)hasTimeSyncedLyrics;
- (BOOL)isBeats1;
- (BOOL)isCompilation;
- (BOOL)isExplicitContent;
- (BOOL)isMasteredForiTunes;
- (BOOL)isOnboardedPerson;
- (BOOL)isPreorder;
- (BOOL)isPrivatePerson;
- (BOOL)isStoreRedownloadable;
- (BOOL)isVerifiedPerson;
- (BOOL)showComposer;
- (NSArray)audioTraits;
- (NSArray)genreNames;
- (_TtC9MusicCore34ModelObjectBackedStoreItemMetadata)init;
- (_TtC9MusicCore34ModelObjectBackedStoreItemMetadata)initWithCoder:(id)a3;
- (_TtC9MusicCore34ModelObjectBackedStoreItemMetadata)initWithStorePlatformDictionary:(id)a3 expirationDate:(id)a4;
- (_TtC9MusicCore34ModelObjectBackedStoreItemMetadata)initWithStorePlatformDictionary:(id)a3 parentStoreItemMetadata:(id)a4;
- (_TtC9MusicCore34ModelObjectBackedStoreItemMetadata)initWithStorePlatformDictionary:(id)a3 parentStoreItemMetadata:(id)a4 expirationDate:(id)a5;
- (double)duration;
- (id)metadataByAppendingMetadata:(id)a3;
- (id)storeID;
- (int64_t)discCount;
- (int64_t)discNumber;
- (int64_t)episodeCount;
- (int64_t)explicitRating;
- (int64_t)movementCount;
- (int64_t)movementNumber;
- (int64_t)seasonNumber;
- (int64_t)trackCount;
- (int64_t)trackNumber;
@end

@implementation ModelObjectBackedStoreItemMetadata

- (_TtC9MusicCore34ModelObjectBackedStoreItemMetadata)initWithStorePlatformDictionary:(id)a3 parentStoreItemMetadata:(id)a4
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  *&self->MPStoreItemMetadata_opaque[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v6 = &self->MPStoreItemMetadata_opaque[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = a4;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11.receiver = self;
  v11.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v9 = [(ModelObjectBackedStoreItemMetadata *)&v11 initWithStorePlatformDictionary:isa parentStoreItemMetadata:v7];

  return v9;
}

- (_TtC9MusicCore34ModelObjectBackedStoreItemMetadata)initWithStorePlatformDictionary:(id)a3 expirationDate:(id)a4
{
  v5 = sub_10010FC20(&qword_1011A9B20);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for Date();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  }

  return ModelObjectBackedStoreItemMetadata.init(storePlatformDictionary:expirationDate:)(v8, v7);
}

- (_TtC9MusicCore34ModelObjectBackedStoreItemMetadata)initWithStorePlatformDictionary:(id)a3 parentStoreItemMetadata:(id)a4 expirationDate:(id)a5
{
  v7 = sub_10010FC20(&qword_1011A9B20);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (a5)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for Date();
    (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  }

  else
  {
    v12 = type metadata accessor for Date();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  }

  v13 = a4;
  v14 = sub_100A18A3C(v10, v13, v9);

  return v14;
}

- (_TtC9MusicCore34ModelObjectBackedStoreItemMetadata)initWithCoder:(id)a3
{
  *&self->MPStoreItemMetadata_opaque[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v3 = &self->MPStoreItemMetadata_opaque[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v3 = 0;
  *(v3 + 1) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)metadataByAppendingMetadata:(id)a3
{
  v16.receiver = self;
  v16.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v4 = v16.receiver;
  v5 = [(ModelObjectBackedStoreItemMetadata *)&v16 metadataByAppendingMetadata:a3];
  v6 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v7 = *&v4[v6];
  v8 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v9 = *&v5[v8];
  *&v5[v8] = v7;
  v10 = v7;

  v11 = &v4[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  swift_beginAccess();
  v13 = *v11;
  v12 = *(v11 + 1);

  v14 = &v5[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  swift_beginAccess();
  *v14 = v13;
  *(v14 + 1) = v12;

  return v5;
}

- (NSArray)audioTraits
{
  v2 = self;
  ModelObjectBackedStoreItemMetadata.audioTraits.getter();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (BOOL)isBeats1
{
  v2 = self;
  v3 = ModelObjectBackedStoreItemMetadata.isBeats1.getter();

  return v3 & 1;
}

- (BOOL)isCompilation
{
  v2 = self;
  v3 = ModelObjectBackedStoreItemMetadata.isCompilation.getter();

  return v3 & 1;
}

- (int64_t)discCount
{
  v2 = self;
  v3 = ModelObjectBackedStoreItemMetadata.discCount.getter();

  return v3;
}

- (int64_t)discNumber
{
  v2 = self;
  v3 = ModelObjectBackedStoreItemMetadata.discNumber.getter();

  return v3;
}

- (double)duration
{
  v2 = self;
  ModelObjectBackedStoreItemMetadata.duration.getter();
  v4 = v3;

  return v4;
}

- (int64_t)episodeCount
{
  v2 = self;
  v3 = ModelObjectBackedStoreItemMetadata.episodeCount.getter();

  return v3;
}

- (int64_t)explicitRating
{
  v2 = self;
  v3 = ModelObjectBackedStoreItemMetadata.explicitRating.getter();

  return v3;
}

- (NSArray)genreNames
{
  v2 = self;
  v3 = ModelObjectBackedStoreItemMetadata.genreNames.getter();

  if (v3)
  {
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (BOOL)hasArtistBiography
{
  v2 = self;
  v3 = ModelObjectBackedStoreItemMetadata.hasArtistBiography.getter();

  return v3 & 1;
}

- (BOOL)hasLyrics
{
  v2 = self;
  v3 = ModelObjectBackedStoreItemMetadata.hasLyrics.getter();

  return v3 & 1;
}

- (BOOL)hasTimeSyncedLyrics
{
  v2 = self;
  v3 = ModelObjectBackedStoreItemMetadata.hasTimeSyncedLyrics.getter();

  return v3 & 1;
}

- (BOOL)hasSocialPosts
{
  v2 = self;
  v3 = ModelObjectBackedStoreItemMetadata.hasSocialPosts.getter();

  return v3 & 1;
}

- (BOOL)isExplicitContent
{
  v2 = self;
  v3 = ModelObjectBackedStoreItemMetadata.isExplicitContent.getter();

  return v3 & 1;
}

- (BOOL)isMasteredForiTunes
{
  v2 = self;
  v3 = ModelObjectBackedStoreItemMetadata.isMasteredForiTunes.getter();

  return v3 & 1;
}

- (BOOL)isPreorder
{
  v2 = self;
  v3 = ModelObjectBackedStoreItemMetadata.isPreorder.getter();

  return v3 & 1;
}

- (BOOL)isPrivatePerson
{
  v2 = self;
  v3 = ModelObjectBackedStoreItemMetadata.isPrivatePerson.getter();

  return v3 & 1;
}

- (BOOL)isVerifiedPerson
{
  v2 = self;
  v3 = ModelObjectBackedStoreItemMetadata.isVerifiedPerson.getter();

  return v3 & 1;
}

- (BOOL)isOnboardedPerson
{
  v2 = self;
  v3 = ModelObjectBackedStoreItemMetadata.isOnboardedPerson.getter();

  return v3 & 1;
}

- (int64_t)movementCount
{
  v2 = self;
  v3 = ModelObjectBackedStoreItemMetadata.movementCount.getter();

  return v3;
}

- (int64_t)movementNumber
{
  v2 = self;
  v3 = ModelObjectBackedStoreItemMetadata.movementNumber.getter();

  return v3;
}

- (int64_t)seasonNumber
{
  v2 = self;
  v3 = ModelObjectBackedStoreItemMetadata.seasonNumber.getter();

  return v3;
}

- (BOOL)showComposer
{
  v2 = self;
  v3 = ModelObjectBackedStoreItemMetadata.showComposer.getter();

  return v3 & 1;
}

- (id)storeID
{
  v2 = &self->MPStoreItemMetadata_opaque[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  swift_beginAccess();
  v3 = *(v2 + 1);
  if (v3)
  {
    v6[0] = *v2;
    v6[1] = v3;

    v4 = _bridgeAnythingToObjectiveC<A>(_:)();
    sub_100015BB0(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isStoreRedownloadable
{
  v2 = self;
  v3 = ModelObjectBackedStoreItemMetadata.isStoreRedownloadable.getter();

  return v3 & 1;
}

- (int64_t)trackCount
{
  v2 = self;
  v3 = ModelObjectBackedStoreItemMetadata.trackCount.getter();

  return v3;
}

- (int64_t)trackNumber
{
  v2 = self;
  v3 = ModelObjectBackedStoreItemMetadata.trackNumber.getter();

  return v3;
}

- (_TtC9MusicCore34ModelObjectBackedStoreItemMetadata)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end