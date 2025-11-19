@interface _CTSplicedFontKey
- (BOOL)isEqual:(id)a3;
- (void)dealloc;
@end

@implementation _CTSplicedFontKey

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CTSplicedFontKey;
  [(_CTSplicedFontKey *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v16) = 1;
    return v16;
  }

  v34 = v5;
  v35 = v4;
  v36 = v3;
  if (!a3)
  {
    goto LABEL_21;
  }

  v13 = objc_opt_class();
  if (v13 != objc_opt_class())
  {
    goto LABEL_21;
  }

  hash = self->_hash;
  if (hash != [a3 hash])
  {
    goto LABEL_21;
  }

  name = self->_name;
  if (name == [a3 name] || (v16 = -[NSString isEqualToString:](self->_name, "isEqualToString:", objc_msgSend(a3, "name"))))
  {
    language = self->_language;
    if (language == [a3 language] || (v16 = -[NSString isEqualToString:](self->_language, "isEqualToString:", objc_msgSend(a3, "language"))))
    {
      lineHeightRatio = self->_lineHeightRatio;
      [a3 lineHeightRatio];
      if (lineHeightRatio != v19)
      {
        goto LABEL_21;
      }

      lineSpacingOverride = self->_lineSpacingOverride;
      [a3 lineSpacingOverride];
      if (lineSpacingOverride != v21)
      {
        goto LABEL_21;
      }

      legibilityWeight = self->_legibilityWeight;
      if (legibilityWeight != [a3 legibilityWeight])
      {
        goto LABEL_21;
      }

      ignoreLegibilityWeight = self->_ignoreLegibilityWeight;
      if (ignoreLegibilityWeight != [a3 ignoreLegibilityWeight])
      {
        goto LABEL_21;
      }

      sizeCategory = self->_sizeCategory;
      if (sizeCategory != [a3 sizeCategory])
      {
        goto LABEL_21;
      }

      design = self->_design;
      if (design == [a3 design] || (v16 = -[NSString isEqualToString:](self->_design, "isEqualToString:", objc_msgSend(a3, "design"))))
      {
        weight = self->_weight;
        [a3 weight];
        if (weight == v27)
        {
          width = self->_width;
          [a3 width];
          if (width == v29)
          {
            grade = self->_grade;
            if (grade == [a3 grade])
            {
              platform = self->_platform;
              if (platform == [a3 platform])
              {
                modifier = self->_modifier;
                LOBYTE(v16) = modifier == [a3 modifier];
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