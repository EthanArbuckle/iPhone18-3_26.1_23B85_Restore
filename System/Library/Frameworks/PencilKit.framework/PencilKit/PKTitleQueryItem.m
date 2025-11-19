@interface PKTitleQueryItem
- (CGRect)bounds;
- (PKTitleQueryItem)initWithTranscribedTitle:(id)a3 bounds:(CGRect)a4;
@end

@implementation PKTitleQueryItem

- (PKTitleQueryItem)initWithTranscribedTitle:(id)a3 bounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v13.receiver = self;
  v13.super_class = PKTitleQueryItem;
  v10 = [(PKTitleQueryItem *)&v13 init];
  transcribedTitle = v10->_transcribedTitle;
  v10->_transcribedTitle = v9;

  v10->_bounds.origin.x = x;
  v10->_bounds.origin.y = y;
  v10->_bounds.size.width = width;
  v10->_bounds.size.height = height;
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