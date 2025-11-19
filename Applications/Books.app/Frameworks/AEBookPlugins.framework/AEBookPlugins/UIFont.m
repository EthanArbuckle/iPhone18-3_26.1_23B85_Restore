@interface UIFont
- (id)bkEffectiveFontForText:(id)a3;
@end

@implementation UIFont

- (id)bkEffectiveFontForText:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v10.length = [(__CFString *)v4 length];
    v10.location = 0;
    v6 = CTFontCreateForString(self, v5, v10);
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    self = v7;
  }

  v8 = self;

  return self;
}

@end