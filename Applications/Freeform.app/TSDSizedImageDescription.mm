@interface TSDSizedImageDescription
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSizedImageDescription:(id)description;
- (CGSize)size;
- (TSDSizedImageDescription)initWithSize:(CGSize)size isWideGamut:(BOOL)gamut hasBakedMask:(BOOL)mask;
- (unint64_t)hash;
@end

@implementation TSDSizedImageDescription

- (TSDSizedImageDescription)initWithSize:(CGSize)size isWideGamut:(BOOL)gamut hasBakedMask:(BOOL)mask
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = TSDSizedImageDescription;
  result = [(TSDSizedImageDescription *)&v10 init];
  if (result)
  {
    result->_size.width = width;
    result->_size.height = height;
    result->_isWideGamut = gamut;
    result->_hasBakedMask = mask;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, equalCopy);

  if (v6)
  {
    v7 = [(TSDSizedImageDescription *)self isEqualToSizedImageDescription:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [NSValue valueWithCGSize:self->_size.width, self->_size.height];
  v4 = [v3 hash];
  v5 = self->_isWideGamut ^ self->_hasBakedMask;

  return v4 ^ v5;
}

- (BOOL)isEqualToSizedImageDescription:(id)description
{
  descriptionCopy = description;
  if (self == descriptionCopy)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    [(TSDSizedImageDescription *)self size];
    v6 = v5;
    v8 = v7;
    [(TSDSizedImageDescription *)descriptionCopy size];
    v11 = v6 == v10 && v8 == v9;
    if (v11 && (v12 = [(TSDSizedImageDescription *)self isWideGamut], v12 == [(TSDSizedImageDescription *)descriptionCopy isWideGamut]))
    {
      hasBakedMask = [(TSDSizedImageDescription *)self hasBakedMask];
      v13 = hasBakedMask ^ [(TSDSizedImageDescription *)descriptionCopy hasBakedMask]^ 1;
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  return v13;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end