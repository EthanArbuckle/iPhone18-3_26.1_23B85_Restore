@interface NSData
+ (BOOL)isSensitiveDataInstance:(uint64_t)a1;
+ (CFDataRef)sensitiveDataWithBytes:(CFIndex)a3 length:;
+ (CFDataRef)sensitiveDataWithData:(uint64_t)a1;
@end

@implementation NSData

+ (BOOL)isSensitiveDataInstance:(uint64_t)a1
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

+ (CFDataRef)sensitiveDataWithData:(uint64_t)a1
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

+ (CFDataRef)sensitiveDataWithBytes:(CFIndex)a3 length:
{
  objc_opt_self();
  if (!a2)
  {
    return 0;
  }

  v5 = SecCFAllocatorZeroize();

  return CFDataCreate(v5, a2, a3);
}

@end