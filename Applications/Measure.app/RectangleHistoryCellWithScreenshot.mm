@interface RectangleHistoryCellWithScreenshot
- (_TtC7Measure34RectangleHistoryCellWithScreenshot)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
@end

@implementation RectangleHistoryCellWithScreenshot

- (_TtC7Measure34RectangleHistoryCellWithScreenshot)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_10010C9EC(style, identifier, v6);
}

- (void)prepareForReuse
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC7Measure34RectangleHistoryCellWithScreenshot_screenshot;
  v5 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Measure34RectangleHistoryCellWithScreenshot_screenshot);
  selfCopy = self;
  [v5 removeFromSuperview];
  v7 = [objc_allocWithZone(UIImageView) init];
  v8 = *(&self->super.super.super.super.super.isa + v4);
  *(&self->super.super.super.super.super.isa + v4) = v7;

  v9.receiver = selfCopy;
  v9.super_class = ObjectType;
  [(BaseRectangleHistoryCell *)&v9 prepareForReuse];
  sub_10010C488();
  sub_10010C580();
}

@end