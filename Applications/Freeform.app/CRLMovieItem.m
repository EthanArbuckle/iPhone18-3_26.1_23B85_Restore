@interface CRLMovieItem
+ (CGSize)defaultAudioItemSize;
+ (CGSize)defaultVideoItemSizeWithOriginalSize:(CGSize)a3;
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
- (id)commandToSetLoopingEnabled:(BOOL)a3;
- (id)commandToSetRoundedCornersEnabled:(BOOL)a3;
- (id)generateEmptyPosterImage;
- (id)makeAVAssetAndReturnError:(id *)a3;
- (id)makeAVAssetWithOptionsWithOptions:(id)a3 error:(id *)a4;
- (id)promisedDataForPublicType:(id)a3;
- (id)synchronouslyGenerateDefaultPosterImage;
- (id)synchronouslyGenerateDefaultPosterImageForAnimatedImage;
- (void)setAssetMediaWithMovieData:(id)a3 posterImageData:(id)a4 posterTime:(double)a5 startTime:(double)a6 endTime:(double)a7 isAudioOnly:(BOOL)a8 title:(id)a9 creator:(id)a10 isLooping:(BOOL)a11;
- (void)setCornerRadius:(float)a3;
- (void)setEndTime:(double)a3;
- (void)setIsAudioOnly:(BOOL)a3;
- (void)setIsLooping:(BOOL)a3;
- (void)setPosterImageData:(id)a3;
- (void)setPosterTime:(double)a3;
- (void)setStartTime:(double)a3;
- (void)setVolume:(float)a3;
- (void)takePropertiesFromReplacedBoardItem:(id)a3;
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
    v7 = self;

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

- (void)setStartTime:(double)a3
{
  v4 = self;
  sub_100D8F61C(a3);
}

- (double)endTime
{
  v3 = type metadata accessor for CRLMovieItemAssetData(0);
  *&result = __chkstk_darwin(v3).n128_u64[0];
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_1019F58C8)
  {
    swift_beginAccess();
    v7 = self;

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

- (void)setEndTime:(double)a3
{
  v4 = self;
  sub_100D8FDFC(a3);
}

- (BOOL)isAudioOnly
{
  v3 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_1019F58C8)
  {
    swift_beginAccess();
    v7 = self;

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

- (void)setIsAudioOnly:(BOOL)a3
{
  v4 = self;
  sub_100D905D0(a3);
}

- (BOOL)isLooping
{
  v3 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_1019F58C8)
  {
    swift_beginAccess();
    v7 = self;

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

- (void)setIsLooping:(BOOL)a3
{
  v4 = self;
  sub_100D90AD4(a3);
}

- (BOOL)isSpatial
{
  v2 = self;
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
    v7 = self;

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

- (void)setPosterTime:(double)a3
{
  v4 = self;
  sub_100D91088(a3);
}

- (float)volume
{
  if (**&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_1019F58C8)
  {
    swift_beginAccess();
    type metadata accessor for CRLMovieItemCRDTData(0);
    v3 = self;

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

- (void)setVolume:(float)a3
{
  v3 = self;
  if (sub_1011255D0(v3))
  {
    if (**&v3->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_1019F58C8)
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

- (void)setCornerRadius:(float)a3
{
  v4 = self;
  sub_100D91544(v4, a3);
}

- (NSString)title
{
  v3 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_1019F58C8)
  {
    swift_beginAccess();
    v7 = self;

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
    v7 = self;

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
  v2 = self;
  v3 = sub_100D91F80();

  return v3;
}

- (_TtC8Freeform8CRLAsset)posterImageAssetPayload
{
  v2 = self;
  v3 = sub_100D92904();

  return v3;
}

- (CGSize)mediaRawPixelSize
{
  v2 = self;
  v3 = sub_100D92904();
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() sharedPool];
    v6 = [v5 providerForAsset:v4 shouldValidate:1];

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

- (void)setPosterImageData:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100D93D5C(a3);
}

- (void)setAssetMediaWithMovieData:(id)a3 posterImageData:(id)a4 posterTime:(double)a5 startTime:(double)a6 endTime:(double)a7 isAudioOnly:(BOOL)a8 title:(id)a9 creator:(id)a10 isLooping:(BOOL)a11
{
  v27 = a11;
  v11 = a10;
  v12 = a8;
  if (a9)
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
    if (v11)
    {
LABEL_3:
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v23;
      goto LABEL_6;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a10)
    {
      goto LABEL_3;
    }
  }

  v22 = 0;
LABEL_6:
  v24 = a3;
  v25 = a4;
  v26 = self;
  sub_100D94028(a3, a4, v12, v19, v21, v22, v11, v27, a5, a6, a7);
}

- (BOOL)supportsTogglingShadowAndRoundedCorners
{
  v3 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_1019F58C8)
  {
    swift_beginAccess();
    v7 = self;

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

- (id)commandToSetRoundedCornersEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3)
  {
    v9 = 10.0;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = objc_allocWithZone(type metadata accessor for CRLCommandSetMovieCornerRadius(0));
  (*(**&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))();
  v11 = self;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v8, v5);
  *&v13 = v9;
  v14 = [v10 initWithId:isa cornerRadius:v13];

  return v14;
}

- (id)commandToSetLoopingEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(type metadata accessor for CRLCommandSetMovieLooping(0));
  (*(**&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))();
  v10 = self;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v8, v5);
  v12 = [v9 initWithId:isa isLooping:v3];

  return v12;
}

- (void)takePropertiesFromReplacedBoardItem:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100D958D8(v4);
}

- (BOOL)placeHolderDataNeedsDownload
{
  v2 = self;
  v3 = sub_100D95C20();

  return v3 & 1;
}

- (NSString)previewTooltip
{
  v2 = self;
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
  v2 = self;
  sub_100D96090();

  return swift_getObjCClassFromMetadata();
}

- (Class)repClass
{
  v2 = self;
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

- (id)makeAVAssetAndReturnError:(id *)a3
{
  v3 = self;
  v4 = sub_100D91F80();
  v5 = *(v4 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
  v6 = *(v4 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
  sub_100020E58((v4 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v5);
  v7 = (*(v6 + 56))(_swiftEmptyDictionarySingleton, v5, v6);

  return v7;
}

- (id)makeAVAssetWithOptionsWithOptions:(id)a3 error:(id *)a4
{
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = self;
  v7 = sub_100D91F80();
  v8 = *(v7 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
  v9 = *(v7 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
  sub_100020E58((v7 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v8);
  v10 = (*(v9 + 56))(v5, v8, v9);

  return v10;
}

- (id)generateEmptyPosterImage
{
  v2 = self;
  v3 = sub_100D9AA04();

  return v3;
}

- (BOOL)isAnimatedImage
{
  v2 = self;
  v3 = sub_100D9AFEC();

  return v3 & 1;
}

- (id)synchronouslyGenerateDefaultPosterImageForAnimatedImage
{
  v2 = self;
  sub_100D9B278();
  v4 = v3;

  return v4;
}

- (id)synchronouslyGenerateDefaultPosterImage
{
  v2 = self;
  sub_100D9B52C();
  v4 = v3;

  return v4;
}

- (NSArray)customPublicTypesToPromiseWhenCopyingSingleBoardItem
{
  v2 = self;
  sub_100D9C288();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)promisedDataForPublicType:(id)a3
{
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3;
  v10 = self;
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
    v7 = self;

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

+ (CGSize)defaultVideoItemSizeWithOriginalSize:(CGSize)a3
{
  v3 = sub_100121E8C(a3.width, a3.height, 300.0, 300.0);
  result.height = v4;
  result.width = v3;
  return result;
}

@end