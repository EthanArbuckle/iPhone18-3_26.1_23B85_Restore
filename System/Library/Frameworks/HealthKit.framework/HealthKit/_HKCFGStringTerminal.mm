@interface _HKCFGStringTerminal
- (BOOL)_scanValue:(id *)value withScanner:(id)scanner;
- (id)characterSet;
@end

@implementation _HKCFGStringTerminal

- (BOOL)_scanValue:(id *)value withScanner:(id)scanner
{
  scannerCopy = scanner;
  caseSensitive = [scannerCopy caseSensitive];
  [scannerCopy setCaseSensitive:*(&self->super.super._isPrivate + 1)];
  v8 = *&self->_caseSensitive;
  v14 = 0;
  v9 = [scannerCopy scanString:v8 intoString:&v14];
  v10 = v14;
  v11 = v10;
  if (v9)
  {
    v12 = v10;
    *value = v11;
  }

  [scannerCopy setCaseSensitive:caseSensitive];

  return v9;
}

- (id)characterSet
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD48]);
  v4 = v3;
  if (*(&self->super.super._isPrivate + 1))
  {
    [v3 addCharactersInString:*&self->_caseSensitive];
  }

  else
  {
    lowercaseString = [*&self->_caseSensitive lowercaseString];
    [v4 addCharactersInString:lowercaseString];

    uppercaseString = [*&self->_caseSensitive uppercaseString];
    [v4 addCharactersInString:uppercaseString];
  }

  return v4;
}

@end