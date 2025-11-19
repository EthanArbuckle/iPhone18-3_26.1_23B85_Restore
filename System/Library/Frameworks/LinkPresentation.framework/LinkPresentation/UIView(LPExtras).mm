@interface UIView(LPExtras)
+ (LPFlippedView)_lp_createFlippedView;
- (double)_lp_backingScaleFactor;
- (uint64_t)_lp_prefersDarkInterface;
- (uint64_t)_lp_setForceLTR:()LPExtras;
- (uint64_t)_lp_setUserInterfaceStyle:()LPExtras;
- (void)_lp_applyAndRegisterForUpdatesToValue:()LPExtras withApplyCallback:;
- (void)_lp_insertSubview:()LPExtras aboveSubview:;
- (void)_lp_insertSubview:()LPExtras belowSubview:;
- (void)_lp_setCompositingFilter:()LPExtras;
- (void)_lp_setCornerRadius:()LPExtras continuous:;
- (void)_lp_setOpacity:()LPExtras;
- (void)_lp_setShadowColor:()LPExtras;
- (void)_lp_setShadowOffset:()LPExtras;
- (void)_lp_setShadowOpacity:()LPExtras;
- (void)_lp_setShadowRadius:()LPExtras;
@end

@implementation UIView(LPExtras)

- (void)_lp_setOpacity:()LPExtras
{
  v2 = a2;
  v4 = [a1 layer];
  *&v3 = v2;
  [v4 setOpacity:v3];
}

- (void)_lp_setShadowRadius:()LPExtras
{
  v3 = [a1 layer];
  [v3 setShadowRadius:a2];
}

- (void)_lp_setShadowOffset:()LPExtras
{
  v5 = [a1 layer];
  [v5 setShadowOffset:{a2, a3}];
}

- (void)_lp_setShadowColor:()LPExtras
{
  v6 = a3;
  v4 = [v6 CGColor];
  v5 = [a1 layer];
  [v5 setShadowColor:v4];
}

- (void)_lp_setShadowOpacity:()LPExtras
{
  v2 = a2;
  v4 = [a1 layer];
  *&v3 = v2;
  [v4 setShadowOpacity:v3];
}

- (void)_lp_setCompositingFilter:()LPExtras
{
  v5 = a3;
  v4 = [a1 layer];
  [v4 setCompositingFilter:v5];
}

- (void)_lp_insertSubview:()LPExtras aboveSubview:
{
  v7 = a3;
  v6 = a4;
  if (v6)
  {
    [a1 insertSubview:v7 aboveSubview:v6];
  }

  else
  {
    [a1 addSubview:v7];
  }
}

- (void)_lp_insertSubview:()LPExtras belowSubview:
{
  v7 = a3;
  v6 = a4;
  if (v6)
  {
    [a1 insertSubview:v7 belowSubview:v6];
  }

  else
  {
    [a1 insertSubview:v7 atIndex:0];
  }
}

- (double)_lp_backingScaleFactor
{
  v2 = [a1 window];

  if (v2)
  {
    v3 = [a1 window];
    v4 = [v3 screen];
    [v4 scale];
    v6 = v5;
  }

  else
  {
    v3 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v3 scale];
    v6 = v7;
  }

  return v6;
}

- (uint64_t)_lp_setForceLTR:()LPExtras
{
  if (a3)
  {
    v3 = 3;
  }

  else
  {
    v3 = 4;
  }

  return [a1 setSemanticContentAttribute:v3];
}

- (void)_lp_setCornerRadius:()LPExtras continuous:
{
  v9 = [a1 layer];
  [v9 setCornerRadius:a2];

  v7 = MEMORY[0x1E69796E8];
  if (!a4)
  {
    v7 = MEMORY[0x1E69796E0];
  }

  v8 = *v7;
  v10 = [a1 layer];
  [v10 setCornerCurve:v8];

  if (a2 != 0.0)
  {
    v11 = [a1 layer];
    [v11 setMasksToBounds:1];
  }
}

- (uint64_t)_lp_prefersDarkInterface
{
  v1 = [a1 traitCollection];
  v2 = [v1 _lp_prefersDarkInterface];

  return v2;
}

- (uint64_t)_lp_setUserInterfaceStyle:()LPExtras
{
  if (a3 == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  return [a1 setOverrideUserInterfaceStyle:v3];
}

+ (LPFlippedView)_lp_createFlippedView
{
  v0 = objc_alloc_init(LPFlippedView);

  return v0;
}

- (void)_lp_applyAndRegisterForUpdatesToValue:()LPExtras withApplyCallback:
{
  v6 = a3;
  v7 = a4;
  v7[2](v7, a1, v6);
  v8 = [v6 dependentTraits];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__UIView_LPExtras___lp_applyAndRegisterForUpdatesToValue_withApplyCallback___block_invoke;
  v12[3] = &unk_1E7A36358;
  v9 = v7;
  v14 = v9;
  v10 = v6;
  v13 = v10;
  v11 = [a1 registerForTraitChanges:v8 withHandler:v12];
}

@end