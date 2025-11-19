@interface SearchHomeUserGuidesLayoutProvider
- (_TtC4Maps34SearchHomeUserGuidesLayoutProvider)init;
- (id)cellClasses;
- (id)cellForRowAtIndexPath:(id)a3 collectionView:(id)a4 item:(id)a5;
- (id)cellReuseIdentifier;
- (id)layoutSectionWithLayoutEnvironment:(id)a3 estimatedHeaderHeight:(double)a4 estimatedFooterHeight:(double)a5 deletionBlock:(id)a6 objectsCount:(unint64_t)a7 mapsTheme:(id)a8;
- (id)shareHandler;
- (void)setIsDeletable:(id)a3;
- (void)setIsShareable:(id)a3;
- (void)setShareHandler:(id)a3;
@end

@implementation SearchHomeUserGuidesLayoutProvider

- (void)setIsDeletable:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1001D1A9C;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC4Maps34SearchHomeUserGuidesLayoutProvider_isDeletable);
  v8 = *(self + OBJC_IVAR____TtC4Maps34SearchHomeUserGuidesLayoutProvider_isDeletable);
  *v7 = v6;
  v7[1] = v4;
  v9 = self;
  sub_1000588AC(v8);
}

- (id)shareHandler
{
  if (*(self + OBJC_IVAR____TtC4Maps34SearchHomeUserGuidesLayoutProvider_shareHandler))
  {
    v2 = *(self + OBJC_IVAR____TtC4Maps34SearchHomeUserGuidesLayoutProvider_shareHandler + 8);
    v5[4] = *(self + OBJC_IVAR____TtC4Maps34SearchHomeUserGuidesLayoutProvider_shareHandler);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_1001D0588;
    v5[3] = &unk_1016092F8;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setShareHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1001D19DC;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC4Maps34SearchHomeUserGuidesLayoutProvider_shareHandler);
  v8 = *(self + OBJC_IVAR____TtC4Maps34SearchHomeUserGuidesLayoutProvider_shareHandler);
  *v7 = v6;
  v7[1] = v4;
  v9 = self;
  sub_1000588AC(v8);
}

- (void)setIsShareable:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1001D19D8;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC4Maps34SearchHomeUserGuidesLayoutProvider_isShareable);
  v8 = *(self + OBJC_IVAR____TtC4Maps34SearchHomeUserGuidesLayoutProvider_isShareable);
  *v7 = v6;
  v7[1] = v4;
  v9 = self;
  sub_1000588AC(v8);
}

- (_TtC4Maps34SearchHomeUserGuidesLayoutProvider)init
{
  v3 = (self + OBJC_IVAR____TtC4Maps34SearchHomeUserGuidesLayoutProvider_isDeletable);
  *v3 = 0;
  v3[1] = 0;
  v4 = (self + OBJC_IVAR____TtC4Maps34SearchHomeUserGuidesLayoutProvider_shareHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = (self + OBJC_IVAR____TtC4Maps34SearchHomeUserGuidesLayoutProvider_isShareable);
  v6 = type metadata accessor for SearchHomeUserGuidesLayoutProvider();
  *v5 = 0;
  v5[1] = 0;
  v8.receiver = self;
  v8.super_class = v6;
  return [(SearchHomeUserGuidesLayoutProvider *)&v8 init];
}

- (id)cellClasses
{
  sub_1000CE6B8(&unk_101910E20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1011E1D30;
  *(v2 + 32) = sub_100014C84(0, &unk_101909AB0);
  sub_1000CE6B8(&unk_101910E30);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)cellReuseIdentifier
{
  v2 = self;
  v3 = [(SearchHomeUserGuidesLayoutProvider *)v2 description];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  return v4;
}

- (id)cellForRowAtIndexPath:(id)a3 collectionView:(id)a4 item:(id)a5
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a4;
  swift_unknownObjectRetain();
  v12 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v13 = sub_1001D0FCC(v10, v11, v15);

  sub_10004E3D0(v15);
  (*(v8 + 8))(v10, v7);

  return v13;
}

- (id)layoutSectionWithLayoutEnvironment:(id)a3 estimatedHeaderHeight:(double)a4 estimatedFooterHeight:(double)a5 deletionBlock:(id)a6 objectsCount:(unint64_t)a7 mapsTheme:(id)a8
{
  v12 = _Block_copy(a6);
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v12 = sub_1001D18BC;
  }

  else
  {
    v13 = 0;
  }

  swift_unknownObjectRetain();
  v14 = a8;
  v15 = self;
  v16 = sub_1001D1448(a3, v12, v13, a4);
  sub_1000588AC(v12);
  swift_unknownObjectRelease();

  return v16;
}

@end