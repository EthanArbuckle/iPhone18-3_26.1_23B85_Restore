@interface VisitHistoryUIDatePickerWrapper.DatePickerChangeListener
- (_TtCV4Maps31VisitHistoryUIDatePickerWrapper24DatePickerChangeListener)init;
- (void)handleDatePickerValueChangedWithSender:(id)sender;
@end

@implementation VisitHistoryUIDatePickerWrapper.DatePickerChangeListener

- (void)handleDatePickerValueChangedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1003742F4(senderCopy);
}

- (_TtCV4Maps31VisitHistoryUIDatePickerWrapper24DatePickerChangeListener)init
{
  ObjectType = swift_getObjectType();
  v4 = (&self->super.isa + OBJC_IVAR____TtCV4Maps31VisitHistoryUIDatePickerWrapper24DatePickerChangeListener_onDateChanged);
  *v4 = 0;
  v4[1] = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(VisitHistoryUIDatePickerWrapper.DatePickerChangeListener *)&v6 init];
}

@end