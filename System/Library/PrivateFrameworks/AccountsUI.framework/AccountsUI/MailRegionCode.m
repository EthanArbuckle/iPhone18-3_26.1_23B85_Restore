@interface MailRegionCode
@end

@implementation MailRegionCode

uint64_t ____MailRegionCode_block_invoke()
{
  v0 = CPGetDeviceRegionCode();
  v1 = __MailRegionCode__regionCode;
  __MailRegionCode__regionCode = v0;
  return MEMORY[0x277D82BD8](v1);
}

@end