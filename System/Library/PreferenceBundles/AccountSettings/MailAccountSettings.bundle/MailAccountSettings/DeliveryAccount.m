@interface DeliveryAccount
+ (BOOL)validateValue:(id)a3 forPSSpecifier:(id)a4;
- (void)setPortNumberString:(id)a3;
@end

@implementation DeliveryAccount

- (void)setPortNumberString:(id)a3
{
  v4 = a3;
  -[DeliveryAccount setPortNumber:](self, "setPortNumber:", [v4 intValue]);
}

+ (BOOL)validateValue:(id)a3 forPSSpecifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v6)
  {
    goto LABEL_16;
  }

  v8 = *&v6[OBJC_IVAR___PSSpecifier_setter];
  v9 = "setHostname:" == v8 || "setPortNumberString:" == v8;
  v10 = v9 || "setUsername:" == v8;
  if (!v10 && "setPassword:" != v8)
  {
    goto LABEL_16;
  }

  if (![v5 length])
  {
    v15 = 0;
    goto LABEL_17;
  }

  if (*&v7[OBJC_IVAR___PSSpecifier_keyboardType] == 2)
  {
    v12 = +[NSCharacterSet decimalDigitCharacterSet];
    [v5 rangeOfCharacterFromSet:v12];
    v14 = v13;

    v15 = v14 != 0;
  }

  else
  {
LABEL_16:
    v15 = 1;
  }

LABEL_17:

  return v15;
}

@end