@interface NSArray
- (id)safeObjectAtIndex:(unint64_t)a3;
@end

@implementation NSArray

- (id)safeObjectAtIndex:(unint64_t)a3
{
  if ([(NSArray *)self count]<= a3)
  {
    NSLog(@"Index %lu is out of bounds for the array", a3);
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self objectAtIndexedSubscript:a3];
  }

  return v5;
}

@end