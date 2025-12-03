@interface _HKCFGCharacterTerminal
- (BOOL)_scanValue:(id *)value withScanner:(id)scanner;
@end

@implementation _HKCFGCharacterTerminal

- (BOOL)_scanValue:(id *)value withScanner:(id)scanner
{
  scannerCopy = scanner;
  charactersToBeSkipped = [scannerCopy charactersToBeSkipped];

  if (charactersToBeSkipped)
  {
    charactersToBeSkipped2 = [scannerCopy charactersToBeSkipped];
    [scannerCopy setCharactersToBeSkipped:0];
    [scannerCopy scanCharactersFromSet:charactersToBeSkipped2 intoString:0];
    [scannerCopy setCharactersToBeSkipped:charactersToBeSkipped2];
  }

  if (([scannerCopy isAtEnd] & 1) != 0 || (v9 = objc_msgSend(scannerCopy, "scanLocation"), objc_msgSend(scannerCopy, "string"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "characterAtIndex:", v9), v10, !-[NSCharacterSet characterIsMember:](self->_characterSet, "characterIsMember:", v11)))
  {
    v12 = 0;
  }

  else
  {
    [scannerCopy setScanLocation:v9 + 1];
    *value = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c", v11];
    v12 = 1;
  }

  return v12;
}

@end