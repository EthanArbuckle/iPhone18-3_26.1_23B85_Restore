@interface UTTypeIsDenylistedForBinding
@end

@implementation UTTypeIsDenylistedForBinding

void ___UTTypeIsDenylistedForBinding_block_invoke()
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.mobileconfig";
  v4[1] = @"com.apple.mobileprovision";
  v4[2] = @"public.x509-certificate";
  v4[3] = @"com.rsa.pkcs-12";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:4];
  v1 = [MEMORY[0x1E695DFD8] setWithArray:v0];
  v2 = _UTTypeIsDenylistedForBinding::denyListedTypes;
  _UTTypeIsDenylistedForBinding::denyListedTypes = v1;

  v3 = *MEMORY[0x1E69E9840];
}

@end