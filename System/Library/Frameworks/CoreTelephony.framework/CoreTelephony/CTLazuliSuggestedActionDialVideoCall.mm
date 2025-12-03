@interface CTLazuliSuggestedActionDialVideoCall
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliSuggestedActionDialVideoCall:(id)call;
- (CTLazuliSuggestedActionDialVideoCall)initWithCoder:(id)coder;
- (CTLazuliSuggestedActionDialVideoCall)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliSuggestedActionDialVideoCall

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  phoneNumber = [(CTLazuliSuggestedActionDialVideoCall *)self phoneNumber];
  [v3 appendFormat:@", phoneNumber = %@", phoneNumber];

  fallbackUrl = [(CTLazuliSuggestedActionDialVideoCall *)self fallbackUrl];
  [v3 appendFormat:@", fallbackUrl = %@", fallbackUrl];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliSuggestedActionDialVideoCall:(id)call
{
  callCopy = call;
  phoneNumber = [(CTLazuliSuggestedActionDialVideoCall *)self phoneNumber];
  phoneNumber2 = [callCopy phoneNumber];
  if (phoneNumber != phoneNumber2)
  {
    phoneNumber3 = [(CTLazuliSuggestedActionDialVideoCall *)self phoneNumber];
    phoneNumber4 = [callCopy phoneNumber];
    if (![phoneNumber3 isEqualToString:phoneNumber4])
    {
      v9 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  fallbackUrl = [(CTLazuliSuggestedActionDialVideoCall *)self fallbackUrl];
  fallbackUrl2 = [callCopy fallbackUrl];
  v12 = fallbackUrl2;
  if (fallbackUrl == fallbackUrl2)
  {

    v9 = 1;
  }

  else
  {
    fallbackUrl3 = [(CTLazuliSuggestedActionDialVideoCall *)self fallbackUrl];
    fallbackUrl4 = [callCopy fallbackUrl];
    v9 = [fallbackUrl3 isEqualToString:fallbackUrl4];
  }

  if (phoneNumber != phoneNumber2)
  {
    goto LABEL_8;
  }

LABEL_9:

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliSuggestedActionDialVideoCall *)self isEqualToCTLazuliSuggestedActionDialVideoCall:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliSuggestedActionDialVideoCall allocWithZone:?];
  v6 = [(NSString *)self->_phoneNumber copyWithZone:zone];
  [(CTLazuliSuggestedActionDialVideoCall *)v5 setPhoneNumber:v6];

  v7 = [(NSString *)self->_fallbackUrl copyWithZone:zone];
  [(CTLazuliSuggestedActionDialVideoCall *)v5 setFallbackUrl:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_phoneNumber forKey:@"kPhoneNumberKey"];
  [coderCopy encodeObject:self->_fallbackUrl forKey:@"kFallbackUrlKey"];
}

- (CTLazuliSuggestedActionDialVideoCall)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CTLazuliSuggestedActionDialVideoCall;
  v5 = [(CTLazuliSuggestedActionDialVideoCall *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kPhoneNumberKey"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kFallbackUrlKey"];
    fallbackUrl = v5->_fallbackUrl;
    v5->_fallbackUrl = v8;
  }

  return v5;
}

- (CTLazuliSuggestedActionDialVideoCall)initWithReflection:(const void *)reflection
{
  v15.receiver = self;
  v15.super_class = CTLazuliSuggestedActionDialVideoCall;
  v4 = [(CTLazuliSuggestedActionDialVideoCall *)&v15 init];
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
    phoneNumber = v4->_phoneNumber;
    v4->_phoneNumber = v6;

    if (*(reflection + 48) == 1)
    {
      v10 = *(reflection + 3);
      v9 = reflection + 24;
      v8 = v10;
      if (v9[23] >= 0)
      {
        v11 = v9;
      }

      else
      {
        v11 = v8;
      }

      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
    }

    else
    {
      v12 = 0;
    }

    fallbackUrl = v4->_fallbackUrl;
    v4->_fallbackUrl = v12;
  }

  return v4;
}

@end