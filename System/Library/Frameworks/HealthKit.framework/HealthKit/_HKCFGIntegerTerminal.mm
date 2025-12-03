@interface _HKCFGIntegerTerminal
- (BOOL)_scanValue:(id *)value withScanner:(id)scanner;
- (id)characterSet;
@end

@implementation _HKCFGIntegerTerminal

- (BOOL)_scanValue:(id *)value withScanner:(id)scanner
{
  v9 = 0;
  v6 = [scanner scanInteger:&v9];
  if (v6)
  {
    condition = self->_condition;
    if (!condition || (v6 = condition[2](condition, v9)) != 0)
    {
      *value = [MEMORY[0x1E696AD98] numberWithInteger:v9];
      LOBYTE(v6) = 1;
    }
  }

  return v6;
}

- (id)characterSet
{
  decimalDigitCharacterSet = [MEMORY[0x1E696AD48] decimalDigitCharacterSet];
  [decimalDigitCharacterSet addCharactersInString:@"+-"];

  return decimalDigitCharacterSet;
}

@end