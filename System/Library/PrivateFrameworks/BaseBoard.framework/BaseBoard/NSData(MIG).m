@interface NSData(MIG)
+ (CFDataRef)bs_dataWithVMAllocatedBytes:()MIG length:;
- (uint64_t)bs_bytesForMIG;
- (unint64_t)bs_lengthForMIG;
@end

@implementation NSData(MIG)

- (uint64_t)bs_bytesForMIG
{
  v1 = a1;

  return [v1 bytes];
}

- (unint64_t)bs_lengthForMIG
{
  v4 = [a1 length];
  if (HIDWORD(v4))
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"NSData+MIG.m" lineNumber:39 description:{@"length is too long : %llu", v4}];
  }

  return v4;
}

+ (CFDataRef)bs_dataWithVMAllocatedBytes:()MIG length:
{
  v4 = 0;
  if (a3 && a4)
  {
    v9.version = 0;
    memset(&v9.retain, 0, 40);
    v9.info = a4;
    v9.deallocate = vmDeallocateCallback;
    v9.preferredSize = 0;
    v7 = CFAllocatorCreate(0, &v9);
    v4 = CFDataCreateWithBytesNoCopy(0, a3, a4, v7);
    CFRelease(v7);
  }

  return v4;
}

@end