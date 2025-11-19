@interface _LTBlockBasedInterruptionHandler
- (void)didReceiveInterruptionFromHandler:(id)a3;
@end

@implementation _LTBlockBasedInterruptionHandler

- (void)didReceiveInterruptionFromHandler:(id)a3
{
  v4 = [(_LTBlockBasedInterruptionHandler *)self handler];

  if (v4)
  {
    v5 = [(_LTBlockBasedInterruptionHandler *)self handler];
    v5[2]();
  }
}

@end