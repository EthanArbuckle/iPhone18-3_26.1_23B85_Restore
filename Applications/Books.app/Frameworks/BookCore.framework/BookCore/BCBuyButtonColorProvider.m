@interface BCBuyButtonColorProvider
+ (id)colorsForButtonState:(unint64_t)a3 isDark:(BOOL)a4 isEnabled:(BOOL)a5;
@end

@implementation BCBuyButtonColorProvider

+ (id)colorsForButtonState:(unint64_t)a3 isDark:(BOOL)a4 isEnabled:(BOOL)a5
{
  v6 = 0;
  if (a3 <= 5)
  {
    if (a3 - 1 >= 3)
    {
      if (a3 == 4)
      {
        v7 = [UIColor whiteColor:4];
        v9 = +[UIColor systemOrangeColor];
        goto LABEL_14;
      }

      v7 = 0;
      if (a3 != 5)
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
    if (!a4)
    {
      v7 = +[UIColor whiteColor];
      v9 = +[UIColor blackColor];
      goto LABEL_14;
    }

    v8 = +[UIColor blackColor];
    goto LABEL_9;
  }

  if (a3 - 7 < 4)
  {
    goto LABEL_7;
  }

  v7 = 0;
  if (a3 != 6)
  {
    goto LABEL_17;
  }

  v7 = [UIColor whiteColor:6];
  v9 = +[UIColor tertiaryLabelColor];
LABEL_14:
  v6 = v9;
  if (!a5 && v7)
  {
    v10 = [UIColor colorWithWhite:1.0 alpha:0.5];

    v7 = v10;
  }

LABEL_17:
  v11 = [[BCBuyButtonColors alloc] initWithForegroundColor:v7 backgroundColor:v6];

  return v11;
}

@end