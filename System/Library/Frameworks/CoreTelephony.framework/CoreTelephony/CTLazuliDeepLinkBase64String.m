@interface CTLazuliDeepLinkBase64String
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliDeepLinkBase64String:(id)a3;
- (CTLazuliDeepLinkBase64String)initWithCoder:(id)a3;
- (CTLazuliDeepLinkBase64String)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CTLazuliDeepLinkBase64String

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliDeepLinkBase64String *)self base64String];
  [v3 appendFormat:@", base64String = %@", v4];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliDeepLinkBase64String:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliDeepLinkBase64String *)self base64String];
  v6 = [v4 base64String];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(CTLazuliDeepLinkBase64String *)self base64String];
    v8 = [v4 base64String];
    v9 = [v7 isEqualToString:v8];
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliDeepLinkBase64String *)self isEqualToCTLazuliDeepLinkBase64String:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliDeepLinkBase64String allocWithZone:?];
  v6 = [(NSString *)self->_base64String copyWithZone:a3];
  [(CTLazuliDeepLinkBase64String *)v5 setBase64String:v6];

  return v5;
}

- (CTLazuliDeepLinkBase64String)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTLazuliDeepLinkBase64String;
  v5 = [(CTLazuliDeepLinkBase64String *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kBase64StringKey"];
    base64String = v5->_base64String;
    v5->_base64String = v6;
  }

  return v5;
}

- (CTLazuliDeepLinkBase64String)initWithReflection:(const void *)a3
{
  v9.receiver = self;
  v9.super_class = CTLazuliDeepLinkBase64String;
  v4 = [(CTLazuliDeepLinkBase64String *)&v9 init];
  if (v4)
  {
    if (*(a3 + 23) >= 0)
    {
      v5 = a3;
    }

    else
    {
      v5 = *a3;
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
    base64String = v4->_base64String;
    v4->_base64String = v6;
  }

  return v4;
}

@end