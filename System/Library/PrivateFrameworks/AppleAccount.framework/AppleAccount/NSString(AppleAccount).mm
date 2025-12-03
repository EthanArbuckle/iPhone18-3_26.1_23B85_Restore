@interface NSString(AppleAccount)
- (__CFString)unredactedSuffixOfLength:()AppleAccount;
- (id)aa_base64String;
- (id)trim;
- (void)aa_base64String;
@end

@implementation NSString(AppleAccount)

- (id)aa_base64String
{
  v4 = [self dataUsingEncoding:4 allowLossyConversion:0];
  if (!v4)
  {
    [(NSString(AppleAccount) *)a2 aa_base64String];
  }

  v5 = [v4 base64EncodedStringWithOptions:0];

  return v5;
}

- (id)trim
{
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v3 = [self stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  return v3;
}

- (__CFString)unredactedSuffixOfLength:()AppleAccount
{
  v4 = [self substringFromIndex:{objc_msgSend(self, "length") - a3}];
  if ([v4 isEqualToString:self])
  {
    v5 = @"[REDACTED]";
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

- (void)aa_base64String
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"NSString+AppleAccount.m" lineNumber:17 description:@"Failed to get UTF8 encoding!"];
}

@end