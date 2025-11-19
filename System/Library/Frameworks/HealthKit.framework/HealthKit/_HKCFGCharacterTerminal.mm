@interface _HKCFGCharacterTerminal
- (BOOL)_scanValue:(id *)a3 withScanner:(id)a4;
@end

@implementation _HKCFGCharacterTerminal

- (BOOL)_scanValue:(id *)a3 withScanner:(id)a4
{
  v6 = a4;
  v7 = [v6 charactersToBeSkipped];

  if (v7)
  {
    v8 = [v6 charactersToBeSkipped];
    [v6 setCharactersToBeSkipped:0];
    [v6 scanCharactersFromSet:v8 intoString:0];
    [v6 setCharactersToBeSkipped:v8];
  }

  if (([v6 isAtEnd] & 1) != 0 || (v9 = objc_msgSend(v6, "scanLocation"), objc_msgSend(v6, "string"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "characterAtIndex:", v9), v10, !-[NSCharacterSet characterIsMember:](self->_characterSet, "characterIsMember:", v11)))
  {
    v12 = 0;
  }

  else
  {
    [v6 setScanLocation:v9 + 1];
    *a3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c", v11];
    v12 = 1;
  }

  return v12;
}

@end