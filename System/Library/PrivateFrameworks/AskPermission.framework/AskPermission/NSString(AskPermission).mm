@interface NSString(AskPermission)
- (id)ap_percentEncodedString;
@end

@implementation NSString(AskPermission)

- (id)ap_percentEncodedString
{
  uRLHostAllowedCharacterSet = [MEMORY[0x277CCA900] URLHostAllowedCharacterSet];
  v3 = [self stringByAddingPercentEncodingWithAllowedCharacters:uRLHostAllowedCharacterSet];

  return v3;
}

@end