@interface EndDateTableViewCell
- (_TtC24MenstrualCyclesAppPlugin20EndDateTableViewCell)initWithCoder:(id)coder;
- (_TtC24MenstrualCyclesAppPlugin20EndDateTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)dateXButtonPressedWithSender:(id)sender event:(id)event;
@end

@implementation EndDateTableViewCell

- (void)dateXButtonPressedWithSender:(id)sender event:(id)event
{
  senderCopy = sender;
  eventCopy = event;
  selfCopy = self;
  sub_29DF5C9D4();
}

- (_TtC24MenstrualCyclesAppPlugin20EndDateTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_29DF5C528(style, identifier, v6);
}

- (_TtC24MenstrualCyclesAppPlugin20EndDateTableViewCell)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20EndDateTableViewCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20EndDateTableViewCell_delegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20EndDateTableViewCell____lazy_storage___xMarkButton) = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

@end