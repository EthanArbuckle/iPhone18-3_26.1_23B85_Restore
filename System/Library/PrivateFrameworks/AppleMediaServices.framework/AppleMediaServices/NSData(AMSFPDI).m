@interface NSData(AMSFPDI)
+ (id)ams_createDataWithFPDIResult:()AMSFPDI length:;
@end

@implementation NSData(AMSFPDI)

+ (id)ams_createDataWithFPDIResult:()AMSFPDI length:
{
  if (a4)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:a3 length:a4 deallocator:&__block_literal_global_53];
  }

  else
  {
    v4 = [MEMORY[0x1E695DEF0] data];
  }

  return v4;
}

@end