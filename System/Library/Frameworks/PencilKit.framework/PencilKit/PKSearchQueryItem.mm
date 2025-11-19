@interface PKSearchQueryItem
- (CGRect)bounds;
- (PKSearchQueryItem)initWithBounds:(CGRect)a3;
- (PKSearchQueryItem)initWithBounds:(CGRect)a3 strokes:(id)a4;
@end

@implementation PKSearchQueryItem

- (PKSearchQueryItem)initWithBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = PKSearchQueryItem;
  result = [(PKSearchQueryItem *)&v8 init];
  result->_bounds.origin.x = x;
  result->_bounds.origin.y = y;
  result->_bounds.size.width = width;
  result->_bounds.size.height = height;
  return result;
}

- (PKSearchQueryItem)initWithBounds:(CGRect)a3 strokes:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(PKSearchQueryItem *)self initWithBounds:x, y, width, height];
  strokes = v10->_strokes;
  v10->_strokes = v9;

  return v10;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end