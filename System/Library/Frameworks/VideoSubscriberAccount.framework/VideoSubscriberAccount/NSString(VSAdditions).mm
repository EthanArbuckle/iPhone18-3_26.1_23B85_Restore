@interface NSString(VSAdditions)
+ (__CFString)vs_trueFalseStringValueFromBool:()VSAdditions;
+ (__CFString)vs_yesNoStringValueFromBool:()VSAdditions;
+ (void)vs_localizedStringFromBool:()VSAdditions;
- (BOOL)vs_composedCharacterIsLetter;
- (BOOL)vs_composedCharacterIsWhitespace;
- (uint64_t)vs_composedCharacterIsLowercase;
- (uint64_t)vs_composedCharacterIsUppercase;
- (unint64_t)vs_unsignedLongLongValue;
@end

@implementation NSString(VSAdditions)

- (unint64_t)vs_unsignedLongLongValue
{
  uTF8String = [self UTF8String];

  return strtoull(uTF8String, 0, 0);
}

- (BOOL)vs_composedCharacterIsWhitespace
{
  if (![self length])
  {
    return 0;
  }

  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v3 = [self stringByTrimmingCharactersInSet:whitespaceCharacterSet];
  v4 = [v3 length] == 0;

  return v4;
}

- (BOOL)vs_composedCharacterIsLetter
{
  if (![self length])
  {
    return 0;
  }

  letterCharacterSet = [MEMORY[0x277CCA900] letterCharacterSet];
  v3 = [self stringByTrimmingCharactersInSet:letterCharacterSet];
  v4 = [v3 length] == 0;

  return v4;
}

- (uint64_t)vs_composedCharacterIsUppercase
{
  result = [self vs_composedCharacterIsLetter];
  if (result)
  {
    uppercaseString = [self uppercaseString];
    v4 = [self isEqualToString:uppercaseString];

    return v4;
  }

  return result;
}

- (uint64_t)vs_composedCharacterIsLowercase
{
  result = [self vs_composedCharacterIsLetter];
  if (result)
  {
    lowercaseString = [self lowercaseString];
    v4 = [self isEqualToString:lowercaseString];

    return v4;
  }

  return result;
}

+ (void)vs_localizedStringFromBool:()VSAdditions
{
  vs_frameworkBundle = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v5 = [vs_frameworkBundle localizedStringForKey:@"STRING_REPRESENTATION_OF_YES" value:0 table:0];

  vs_frameworkBundle2 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v7 = [vs_frameworkBundle2 localizedStringForKey:@"STRING_REPRESENTATION_OF_NO" value:0 table:0];

  if (a3)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;

  return v8;
}

+ (__CFString)vs_yesNoStringValueFromBool:()VSAdditions
{
  if (a3)
  {
    return @"YES";
  }

  else
  {
    return @"NO";
  }
}

+ (__CFString)vs_trueFalseStringValueFromBool:()VSAdditions
{
  if (a3)
  {
    return @"true";
  }

  else
  {
    return @"false";
  }
}

@end