@interface CTLazuliChatBotPCC
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotPCC:(id)a3;
- (CTLazuliChatBotPCC)initWithCoder:(id)a3;
- (CTLazuliChatBotPCC)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliChatBotPCC

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotPCC *)self orgDetails];
  [v3 appendFormat:@", orgDetails = %@", v4];

  v5 = [(CTLazuliChatBotPCC *)self pccType];
  [v3 appendFormat:@", pccType = %@", v5];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotPCC:(id)a3
{
  v6 = a3;
  v7 = [(CTLazuliChatBotPCC *)self orgDetails];
  v8 = [v6 orgDetails];
  if (v7 != v8)
  {
    v3 = [(CTLazuliChatBotPCC *)self orgDetails];
    v4 = [v6 orgDetails];
    if (![v3 isEqualToCTLazuliChatBotOrgDetails:v4])
    {
      v9 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  v10 = [(CTLazuliChatBotPCC *)self pccType];
  v11 = [v6 pccType];
  v12 = v11;
  if (v10 == v11)
  {

    v9 = 1;
  }

  else
  {
    v13 = [(CTLazuliChatBotPCC *)self pccType];
    v14 = [v6 pccType];
    v9 = [v13 isEqualToString:v14];
  }

  if (v7 != v8)
  {
    goto LABEL_8;
  }

LABEL_9:

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotPCC *)self isEqualToCTLazuliChatBotPCC:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotPCC allocWithZone:?];
  v6 = [(CTLazuliChatBotOrgDetails *)self->_orgDetails copyWithZone:a3];
  [(CTLazuliChatBotPCC *)v5 setOrgDetails:v6];

  v7 = [(NSString *)self->_pccType copyWithZone:a3];
  [(CTLazuliChatBotPCC *)v5 setPccType:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_orgDetails forKey:@"kOrgDetailsKey"];
  [v4 encodeObject:self->_pccType forKey:@"kPccTypeKey"];
}

- (CTLazuliChatBotPCC)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CTLazuliChatBotPCC;
  v5 = [(CTLazuliChatBotPCC *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kOrgDetailsKey"];
    orgDetails = v5->_orgDetails;
    v5->_orgDetails = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kPccTypeKey"];
    pccType = v5->_pccType;
    v5->_pccType = v8;
  }

  return v5;
}

- (CTLazuliChatBotPCC)initWithReflection:(const void *)a3
{
  v15.receiver = self;
  v15.super_class = CTLazuliChatBotPCC;
  v4 = [(CTLazuliChatBotPCC *)&v15 init];
  v5 = v4;
  if (v4)
  {
    if (*(a3 + 272) == 1)
    {
      v6 = v4;
      v7 = [CTLazuliChatBotOrgDetails alloc];
      if ((*(a3 + 272) & 1) == 0)
      {
        v14 = std::__throw_bad_optional_access[abi:nn200100]();

        _Unwind_Resume(v14);
      }

      v8 = [(CTLazuliChatBotOrgDetails *)v7 initWithReflection:a3];
    }

    else
    {
      v8 = 0;
    }

    orgDetails = v5->_orgDetails;
    v5->_orgDetails = v8;

    if (*(a3 + 304) == 1)
    {
      if (*(a3 + 303) >= 0)
      {
        v10 = a3 + 280;
      }

      else
      {
        v10 = *(a3 + 35);
      }

      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];
    }

    else
    {
      v11 = 0;
    }

    pccType = v5->_pccType;
    v5->_pccType = v11;
  }

  return v5;
}

@end