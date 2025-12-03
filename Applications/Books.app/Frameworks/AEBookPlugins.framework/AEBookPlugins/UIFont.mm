@interface UIFont
- (id)bkEffectiveFontForText:(id)text;
@end

@implementation UIFont

- (id)bkEffectiveFontForText:(id)text
{
  textCopy = text;
  v5 = textCopy;
  if (textCopy)
  {
    v10.length = [(__CFString *)textCopy length];
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

  selfCopy = self;

  return self;
}

@end