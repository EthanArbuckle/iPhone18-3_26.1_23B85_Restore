@interface _CTSplicedFontKey
- (BOOL)isEqual:(id)equal;
- (void)dealloc;
@end

@implementation _CTSplicedFontKey

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CTSplicedFontKey;
  [(_CTSplicedFontKey *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v16) = 1;
    return v16;
  }

  v34 = v5;
  v35 = v4;
  v36 = v3;
  if (!equal)
  {
    goto LABEL_21;
  }

  v13 = objc_opt_class();
  if (v13 != objc_opt_class())
  {
    goto LABEL_21;
  }

  hash = self->_hash;
  if (hash != [equal hash])
  {
    goto LABEL_21;
  }

  name = self->_name;
  if (name == [equal name] || (v16 = -[NSString isEqualToString:](self->_name, "isEqualToString:", objc_msgSend(equal, "name"))))
  {
    language = self->_language;
    if (language == [equal language] || (v16 = -[NSString isEqualToString:](self->_language, "isEqualToString:", objc_msgSend(equal, "language"))))
    {
      lineHeightRatio = self->_lineHeightRatio;
      [equal lineHeightRatio];
      if (lineHeightRatio != v19)
      {
        goto LABEL_21;
      }

      lineSpacingOverride = self->_lineSpacingOverride;
      [equal lineSpacingOverride];
      if (lineSpacingOverride != v21)
      {
        goto LABEL_21;
      }

      legibilityWeight = self->_legibilityWeight;
      if (legibilityWeight != [equal legibilityWeight])
      {
        goto LABEL_21;
      }

      ignoreLegibilityWeight = self->_ignoreLegibilityWeight;
      if (ignoreLegibilityWeight != [equal ignoreLegibilityWeight])
      {
        goto LABEL_21;
      }

      sizeCategory = self->_sizeCategory;
      if (sizeCategory != [equal sizeCategory])
      {
        goto LABEL_21;
      }

      design = self->_design;
      if (design == [equal design] || (v16 = -[NSString isEqualToString:](self->_design, "isEqualToString:", objc_msgSend(equal, "design"))))
      {
        weight = self->_weight;
        [equal weight];
        if (weight == v27)
        {
          width = self->_width;
          [equal width];
          if (width == v29)
          {
            grade = self->_grade;
            if (grade == [equal grade])
            {
              platform = self->_platform;
              if (platform == [equal platform])
              {
                modifier = self->_modifier;
                LOBYTE(v16) = modifier == [equal modifier];
                return v16;
              }
            }
          }
        }

LABEL_21:
        LOBYTE(v16) = 0;
      }
    }
  }

  return v16;
}

@end