@interface _MKCompassDirectionImageKey
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (_MKCompassDirectionImageKey)initWithSize:(CGSize)a3 headingString:(id)a4 compassViewStyle:(int64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  headingString = self->_headingString;
  compassViewStyle = self->_compassViewStyle;
  width = self->_size.width;
  height = self->_size.height;

  return [v4 initWithSize:headingString headingString:compassViewStyle compassViewStyle:{width, height}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      headingString = self->_headingString;
      v7 = [(_MKCompassDirectionImageKey *)v5 headingString];
      if ([(NSString *)headingString isEqual:v7])
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

- (_MKCompassDirectionImageKey)initWithSize:(CGSize)a3 headingString:(id)a4 compassViewStyle:(int64_t)a5
{
  height = a3.height;
  width = a3.width;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = _MKCompassDirectionImageKey;
  v11 = [(_MKCompassDirectionImageKey *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_size.width = width;
    v11->_size.height = height;
    objc_storeStrong(&v11->_headingString, a4);
    v12->_compassViewStyle = a5;
    v13 = v12;
  }

  return v12;
}

@end