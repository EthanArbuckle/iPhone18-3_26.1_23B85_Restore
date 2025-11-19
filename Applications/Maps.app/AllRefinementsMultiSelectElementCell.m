@interface AllRefinementsMultiSelectElementCell
+ (NSString)reuseIdentifier;
- (_TtC4Maps36AllRefinementsMultiSelectElementCell)initWithCoder:(id)a3;
- (_TtC4Maps36AllRefinementsMultiSelectElementCell)initWithFrame:(CGRect)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)setDisplayName:(id)a3 isSelected:(BOOL)a4 labelWidth:(double)a5 maxWidth:(double)a6 allowSelection:(id)a7 tapHandler:(id)a8;
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

- (void)setDisplayName:(id)a3 isSelected:(BOOL)a4 labelWidth:(double)a5 maxWidth:(double)a6 allowSelection:(id)a7 tapHandler:(id)a8
{
  v11 = a4;
  v13 = _Block_copy(a7);
  v14 = _Block_copy(a8);
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

  v20 = self;
  sub_100263DA4(v15, v17, a5, a6, v11, sub_1002647F0, v18, v14, v19);
  sub_1000D3B90(v14, v19);
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_10026416C();

  (*(v5 + 8))(v7, v4);
}

- (_TtC4Maps36AllRefinementsMultiSelectElementCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps36AllRefinementsMultiSelectElementCell_viewModel) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AllRefinementsMultiSelectElementCell();
  return [(AllRefinementsMultiSelectElementCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC4Maps36AllRefinementsMultiSelectElementCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps36AllRefinementsMultiSelectElementCell_viewModel) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AllRefinementsMultiSelectElementCell();
  v4 = a3;
  v5 = [(AllRefinementsMultiSelectElementCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end