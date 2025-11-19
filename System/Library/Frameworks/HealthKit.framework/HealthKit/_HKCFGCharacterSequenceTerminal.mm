@interface _HKCFGCharacterSequenceTerminal
- (BOOL)_scanValue:(id *)a3 withScanner:(id)a4;
@end

@implementation _HKCFGCharacterSequenceTerminal

- (BOOL)_scanValue:(id *)a3 withScanner:(id)a4
{
  characterSet = self->_characterSet;
  v9 = 0;
  v6 = [a4 scanCharactersFromSet:characterSet intoString:&v9];
  v7 = v9;
  if (v6)
  {
    v7 = v7;
    *a3 = v7;
  }

  return v6;
}

@end