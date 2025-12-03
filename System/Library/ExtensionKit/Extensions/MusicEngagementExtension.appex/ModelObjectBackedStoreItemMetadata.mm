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
- (_TtC9MusicCore34ModelObjectBackedStoreItemMetadata)initWithCoder:(id)coder;
- (_TtC9MusicCore34ModelObjectBackedStoreItemMetadata)initWithStorePlatformDictionary:(id)dictionary expirationDate:(id)date;
- (_TtC9MusicCore34ModelObjectBackedStoreItemMetadata)initWithStorePlatformDictionary:(id)dictionary parentStoreItemMetadata:(id)metadata;
- (_TtC9MusicCore34ModelObjectBackedStoreItemMetadata)initWithStorePlatformDictionary:(id)dictionary parentStoreItemMetadata:(id)metadata expirationDate:(id)date;
- (double)duration;
- (id)metadataByAppendingMetadata:(id)metadata;
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

- (_TtC9MusicCore34ModelObjectBackedStoreItemMetadata)initWithStorePlatformDictionary:(id)dictionary parentStoreItemMetadata:(id)metadata
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  *&self->MPStoreItemMetadata_opaque[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v6 = &self->MPStoreItemMetadata_opaque[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v6 = 0;
  *(v6 + 1) = 0;
  metadataCopy = metadata;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11.receiver = self;
  v11.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v9 = [(ModelObjectBackedStoreItemMetadata *)&v11 initWithStorePlatformDictionary:isa parentStoreItemMetadata:metadataCopy];

  return v9;
}

- (_TtC9MusicCore34ModelObjectBackedStoreItemMetadata)initWithStorePlatformDictionary:(id)dictionary expirationDate:(id)date
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (date)
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

- (_TtC9MusicCore34ModelObjectBackedStoreItemMetadata)initWithStorePlatformDictionary:(id)dictionary parentStoreItemMetadata:(id)metadata expirationDate:(id)date
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (date)
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

  metadataCopy = metadata;
  v14 = specialized ModelObjectBackedStoreItemMetadata.init(storePlatformDictionary:parentStoreItemMetadata:expirationDate:)(v10, metadataCopy, v9);

  return v14;
}

- (_TtC9MusicCore34ModelObjectBackedStoreItemMetadata)initWithCoder:(id)coder
{
  *&self->MPStoreItemMetadata_opaque[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v3 = &self->MPStoreItemMetadata_opaque[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v3 = 0;
  *(v3 + 1) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)metadataByAppendingMetadata:(id)metadata
{
  v16.receiver = self;
  v16.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v4 = v16.receiver;
  v5 = [(ModelObjectBackedStoreItemMetadata *)&v16 metadataByAppendingMetadata:metadata];
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
  selfCopy = self;
  ModelObjectBackedStoreItemMetadata.audioTraits.getter();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (BOOL)isBeats1
{
  selfCopy = self;
  v3 = ModelObjectBackedStoreItemMetadata.isBeats1.getter();

  return v3 & 1;
}

- (BOOL)isCompilation
{
  selfCopy = self;
  v3 = ModelObjectBackedStoreItemMetadata.isCompilation.getter();

  return v3 & 1;
}

- (int64_t)discCount
{
  selfCopy = self;
  v3 = ModelObjectBackedStoreItemMetadata.discCount.getter();

  return v3;
}

- (int64_t)discNumber
{
  selfCopy = self;
  v3 = ModelObjectBackedStoreItemMetadata.discNumber.getter();

  return v3;
}

- (double)duration
{
  selfCopy = self;
  ModelObjectBackedStoreItemMetadata.duration.getter();
  v4 = v3;

  return v4;
}

- (int64_t)episodeCount
{
  selfCopy = self;
  v3 = ModelObjectBackedStoreItemMetadata.episodeCount.getter();

  return v3;
}

- (int64_t)explicitRating
{
  selfCopy = self;
  v3 = ModelObjectBackedStoreItemMetadata.explicitRating.getter();

  return v3;
}

- (NSArray)genreNames
{
  selfCopy = self;
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
  selfCopy = self;
  v3 = ModelObjectBackedStoreItemMetadata.hasArtistBiography.getter();

  return v3 & 1;
}

- (BOOL)hasLyrics
{
  selfCopy = self;
  v3 = ModelObjectBackedStoreItemMetadata.hasLyrics.getter();

  return v3 & 1;
}

- (BOOL)hasTimeSyncedLyrics
{
  selfCopy = self;
  v3 = ModelObjectBackedStoreItemMetadata.hasTimeSyncedLyrics.getter();

  return v3 & 1;
}

- (BOOL)hasSocialPosts
{
  selfCopy = self;
  v3 = ModelObjectBackedStoreItemMetadata.hasSocialPosts.getter();

  return v3 & 1;
}

- (BOOL)isExplicitContent
{
  selfCopy = self;
  v3 = ModelObjectBackedStoreItemMetadata.isExplicitContent.getter();

  return v3 & 1;
}

- (BOOL)isMasteredForiTunes
{
  selfCopy = self;
  v3 = ModelObjectBackedStoreItemMetadata.isMasteredForiTunes.getter();

  return v3 & 1;
}

- (BOOL)isPreorder
{
  selfCopy = self;
  v3 = ModelObjectBackedStoreItemMetadata.isPreorder.getter();

  return v3 & 1;
}

- (BOOL)isPrivatePerson
{
  selfCopy = self;
  v3 = ModelObjectBackedStoreItemMetadata.isPrivatePerson.getter();

  return v3 & 1;
}

- (BOOL)isVerifiedPerson
{
  selfCopy = self;
  v3 = ModelObjectBackedStoreItemMetadata.isVerifiedPerson.getter();

  return v3 & 1;
}

- (BOOL)isOnboardedPerson
{
  selfCopy = self;
  v3 = ModelObjectBackedStoreItemMetadata.isOnboardedPerson.getter();

  return v3 & 1;
}

- (int64_t)movementCount
{
  selfCopy = self;
  v3 = ModelObjectBackedStoreItemMetadata.movementCount.getter();

  return v3;
}

- (int64_t)movementNumber
{
  selfCopy = self;
  v3 = ModelObjectBackedStoreItemMetadata.movementNumber.getter();

  return v3;
}

- (int64_t)seasonNumber
{
  selfCopy = self;
  v3 = ModelObjectBackedStoreItemMetadata.seasonNumber.getter();

  return v3;
}

- (BOOL)showComposer
{
  selfCopy = self;
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
    outlined destroy of String(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isStoreRedownloadable
{
  selfCopy = self;
  v3 = ModelObjectBackedStoreItemMetadata.isStoreRedownloadable.getter();

  return v3 & 1;
}

- (int64_t)trackCount
{
  selfCopy = self;
  v3 = ModelObjectBackedStoreItemMetadata.trackCount.getter();

  return v3;
}

- (int64_t)trackNumber
{
  selfCopy = self;
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