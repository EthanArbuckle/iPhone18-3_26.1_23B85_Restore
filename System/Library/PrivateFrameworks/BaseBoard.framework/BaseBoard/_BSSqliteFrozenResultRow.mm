@interface _BSSqliteFrozenResultRow
- (double)doubleAtIndex:(unint64_t)a3;
- (int64_t)integerAtIndex:(unint64_t)a3;
@end

@implementation _BSSqliteFrozenResultRow

- (int64_t)integerAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_frozenIntegers objectAtIndexedSubscript:a3];
  v4 = [v3 longLongValue];

  return v4;
}

- (double)doubleAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_frozenDoubles objectAtIndexedSubscript:a3];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

@end