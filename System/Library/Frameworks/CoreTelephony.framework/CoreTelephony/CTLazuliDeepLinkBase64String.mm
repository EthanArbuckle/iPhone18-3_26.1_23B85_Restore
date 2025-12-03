@interface CTLazuliDeepLinkBase64String
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliDeepLinkBase64String:(id)string;
- (CTLazuliDeepLinkBase64String)initWithCoder:(id)coder;
- (CTLazuliDeepLinkBase64String)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CTLazuliDeepLinkBase64String

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  base64String = [(CTLazuliDeepLinkBase64String *)self base64String];
  [v3 appendFormat:@", base64String = %@", base64String];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliDeepLinkBase64String:(id)string
{
  stringCopy = string;
  base64String = [(CTLazuliDeepLinkBase64String *)self base64String];
  base64String2 = [stringCopy base64String];
  if (base64String == base64String2)
  {
    v9 = 1;
  }

  else
  {
    base64String3 = [(CTLazuliDeepLinkBase64String *)self base64String];
    base64String4 = [stringCopy base64String];
    v9 = [base64String3 isEqualToString:base64String4];
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliDeepLinkBase64String *)self isEqualToCTLazuliDeepLinkBase64String:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliDeepLinkBase64String allocWithZone:?];
  v6 = [(NSString *)self->_base64String copyWithZone:zone];
  [(CTLazuliDeepLinkBase64String *)v5 setBase64String:v6];

  return v5;
}

- (CTLazuliDeepLinkBase64String)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTLazuliDeepLinkBase64String;
  v5 = [(CTLazuliDeepLinkBase64String *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kBase64StringKey"];
    base64String = v5->_base64String;
    v5->_base64String = v6;
  }

  return v5;
}

- (CTLazuliDeepLinkBase64String)initWithReflection:(const void *)reflection
{
  v9.receiver = self;
  v9.super_class = CTLazuliDeepLinkBase64String;
  v4 = [(CTLazuliDeepLinkBase64String *)&v9 init];
  if (v4)
  {
    if (*(reflection + 23) >= 0)
    {
      reflectionCopy = reflection;
    }

    else
    {
      reflectionCopy = *reflection;
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:reflectionCopy];
    base64String = v4->_base64String;
    v4->_base64String = v6;
  }

  return v4;
}

@end