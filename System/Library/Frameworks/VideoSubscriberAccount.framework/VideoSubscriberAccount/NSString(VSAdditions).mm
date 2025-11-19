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
  v1 = [a1 UTF8String];

  return strtoull(v1, 0, 0);
}

- (BOOL)vs_composedCharacterIsWhitespace
{
  if (![a1 length])
  {
    return 0;
  }

  v2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v3 = [a1 stringByTrimmingCharactersInSet:v2];
  v4 = [v3 length] == 0;

  return v4;
}

- (BOOL)vs_composedCharacterIsLetter
{
  if (![a1 length])
  {
    return 0;
  }

  v2 = [MEMORY[0x277CCA900] letterCharacterSet];
  v3 = [a1 stringByTrimmingCharactersInSet:v2];
  v4 = [v3 length] == 0;

  return v4;
}

- (uint64_t)vs_composedCharacterIsUppercase
{
  result = [a1 vs_composedCharacterIsLetter];
  if (result)
  {
    v3 = [a1 uppercaseString];
    v4 = [a1 isEqualToString:v3];

    return v4;
  }

  return result;
}

- (uint64_t)vs_composedCharacterIsLowercase
{
  result = [a1 vs_composedCharacterIsLetter];
  if (result)
  {
    v3 = [a1 lowercaseString];
    v4 = [a1 isEqualToString:v3];

    return v4;
  }

  return result;
}

+ (void)vs_localizedStringFromBool:()VSAdditions
{
  v4 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v5 = [v4 localizedStringForKey:@"STRING_REPRESENTATION_OF_YES" value:0 table:0];

  v6 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v7 = [v6 localizedStringForKey:@"STRING_REPRESENTATION_OF_NO" value:0 table:0];

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