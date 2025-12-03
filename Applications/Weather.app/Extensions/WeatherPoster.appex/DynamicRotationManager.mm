@interface DynamicRotationManager
- (void)displayLinkFired:(id)fired;
@end

@implementation DynamicRotationManager

- (void)displayLinkFired:(id)fired
{
  firedCopy = fired;

  sub_10002EC68(firedCopy);
}

@end