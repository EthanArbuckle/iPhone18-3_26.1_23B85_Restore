@interface _HKCFGIntegerTerminal
- (BOOL)_scanValue:(id *)a3 withScanner:(id)a4;
- (id)characterSet;
@end

@implementation _HKCFGIntegerTerminal

- (BOOL)_scanValue:(id *)a3 withScanner:(id)a4
{
  v9 = 0;
  v6 = [a4 scanInteger:&v9];
  if (v6)
  {
    condition = self->_condition;
    if (!condition || (v6 = condition[2](condition, v9)) != 0)
    {
      *a3 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
      LOBYTE(v6) = 1;
    }
  }

  return v6;
}

- (id)characterSet
{
  v2 = [MEMORY[0x1E696AD48] decimalDigitCharacterSet];
  [v2 addCharactersInString:@"+-"];

  return v2;
}

@end