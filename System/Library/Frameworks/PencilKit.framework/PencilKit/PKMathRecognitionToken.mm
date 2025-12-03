@interface PKMathRecognitionToken
- (CGRect)bounds;
- (PKMathRecognitionItem)item;
- (PKMathRecognitionToken)init;
- (_NSRange)characterRange;
- (id)debugDescription;
@end

@implementation PKMathRecognitionToken

- (PKMathRecognitionToken)init
{
  v6.receiver = self;
  v6.super_class = PKMathRecognitionToken;
  v2 = [(PKMathRecognitionToken *)&v6 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uuid = v2->_uuid;
    v2->_uuid = uUID;

    [(PKMathRecognitionToken *)v2 setType:0];
    [(PKMathRecognitionToken *)v2 setErrors:MEMORY[0x1E695E0F0]];
    [(PKMathRecognitionToken *)v2 setCharacterRange:0x7FFFFFFFFFFFFFFFLL, 0];
    [(PKMathRecognitionToken *)v2 setColumnIndex:0x7FFFFFFFFFFFFFFFLL];
  }

  return v2;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = PKMathRecognitionToken;
  v4 = [(PKMathRecognitionToken *)&v10 description];
  text = [(PKMathRecognitionToken *)self text];
  v12.location = [(PKMathRecognitionToken *)self characterRange];
  v6 = NSStringFromRange(v12);
  errors = [(PKMathRecognitionToken *)self errors];
  v8 = [v3 stringWithFormat:@"%@ - text: %@, range: %@, errors: %lu", v4, text, v6, objc_msgSend(errors, "count")];

  return v8;
}

- (PKMathRecognitionItem)item
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

- (_NSRange)characterRange
{
  length = self->_characterRange.length;
  location = self->_characterRange.location;
  result.length = length;
  result.location = location;
  return result;
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