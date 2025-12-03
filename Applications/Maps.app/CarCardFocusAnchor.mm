@interface CarCardFocusAnchor
- (BOOL)canBecomeFocused;
@end

@implementation CarCardFocusAnchor

- (BOOL)canBecomeFocused
{
  canBecomeFocusedHandler = [(CarCardFocusAnchor *)self canBecomeFocusedHandler];
  v3 = canBecomeFocusedHandler[2]();

  return v3;
}

@end