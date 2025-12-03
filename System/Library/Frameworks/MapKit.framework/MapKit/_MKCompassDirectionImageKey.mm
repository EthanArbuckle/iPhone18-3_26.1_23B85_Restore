@interface _MKCompassDirectionImageKey
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (_MKCompassDirectionImageKey)initWithSize:(CGSize)size headingString:(id)string compassViewStyle:(int64_t)style;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _MKCompassDirectionImageKey

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  headingString = self->_headingString;
  compassViewStyle = self->_compassViewStyle;
  width = self->_size.width;
  height = self->_size.height;

  return [v4 initWithSize:headingString headingString:compassViewStyle compassViewStyle:{width, height}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      headingString = self->_headingString;
      headingString = [(_MKCompassDirectionImageKey *)v5 headingString];
      if ([(NSString *)headingString isEqual:headingString])
      {
        [(_MKCompassDirectionImageKey *)v5 size];
        v9 = 0;
        if (self->_size.width == v10 && self->_size.height == v8)
        {
          compassViewStyle = self->_compassViewStyle;
          v9 = compassViewStyle == [(_MKCompassDirectionImageKey *)v5 compassViewStyle];
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (_MKCompassDirectionImageKey)initWithSize:(CGSize)size headingString:(id)string compassViewStyle:(int64_t)style
{
  height = size.height;
  width = size.width;
  stringCopy = string;
  v15.receiver = self;
  v15.super_class = _MKCompassDirectionImageKey;
  v11 = [(_MKCompassDirectionImageKey *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_size.width = width;
    v11->_size.height = height;
    objc_storeStrong(&v11->_headingString, string);
    v12->_compassViewStyle = style;
    v13 = v12;
  }

  return v12;
}

@end