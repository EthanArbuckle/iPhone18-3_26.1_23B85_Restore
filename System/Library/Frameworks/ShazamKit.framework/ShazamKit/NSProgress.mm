@interface NSProgress
- (void)shl_markIndeterminate;
@end

@implementation NSProgress

- (void)shl_markIndeterminate
{
  [(NSProgress *)self setTotalUnitCount:0];

  [(NSProgress *)self setCompletedUnitCount:0];
}

@end