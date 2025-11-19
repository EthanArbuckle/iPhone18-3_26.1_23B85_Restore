@interface CTLazuliSuggestedActionDialEnrichedCall
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliSuggestedActionDialEnrichedCall:(id)a3;
- (CTLazuliSuggestedActionDialEnrichedCall)initWithCoder:(id)a3;
- (CTLazuliSuggestedActionDialEnrichedCall)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliSuggestedActionDialEnrichedCall

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliSuggestedActionDialEnrichedCall *)self phoneNumber];
  [v3 appendFormat:@", phoneNumber = %@", v4];

  v5 = [(CTLazuliSuggestedActionDialEnrichedCall *)self fallbackUrl];
  [v3 appendFormat:@", fallbackUrl = %@", v5];

  v6 = [(CTLazuliSuggestedActionDialEnrichedCall *)self subject];
  [v3 appendFormat:@", subject = %@", v6];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliSuggestedActionDialEnrichedCall:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliSuggestedActionDialEnrichedCall *)self phoneNumber];
  v6 = [v4 phoneNumber];
  if (v5 != v6)
  {
    v19 = [(CTLazuliSuggestedActionDialEnrichedCall *)self phoneNumber];
    v17 = [v4 phoneNumber];
    if (![v19 isEqualToString:?])
    {
      v7 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  v8 = [(CTLazuliSuggestedActionDialEnrichedCall *)self fallbackUrl];
  v9 = [v4 fallbackUrl];
  if (v8 != v9)
  {
    v18 = [(CTLazuliSuggestedActionDialEnrichedCall *)self fallbackUrl];
    v16 = [v4 fallbackUrl];
    if (![v18 isEqualToString:?])
    {
      v7 = 0;
LABEL_11:

      goto LABEL_12;
    }
  }

  v10 = [(CTLazuliSuggestedActionDialEnrichedCall *)self subject];
  v11 = [v4 subject];
  v12 = v11;
  if (v10 == v11)
  {

    v7 = 1;
  }

  else
  {
    v13 = [(CTLazuliSuggestedActionDialEnrichedCall *)self subject];
    v14 = [v4 subject];
    v7 = [v13 isEqualToString:v14];
  }

  if (v8 != v9)
  {
    goto LABEL_11;
  }

LABEL_12:

  if (v5 != v6)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v7;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliSuggestedActionDialEnrichedCall *)self isEqualToCTLazuliSuggestedActionDialEnrichedCall:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliSuggestedActionDialEnrichedCall allocWithZone:?];
  v6 = [(NSString *)self->_phoneNumber copyWithZone:a3];
  [(CTLazuliSuggestedActionDialEnrichedCall *)v5 setPhoneNumber:v6];

  v7 = [(NSString *)self->_fallbackUrl copyWithZone:a3];
  [(CTLazuliSuggestedActionDialEnrichedCall *)v5 setFallbackUrl:v7];

  v8 = [(NSString *)self->_subject copyWithZone:a3];
  [(CTLazuliSuggestedActionDialEnrichedCall *)v5 setSubject:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_phoneNumber forKey:@"kPhoneNumberKey"];
  [v4 encodeObject:self->_fallbackUrl forKey:@"kFallbackUrlKey"];
  [v4 encodeObject:self->_subject forKey:@"kSubjectKey"];
}

- (CTLazuliSuggestedActionDialEnrichedCall)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CTLazuliSuggestedActionDialEnrichedCall;
  v5 = [(CTLazuliSuggestedActionDialEnrichedCall *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kPhoneNumberKey"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kFallbackUrlKey"];
    fallbackUrl = v5->_fallbackUrl;
    v5->_fallbackUrl = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSubjectKey"];
    subject = v5->_subject;
    v5->_subject = v10;
  }

  return v5;
}

- (CTLazuliSuggestedActionDialEnrichedCall)initWithReflection:(const void *)a3
{
  v18.receiver = self;
  v18.super_class = CTLazuliSuggestedActionDialEnrichedCall;
  v4 = [(CTLazuliSuggestedActionDialEnrichedCall *)&v18 init];
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
    phoneNumber = v4->_phoneNumber;
    v4->_phoneNumber = v6;

    if (*(a3 + 48) == 1)
    {
      if (*(a3 + 47) >= 0)
      {
        v8 = a3 + 24;
      }

      else
      {
        v8 = *(a3 + 3);
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
    }

    else
    {
      v9 = 0;
    }

    fallbackUrl = v4->_fallbackUrl;
    v4->_fallbackUrl = v9;

    if (*(a3 + 80) == 1)
    {
      v13 = *(a3 + 7);
      v12 = a3 + 56;
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