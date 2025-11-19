@interface NSPointerArray(ARAdditions)
- (uint64_t)ar_compactZeroedWeakPointers;
@end

@implementation NSPointerArray(ARAdditions)

- (uint64_t)ar_compactZeroedWeakPointers
{
  [a1 addPointer:0];

  return [a1 compact];
}

@end