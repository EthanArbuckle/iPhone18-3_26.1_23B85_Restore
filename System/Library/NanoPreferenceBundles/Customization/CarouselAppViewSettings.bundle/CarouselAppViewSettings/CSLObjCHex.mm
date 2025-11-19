@interface CSLObjCHex
- (BOOL)isEqual:(id)a3;
- (CSLObjCHex)initWithCoder:(id)a3;
- (CSLObjCHex)initWithHex:(Hex)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CSLObjCHex

- (CSLObjCHex)initWithHex:(Hex)a3
{
  v5.receiver = self;
  v5.super_class = CSLObjCHex;
  result = [(CSLObjCHex *)&v5 init];
  if (result)
  {
    *&result->_q = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(CSLObjCHex *)self r];
      if (v6 == [(CSLObjCHex *)v5 r])
      {
        v7 = [(CSLObjCHex *)self q];
        v8 = v7 == [(CSLObjCHex *)v5 q];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (result)
  {
    *(result + 2) = self->_q;
    *(result + 3) = self->_r;
  }

  return result;
}

- (CSLObjCHex)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CSLObjCHex;
  v5 = [(CSLObjCHex *)&v7 init];
  if (v5)
  {
    v5->_q = [v4 decodeIntForKey:@"q"];
    v5->_r = [v4 decodeIntForKey:@"r"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:-[CSLObjCHex q](self forKey:{"q"), @"q"}];
  [v4 encodeInt:-[CSLObjCHex r](self forKey:{"r"), @"r"}];
}

@end