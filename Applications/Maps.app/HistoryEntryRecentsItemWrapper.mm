@interface HistoryEntryRecentsItemWrapper
- (HistoryEntryRecentsItemProtocol)historyItem;
- (NSUUID)id;
- (_TtC4Maps30HistoryEntryRecentsItemWrapper)init;
- (_TtC4Maps30HistoryEntryRecentsItemWrapper)initWithTitle:(id)title subtitle:(id)subtitle historyItem:(id)item;
- (void)setId:(id)id;
@end

@implementation HistoryEntryRecentsItemWrapper

- (HistoryEntryRecentsItemProtocol)historyItem
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (NSUUID)id
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC4Maps30HistoryEntryRecentsItemWrapper_id;
  swift_beginAccess();
  (*(v4 + 16))(v6, self + v7, v3);
  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);

  return v8.super.isa;
}

- (void)setId:(id)id
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = OBJC_IVAR____TtC4Maps30HistoryEntryRecentsItemWrapper_id;
  swift_beginAccess();
  v9 = *(v5 + 40);
  selfCopy = self;
  v9(self + v8, v7, v4);
  swift_endAccess();
}

- (_TtC4Maps30HistoryEntryRecentsItemWrapper)initWithTitle:(id)title subtitle:(id)subtitle historyItem:(id)item
{
  titleCopy = title;
  subtitleCopy = subtitle;
  swift_unknownObjectRetain();
  UUID.init()();
  v10 = titleCopy;
  *(self + OBJC_IVAR____TtC4Maps30HistoryEntryRecentsItemWrapper_title) = String.init(_:)(v10);
  v11 = subtitleCopy;
  *(self + OBJC_IVAR____TtC4Maps30HistoryEntryRecentsItemWrapper_subtitle) = String.init(_:)(v11);
  *(self + OBJC_IVAR____TtC4Maps30HistoryEntryRecentsItemWrapper_historyItem) = item;
  v14.receiver = self;
  v14.super_class = type metadata accessor for HistoryEntryRecentsItemWrapper(0);
  v12 = [(HistoryEntryRecentsItemWrapper *)&v14 init];

  return v12;
}

- (_TtC4Maps30HistoryEntryRecentsItemWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end