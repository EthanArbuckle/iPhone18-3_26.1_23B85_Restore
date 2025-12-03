@interface CarouselPageControl.Coordinator
- (_TtCV17AppleVisionProApp19CarouselPageControl11Coordinator)init;
- (void)changed:(id)changed;
@end

@implementation CarouselPageControl.Coordinator

- (void)changed:(id)changed
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtCV17AppleVisionProApp19CarouselPageControl11Coordinator_currentPage);
  v6 = *&self->currentPage[OBJC_IVAR____TtCV17AppleVisionProApp19CarouselPageControl11Coordinator_currentPage];
  v7 = *&self->currentPage[OBJC_IVAR____TtCV17AppleVisionProApp19CarouselPageControl11Coordinator_currentPage + 8];

  changedCopy = changed;
  selfCopy = self;
  [changedCopy currentPage];
  sub_100002BE4(&qword_10016D198, &qword_100113558);
  Binding.wrappedValue.setter();
}

- (_TtCV17AppleVisionProApp19CarouselPageControl11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end