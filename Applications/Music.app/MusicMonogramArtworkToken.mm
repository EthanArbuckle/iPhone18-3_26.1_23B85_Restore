@interface MusicMonogramArtworkToken
- (BOOL)isEqual:(id)a3;
- (MusicMonogramArtworkToken)initWithFullName:(id)a3 rightToLeft:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MusicMonogramArtworkToken

- (MusicMonogramArtworkToken)initWithFullName:(id)a3 rightToLeft:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  if (v6 && [v6 length])
  {
    v13.receiver = self;
    v13.super_class = MusicMonogramArtworkToken;
    v8 = [(MusicMonogramArtworkToken *)&v13 init];
    if (v8)
    {
      v9 = [v7 copy];
      fullName = v8->_fullName;
      v8->_fullName = v9;

      v8->_rightToLeft = a4;
    }

    self = v8;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      fullName = self->_fullName;
      v7 = (fullName == v5->_fullName || [(NSString *)fullName isEqualToString:?]) && self->_rightToLeft == v5->_rightToLeft;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  fullName = self->_fullName;
  rightToLeft = self->_rightToLeft;

  return [v4 initWithFullName:fullName rightToLeft:rightToLeft];
}

@end