@interface PKColorMatrixViewPoint
+ (id)pointWithRow:(int64_t)a3 col:(int64_t)a4;
- (PKColorMatrixViewPoint)initWithRow:(int64_t)a3 col:(int64_t)a4;
@end

@implementation PKColorMatrixViewPoint

- (PKColorMatrixViewPoint)initWithRow:(int64_t)a3 col:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = PKColorMatrixViewPoint;
  result = [(PKColorMatrixViewPoint *)&v7 init];
  result->_row = a3;
  result->_col = a4;
  return result;
}

+ (id)pointWithRow:(int64_t)a3 col:(int64_t)a4
{
  v4 = [[a1 alloc] initWithRow:a3 col:a4];

  return v4;
}

@end