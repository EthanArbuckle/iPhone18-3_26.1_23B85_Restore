@interface CycleHistorySingleCycleView
- (_TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView)initWithFrame:(CGRect)a3;
- (void)respondToContentSizeChanges;
- (void)respondToHorizontalSizeChanges;
- (void)viewModelProviderDidUpdate:(id)a3;
@end

@implementation CycleHistorySingleCycleView

- (void)respondToContentSizeChanges
{
  v2 = self;
  sub_29DFFA4A8();
}

- (void)respondToHorizontalSizeChanges
{
  v2 = self;
  sub_29DFFAE1C();
}

- (void)viewModelProviderDidUpdate:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_cycleView);
  v5 = self;
  v4 = v3;
  sub_29E1CAA78();
}

- (_TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end