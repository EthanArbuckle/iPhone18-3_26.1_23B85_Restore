@interface CalendarSheet.CalendarCoordinator
- (_TtCV16EventViewService13CalendarSheet19CalendarCoordinator)init;
- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4;
@end

@implementation CalendarSheet.CalendarCoordinator

- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtCV16EventViewService13CalendarSheet19CalendarCoordinator_completionHandler);
  if (v4)
  {
    v6 = self;
    v4(a4);
  }
}

- (_TtCV16EventViewService13CalendarSheet19CalendarCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end