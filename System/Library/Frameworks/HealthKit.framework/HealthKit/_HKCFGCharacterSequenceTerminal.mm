@interface _HKCFGCharacterSequenceTerminal
- (BOOL)_scanValue:(id *)value withScanner:(id)scanner;
@end

@implementation _HKCFGCharacterSequenceTerminal

- (BOOL)_scanValue:(id *)value withScanner:(id)scanner
{
  characterSet = self->_characterSet;
  v9 = 0;
  v6 = [scanner scanCharactersFromSet:characterSet intoString:&v9];
  v7 = v9;
  if (v6)
  {
    v7 = v7;
    *value = v7;
  }

  return v6;
}

@end