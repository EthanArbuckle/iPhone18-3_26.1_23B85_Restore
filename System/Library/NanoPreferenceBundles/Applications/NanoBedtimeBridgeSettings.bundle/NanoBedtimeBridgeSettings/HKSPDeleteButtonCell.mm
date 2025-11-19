@interface HKSPDeleteButtonCell
- (_TtC25NanoBedtimeBridgeSettings20HKSPDeleteButtonCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC25NanoBedtimeBridgeSettings20HKSPDeleteButtonCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)layoutSubviews;
@end

@implementation HKSPDeleteButtonCell

- (_TtC25NanoBedtimeBridgeSettings20HKSPDeleteButtonCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
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
    v7 = sub_116EC();
    a4 = v8;
  }

  else
  {
    v7 = 0;
  }

  v9 = a5;
  v10 = sub_3E68(v7, a4, a5);

  return v10;
}

- (_TtC25NanoBedtimeBridgeSettings20HKSPDeleteButtonCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  v8.receiver = self;
  v8.super_class = type metadata accessor for HKSPDeleteButtonCell();
  v6 = [(HKSPMultilinePSTableCell *)&v8 initWithStyle:0 reuseIdentifier:a4];

  return v6;
}

- (void)layoutSubviews
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_204C();
}

@end