@interface _HKCFGDoubleTerminal
- (BOOL)_scanValue:(id *)value withScanner:(id)scanner;
- (id)characterSet;
@end

@implementation _HKCFGDoubleTerminal

- (BOOL)_scanValue:(id *)value withScanner:(id)scanner
{
  v9 = 0.0;
  v6 = [scanner scanDouble:&v9];
  if (v6)
  {
    condition = self->_condition;
    if (!condition || (v6 = condition[2](v9)) != 0)
    {
      *value = [MEMORY[0x1E696AD98] numberWithDouble:v9];
      LOBYTE(v6) = 1;
    }
  }

  return v6;
}

- (id)characterSet
{
  decimalDigitCharacterSet = [MEMORY[0x1E696AD48] decimalDigitCharacterSet];
  [decimalDigitCharacterSet addCharactersInString:@"+-."];

  return decimalDigitCharacterSet;
}

@end