@interface GAXBKAccelerometerInterfaceAccessibility
- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher;
@end

@implementation GAXBKAccelerometerInterfaceAccessibility

- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher
{
  senderCopy = sender;
  dispatcherCopy = dispatcher;
  v10 = +[GAXBackboard sharedInstance];
  if ([v10 isActive] && !objc_msgSend(v10, "allowsMotion"))
  {
    v11 = &dword_0 + 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = GAXBKAccelerometerInterfaceAccessibility;
    v11 = [(GAXBKAccelerometerInterfaceAccessibility *)&v13 processEvent:event sender:senderCopy dispatcher:dispatcherCopy];
  }

  return v11;
}

@end