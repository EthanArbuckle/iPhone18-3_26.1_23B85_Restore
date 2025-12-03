@interface NSPointerArray(ARAdditions)
- (uint64_t)ar_compactZeroedWeakPointers;
@end

@implementation NSPointerArray(ARAdditions)

- (uint64_t)ar_compactZeroedWeakPointers
{
  [self addPointer:0];

  return [self compact];
}

@end