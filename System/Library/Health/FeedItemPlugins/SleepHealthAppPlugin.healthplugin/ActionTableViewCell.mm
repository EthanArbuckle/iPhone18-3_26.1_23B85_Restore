@interface ActionTableViewCell
- (_TtC20SleepHealthAppPluginP33_EFFFF58C44BA26F7D9B1A18A7BE850EF19ActionTableViewCell)initWithCoder:(id)coder;
- (_TtC20SleepHealthAppPluginP33_EFFFF58C44BA26F7D9B1A18A7BE850EF19ActionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)tintColorDidChange;
@end

@implementation ActionTableViewCell

- (_TtC20SleepHealthAppPluginP33_EFFFF58C44BA26F7D9B1A18A7BE850EF19ActionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (identifier)
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

- (_TtC20SleepHealthAppPluginP33_EFFFF58C44BA26F7D9B1A18A7BE850EF19ActionTableViewCell)initWithCoder:(id)coder
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_29E693190(coder);

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

  selfCopy = self;
  textLabel = [(ActionTableViewCell *)selfCopy textLabel];
  if (textLabel)
  {
    v4 = textLabel;
    tintColor = [(ActionTableViewCell *)selfCopy tintColor];
    [v4 setTextColor_];
  }

  else
  {
  }
}

@end