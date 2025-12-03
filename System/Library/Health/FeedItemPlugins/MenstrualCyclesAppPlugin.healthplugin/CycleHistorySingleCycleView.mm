@interface CycleHistorySingleCycleView
- (_TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView)initWithFrame:(CGRect)frame;
- (void)respondToContentSizeChanges;
- (void)respondToHorizontalSizeChanges;
- (void)viewModelProviderDidUpdate:(id)update;
@end

@implementation CycleHistorySingleCycleView

- (void)respondToContentSizeChanges
{
  selfCopy = self;
  sub_29DFFA4A8();
}

- (void)respondToHorizontalSizeChanges
{
  selfCopy = self;
  sub_29DFFAE1C();
}

- (void)viewModelProviderDidUpdate:(id)update
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_cycleView);
  selfCopy = self;
  v4 = v3;
  sub_29E1CAA78();
}

- (_TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end