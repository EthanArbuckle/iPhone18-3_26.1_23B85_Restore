@interface NSString(AskPermission)
- (id)ap_percentEncodedString;
@end

@implementation NSString(AskPermission)

- (id)ap_percentEncodedString
{
  v2 = [MEMORY[0x277CCA900] URLHostAllowedCharacterSet];
  v3 = [a1 stringByAddingPercentEncodingWithAllowedCharacters:v2];

  return v3;
}

@end