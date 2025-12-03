@interface TTRIListDetailColorsTableCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (_TtC9Reminders29TTRIListDetailColorsTableCell)initWithCoder:(id)coder;
- (_TtC9Reminders29TTRIListDetailColorsTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation TTRIListDetailColorsTableCell

- (_TtC9Reminders29TTRIListDetailColorsTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_100068BB8(style, identifier, v6);
}

- (_TtC9Reminders29TTRIListDetailColorsTableCell)initWithCoder:(id)coder
{
  *&self->gridView[OBJC_IVAR____TtC9Reminders29TTRIListDetailColorsTableCell_delegate] = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  width = size.width;
  selfCopy = self;
  dispatch thunk of TTRListAppearanceGridView.height(forWidth:)();
  v8 = v7;

  v9 = width;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end