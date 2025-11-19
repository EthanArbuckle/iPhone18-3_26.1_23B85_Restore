@interface _LTTranslationToken
- (_LTTranslationToken)initWithCoder:(id)a3;
- (_LTTranslationToken)initWithText:(id)a3 confidence:(double)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LTTranslationToken

- (_LTTranslationToken)initWithText:(id)a3 confidence:(double)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = _LTTranslationToken;
  v7 = [(_LTTranslationToken *)&v12 init];
  if (v7)
  {
    v8 = [v6 copy];
    text = v7->_text;
    v7->_text = v8;

    v7->_confidence = a4;
    v10 = v7;
  }

  return v7;
}

- (_LTTranslationToken)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _LTTranslationToken;
  v5 = [(_LTTranslationToken *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    [v4 decodeDoubleForKey:@"confidence"];
    v5->_confidence = v8;
    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  text = self->_text;
  v5 = a3;
  [v5 encodeObject:text forKey:@"text"];
  [v5 encodeDouble:@"confidence" forKey:self->_confidence];
}

@end