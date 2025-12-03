@interface BCBuyButtonColorProvider
+ (id)colorsForButtonState:(unint64_t)state isDark:(BOOL)dark isEnabled:(BOOL)enabled;
@end

@implementation BCBuyButtonColorProvider

+ (id)colorsForButtonState:(unint64_t)state isDark:(BOOL)dark isEnabled:(BOOL)enabled
{
  v6 = 0;
  if (state <= 5)
  {
    if (state - 1 >= 3)
    {
      if (state == 4)
      {
        v7 = [UIColor whiteColor:4];
        v9 = +[UIColor systemOrangeColor];
        goto LABEL_14;
      }

      v7 = 0;
      if (state != 5)
      {
        goto LABEL_17;
      }

      v8 = [UIColor systemOrangeColor:5];
LABEL_9:
      v7 = v8;
      v9 = +[UIColor whiteColor];
      goto LABEL_14;
    }

LABEL_7:
    if (!dark)
    {
      v7 = +[UIColor whiteColor];
      v9 = +[UIColor blackColor];
      goto LABEL_14;
    }

    v8 = +[UIColor blackColor];
    goto LABEL_9;
  }

  if (state - 7 < 4)
  {
    goto LABEL_7;
  }

  v7 = 0;
  if (state != 6)
  {
    goto LABEL_17;
  }

  v7 = [UIColor whiteColor:6];
  v9 = +[UIColor tertiaryLabelColor];
LABEL_14:
  v6 = v9;
  if (!enabled && v7)
  {
    v10 = [UIColor colorWithWhite:1.0 alpha:0.5];

    v7 = v10;
  }

LABEL_17:
  v11 = [[BCBuyButtonColors alloc] initWithForegroundColor:v7 backgroundColor:v6];

  return v11;
}

@end