@interface CRLMovieItem
+ (CGSize)defaultAudioItemSize;
+ (CGSize)defaultVideoItemSizeWithOriginalSize:(CGSize)size;
- (BOOL)canCopyStyle;
- (BOOL)isAnimatedImage;
- (BOOL)isAudioOnly;
- (BOOL)isLooping;
- (BOOL)isSpatial;
- (BOOL)placeHolderDataNeedsDownload;
- (BOOL)supportsTogglingShadowAndRoundedCorners;
- (CGSize)mediaRawPixelSize;
- (Class)editorClass;
- (Class)layoutClass;
- (Class)repClass;
- (NSArray)customPublicTypesToPromiseWhenCopyingSingleBoardItem;
- (NSString)creator;
- (NSString)previewTooltip;
- (NSString)title;
- (_TtC8Freeform8CRLAsset)movieAssetPayload;
- (_TtC8Freeform8CRLAsset)posterImageAssetPayload;
- (double)endTime;
- (double)posterTime;
- (double)startTime;
- (float)volume;
- (id)commandToSetLoopingEnabled:(BOOL)enabled;
- (id)commandToSetRoundedCornersEnabled:(BOOL)enabled;
- (id)generateEmptyPosterImage;
- (id)makeAVAssetAndReturnError:(id *)error;
- (id)makeAVAssetWithOptionsWithOptions:(id)options error:(id *)error;
- (id)promisedDataForPublicType:(id)type;
- (id)synchronouslyGenerateDefaultPosterImage;
- (id)synchronouslyGenerateDefaultPosterImageForAnimatedImage;
- (void)setAssetMediaWithMovieData:(id)data posterImageData:(id)imageData posterTime:(double)time startTime:(double)startTime endTime:(double)endTime isAudioOnly:(BOOL)only title:(id)title creator:(id)self0 isLooping:(BOOL)self1;
- (void)setCornerRadius:(float)radius;
- (void)setEndTime:(double)time;
- (void)setIsAudioOnly:(BOOL)only;
- (void)setIsLooping:(BOOL)looping;
- (void)setPosterImageData:(id)data;
- (void)setPosterTime:(double)time;
- (void)setStartTime:(double)time;
- (void)setVolume:(float)volume;
- (void)takePropertiesFromReplacedBoardItem:(id)item;
@end

@implementation CRLMovieItem

- (double)startTime
{
  v3 = type metadata accessor for CRLMovieItemAssetData(0);
  *&result = __chkstk_darwin(v3).n128_u64[0];
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_1019F58C8)
  {
    swift_beginAccess();
    selfCopy = self;

    sub_1005B981C(&qword_101A28680);
    CRRegister.wrappedValue.getter();
    v8 = *&v6[*(v3 + 28)];
    swift_endAccess();

    sub_100D9D0BC(v6, type metadata accessor for CRLMovieItemAssetData);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)setStartTime:(double)time
{
  selfCopy = self;
  sub_100D8F61C(time);
}

- (double)endTime
{
  v3 = type metadata accessor for CRLMovieItemAssetData(0);
  *&result = __chkstk_darwin(v3).n128_u64[0];
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_1019F58C8)
  {
    swift_beginAccess();
    selfCopy = self;

    sub_1005B981C(&qword_101A28680);
    CRRegister.wrappedValue.getter();
    v8 = *&v6[*(v3 + 32)];
    swift_endAccess();

    sub_100D9D0BC(v6, type metadata accessor for CRLMovieItemAssetData);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)setEndTime:(double)time
{
  selfCopy = self;
  sub_100D8FDFC(time);
}

- (BOOL)isAudioOnly
{
  v3 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_1019F58C8)
  {
    swift_beginAccess();
    selfCopy = self;

    sub_1005B981C(&qword_101A28680);
    CRRegister.wrappedValue.getter();
    v8 = v6[*(v3 + 36)];
    swift_endAccess();

    sub_100D9D0BC(v6, type metadata accessor for CRLMovieItemAssetData);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)setIsAudioOnly:(BOOL)only
{
  selfCopy = self;
  sub_100D905D0(only);
}

- (BOOL)isLooping
{
  v3 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_1019F58C8)
  {
    swift_beginAccess();
    selfCopy = self;

    sub_1005B981C(&qword_101A28680);
    CRRegister.wrappedValue.getter();
    v8 = v6[*(v3 + 48)];
    swift_endAccess();

    sub_100D9D0BC(v6, type metadata accessor for CRLMovieItemAssetData);
    return v8 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)setIsLooping:(BOOL)looping
{
  selfCopy = self;
  sub_100D90AD4(looping);
}

