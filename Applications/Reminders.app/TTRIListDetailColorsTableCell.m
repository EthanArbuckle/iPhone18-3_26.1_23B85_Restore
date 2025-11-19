@interface TTRIListDetailColorsTableCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (_TtC9Reminders29TTRIListDetailColorsTableCell)initWithCoder:(id)a3;
- (_TtC9Reminders29TTRIListDetailColorsTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation TTRIListDetailColorsTableCell

- (_TtC9Reminders29TTRIListDetailColorsTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_100068BB8(a3, a4, v6);
}

- (_TtC9Reminders29TTRIListDetailColorsTableCell)initWithCoder:(id)a3
{
  *&self->gridView[OBJC_IVAR____TtC9Reminders29TTRIListDetailColorsTableCell_delegate] = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  width = a3.width;
  v6 = self;
  dispatch thunk of TTRListAppearanceGridView.height(forWidth:)();
  v8 = v7;

  v9 = width;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end