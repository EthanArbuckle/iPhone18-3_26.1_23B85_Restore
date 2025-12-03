@interface NSData
+ (BOOL)isSensitiveDataInstance:(uint64_t)instance;
+ (CFDataRef)sensitiveDataWithBytes:(CFIndex)bytes length:;
+ (CFDataRef)sensitiveDataWithData:(uint64_t)data;
@end

@implementation NSData

+ (BOOL)isSensitiveDataInstance:(uint64_t)instance
{
  v2 = a2;
  objc_opt_self();
  if (v2)
  {
    v3 = CFGetAllocator(v2);
    v4 = v3 == SecCFAllocatorZeroize();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (CFDataRef)sensitiveDataWithData:(uint64_t)data
{
  v2 = a2;
  objc_opt_self();
  if (v2)
  {
    v3 = SecCFAllocatorZeroize();
    Copy = CFDataCreateCopy(v3, v2);
  }

  else
  {
    Copy = 0;
  }

  return Copy;
}

+ (CFDataRef)sensitiveDataWithBytes:(CFIndex)bytes length:
{
  objc_opt_self();
  if (!a2)
  {
    return 0;
  }

  v5 = SecCFAllocatorZeroize();

  return CFDataCreate(v5, a2, bytes);
}

@end