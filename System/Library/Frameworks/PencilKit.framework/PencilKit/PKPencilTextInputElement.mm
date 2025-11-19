@interface PKPencilTextInputElement
- (CGRect)frame;
- (PKPencilTextInputElement)initWithIdentifier:(id)a3 frame:(CGRect)a4;
- (id)description;
@end

@implementation PKPencilTextInputElement

- (PKPencilTextInputElement)initWithIdentifier:(id)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v14.receiver = self;
  v14.super_class = PKPencilTextInputElement;
  v10 = [(PKPencilTextInputElement *)&v14 init];
  if (v10)
  {
    v11 = [v9 copyWithZone:0];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v10->_frame.origin.x = x;
    v10->_frame.origin.y = y;
    v10->_frame.size.width = width;
    v10->_frame.size.height = height;
  }

  return v10;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = PKPencilTextInputElement;
  v3 = [(PKPencilTextInputElement *)&v8 description];
  v4 = [(PKPencilTextInputElement *)self identifier];
  [(PKPencilTextInputElement *)self frame];
  v5 = NSStringFromCGRect(v10);
  v6 = [v3 stringByAppendingFormat:@" ID: %@, frame: %@", v4, v5];

  return v6;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end