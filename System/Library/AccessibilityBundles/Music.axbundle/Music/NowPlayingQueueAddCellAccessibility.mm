@interface NowPlayingQueueAddCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation NowPlayingQueueAddCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = NowPlayingQueueAddCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(NowPlayingQueueAddCellAccessibility *)&v3 accessibilityTraits];
}

@end