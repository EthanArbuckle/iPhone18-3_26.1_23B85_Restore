@interface _MKMultiPartStringComponent
- (_MKMultiPartStringComponent)initWithAttributedString:(id)a3 range:(_NSRange)a4;
- (_NSRange)originalRange;
- (_NSRange)range;
- (id)description;
@end

@implementation _MKMultiPartStringComponent

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)originalRange
{
  length = self->_originalRange.length;
  location = self->_originalRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  attributedString = self->_attributedString;
  v6 = NSStringFromRange(self->_originalRange);
  v7 = NSStringFromRange(self->_range);
  v8 = [v3 stringWithFormat:@"<_%@: %p \n%@\noriginalRange = %@\ncurrentRange = %@\n>", v4, self, attributedString, v6, v7];

  return v8;
}

- (_MKMultiPartStringComponent)initWithAttributedString:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v13.receiver = self;
  v13.super_class = _MKMultiPartStringComponent;
  v8 = [(_MKMultiPartStringComponent *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_originalRange.location = location;
    v8->_originalRange.length = length;
    v8->_range = v8->_originalRange;
    v10 = [v7 copy];
    attributedString = v9->_attributedString;
    v9->_attributedString = v10;
  }

  return v9;
}

@end