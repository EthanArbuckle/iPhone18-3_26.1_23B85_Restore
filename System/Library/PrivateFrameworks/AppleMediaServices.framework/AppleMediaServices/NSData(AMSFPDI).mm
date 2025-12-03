@interface NSData(AMSFPDI)
+ (id)ams_createDataWithFPDIResult:()AMSFPDI length:;
@end

@implementation NSData(AMSFPDI)

+ (id)ams_createDataWithFPDIResult:()AMSFPDI length:
{
  if (a4)
  {
    data = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:a3 length:a4 deallocator:&__block_literal_global_53];
  }

  else
  {
    data = [MEMORY[0x1E695DEF0] data];
  }

  return data;
}

@end