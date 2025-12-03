@interface DeliveryAccount
+ (BOOL)validateValue:(id)value forPSSpecifier:(id)specifier;
- (void)setPortNumberString:(id)string;
@end

@implementation DeliveryAccount

- (void)setPortNumberString:(id)string
{
  stringCopy = string;
  -[DeliveryAccount setPortNumber:](self, "setPortNumber:", [stringCopy intValue]);
}

+ (BOOL)validateValue:(id)value forPSSpecifier:(id)specifier
{
  valueCopy = value;
  specifierCopy = specifier;
  v7 = specifierCopy;
  if (!specifierCopy)
  {
    goto LABEL_16;
  }

  v8 = *&specifierCopy[OBJC_IVAR___PSSpecifier_setter];
  v9 = "setHostname:" == v8 || "setPortNumberString:" == v8;
  v10 = v9 || "setUsername:" == v8;
  if (!v10 && "setPassword:" != v8)
  {
    goto LABEL_16;
  }

  if (![valueCopy length])
  {
    v15 = 0;
    goto LABEL_17;
  }

  if (*&v7[OBJC_IVAR___PSSpecifier_keyboardType] == 2)
  {
    v12 = +[NSCharacterSet decimalDigitCharacterSet];
    [valueCopy rangeOfCharacterFromSet:v12];
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