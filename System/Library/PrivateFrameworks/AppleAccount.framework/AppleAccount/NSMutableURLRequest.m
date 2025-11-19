@interface NSMutableURLRequest
@end

@implementation NSMutableURLRequest

void __73__NSMutableURLRequest_AppleAccount__aa_addMultiUserDeviceHeaderIfEnabled__block_invoke()
{
  v1 = MKBUserTypeDeviceMode();
  v0 = [v1 objectForKeyedSubscript:*MEMORY[0x1E69B1A10]];
  if ([v0 isEqualToString:*MEMORY[0x1E69B1A18]])
  {
    aa_addMultiUserDeviceHeaderIfEnabled_isMultiUserDevice = 1;
  }
}

@end