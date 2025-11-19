@interface TTRIBoardEditableColumnHeader
+ (Class)containerViewClass;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)invalidateIntrinsicContentSize;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)updateProperties;
@end

@implementation TTRIBoardEditableColumnHeader

+ (Class)containerViewClass
{
  type metadata accessor for TTRNoAnimationContainerStackView();

  return swift_getObjCClassFromMetadata();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_100603BD0();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_100603EB8();

  (*(v5 + 8))(v7, v4);
}

- (void)invalidateIntrinsicContentSize
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = self;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100608DB4;
  *(v5 + 24) = v4;
  v8[4] = sub_100068444;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100026440;
  v8[3] = &unk_1007336E8;
  v6 = _Block_copy(v8);
  v7 = self;

  [v3 performWithoutAnimation:v6];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

- (void)layoutSubviews
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = self;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100608DA8;
  *(v5 + 24) = v4;
  v8[4] = sub_100026410;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100026440;
  v8[3] = &unk_100733670;
  v6 = _Block_copy(v8);
  v7 = self;

  [v3 performWithoutAnimation:v6];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

- (void)updateProperties
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(TTRIBoardEditableColumnHeader *)&v3 updateProperties];
  if (v2[OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_needsSetUpScrollPocketInteractions] == 1)
  {
    v2[OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_needsSetUpScrollPocketInteractions] = 0;
    sub_100604480();
  }
}

@end