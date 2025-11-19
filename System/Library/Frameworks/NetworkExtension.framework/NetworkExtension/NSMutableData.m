@interface NSMutableData
+ (CFMutableDataRef)mutableSensitiveDataWithMaxCapacity:(uint64_t)a1;
+ (__CFData)mutableSensitiveDataPrefilledWithMaxCapacity:(uint64_t)a1;
@end

@implementation NSMutableData

+ (CFMutableDataRef)mutableSensitiveDataWithMaxCapacity:(uint64_t)a1
{
  objc_opt_self();
  if (!a2)
  {
    return 0;
  }

  v3 = SecCFAllocatorZeroize();

  return CFDataCreateMutable(v3, a2);
}

+ (__CFData)mutableSensitiveDataPrefilledWithMaxCapacity:(uint64_t)a1
{
  objc_opt_self();
  if (!a2)
  {
    return 0;
  }

  v3 = SecCFAllocatorZeroize();
  Mutable = CFDataCreateMutable(v3, a2);
  v5 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, a2);
  }

  return v5;
}

@end