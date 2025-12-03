@interface MusicMonogramArtworkToken
- (BOOL)isEqual:(id)equal;
- (MusicMonogramArtworkToken)initWithFullName:(id)name rightToLeft:(BOOL)left;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MusicMonogramArtworkToken

- (MusicMonogramArtworkToken)initWithFullName:(id)name rightToLeft:(BOOL)left
{
  nameCopy = name;
  v7 = nameCopy;
  if (nameCopy && [nameCopy length])
  {
    v13.receiver = self;
    v13.super_class = MusicMonogramArtworkToken;
    v8 = [(MusicMonogramArtworkToken *)&v13 init];
    if (v8)
    {
      v9 = [v7 copy];
      fullName = v8->_fullName;
      v8->_fullName = v9;

      v8->_rightToLeft = left;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  fullName = self->_fullName;
  rightToLeft = self->_rightToLeft;

  return [v4 initWithFullName:fullName rightToLeft:rightToLeft];
}

@end