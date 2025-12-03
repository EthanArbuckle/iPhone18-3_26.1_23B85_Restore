@interface SleepApneaOnboardingSetupCompleteAnimatedSymbolView
- (CGSize)intrinsicContentSize;
- (_TtC20SleepHealthAppPluginP33_31BB715BF67FD8DC8AF8C4FEE67A753351SleepApneaOnboardingSetupCompleteAnimatedSymbolView)initWithCoder:(id)coder;
- (_TtC20SleepHealthAppPluginP33_31BB715BF67FD8DC8AF8C4FEE67A753351SleepApneaOnboardingSetupCompleteAnimatedSymbolView)initWithFrame:(CGRect)frame;
@end

@implementation SleepApneaOnboardingSetupCompleteAnimatedSymbolView

- (_TtC20SleepHealthAppPluginP33_31BB715BF67FD8DC8AF8C4FEE67A753351SleepApneaOnboardingSetupCompleteAnimatedSymbolView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_29E696EC0(x, y, width, height);

  return v7;
}

- (_TtC20SleepHealthAppPluginP33_31BB715BF67FD8DC8AF8C4FEE67A753351SleepApneaOnboardingSetupCompleteAnimatedSymbolView)initWithCoder:(id)coder
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_29E6970F8(coder);

  return v4;
}

- (CGSize)intrinsicContentSize
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = 82.0;
  v3 = 82.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end