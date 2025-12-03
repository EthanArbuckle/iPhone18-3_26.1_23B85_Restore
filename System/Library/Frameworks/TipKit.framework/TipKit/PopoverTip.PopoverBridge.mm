@interface PopoverTip.PopoverBridge
- (void)prepareForPopoverPresentation:(id)presentation;
@end

@implementation PopoverTip.PopoverBridge

- (void)prepareForPopoverPresentation:(id)presentation
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  presentationCopy = presentation;
  selfCopy = self;
  sub_1A360E844(presentationCopy);
}

@end