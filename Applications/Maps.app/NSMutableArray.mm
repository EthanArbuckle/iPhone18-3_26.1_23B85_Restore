@interface NSMutableArray
- (void)_maps_moveObjectAtIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)_maps_popToFirstContextOfClass:(Class)class;
- (void)_maps_popToLastContextOfClass:(Class)class;
- (void)addObjectIfNotNil:(id)nil;
- (void)trimToLength:(unint64_t)length;
@end

@implementation NSMutableArray

- (void)_maps_popToLastContextOfClass:(Class)class
{
  if (class)
  {
    v4 = [(NSMutableArray *)self _maps_lastContextOfClass:?];
    v5 = [(NSMutableArray *)self indexOfObject:v4];

    if (v5 != 0x7FFFFFFFFFFFFFFFLL && v5 != [(NSMutableArray *)self count]- 1)
    {
      v6 = v5 + 1;
      v7 = ([(NSMutableArray *)self count]- v6);

      [(NSMutableArray *)self removeObjectsInRange:v6, v7];
    }
  }
}

- (void)_maps_popToFirstContextOfClass:(Class)class
{
  if (class)
  {
    v4 = [(NSMutableArray *)self _maps_firstContextOfClass:?];
    v5 = [(NSMutableArray *)self indexOfObject:v4];

    if (v5 != 0x7FFFFFFFFFFFFFFFLL && v5 != [(NSMutableArray *)self count]- 1)
    {
      v6 = v5 + 1;
      v7 = ([(NSMutableArray *)self count]- v6);

      [(NSMutableArray *)self removeObjectsInRange:v6, v7];
    }
  }
}

- (void)trimToLength:(unint64_t)length
{
  if ([(NSMutableArray *)self count]> length)
  {
    v5 = [(NSMutableArray *)self count]- length;

    [(NSMutableArray *)self removeObjectsInRange:length, v5];
  }
}

- (void)addObjectIfNotNil:(id)nil
{
  if (nil)
  {
    [(NSMutableArray *)self addObject:?];
  }
}

- (void)_maps_moveObjectAtIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  if ([(NSMutableArray *)self count]<= index)
  {
    v7 = NSInvalidArgumentException;
    v8 = @"fromIndex out of bounds";
    goto LABEL_5;
  }

  if ([(NSMutableArray *)self count]- 1 < toIndex)
  {
    v7 = NSInvalidArgumentException;
    v8 = @"toIndex out of bounds";
LABEL_5:
    v9 = [NSException exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
    goto LABEL_7;
  }

  v9 = [(NSMutableArray *)self objectAtIndexedSubscript:index];
  [(NSMutableArray *)self removeObjectAtIndex:index];
  [(NSMutableArray *)self insertObject:v9 atIndex:toIndex];
LABEL_7:
}

@end