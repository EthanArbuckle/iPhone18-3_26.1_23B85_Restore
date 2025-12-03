@interface NSPointerArray
- (void)removePointer:(void *)pointer;
@end

@implementation NSPointerArray

- (void)removePointer:(void *)pointer
{
  if ([(NSPointerArray *)self count])
  {
    v5 = 0;
    do
    {
      if ([(NSPointerArray *)self pointerAtIndex:v5]== pointer)
      {
        [(NSPointerArray *)self removePointerAtIndex:v5];
      }

      else
      {
        ++v5;
      }
    }

    while (v5 < [(NSPointerArray *)self count]);
  }
}

@end