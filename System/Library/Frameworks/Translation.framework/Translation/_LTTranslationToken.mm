@interface _LTTranslationToken
- (_LTTranslationToken)initWithCoder:(id)coder;
- (_LTTranslationToken)initWithText:(id)text confidence:(double)confidence;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTTranslationToken

- (_LTTranslationToken)initWithText:(id)text confidence:(double)confidence
{
  textCopy = text;
  v12.receiver = self;
  v12.super_class = _LTTranslationToken;
  v7 = [(_LTTranslationToken *)&v12 init];
  if (v7)
  {
    v8 = [textCopy copy];
    text = v7->_text;
    v7->_text = v8;

    v7->_confidence = confidence;
    v10 = v7;
  }

  return v7;
}

- (_LTTranslationToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = _LTTranslationToken;
  v5 = [(_LTTranslationToken *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    [coderCopy decodeDoubleForKey:@"confidence"];
    v5->_confidence = v8;
    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  text = self->_text;
  coderCopy = coder;
  [coderCopy encodeObject:text forKey:@"text"];
  [coderCopy encodeDouble:@"confidence" forKey:self->_confidence];
}

@end