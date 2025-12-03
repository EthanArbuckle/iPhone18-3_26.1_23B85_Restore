@interface NSMutableArray
- (void)moveFirstObjectToLast;
- (void)moveLastObjectToFirst;
- (void)shuffle;
@end

@implementation NSMutableArray

- (void)moveFirstObjectToLast
{
  if ([(NSMutableArray *)self count])
  {
    v3 = [(NSMutableArray *)self objectAtIndex:0];
    [(NSMutableArray *)self removeObjectAtIndex:0];
    [(NSMutableArray *)self addObject:v3];
  }
}

- (void)moveLastObjectToFirst
{
  if ([(NSMutableArray *)self count])
  {
    lastObject = [(NSMutableArray *)self lastObject];
    [(NSMutableArray *)self removeLastObject];
    [(NSMutableArray *)self insertObject:lastObject atIndex:0];
  }
}

- (void)shuffle
{
  v3 = [(NSMutableArray *)self count];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      [(NSMutableArray *)self exchangeObjectAtIndex:i withObjectAtIndex:arc4random() % (i + 1)];
    }
  }
}

@end