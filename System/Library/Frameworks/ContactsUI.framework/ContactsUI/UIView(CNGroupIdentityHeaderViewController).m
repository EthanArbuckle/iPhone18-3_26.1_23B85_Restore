@interface UIView(CNGroupIdentityHeaderViewController)
- (void)addBackgroundVisualEffectView:()CNGroupIdentityHeaderViewController withCornerRadius:;
@end

@implementation UIView(CNGroupIdentityHeaderViewController)

- (void)addBackgroundVisualEffectView:()CNGroupIdentityHeaderViewController withCornerRadius:
{
  v8 = a4;
  [v8 setAutoresizingMask:18];
  [a1 bounds];
  [v8 setFrame:?];
  v6 = [v8 layer];
  [v6 setCornerRadius:a2];

  v7 = [v8 layer];
  [v7 setMasksToBounds:1];

  [a1 addSubview:v8];
  [a1 sendSubviewToBack:v8];
}

@end