@interface TTRIRemindersBoardCompletedHeaderView
- (NSArray)accessibilityElements;
- (NSString)accessibilityLabel;
- (_TtC9Reminders37TTRIRemindersBoardCompletedHeaderView)initWithArrangedSubviews:(id)subviews;
- (void)layoutSubviews;
@end

@implementation TTRIRemindersBoardCompletedHeaderView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1005DC118();
}

- (NSArray)accessibilityElements
{
  selfCopy = self;
  v3 = sub_1005DC2B4();

  if (v3)
  {
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
  sub_1005DC394();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_TtC9Reminders37TTRIRemindersBoardCompletedHeaderView)initWithArrangedSubviews:(id)subviews
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end