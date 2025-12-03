@interface HKSPSelectableSubtitleCell
+ (int64_t)cellStyle;
- (BOOL)canBeChecked;
- (_TtC25NanoBedtimeBridgeSettings26HKSPSelectableSubtitleCell)initWithCoder:(id)coder;
- (_TtC25NanoBedtimeBridgeSettings26HKSPSelectableSubtitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation HKSPSelectableSubtitleCell

+ (int64_t)cellStyle
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 3;
}

- (BOOL)canBeChecked
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 1;
}

- (_TtC25NanoBedtimeBridgeSettings26HKSPSelectableSubtitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (identifier)
  {
    sub_116EC();
    identifier = sub_116BC();
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for HKSPSelectableSubtitleCell();
  v7 = [(HKSPSelectableSubtitleCell *)&v9 initWithStyle:style reuseIdentifier:identifier];

  return v7;
}

- (_TtC25NanoBedtimeBridgeSettings26HKSPSelectableSubtitleCell)initWithCoder:(id)coder
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for HKSPSelectableSubtitleCell();
  coderCopy = coder;
  v6 = [(HKSPSelectableSubtitleCell *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end