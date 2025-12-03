@interface CalendarDayCell
- (NSString)axDayLocalizedText;
- (void)applyLayoutAttributes:(id)attributes;
@end

@implementation CalendarDayCell

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  sub_29E265B40(attributesCopy);
}

- (NSString)axDayLocalizedText
{
  if (*(&self->super.super.super._constraintsExceptingSubviewAutoresizingConstraints + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_day))
  {
    sub_29E2BF404();
  }

  v2 = sub_29E2C33A4();

  return v2;
}

@end