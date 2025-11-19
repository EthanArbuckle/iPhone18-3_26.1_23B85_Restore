@interface NSPointerArray
- (void)removePointer:(void *)a3;
@end

@implementation NSPointerArray

- (void)removePointer:(void *)a3
{
  if ([(NSPointerArray *)self count])
  {
    v5 = 0;
    do
    {
      if ([(NSPointerArray *)self pointerAtIndex:v5]== a3)
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