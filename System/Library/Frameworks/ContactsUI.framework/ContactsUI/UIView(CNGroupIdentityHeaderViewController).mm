@interface UIView(CNGroupIdentityHeaderViewController)
- (void)addBackgroundVisualEffectView:()CNGroupIdentityHeaderViewController withCornerRadius:;
@end

@implementation UIView(CNGroupIdentityHeaderViewController)

- (void)addBackgroundVisualEffectView:()CNGroupIdentityHeaderViewController withCornerRadius:
{
  v8 = a4;
  [v8 setAutoresizingMask:18];
  [self bounds];
  [v8 setFrame:?];
  layer = [v8 layer];
  [layer setCornerRadius:a2];

  layer2 = [v8 layer];
  [layer2 setMasksToBounds:1];

  [self addSubview:v8];
  [self sendSubviewToBack:v8];
}

@end