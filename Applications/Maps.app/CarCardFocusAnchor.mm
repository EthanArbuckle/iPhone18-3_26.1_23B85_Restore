@interface CarCardFocusAnchor
- (BOOL)canBecomeFocused;
@end

@implementation CarCardFocusAnchor

- (BOOL)canBecomeFocused
{
  v2 = [(CarCardFocusAnchor *)self canBecomeFocusedHandler];
  v3 = v2[2]();

  return v3;
}

@end