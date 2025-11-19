@interface ActionTableViewCell
- (_TtC20SleepHealthAppPluginP33_EFFFF58C44BA26F7D9B1A18A7BE850EF19ActionTableViewCell)initWithCoder:(id)a3;
- (_TtC20SleepHealthAppPluginP33_EFFFF58C44BA26F7D9B1A18A7BE850EF19ActionTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)tintColorDidChange;
@end

@implementation ActionTableViewCell

- (_TtC20SleepHealthAppPluginP33_EFFFF58C44BA26F7D9B1A18A7BE850EF19ActionTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a4)
  {
    v5 = sub_29E7541D8();
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = sub_29E693B08(v5, v6);

  return v7;
}

- (_TtC20SleepHealthAppPluginP33_EFFFF58C44BA26F7D9B1A18A7BE850EF19ActionTableViewCell)initWithCoder:(id)a3
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_29E693190(a3);

  return v4;
}

- (void)tintColorDidChange
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = self;
  v3 = [(ActionTableViewCell *)v6 textLabel];
  if (v3)
  {
    v4 = v3;
    v5 = [(ActionTableViewCell *)v6 tintColor];
    [v4 setTextColor_];
  }

  else
  {
  }
}

@end