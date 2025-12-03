@interface EnhancedLoggingConsentViewController
- (_TtC11Diagnostics36EnhancedLoggingConsentViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC11Diagnostics36EnhancedLoggingConsentViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name;
- (_TtC11Diagnostics36EnhancedLoggingConsentViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation EnhancedLoggingConsentViewController

- (_TtC11Diagnostics36EnhancedLoggingConsentViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (!text)
  {
    v11 = 0;
    if (name)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    v14 = 0;
    return sub_10007A3B8(v7, v9, text, v11, v12, v14);
  }

  text = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (!name)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  return sub_10007A3B8(v7, v9, text, v11, v12, v14);
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section == 1)
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_10007B744();

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_10007AF48(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (_TtC11Diagnostics36EnhancedLoggingConsentViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics36EnhancedLoggingConsentViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end