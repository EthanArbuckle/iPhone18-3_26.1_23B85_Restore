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
  layer = [self layer];
  *&v3 = v2;
  [layer setOpacity:v3];
}

- (void)_lp_setShadowRadius:()LPExtras
{
  layer = [self layer];
  [layer setShadowRadius:a2];
}

- (void)_lp_setShadowOffset:()LPExtras
{
  layer = [self layer];
  [layer setShadowOffset:{a2, a3}];
}

- (void)_lp_setShadowColor:()LPExtras
{
  v6 = a3;
  cGColor = [v6 CGColor];
  layer = [self layer];
  [layer setShadowColor:cGColor];
}

- (void)_lp_setShadowOpacity:()LPExtras
{
  v2 = a2;
  layer = [self layer];
  *&v3 = v2;
  [layer setShadowOpacity:v3];
}

- (void)_lp_setCompositingFilter:()LPExtras
{
  v5 = a3;
  layer = [self layer];
  [layer setCompositingFilter:v5];
}

- (void)_lp_insertSubview:()LPExtras aboveSubview:
{
  v7 = a3;
  v6 = a4;
  if (v6)
  {
    [self insertSubview:v7 aboveSubview:v6];
  }

  else
  {
    [self addSubview:v7];
  }
}

- (void)_lp_insertSubview:()LPExtras belowSubview:
{
  v7 = a3;
  v6 = a4;
  if (v6)
  {
    [self insertSubview:v7 belowSubview:v6];
  }

  else
  {
    [self insertSubview:v7 atIndex:0];
  }
}

- (double)_lp_backingScaleFactor
{
  window = [self window];

  if (window)
  {
    window2 = [self window];
    screen = [window2 screen];
    [screen scale];
    v6 = v5;
  }

  else
  {
    window2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [window2 scale];
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

  return [self setSemanticContentAttribute:v3];
}

- (void)_lp_setCornerRadius:()LPExtras continuous:
{
  layer = [self layer];
  [layer setCornerRadius:a2];

  v7 = MEMORY[0x1E69796E8];
  if (!a4)
  {
    v7 = MEMORY[0x1E69796E0];
  }

  v8 = *v7;
  layer2 = [self layer];
  [layer2 setCornerCurve:v8];

  if (a2 != 0.0)
  {
    layer3 = [self layer];
    [layer3 setMasksToBounds:1];
  }
}

- (uint64_t)_lp_prefersDarkInterface
{
  traitCollection = [self traitCollection];
  _lp_prefersDarkInterface = [traitCollection _lp_prefersDarkInterface];

  return _lp_prefersDarkInterface;
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

  return [self setOverrideUserInterfaceStyle:v3];
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
  v7[2](v7, self, v6);
  dependentTraits = [v6 dependentTraits];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__UIView_LPExtras___lp_applyAndRegisterForUpdatesToValue_withApplyCallback___block_invoke;
  v12[3] = &unk_1E7A36358;
  v9 = v7;
  v14 = v9;
  v10 = v6;
  v13 = v10;
  v11 = [self registerForTraitChanges:dependentTraits withHandler:v12];
}

@end