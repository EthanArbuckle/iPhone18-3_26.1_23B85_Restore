@interface EnhancedLoggingConsentViewController
- (_TtC11Diagnostics36EnhancedLoggingConsentViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC11Diagnostics36EnhancedLoggingConsentViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5;
- (_TtC11Diagnostics36EnhancedLoggingConsentViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation EnhancedLoggingConsentViewController

- (_TtC11Diagnostics36EnhancedLoggingConsentViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (!a4)
  {
    v11 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    v14 = 0;
    return sub_10007A3B8(v7, v9, a4, v11, v12, v14);
  }

  a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  return sub_10007A3B8(v7, v9, a4, v11, v12, v14);
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4 == 1)
  {
    sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000001CLL, 0x800000010018C7F0);
    v5 = String._bridgeToObjectiveC()();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (self->super.super.OBWelcomeController_opaque[OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_snapshotHasTopLevelPrivacyPolicy])
  {
    return 1;
  }

  else
  {
    return *(*&self->super.super.OBWelcomeController_opaque[OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_bundleQueue] + 16);
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = sub_10007B744();

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_10007AF48(v10);

  (*(v7 + 8))(v9, v6);
}

- (_TtC11Diagnostics36EnhancedLoggingConsentViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics36EnhancedLoggingConsentViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end