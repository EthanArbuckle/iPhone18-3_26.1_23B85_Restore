@interface _LTBlockBasedInterruptionHandler
- (void)didReceiveInterruptionFromHandler:(id)handler;
@end

@implementation _LTBlockBasedInterruptionHandler

- (void)didReceiveInterruptionFromHandler:(id)handler
{
  handler = [(_LTBlockBasedInterruptionHandler *)self handler];

  if (handler)
  {
    handler2 = [(_LTBlockBasedInterruptionHandler *)self handler];
    handler2[2]();
  }
}

@end