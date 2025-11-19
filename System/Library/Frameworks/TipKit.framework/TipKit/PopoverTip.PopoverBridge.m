@interface PopoverTip.PopoverBridge
- (void)prepareForPopoverPresentation:(id)a3;
@end

@implementation PopoverTip.PopoverBridge

- (void)prepareForPopoverPresentation:(id)a3
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  sub_1A360E844(v5);
}

@end