- (BOOL)isSpatial
{
  selfCopy = self;
  v3 = sub_100D90D20();

  return v3 & 1;
}

- (double)posterTime
{
  v3 = type metadata accessor for CRLMovieItemAssetData(0);
  *&result = __chkstk_darwin(v3).n128_u64[0];
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_1019F58C8)
  {
    swift_beginAccess();
    selfCopy = self;

    sub_1005B981C(&qword_101A28680);
    CRRegister.wrappedValue.getter();
    v8 = *&v6[*(v3 + 24)];
    swift_endAccess();

    sub_100D9D0BC(v6, type metadata accessor for CRLMovieItemAssetData);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)setPosterTime:(double)time
{
  selfCopy = self;
  sub_100D91088(time);
}

- (float)volume
{
  if (**&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_1019F58C8)
  {
    swift_beginAccess();
    type metadata accessor for CRLMovieItemCRDTData(0);
    selfCopy = self;

    sub_1005B981C(&unk_101A2C7E0);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    result = 1.0;
    if (!v6)
    {
      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)setVolume:(float)volume
{
  selfCopy = self;
  if (sub_1011255D0(selfCopy))
  {
    if (**&selfCopy->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_1019F58C8)
    {
      swift_beginAccess();
      type metadata accessor for CRLMovieItemCRDTData(0);

      sub_1005B981C(&unk_101A2C7E0);
      CRRegister.wrappedValue.setter();
      swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

- (void)setCornerRadius:(float)radius
{
  selfCopy = self;
  sub_100D91544(selfCopy, radius);
}

- (NSString)title
{
  v3 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_1019F58C8)
  {
    swift_beginAccess();
    selfCopy = self;

    sub_1005B981C(&qword_101A28680);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    v8 = *&v6[*(v3 + 40) + 8];

    sub_100D9D0BC(v6, type metadata accessor for CRLMovieItemAssetData);
    if (v8)
    {
      v9 = String._bridgeToObjectiveC()();
    }

    else
    {
      v9 = 0;
    }

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (NSString)creator
{
  v3 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_1019F58C8)
  {
    swift_beginAccess();
    selfCopy = self;

    sub_1005B981C(&qword_101A28680);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    v8 = *&v6[*(v3 + 44) + 8];

    sub_100D9D0BC(v6, type metadata accessor for CRLMovieItemAssetData);
    if (v8)
    {
      v9 = String._bridgeToObjectiveC()();
    }

    else
    {
      v9 = 0;
    }

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (_TtC8Freeform8CRLAsset)movieAssetPayload
{
  selfCopy = self;
  v3 = sub_100D91F80();

  return v3;
}

- (_TtC8Freeform8CRLAsset)posterImageAssetPayload
{
  selfCopy = self;
  v3 = sub_100D92904();

  return v3;
}

- (CGSize)mediaRawPixelSize
{
  selfCopy = self;
  v3 = sub_100D92904();
  if (v3)
  {
    v4 = v3;
    sharedPool = [objc_opt_self() sharedPool];
    v6 = [sharedPool providerForAsset:v4 shouldValidate:1];

    [v6 naturalSize];
    v8 = v7;
    v10 = v9;
  }

  else
  {

    v8 = 0.0;
    v10 = 0.0;
  }

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)setPosterImageData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  sub_100D93D5C(data);
}

- (void)setAssetMediaWithMovieData:(id)data posterImageData:(id)imageData posterTime:(double)time startTime:(double)startTime endTime:(double)endTime isAudioOnly:(BOOL)only title:(id)title creator:(id)self0 isLooping:(BOOL)self1
{
  loopingCopy = looping;
  creatorCopy = creator;
  onlyCopy = only;
  if (title)
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
    if (creatorCopy)
    {
LABEL_3:
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      creatorCopy = v23;
      goto LABEL_6;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (creator)
    {
      goto LABEL_3;
    }
  }

  v22 = 0;
LABEL_6:
  dataCopy = data;
  imageDataCopy = imageData;
  selfCopy = self;
  sub_100D94028(data, imageData, onlyCopy, v19, v21, v22, creatorCopy, loopingCopy, time, startTime, endTime);
}

- (BOOL)supportsTogglingShadowAndRoundedCorners
{
  v3 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_1019F58C8)
  {
    swift_beginAccess();
    selfCopy = self;

    sub_1005B981C(&qword_101A28680);
    CRRegister.wrappedValue.getter();
    v8 = v6[*(v3 + 36)];
    swift_endAccess();

    sub_100D9D0BC(v6, type metadata accessor for CRLMovieItemAssetData);
    return (v8 & 1) == 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)commandToSetRoundedCornersEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (enabledCopy)
  {
    v9 = 10.0;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = objc_allocWithZone(type metadata accessor for CRLCommandSetMovieCornerRadius(0));
  (*(**&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))();
  selfCopy = self;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v8, v5);
  *&v13 = v9;
  v14 = [v10 initWithId:isa cornerRadius:v13];

  return v14;
}

- (id)commandToSetLoopingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(type metadata accessor for CRLCommandSetMovieLooping(0));
  (*(**&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))();
  selfCopy = self;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v8, v5);
  v12 = [v9 initWithId:isa isLooping:enabledCopy];

  return v12;
}

- (void)takePropertiesFromReplacedBoardItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  sub_100D958D8(itemCopy);
}

- (BOOL)placeHolderDataNeedsDownload
{
  selfCopy = self;
  v3 = sub_100D95C20();

  return v3 & 1;
}

- (NSString)previewTooltip
{
  selfCopy = self;
  sub_100D95E44();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (Class)layoutClass
{
  selfCopy = self;
  sub_100D96090();

  return swift_getObjCClassFromMetadata();
}

- (Class)repClass
{
  selfCopy = self;
  sub_100D96258();
  v4 = v3;

  if (!v4)
  {
    return 0;
  }

  return swift_getObjCClassFromMetadata();
}

- (Class)editorClass
{
  sub_100006370(0, &qword_101A1F878);

  return swift_getObjCClassFromMetadata();
}

- (id)makeAVAssetAndReturnError:(id *)error
{
  selfCopy = self;
  v4 = sub_100D91F80();
  v5 = *(v4 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
  v6 = *(v4 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
  sub_100020E58((v4 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v5);
  v7 = (*(v6 + 56))(_swiftEmptyDictionarySingleton, v5, v6);

  return v7;
}

- (id)makeAVAssetWithOptionsWithOptions:(id)options error:(id *)error
{
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v7 = sub_100D91F80();
  v8 = *(v7 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
  v9 = *(v7 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
  sub_100020E58((v7 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v8);
  v10 = (*(v9 + 56))(v5, v8, v9);

  return v10;
}

- (id)generateEmptyPosterImage
{
  selfCopy = self;
  v3 = sub_100D9AA04();

  return v3;
}

- (BOOL)isAnimatedImage
{
  selfCopy = self;
  v3 = sub_100D9AFEC();

  return v3 & 1;
}

- (id)synchronouslyGenerateDefaultPosterImageForAnimatedImage
{
  selfCopy = self;
  sub_100D9B278();
  v4 = v3;

  return v4;
}

- (id)synchronouslyGenerateDefaultPosterImage
{
  selfCopy = self;
  sub_100D9B52C();
  v4 = v3;

  return v4;
}

- (NSArray)customPublicTypesToPromiseWhenCopyingSingleBoardItem
{
  selfCopy = self;
  sub_100D9C288();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)promisedDataForPublicType:(id)type
{
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  typeCopy = type;
  selfCopy = self;
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = sub_100D8E784(v8);
  v13 = v12;

  (*(v6 + 8))(v8, v5);
  v14 = 0;
  if (v13 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100025870(v11, v13);
    v14 = isa;
  }

  return v14;
}

- (BOOL)canCopyStyle
{
  v3 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_1019F58C8)
  {
    swift_beginAccess();
    selfCopy = self;

    sub_1005B981C(&qword_101A28680);
    CRRegister.wrappedValue.getter();
    v8 = v6[*(v3 + 36)];
    swift_endAccess();

    sub_100D9D0BC(v6, type metadata accessor for CRLMovieItemAssetData);

    return (v8 & 1) == 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

+ (CGSize)defaultAudioItemSize
{
  v2 = 150.0;
  v3 = 150.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)defaultVideoItemSizeWithOriginalSize:(CGSize)size
{
  v3 = sub_100121E8C(size.width, size.height, 300.0, 300.0);
  result.height = v4;
  result.width = v3;
  return result;
}

@end