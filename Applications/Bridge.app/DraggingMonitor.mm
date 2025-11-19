@interface DraggingMonitor
- (void)_displayLinkFired:(id)a3;
@end

@implementation DraggingMonitor

- (void)_displayLinkFired:(id)a3
{
  v3 = *self->buttonsModel;
  if (v3)
  {
    v4 = a3;

    v5 = v3;
    GlanceModel.displayLinkFired(_:scrollDelta:updateDebounce:)();
  }
}

@end