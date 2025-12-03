@interface DraggingMonitor
- (void)_displayLinkFired:(id)fired;
@end

@implementation DraggingMonitor

- (void)_displayLinkFired:(id)fired
{
  v3 = *self->buttonsModel;
  if (v3)
  {
    firedCopy = fired;

    v5 = v3;
    GlanceModel.displayLinkFired(_:scrollDelta:updateDebounce:)();
  }
}

@end