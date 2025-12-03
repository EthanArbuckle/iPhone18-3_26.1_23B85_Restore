@interface CSLObjCHex
- (BOOL)isEqual:(id)equal;
- (CSLObjCHex)initWithCoder:(id)coder;
- (CSLObjCHex)initWithHex:(Hex)hex;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CSLObjCHex

- (CSLObjCHex)initWithHex:(Hex)hex
{
  v5.receiver = self;
  v5.super_class = CSLObjCHex;
  result = [(CSLObjCHex *)&v5 init];
  if (result)
  {
    *&result->_q = hex;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (result)
  {
    *(result + 2) = self->_q;
    *(result + 3) = self->_r;
  }

  return result;
}

- (CSLObjCHex)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CSLObjCHex;
  v5 = [(CSLObjCHex *)&v7 init];
  if (v5)
  {
    v5->_q = [coderCopy decodeIntForKey:@"q"];
    v5->_r = [coderCopy decodeIntForKey:@"r"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:-[CSLObjCHex q](self forKey:{"q"), @"q"}];
  [coderCopy encodeInt:-[CSLObjCHex r](self forKey:{"r"), @"r"}];
}

@end