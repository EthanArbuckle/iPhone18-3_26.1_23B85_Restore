@interface CTLazuliSuggestedActionDialEnrichedCall
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliSuggestedActionDialEnrichedCall:(id)call;
- (CTLazuliSuggestedActionDialEnrichedCall)initWithCoder:(id)coder;
- (CTLazuliSuggestedActionDialEnrichedCall)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliSuggestedActionDialEnrichedCall

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  phoneNumber = [(CTLazuliSuggestedActionDialEnrichedCall *)self phoneNumber];
  [v3 appendFormat:@", phoneNumber = %@", phoneNumber];

  fallbackUrl = [(CTLazuliSuggestedActionDialEnrichedCall *)self fallbackUrl];
  [v3 appendFormat:@", fallbackUrl = %@", fallbackUrl];

  subject = [(CTLazuliSuggestedActionDialEnrichedCall *)self subject];
  [v3 appendFormat:@", subject = %@", subject];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliSuggestedActionDialEnrichedCall:(id)call
{
  callCopy = call;
  phoneNumber = [(CTLazuliSuggestedActionDialEnrichedCall *)self phoneNumber];
  phoneNumber2 = [callCopy phoneNumber];
  if (phoneNumber != phoneNumber2)
  {
    phoneNumber3 = [(CTLazuliSuggestedActionDialEnrichedCall *)self phoneNumber];
    phoneNumber4 = [callCopy phoneNumber];
    if (![phoneNumber3 isEqualToString:?])
    {
      v7 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  fallbackUrl = [(CTLazuliSuggestedActionDialEnrichedCall *)self fallbackUrl];
  fallbackUrl2 = [callCopy fallbackUrl];
  if (fallbackUrl != fallbackUrl2)
  {
    fallbackUrl3 = [(CTLazuliSuggestedActionDialEnrichedCall *)self fallbackUrl];
    fallbackUrl4 = [callCopy fallbackUrl];
    if (![fallbackUrl3 isEqualToString:?])
    {
      v7 = 0;
LABEL_11:

      goto LABEL_12;
    }
  }

  subject = [(CTLazuliSuggestedActionDialEnrichedCall *)self subject];
  subject2 = [callCopy subject];
  v12 = subject2;
  if (subject == subject2)
  {

    v7 = 1;
  }

  else
  {
    subject3 = [(CTLazuliSuggestedActionDialEnrichedCall *)self subject];
    subject4 = [callCopy subject];
    v7 = [subject3 isEqualToString:subject4];
  }

  if (fallbackUrl != fallbackUrl2)
  {
    goto LABEL_11;
  }

LABEL_12:

  if (phoneNumber != phoneNumber2)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v7;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliSuggestedActionDialEnrichedCall *)self isEqualToCTLazuliSuggestedActionDialEnrichedCall:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliSuggestedActionDialEnrichedCall allocWithZone:?];
  v6 = [(NSString *)self->_phoneNumber copyWithZone:zone];
  [(CTLazuliSuggestedActionDialEnrichedCall *)v5 setPhoneNumber:v6];

  v7 = [(NSString *)self->_fallbackUrl copyWithZone:zone];
  [(CTLazuliSuggestedActionDialEnrichedCall *)v5 setFallbackUrl:v7];

  v8 = [(NSString *)self->_subject copyWithZone:zone];
  [(CTLazuliSuggestedActionDialEnrichedCall *)v5 setSubject:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_phoneNumber forKey:@"kPhoneNumberKey"];
  [coderCopy encodeObject:self->_fallbackUrl forKey:@"kFallbackUrlKey"];
  [coderCopy encodeObject:self->_subject forKey:@"kSubjectKey"];
}

- (CTLazuliSuggestedActionDialEnrichedCall)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CTLazuliSuggestedActionDialEnrichedCall;
  v5 = [(CTLazuliSuggestedActionDialEnrichedCall *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kPhoneNumberKey"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kFallbackUrlKey"];
    fallbackUrl = v5->_fallbackUrl;
    v5->_fallbackUrl = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kSubjectKey"];
    subject = v5->_subject;
    v5->_subject = v10;
  }

  return v5;
}

- (CTLazuliSuggestedActionDialEnrichedCall)initWithReflection:(const void *)reflection
{
  v18.receiver = self;
  v18.super_class = CTLazuliSuggestedActionDialEnrichedCall;
  v4 = [(CTLazuliSuggestedActionDialEnrichedCall *)&v18 init];
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
      if (*(reflection + 47) >= 0)
      {
        v8 = reflection + 24;
      }

      else
      {
        v8 = *(reflection + 3);
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
    }

    else
    {
      v9 = 0;
    }

    fallbackUrl = v4->_fallbackUrl;
    v4->_fallbackUrl = v9;

    if (*(reflection + 80) == 1)
    {
      v13 = *(reflection + 7);
      v12 = reflection + 56;
      v11 = v13;
      if (v12[23] >= 0)
      {
        v14 = v12;
      }

      else
      {
        v14 = v11;
      }

      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v14];
    }

    else
    {
      v15 = 0;
    }

    subject = v4->_subject;
    v4->_subject = v15;
  }

  return v4;
}

@end