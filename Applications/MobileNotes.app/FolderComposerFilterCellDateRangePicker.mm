@interface FolderComposerFilterCellDateRangePicker
- (_TtC11MobileNotes39FolderComposerFilterCellDateRangePicker)initWithFrame:(CGRect)frame;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
@end

@implementation FolderComposerFilterCellDateRangePicker

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1003E9D20();

  (*(v5 + 8))(v7, v4);
}

- (_TtC11MobileNotes39FolderComposerFilterCellDateRangePicker)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = self + OBJC_IVAR____TtC11MobileNotes39FolderComposerFilterCellDateRangePicker_amount;
  *v8 = 0;
  v8[8] = 1;
  v9 = self + OBJC_IVAR____TtC11MobileNotes39FolderComposerFilterCellDateRangePicker_rangeType;
  *v9 = 0;
  v9[8] = 1;
  v10 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes39FolderComposerFilterCellDateRangePicker_rangeSelectionChanged);
  v11 = type metadata accessor for FolderComposerFilterCellDateRangePicker();
  *v10 = 0;
  v10[1] = 0;
  v13.receiver = self;
  v13.super_class = v11;
  return [(FolderComposerFilterCellDateRangePicker *)&v13 initWithFrame:x, y, width, height];
}

@end