@interface LibraryHomeCellWithBadge
+ (NSString)reuseIdentifier;
- (UICellConfigurationState)_bridgedConfigurationState;
- (_TtC4Maps24LibraryHomeCellWithBadge)initWithCoder:(id)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
@end

@implementation LibraryHomeCellWithBadge

+ (NSString)reuseIdentifier
{
  swift_getObjCClassMetadata();
  sub_1000CE6B8(&qword_101922580);
  String.init<A>(describing:)();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (UICellConfigurationState)_bridgedConfigurationState
{
  ObjectType = swift_getObjectType();
  v4 = sub_1000CE6B8(&qword_101922558);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for UICellConfigurationState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = self;
  v18.super_class = ObjectType;
  v11 = self;
  v12 = [(LibraryHomeCellWithBadge *)&v18 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = OBJC_IVAR____TtC4Maps24LibraryHomeCellWithBadge_viewModel;
  swift_beginAccess();
  sub_1004765A4(v11 + v13, v6);
  v14 = type metadata accessor for LibraryHomeCellWithBadgeViewModel(0);
  (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
  sub_100474A7C(v6);

  v15.super.super.isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  (*(v8 + 8))(v10, v7);

  return v15.super.super.isa;
}

- (_TtC4Maps24LibraryHomeCellWithBadge)initWithCoder:(id)a3
{
  *(&self->super + OBJC_IVAR____TtC4Maps24LibraryHomeCellWithBadge____lazy_storage___listContentView) = 0;
  *(&self->super + OBJC_IVAR____TtC4Maps24LibraryHomeCellWithBadge____lazy_storage___badgeView) = 0;
  self->super._UICollectionViewListCell_opaque[OBJC_IVAR____TtC4Maps24LibraryHomeCellWithBadge_isListContentViewSetup] = 0;
  v3 = (&self->super + OBJC_IVAR____TtC4Maps24LibraryHomeCellWithBadge_badgeViewConstraints);
  *v3 = 0;
  v3[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_100475674(v7);

  (*(v5 + 8))(v7, v4);
}

@end