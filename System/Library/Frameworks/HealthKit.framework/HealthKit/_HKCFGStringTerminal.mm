@interface _HKCFGStringTerminal
- (BOOL)_scanValue:(id *)a3 withScanner:(id)a4;
- (id)characterSet;
@end

@implementation _HKCFGStringTerminal

- (BOOL)_scanValue:(id *)a3 withScanner:(id)a4
{
  v6 = a4;
  v7 = [v6 caseSensitive];
  [v6 setCaseSensitive:*(&self->super.super._isPrivate + 1)];
  v8 = *&self->_caseSensitive;
  v14 = 0;
  v9 = [v6 scanString:v8 intoString:&v14];
  v10 = v14;
  v11 = v10;
  if (v9)
  {
    v12 = v10;
    *a3 = v11;
  }

  [v6 setCaseSensitive:v7];

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
    v5 = [*&self->_caseSensitive lowercaseString];
    [v4 addCharactersInString:v5];

    v6 = [*&self->_caseSensitive uppercaseString];
    [v4 addCharactersInString:v6];
  }

  return v4;
}

@end