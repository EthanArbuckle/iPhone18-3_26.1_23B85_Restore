@interface HKSPDeleteButtonCell
- (_TtC25NanoBedtimeBridgeSettings20HKSPDeleteButtonCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC25NanoBedtimeBridgeSettings20HKSPDeleteButtonCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)layoutSubviews;
@end

@implementation HKSPDeleteButtonCell

- (_TtC25NanoBedtimeBridgeSettings20HKSPDeleteButtonCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
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
    v7 = sub_116EC();
    identifier = v8;
  }

  else
  {
    v7 = 0;
  }

  specifierCopy = specifier;
  v10 = sub_3E68(v7, identifier, specifier);

  return v10;
}

- (_TtC25NanoBedtimeBridgeSettings20HKSPDeleteButtonCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  v8.receiver = self;
  v8.super_class = type metadata accessor for HKSPDeleteButtonCell();
  v6 = [(HKSPMultilinePSTableCell *)&v8 initWithStyle:0 reuseIdentifier:identifier];

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

  selfCopy = self;
  sub_204C();
}

@end