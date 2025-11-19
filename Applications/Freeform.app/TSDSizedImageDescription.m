@interface TSDSizedImageDescription
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSizedImageDescription:(id)a3;
- (CGSize)size;
- (TSDSizedImageDescription)initWithSize:(CGSize)a3 isWideGamut:(BOOL)a4 hasBakedMask:(BOOL)a5;
- (unint64_t)hash;
@end

@implementation TSDSizedImageDescription

- (TSDSizedImageDescription)initWithSize:(CGSize)a3 isWideGamut:(BOOL)a4 hasBakedMask:(BOOL)a5
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = TSDSizedImageDescription;
  result = [(TSDSizedImageDescription *)&v10 init];
  if (result)
  {
    result->_size.width = width;
    result->_size.height = height;
    result->_isWideGamut = a4;
    result->_hasBakedMask = a5;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, v4);

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

- (BOOL)isEqualToSizedImageDescription:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    [(TSDSizedImageDescription *)self size];
    v6 = v5;
    v8 = v7;
    [(TSDSizedImageDescription *)v4 size];
    v11 = v6 == v10 && v8 == v9;
    if (v11 && (v12 = [(TSDSizedImageDescription *)self isWideGamut], v12 == [(TSDSizedImageDescription *)v4 isWideGamut]))
    {
      v14 = [(TSDSizedImageDescription *)self hasBakedMask];
      v13 = v14 ^ [(TSDSizedImageDescription *)v4 hasBakedMask]^ 1;
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