@interface InstructionList
- (_TtC11Diagnostics15InstructionList)initWithFrame:(CGRect)frame;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)invalidateIntrinsicContentSize;
@end

@implementation InstructionList

- (_TtC11Diagnostics15InstructionList)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC11Diagnostics15InstructionList_tableView;
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(type metadata accessor for IntrinsicSizeAdjustingTableView()) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11Diagnostics15InstructionList_instructions) = _swiftEmptyArrayStorage;
  v11.receiver = self;
  v11.super_class = type metadata accessor for InstructionList();
  height = [(InstructionList *)&v11 initWithFrame:x, y, width, height];
  sub_100101044();

  return height;
}

- (void)invalidateIntrinsicContentSize
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for InstructionList();
  v2 = v3.receiver;
  [(InstructionList *)&v3 invalidateIntrinsicContentSize];
  [*&v2[OBJC_IVAR____TtC11Diagnostics15InstructionList_tableView] invalidateIntrinsicContentSize];
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
  v12 = sub_1001014F8(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_10010181C(viewCopy);
  v13 = v12;

  (*(v7 + 8))(v9, v6);
  return v13;
}

@end