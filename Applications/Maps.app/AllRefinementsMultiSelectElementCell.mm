@interface AllRefinementsMultiSelectElementCell
+ (NSString)reuseIdentifier;
- (_TtC4Maps36AllRefinementsMultiSelectElementCell)initWithCoder:(id)coder;
- (_TtC4Maps36AllRefinementsMultiSelectElementCell)initWithFrame:(CGRect)frame;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)setDisplayName:(id)name isSelected:(BOOL)selected labelWidth:(double)width maxWidth:(double)maxWidth allowSelection:(id)selection tapHandler:(id)handler;
@end

@implementation AllRefinementsMultiSelectElementCell

+ (NSString)reuseIdentifier
{
  swift_getObjCClassMetadata();
  sub_1000CE6B8(&qword_101915F58);
  String.init<A>(describing:)();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setDisplayName:(id)name isSelected:(BOOL)selected labelWidth:(double)width maxWidth:(double)maxWidth allowSelection:(id)selection tapHandler:(id)handler
{
  selectedCopy = selected;
  v13 = _Block_copy(selection);
  v14 = _Block_copy(handler);
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  if (v14)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = v14;
    v14 = sub_1000FA694;
  }

  else
  {
    v19 = 0;
  }

  selfCopy = self;
  sub_100263DA4(v15, v17, width, maxWidth, selectedCopy, sub_1002647F0, v18, v14, v19);
  sub_1000D3B90(v14, v19);
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10026416C();

  (*(v5 + 8))(v7, v4);
}

- (_TtC4Maps36AllRefinementsMultiSelectElementCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps36AllRefinementsMultiSelectElementCell_viewModel) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AllRefinementsMultiSelectElementCell();
  return [(AllRefinementsMultiSelectElementCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC4Maps36AllRefinementsMultiSelectElementCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps36AllRefinementsMultiSelectElementCell_viewModel) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AllRefinementsMultiSelectElementCell();
  coderCopy = coder;
  v5 = [(AllRefinementsMultiSelectElementCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end