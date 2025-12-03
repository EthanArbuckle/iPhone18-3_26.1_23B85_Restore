@interface CalendarSheet.CalendarCoordinator
- (_TtCV16EventViewService13CalendarSheet19CalendarCoordinator)init;
- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action;
@end

@implementation CalendarSheet.CalendarCoordinator

- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtCV16EventViewService13CalendarSheet19CalendarCoordinator_completionHandler);
  if (v4)
  {
    selfCopy = self;
    v4(action);
  }
}

- (_TtCV16EventViewService13CalendarSheet19CalendarCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end