@interface _BSSqliteFrozenResultRow
- (double)doubleAtIndex:(unint64_t)index;
- (int64_t)integerAtIndex:(unint64_t)index;
@end

@implementation _BSSqliteFrozenResultRow

- (int64_t)integerAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_frozenIntegers objectAtIndexedSubscript:index];
  longLongValue = [v3 longLongValue];

  return longLongValue;
}

- (double)doubleAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_frozenDoubles objectAtIndexedSubscript:index];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

@end