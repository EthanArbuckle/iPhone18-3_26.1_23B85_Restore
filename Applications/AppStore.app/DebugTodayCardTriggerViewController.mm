@interface DebugTodayCardTriggerViewController
- (_TtC8AppStore35DebugTodayCardTriggerViewController)initWithCoder:(id)coder;
- (_TtC8AppStore35DebugTodayCardTriggerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC8AppStore35DebugTodayCardTriggerViewController)initWithStyle:(int64_t)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)refreshContent;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation DebugTodayCardTriggerViewController

- (_TtC8AppStore35DebugTodayCardTriggerViewController)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)refreshContent
{
  selfCopy = self;
  sub_100177B30();
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*(self + OBJC_IVAR____TtC8AppStore35DebugTodayCardTriggerViewController_sections) + 16) <= section)
  {
LABEL_7:
    __break(1u);
    return self;
  }

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(self + OBJC_IVAR____TtC8AppStore35DebugTodayCardTriggerViewController_sections);
    if (*(v4 + 16) > section)
    {
      return *(*(v4 + 32 * section + 48) + 16);
    }
  }

  __break(1u);
  return self;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  v10 = String._bridgeToObjectiveC()();
  v11 = [viewCopy dequeueReusableCellWithIdentifier:v10];

  if (!v11)
  {
    v12 = objc_allocWithZone(UITableViewCell);
    v13 = String._bridgeToObjectiveC()();
    v11 = [v12 initWithStyle:3 reuseIdentifier:v13];

    viewCopy = v13;
  }

  (*(v6 + 8))(v8, v5);

  return v11;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_100179634(cellCopy);

  (*(v9 + 8))(v11, v8);
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_10097DAE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore35DebugTodayCardTriggerViewController_sections);
  if (result >= *(v14 + 16))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v15 = *(v14 + 32 * result + 56);

  if (v15 == 2)
  {
    (*(v6 + 8))(v8, v5);
    v16 = 1;
  }

  else
  {
    (*(v6 + 32))(v11, v8, v5);
    v16 = 0;
  }

  (*(v6 + 56))(v11, v16, 1, v5);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    v17 = 0;
  }

  else
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v6 + 8))(v11, v5);
    v17 = isa;
  }

  return v17;
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
  sub_1001797D0();

  (*(v7 + 8))(v9, v6);
}

- (_TtC8AppStore35DebugTodayCardTriggerViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8AppStore35DebugTodayCardTriggerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end