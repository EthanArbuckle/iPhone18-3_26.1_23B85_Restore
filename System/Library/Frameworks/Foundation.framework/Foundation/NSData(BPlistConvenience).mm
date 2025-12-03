@interface NSData(BPlistConvenience)
- (uint64_t)_getBPlistMarker:()BPlistConvenience offset:trailer:;
@end

@implementation NSData(BPlistConvenience)

- (uint64_t)_getBPlistMarker:()BPlistConvenience offset:trailer:
{
  [self bytes];
  [self length];

  return __CFBinaryPlistGetTopLevelInfo();
}

@end