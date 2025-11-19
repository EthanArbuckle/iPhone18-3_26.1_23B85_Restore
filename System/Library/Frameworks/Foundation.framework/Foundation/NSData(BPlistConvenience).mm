@interface NSData(BPlistConvenience)
- (uint64_t)_getBPlistMarker:()BPlistConvenience offset:trailer:;
@end

@implementation NSData(BPlistConvenience)

- (uint64_t)_getBPlistMarker:()BPlistConvenience offset:trailer:
{
  [a1 bytes];
  [a1 length];

  return __CFBinaryPlistGetTopLevelInfo();
}

@end