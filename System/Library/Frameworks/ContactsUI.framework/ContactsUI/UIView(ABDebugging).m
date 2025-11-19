@interface UIView(ABDebugging)
- (id)tintColorOverride;
- (id)tintColorOverrideDarkened;
- (void)abSetLayoutDebuggingColor:()ABDebugging;
@end

@implementation UIView(ABDebugging)

- (id)tintColorOverrideDarkened
{
  v1 = [a1 tintColorOverride];
  v7 = 0.0;
  v8 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  if ([v1 getHue:&v8 saturation:&v7 brightness:&v6 alpha:&v5])
  {
    v2 = [MEMORY[0x1E69DC888] colorWithHue:v8 saturation:v7 brightness:v6 * 0.75 alpha:v5];
  }

  else
  {
    v2 = v1;
  }

  v3 = v2;

  return v3;
}

- (id)tintColorOverride
{
  v2 = +[CNContactStyle currentStyle];
  v3 = [v2 tintColorOverride];

  if (!v3)
  {
    v3 = [a1 tintColor];
  }

  return v3;
}

- (void)abSetLayoutDebuggingColor:()ABDebugging
{
  v5 = a3;
  v6 = a3;
  v7 = [v6 CGColor];
  v8 = [a1 layer];
  [v8 setBorderColor:v7];

  v9 = [a1 layer];
  [v9 setBorderWidth:1.0];

  v13 = [v6 colorWithAlphaComponent:0.25];

  v10 = v13;
  v11 = [v13 CGColor];
  v12 = [a1 layer];
  [v12 setBackgroundColor:v11];
}

@end