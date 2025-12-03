@interface NSArray
- (id)safeObjectAtIndex:(unint64_t)index;
@end

@implementation NSArray

- (id)safeObjectAtIndex:(unint64_t)index
{
  if ([(NSArray *)self count]<= index)
  {
    NSLog(@"Index %lu is out of bounds for the array", index);
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self objectAtIndexedSubscript:index];
  }

  return v5;
}

@end