@interface _LTTranslationSpan
- (BOOL)isEqual:(id)a3;
- (_LTTranslationSpan)initWithCoder:(id)a3;
- (_LTTranslationSpan)initWithIdentifier:(id)a3 range:(_NSRange)a4 shouldTranslate:(BOOL)a5 metaInfoData:(id)a6;
- (_NSRange)range;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LTTranslationSpan

- (_LTTranslationSpan)initWithIdentifier:(id)a3 range:(_NSRange)a4 shouldTranslate:(BOOL)a5 metaInfoData:(id)a6
{
  length = a4.length;
  location = a4.location;
  v12 = a3;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = _LTTranslationSpan;
  v14 = [(_LTTranslationSpan *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_identifier, a3);
    v15->_range.location = location;
    v15->_range.length = length;
    v15->_shouldTranslate = a5;
    objc_storeStrong(&v15->_metaInfoData, a6);
    v16 = v15;
  }

  return v15;
}

- (_LTTranslationSpan)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _LTTranslationSpan;
  v5 = [(_LTTranslationSpan *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"range"];
    v9 = v8;
    if (v8)
    {
      v5->_range.location = [v8 rangeValue];
      v5->_range.length = v10;
    }

    v5->_shouldTranslate = [v4 decodeBoolForKey:@"shouldTranslate"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metaInfoData"];
    metaInfoData = v5->_metaInfoData;
    v5->_metaInfoData = v11;

    v13 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  v6 = [MEMORY[0x277CCAE60] valueWithRange:{self->_range.location, self->_range.length}];
  [v5 encodeObject:v6 forKey:@"range"];
  [v5 encodeBool:self->_shouldTranslate forKey:@"shouldTranslate"];
  [v5 encodeObject:self->_metaInfoData forKey:@"metaInfoData"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(_LTTranslationSpan *)v5 identifier];
      v7 = [(_LTTranslationSpan *)self identifier];
      if ([v6 isEqual:v7])
      {
        v8 = [(_LTTranslationSpan *)self range];
        v10 = v9;
        v13 = v8 == [(_LTTranslationSpan *)v5 range]&& v10 == v11;
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