@interface FolderComposerFilterCellDateRangePicker
- (_TtC11MobileNotes39FolderComposerFilterCellDateRangePicker)initWithFrame:(CGRect)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
@end

@implementation FolderComposerFilterCellDateRangePicker

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_1003E9D20();

  (*(v5 + 8))(v7, v4);
}

- (_TtC11MobileNotes39FolderComposerFilterCellDateRangePicker)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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