@interface SelfServiceSessionHistoryViewController
- (_TtC11Diagnostics39SelfServiceSessionHistoryViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC11Diagnostics39SelfServiceSessionHistoryViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation SelfServiceSessionHistoryViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SelfServiceSessionHistoryViewController();
  v2 = v4.receiver;
  [(SelfServiceSessionHistoryViewController *)&v4 viewDidLoad];
  sub_10004D11C();
  sub_10004D504(v3);
  sub_10004D6C8();
}

- (_TtC11Diagnostics39SelfServiceSessionHistoryViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics39SelfServiceSessionHistoryViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = qword_1001FC738;
  selfCopy = self;
  v6 = selfCopy;
  if (v4 != -1)
  {
    selfCopy = swift_once();
  }

  if (!qword_1001FEED8)
  {
    v7 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_5;
    }

LABEL_8:
    v8 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_6;
  }

  __chkstk_darwin(selfCopy);
  sub_10003C49C(&qword_1001FDEC0);
  OS_dispatch_queue.sync<A>(execute:)();
  v7 = v10;
  if (v10 >> 62)
  {
    goto LABEL_8;
  }

LABEL_5:
  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:

  return v8;
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
  v12 = sub_10004DC84(viewCopy, v9);

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
  sub_10004E348(v9);

  (*(v7 + 8))(v9, v6);
}

@end