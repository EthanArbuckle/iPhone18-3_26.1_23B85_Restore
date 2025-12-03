@interface _LTTranslationSpan
- (BOOL)isEqual:(id)equal;
- (_LTTranslationSpan)initWithCoder:(id)coder;
- (_LTTranslationSpan)initWithIdentifier:(id)identifier range:(_NSRange)range shouldTranslate:(BOOL)translate metaInfoData:(id)data;
- (_NSRange)range;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTTranslationSpan

- (_LTTranslationSpan)initWithIdentifier:(id)identifier range:(_NSRange)range shouldTranslate:(BOOL)translate metaInfoData:(id)data
{
  length = range.length;
  location = range.location;
  identifierCopy = identifier;
  dataCopy = data;
  v18.receiver = self;
  v18.super_class = _LTTranslationSpan;
  v14 = [(_LTTranslationSpan *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_identifier, identifier);
    v15->_range.location = location;
    v15->_range.length = length;
    v15->_shouldTranslate = translate;
    objc_storeStrong(&v15->_metaInfoData, data);
    v16 = v15;
  }

  return v15;
}

- (_LTTranslationSpan)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = _LTTranslationSpan;
  v5 = [(_LTTranslationSpan *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"range"];
    v9 = v8;
    if (v8)
    {
      v5->_range.location = [v8 rangeValue];
      v5->_range.length = v10;
    }

    v5->_shouldTranslate = [coderCopy decodeBoolForKey:@"shouldTranslate"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metaInfoData"];
    metaInfoData = v5->_metaInfoData;
    v5->_metaInfoData = v11;

    v13 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  v6 = [MEMORY[0x277CCAE60] valueWithRange:{self->_range.location, self->_range.length}];
  [coderCopy encodeObject:v6 forKey:@"range"];
  [coderCopy encodeBool:self->_shouldTranslate forKey:@"shouldTranslate"];
  [coderCopy encodeObject:self->_metaInfoData forKey:@"metaInfoData"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(_LTTranslationSpan *)v5 identifier];
      identifier2 = [(_LTTranslationSpan *)self identifier];
      if ([identifier isEqual:identifier2])
      {
        range = [(_LTTranslationSpan *)self range];
        v10 = v9;
        v13 = range == [(_LTTranslationSpan *)v5 range]&& v10 == v11;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end