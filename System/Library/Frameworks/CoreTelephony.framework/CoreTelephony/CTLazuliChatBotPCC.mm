@interface CTLazuliChatBotPCC
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotPCC:(id)c;
- (CTLazuliChatBotPCC)initWithCoder:(id)coder;
- (CTLazuliChatBotPCC)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliChatBotPCC

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  orgDetails = [(CTLazuliChatBotPCC *)self orgDetails];
  [v3 appendFormat:@", orgDetails = %@", orgDetails];

  pccType = [(CTLazuliChatBotPCC *)self pccType];
  [v3 appendFormat:@", pccType = %@", pccType];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotPCC:(id)c
{
  cCopy = c;
  orgDetails = [(CTLazuliChatBotPCC *)self orgDetails];
  orgDetails2 = [cCopy orgDetails];
  if (orgDetails != orgDetails2)
  {
    orgDetails3 = [(CTLazuliChatBotPCC *)self orgDetails];
    orgDetails4 = [cCopy orgDetails];
    if (![orgDetails3 isEqualToCTLazuliChatBotOrgDetails:orgDetails4])
    {
      v9 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  pccType = [(CTLazuliChatBotPCC *)self pccType];
  pccType2 = [cCopy pccType];
  v12 = pccType2;
  if (pccType == pccType2)
  {

    v9 = 1;
  }

  else
  {
    pccType3 = [(CTLazuliChatBotPCC *)self pccType];
    pccType4 = [cCopy pccType];
    v9 = [pccType3 isEqualToString:pccType4];
  }

  if (orgDetails != orgDetails2)
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotPCC *)self isEqualToCTLazuliChatBotPCC:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotPCC allocWithZone:?];
  v6 = [(CTLazuliChatBotOrgDetails *)self->_orgDetails copyWithZone:zone];
  [(CTLazuliChatBotPCC *)v5 setOrgDetails:v6];

  v7 = [(NSString *)self->_pccType copyWithZone:zone];
  [(CTLazuliChatBotPCC *)v5 setPccType:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_orgDetails forKey:@"kOrgDetailsKey"];
  [coderCopy encodeObject:self->_pccType forKey:@"kPccTypeKey"];
}

- (CTLazuliChatBotPCC)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CTLazuliChatBotPCC;
  v5 = [(CTLazuliChatBotPCC *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kOrgDetailsKey"];
    orgDetails = v5->_orgDetails;
    v5->_orgDetails = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kPccTypeKey"];
    pccType = v5->_pccType;
    v5->_pccType = v8;
  }

  return v5;
}

- (CTLazuliChatBotPCC)initWithReflection:(const void *)reflection
{
  v15.receiver = self;
  v15.super_class = CTLazuliChatBotPCC;
  v4 = [(CTLazuliChatBotPCC *)&v15 init];
  v5 = v4;
  if (v4)
  {
    if (*(reflection + 272) == 1)
    {
      v6 = v4;
      v7 = [CTLazuliChatBotOrgDetails alloc];
      if ((*(reflection + 272) & 1) == 0)
      {
        v14 = std::__throw_bad_optional_access[abi:nn200100]();

        _Unwind_Resume(v14);
      }

      v8 = [(CTLazuliChatBotOrgDetails *)v7 initWithReflection:reflection];
    }

    else
    {
      v8 = 0;
    }

    orgDetails = v5->_orgDetails;
    v5->_orgDetails = v8;

    if (*(reflection + 304) == 1)
    {
      if (*(reflection + 303) >= 0)
      {
        v10 = reflection + 280;
      }

      else
      {
        v10 = *(reflection + 35);
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