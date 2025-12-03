@interface PKColorMatrixViewPoint
+ (id)pointWithRow:(int64_t)row col:(int64_t)col;
- (PKColorMatrixViewPoint)initWithRow:(int64_t)row col:(int64_t)col;
@end

@implementation PKColorMatrixViewPoint

- (PKColorMatrixViewPoint)initWithRow:(int64_t)row col:(int64_t)col
{
  v7.receiver = self;
  v7.super_class = PKColorMatrixViewPoint;
  result = [(PKColorMatrixViewPoint *)&v7 init];
  result->_row = row;
  result->_col = col;
  return result;
}

+ (id)pointWithRow:(int64_t)row col:(int64_t)col
{
  v4 = [[self alloc] initWithRow:row col:col];

  return v4;
}

@end