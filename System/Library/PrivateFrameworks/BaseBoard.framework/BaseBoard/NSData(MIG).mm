@interface NSData(MIG)
+ (CFDataRef)bs_dataWithVMAllocatedBytes:()MIG length:;
- (uint64_t)bs_bytesForMIG;
- (unint64_t)bs_lengthForMIG;
@end

@implementation NSData(MIG)

- (uint64_t)bs_bytesForMIG
{
  selfCopy = self;

  return [selfCopy bytes];
}

- (unint64_t)bs_lengthForMIG
{
  v4 = [self length];
  if (HIDWORD(v4))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSData+MIG.m" lineNumber:39 description:{@"length is too long : %llu", v4}];
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