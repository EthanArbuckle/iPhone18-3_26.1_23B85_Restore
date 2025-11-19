@interface HKSPSelectableSubtitleCell
+ (int64_t)cellStyle;
- (BOOL)canBeChecked;
- (_TtC25NanoBedtimeBridgeSettings26HKSPSelectableSubtitleCell)initWithCoder:(id)a3;
- (_TtC25NanoBedtimeBridgeSettings26HKSPSelectableSubtitleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
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

- (_TtC25NanoBedtimeBridgeSettings26HKSPSelectableSubtitleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a4)
  {
    sub_116EC();
    a4 = sub_116BC();
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for HKSPSelectableSubtitleCell();
  v7 = [(HKSPSelectableSubtitleCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];

  return v7;
}

- (_TtC25NanoBedtimeBridgeSettings26HKSPSelectableSubtitleCell)initWithCoder:(id)a3
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
  v5 = a3;
  v6 = [(HKSPSelectableSubtitleCell *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end