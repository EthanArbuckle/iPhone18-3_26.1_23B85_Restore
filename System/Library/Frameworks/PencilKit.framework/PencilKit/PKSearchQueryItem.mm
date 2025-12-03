@interface PKSearchQueryItem
- (CGRect)bounds;
- (PKSearchQueryItem)initWithBounds:(CGRect)bounds;
- (PKSearchQueryItem)initWithBounds:(CGRect)bounds strokes:(id)strokes;
@end

@implementation PKSearchQueryItem

- (PKSearchQueryItem)initWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8.receiver = self;
  v8.super_class = PKSearchQueryItem;
  result = [(PKSearchQueryItem *)&v8 init];
  result->_bounds.origin.x = x;
  result->_bounds.origin.y = y;
  result->_bounds.size.width = width;
  result->_bounds.size.height = height;
  return result;
}

- (PKSearchQueryItem)initWithBounds:(CGRect)bounds strokes:(id)strokes
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  strokesCopy = strokes;
  height = [(PKSearchQueryItem *)self initWithBounds:x, y, width, height];
  strokes = height->_strokes;
  height->_strokes = strokesCopy;

  return height;
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