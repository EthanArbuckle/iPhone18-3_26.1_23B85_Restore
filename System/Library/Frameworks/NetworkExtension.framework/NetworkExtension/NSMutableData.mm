@interface NSMutableData
+ (CFMutableDataRef)mutableSensitiveDataWithMaxCapacity:(uint64_t)capacity;
+ (__CFData)mutableSensitiveDataPrefilledWithMaxCapacity:(uint64_t)capacity;
@end

@implementation NSMutableData

+ (CFMutableDataRef)mutableSensitiveDataWithMaxCapacity:(uint64_t)capacity
{
  objc_opt_self();
  if (!a2)
  {
    return 0;
  }

  v3 = SecCFAllocatorZeroize();

  return CFDataCreateMutable(v3, a2);
}

+ (__CFData)mutableSensitiveDataPrefilledWithMaxCapacity:(uint64_t)capacity
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