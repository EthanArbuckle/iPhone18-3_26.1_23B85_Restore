@interface UIView(ABDebugging)
- (id)tintColorOverride;
- (id)tintColorOverrideDarkened;
- (void)abSetLayoutDebuggingColor:()ABDebugging;
@end

@implementation UIView(ABDebugging)

- (id)tintColorOverrideDarkened
{
  tintColorOverride = [self tintColorOverride];
  v7 = 0.0;
  v8 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  if ([tintColorOverride getHue:&v8 saturation:&v7 brightness:&v6 alpha:&v5])
  {
    v2 = [MEMORY[0x1E69DC888] colorWithHue:v8 saturation:v7 brightness:v6 * 0.75 alpha:v5];
  }

  else
  {
    v2 = tintColorOverride;
  }

  v3 = v2;

  return v3;
}

- (id)tintColorOverride
{
  v2 = +[CNContactStyle currentStyle];
  tintColorOverride = [v2 tintColorOverride];

  if (!tintColorOverride)
  {
    tintColorOverride = [self tintColor];
  }

  return tintColorOverride;
}

- (void)abSetLayoutDebuggingColor:()ABDebugging
{
  v5 = a3;
  v6 = a3;
  cGColor = [v6 CGColor];
  layer = [self layer];
  [layer setBorderColor:cGColor];

  layer2 = [self layer];
  [layer2 setBorderWidth:1.0];

  v13 = [v6 colorWithAlphaComponent:0.25];

  v10 = v13;
  cGColor2 = [v13 CGColor];
  layer3 = [self layer];
  [layer3 setBackgroundColor:cGColor2];
}

@end