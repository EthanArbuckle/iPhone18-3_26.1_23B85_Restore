@interface NSFileHandle(FileProtection)
+ (id)fileHandleForCreatingURL:()FileProtection protection:error:;
@end

@implementation NSFileHandle(FileProtection)

+ (id)fileHandleForCreatingURL:()FileProtection protection:error:
{
  v5 = a3;
  v6 = a4;
  if ([v6 isEqual:*MEMORY[0x277CCA190]])
  {
    v7 = 1;
  }

  else if ([v6 isEqual:*MEMORY[0x277CCA198]])
  {
    v7 = 2;
  }

  else if ([v6 isEqual:*MEMORY[0x277CCA1B8]])
  {
    v7 = 4;
  }

  else
  {
    v7 = 3;
  }

  path = [v5 path];
  v9 = open_dprotected_np([path UTF8String], 2562, v7, 0, 416);

  if ((v9 & 0x80000000) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v9];
  }

  return v10;
}

@end