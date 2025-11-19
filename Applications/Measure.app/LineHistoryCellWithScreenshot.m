@interface LineHistoryCellWithScreenshot
- (_TtC7Measure29LineHistoryCellWithScreenshot)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)prepareForReuse;
@end

@implementation LineHistoryCellWithScreenshot

- (_TtC7Measure29LineHistoryCellWithScreenshot)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_100022B0C(a3, a4, v6);
}

- (void)prepareForReuse
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC7Measure29LineHistoryCellWithScreenshot_screenshot;
  v5 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Measure29LineHistoryCellWithScreenshot_screenshot);
  v6 = self;
  [v5 removeFromSuperview];
  v7 = [objc_allocWithZone(UIImageView) init];
  v8 = *(&self->super.super.super.super.super.isa + v4);
  *(&self->super.super.super.super.super.isa + v4) = v7;

  v9.receiver = v6;
  v9.super_class = ObjectType;
  [(BaseLineHistoryCell *)&v9 prepareForReuse];
  sub_1000223D4();
  sub_1000224CC();
}

@end