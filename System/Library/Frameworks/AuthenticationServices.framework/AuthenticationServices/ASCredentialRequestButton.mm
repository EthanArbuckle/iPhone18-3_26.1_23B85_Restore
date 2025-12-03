@interface ASCredentialRequestButton
- (void)addTarget:(id)target action:(SEL)action;
@end

@implementation ASCredentialRequestButton

- (void)addTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  [(ASCredentialRequestButton *)self removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];
  [(ASCredentialRequestButton *)self addTarget:targetCopy action:action forControlEvents:64];
}

@end