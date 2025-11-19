@interface NSMutableData(ABCMutableDataAdditions)
- (uint64_t)abAppendString:()ABCMutableDataAdditions;
@end

@implementation NSMutableData(ABCMutableDataAdditions)

- (uint64_t)abAppendString:()ABCMutableDataAdditions
{
  v4 = [a3 dataUsingEncoding:1];

  return [a1 appendData:v4];
}

@end