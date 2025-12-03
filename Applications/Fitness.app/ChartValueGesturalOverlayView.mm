@interface ChartValueGesturalOverlayView
- (void)gestureDidChangeWithSender:(id)sender;
@end

@implementation ChartValueGesturalOverlayView

- (void)gestureDidChangeWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_100649E38(senderCopy);
}

@end