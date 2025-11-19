@interface GAXBKAccelerometerInterfaceAccessibility
- (int64_t)processEvent:(__IOHIDEvent *)a3 sender:(id)a4 dispatcher:(id)a5;
@end

@implementation GAXBKAccelerometerInterfaceAccessibility

- (int64_t)processEvent:(__IOHIDEvent *)a3 sender:(id)a4 dispatcher:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = +[GAXBackboard sharedInstance];
  if ([v10 isActive] && !objc_msgSend(v10, "allowsMotion"))
  {
    v11 = &dword_0 + 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = GAXBKAccelerometerInterfaceAccessibility;
    v11 = [(GAXBKAccelerometerInterfaceAccessibility *)&v13 processEvent:a3 sender:v8 dispatcher:v9];
  }

  return v11;
}

@end