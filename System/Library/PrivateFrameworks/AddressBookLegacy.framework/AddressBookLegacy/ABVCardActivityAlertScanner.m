@interface ABVCardActivityAlertScanner
+ (BOOL)characterIsStringValueCharacter:(unsigned __int16)a3;
+ (id)scanAlertValueFromString:(id)a3;
+ (id)scannerWithString:(id)a3;
- (ABVCardActivityAlertScanner)initWithString:(id)a3;
- (BOOL)scanPastCharacter:(unsigned __int16)a3;
- (id)scanAlertValue;
- (id)scanKeyValuePair;
- (id)scanQuotedStringValue;
- (id)scanStringValue;
- (id)scanUnquotedStringValue;
- (unsigned)nextCharacter;
- (unsigned)nextUnescapedCharacter;
- (unsigned)scanCharacterWithEscaping:(BOOL)a3;
- (void)dealloc;
- (void)scanPastWhitespace;
@end

@implementation ABVCardActivityAlertScanner

+ (id)scanAlertValueFromString:(id)a3
{
  v3 = [a1 scannerWithString:a3];

  return [v3 scanAlertValue];
}

+ (id)scannerWithString:(id)a3
{
  v3 = [[a1 alloc] initWithString:a3];

  return v3;
}

- (ABVCardActivityAlertScanner)initWithString:(id)a3
{
  v6.receiver = self;
  v6.super_class = ABVCardActivityAlertScanner;
  v4 = [(ABVCardActivityAlertScanner *)&v6 init];
  if (v4)
  {
    v4->_string = [a3 copy];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  do
  {
    [v3 addEntriesFromDictionary:{-[ABVCardActivityAlertScanner scanKeyValuePair](self, "scanKeyValuePair")}];
  }

  while ([(ABVCardActivityAlertScanner *)self scanPastItemDelimiter]);
  return v3;
}

- (id)scanKeyValuePair
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [(ABVCardActivityAlertScanner *)self scanStringValue];
  [(ABVCardActivityAlertScanner *)self scanPastKeyValueSeparator];
  v4 = [(ABVCardActivityAlertScanner *)self scanStringValue];
  if (!v3)
  {
    return 0;
  }

  v5 = v4;
  v6 = [v3 isEqualToString:&stru_1F2FE2718];
  result = 0;
  if ((v6 & 1) == 0 && v5)
  {
    if ([v5 isEqualToString:&stru_1F2FE2718])
    {
      return 0;
    }

    v8 = v3;
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
  v3 = [MEMORY[0x1E696AD60] string];
  if (![(ABVCardActivityAlertScanner *)self atEnd])
  {
    do
    {
      if (![objc_opt_class() characterIsStringValueCharacter:{-[ABVCardActivityAlertScanner nextCharacter](self, "nextCharacter")}])
      {
        break;
      }

      [v3 appendFormat:@"%c", -[ABVCardActivityAlertScanner scanCharacter](self, "scanCharacter")];
    }

    while (![(ABVCardActivityAlertScanner *)self atEnd]);
  }

  if (!v3 || [v3 isEqualToString:&stru_1F2FE2718])
  {
    return 0;
  }

  return v3;
}

- (id)scanQuotedStringValue
{
  [(ABVCardActivityAlertScanner *)self scanCharacter];
  v3 = [MEMORY[0x1E696AD60] string];
  if (![(ABVCardActivityAlertScanner *)self atEnd])
  {
    do
    {
      if ([(ABVCardActivityAlertScanner *)self nextUnescapedCharacter]== 34)
      {
        break;
      }

      [v3 appendFormat:@"%c", -[ABVCardActivityAlertScanner scanCharacter](self, "scanCharacter")];
    }

    while (![(ABVCardActivityAlertScanner *)self atEnd]);
  }

  [(ABVCardActivityAlertScanner *)self scanCharacter];
  return v3;
}

+ (BOOL)characterIsStringValueCharacter:(unsigned __int16)a3
{
  v3 = a3;
  if ([objc_msgSend(MEMORY[0x1E696AB08] "whitespaceCharacterSet")])
  {
    return 0;
  }

  return v3 != 61 && v3 != 44;
}

- (unsigned)scanCharacterWithEscaping:(BOOL)a3
{
  v3 = a3;
  if ([(ABVCardActivityAlertScanner *)self atEnd])
  {
    LOWORD(v5) = 0;
  }

  else
  {
    string = self->_string;
    ++self->_position;
    v5 = [(NSString *)string characterAtIndex:?];
    if (v5 == 92 && v3)
    {

      LOWORD(v5) = [(ABVCardActivityAlertScanner *)self scanCharacterWithEscaping:0];
    }
  }

  return v5;
}

- (BOOL)scanPastCharacter:(unsigned __int16)a3
{
  v3 = a3;
  [(ABVCardActivityAlertScanner *)self scanPastWhitespace];
  position = self->_position;
  v6 = [(ABVCardActivityAlertScanner *)self scanCharacter];
  if (v6 == v3)
  {
    [(ABVCardActivityAlertScanner *)self scanPastWhitespace];
  }

  else
  {
    self->_position = position;
  }

  return v6 == v3;
}

- (void)scanPastWhitespace
{
  v3 = [(ABVCardActivityAlertScanner *)self nextCharacter];
  if (v3)
  {
    v4 = v3;
    do
    {
      if (![objc_msgSend(MEMORY[0x1E696AB08] "whitespaceCharacterSet")])
      {
        break;
      }

      [(ABVCardActivityAlertScanner *)self scanCharacter];
      v5 = [(ABVCardActivityAlertScanner *)self nextCharacter];
      v4 = v5;
    }

    while (v5);
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