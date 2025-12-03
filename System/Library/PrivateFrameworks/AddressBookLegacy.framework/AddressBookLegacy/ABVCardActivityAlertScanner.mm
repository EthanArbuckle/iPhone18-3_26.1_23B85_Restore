@interface ABVCardActivityAlertScanner
+ (BOOL)characterIsStringValueCharacter:(unsigned __int16)character;
+ (id)scanAlertValueFromString:(id)string;
+ (id)scannerWithString:(id)string;
- (ABVCardActivityAlertScanner)initWithString:(id)string;
- (BOOL)scanPastCharacter:(unsigned __int16)character;
- (id)scanAlertValue;
- (id)scanKeyValuePair;
- (id)scanQuotedStringValue;
- (id)scanStringValue;
- (id)scanUnquotedStringValue;
- (unsigned)nextCharacter;
- (unsigned)nextUnescapedCharacter;
- (unsigned)scanCharacterWithEscaping:(BOOL)escaping;
- (void)dealloc;
- (void)scanPastWhitespace;
@end

@implementation ABVCardActivityAlertScanner

+ (id)scanAlertValueFromString:(id)string
{
  v3 = [self scannerWithString:string];

  return [v3 scanAlertValue];
}

+ (id)scannerWithString:(id)string
{
  v3 = [[self alloc] initWithString:string];

  return v3;
}

- (ABVCardActivityAlertScanner)initWithString:(id)string
{
  v6.receiver = self;
  v6.super_class = ABVCardActivityAlertScanner;
  v4 = [(ABVCardActivityAlertScanner *)&v6 init];
  if (v4)
  {
    v4->_string = [string copy];
    v4->_position = 0;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ABVCardActivityAlertScanner;
  [(ABVCardActivityAlertScanner *)&v3 dealloc];
}

- (id)scanAlertValue
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  do
  {
    [dictionary addEntriesFromDictionary:{-[ABVCardActivityAlertScanner scanKeyValuePair](self, "scanKeyValuePair")}];
  }

  while ([(ABVCardActivityAlertScanner *)self scanPastItemDelimiter]);
  return dictionary;
}

- (id)scanKeyValuePair
{
  v9[1] = *MEMORY[0x1E69E9840];
  scanStringValue = [(ABVCardActivityAlertScanner *)self scanStringValue];
  [(ABVCardActivityAlertScanner *)self scanPastKeyValueSeparator];
  scanStringValue2 = [(ABVCardActivityAlertScanner *)self scanStringValue];
  if (!scanStringValue)
  {
    return 0;
  }

  v5 = scanStringValue2;
  v6 = [scanStringValue isEqualToString:&stru_1F2FE2718];
  result = 0;
  if ((v6 & 1) == 0 && v5)
  {
    if ([v5 isEqualToString:&stru_1F2FE2718])
    {
      return 0;
    }

    v8 = scanStringValue;
    v9[0] = v5;
    return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  return result;
}

- (id)scanStringValue
{
  if ([(ABVCardActivityAlertScanner *)self atEnd])
  {
    return 0;
  }

  if ([(ABVCardActivityAlertScanner *)self nextUnescapedCharacter]== 34)
  {

    return [(ABVCardActivityAlertScanner *)self scanQuotedStringValue];
  }

  else
  {

    return [(ABVCardActivityAlertScanner *)self scanUnquotedStringValue];
  }
}

- (id)scanUnquotedStringValue
{
  string = [MEMORY[0x1E696AD60] string];
  if (![(ABVCardActivityAlertScanner *)self atEnd])
  {
    do
    {
      if (![objc_opt_class() characterIsStringValueCharacter:{-[ABVCardActivityAlertScanner nextCharacter](self, "nextCharacter")}])
      {
        break;
      }

      [string appendFormat:@"%c", -[ABVCardActivityAlertScanner scanCharacter](self, "scanCharacter")];
    }

    while (![(ABVCardActivityAlertScanner *)self atEnd]);
  }

  if (!string || [string isEqualToString:&stru_1F2FE2718])
  {
    return 0;
  }

  return string;
}

- (id)scanQuotedStringValue
{
  [(ABVCardActivityAlertScanner *)self scanCharacter];
  string = [MEMORY[0x1E696AD60] string];
  if (![(ABVCardActivityAlertScanner *)self atEnd])
  {
    do
    {
      if ([(ABVCardActivityAlertScanner *)self nextUnescapedCharacter]== 34)
      {
        break;
      }

      [string appendFormat:@"%c", -[ABVCardActivityAlertScanner scanCharacter](self, "scanCharacter")];
    }

    while (![(ABVCardActivityAlertScanner *)self atEnd]);
  }

  [(ABVCardActivityAlertScanner *)self scanCharacter];
  return string;
}

+ (BOOL)characterIsStringValueCharacter:(unsigned __int16)character
{
  characterCopy = character;
  if ([objc_msgSend(MEMORY[0x1E696AB08] "whitespaceCharacterSet")])
  {
    return 0;
  }

  return characterCopy != 61 && characterCopy != 44;
}

- (unsigned)scanCharacterWithEscaping:(BOOL)escaping
{
  escapingCopy = escaping;
  if ([(ABVCardActivityAlertScanner *)self atEnd])
  {
    LOWORD(v5) = 0;
  }

  else
  {
    string = self->_string;
    ++self->_position;
    v5 = [(NSString *)string characterAtIndex:?];
    if (v5 == 92 && escapingCopy)
    {

      LOWORD(v5) = [(ABVCardActivityAlertScanner *)self scanCharacterWithEscaping:0];
    }
  }

  return v5;
}

- (BOOL)scanPastCharacter:(unsigned __int16)character
{
  characterCopy = character;
  [(ABVCardActivityAlertScanner *)self scanPastWhitespace];
  position = self->_position;
  scanCharacter = [(ABVCardActivityAlertScanner *)self scanCharacter];
  if (scanCharacter == characterCopy)
  {
    [(ABVCardActivityAlertScanner *)self scanPastWhitespace];
  }

  else
  {
    self->_position = position;
  }

  return scanCharacter == characterCopy;
}

- (void)scanPastWhitespace
{
  nextCharacter = [(ABVCardActivityAlertScanner *)self nextCharacter];
  if (nextCharacter)
  {
    v4 = nextCharacter;
    do
    {
      if (![objc_msgSend(MEMORY[0x1E696AB08] "whitespaceCharacterSet")])
      {
        break;
      }

      [(ABVCardActivityAlertScanner *)self scanCharacter];
      nextCharacter2 = [(ABVCardActivityAlertScanner *)self nextCharacter];
      v4 = nextCharacter2;
    }

    while (nextCharacter2);
  }
}

- (unsigned)nextCharacter
{
  position = self->_position;
  result = [(ABVCardActivityAlertScanner *)self scanCharacter];
  self->_position = position;
  return result;
}

- (unsigned)nextUnescapedCharacter
{
  position = self->_position;
  result = [(ABVCardActivityAlertScanner *)self scanCharacterWithEscaping:0];
  self->_position = position;
  return result;
}

@end