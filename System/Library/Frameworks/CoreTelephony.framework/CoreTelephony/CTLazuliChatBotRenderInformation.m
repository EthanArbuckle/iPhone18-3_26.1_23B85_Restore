@interface CTLazuliChatBotRenderInformation
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotRenderInformation:(id)a3;
- (CTLazuliChatBotRenderInformation)initWithCoder:(id)a3;
- (CTLazuliChatBotRenderInformation)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliChatBotRenderInformation

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotRenderInformation *)self botInfo];
  [v3 appendFormat:@", botInfo = %@", v4];

  v5 = [(CTLazuliChatBotRenderInformation *)self persistentMenu];
  [v3 appendFormat:@", persistentMenu = %@", v5];

  v6 = [(CTLazuliChatBotRenderInformation *)self verificationDetails];
  [v3 appendFormat:@", verificationDetails = %@", v6];

  v7 = [(CTLazuliChatBotRenderInformation *)self cssInfo];
  [v3 appendFormat:@", cssInfo = %@", v7];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotRenderInformation:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliChatBotRenderInformation *)self botInfo];
  v6 = [v4 botInfo];
  if (v5 != v6)
  {
    v24 = [(CTLazuliChatBotRenderInformation *)self botInfo];
    v21 = [v4 botInfo];
    if (![v24 isEqualToCTLazuliChatBotInformation:?])
    {
      v7 = 0;
LABEL_18:

      goto LABEL_19;
    }
  }

  v25 = [(CTLazuliChatBotRenderInformation *)self persistentMenu];
  v23 = [v4 persistentMenu];
  if (v25 == v23 || (-[CTLazuliChatBotRenderInformation persistentMenu](self, "persistentMenu"), v22 = objc_claimAutoreleasedReturnValue(), [v4 persistentMenu], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "isEqualToCTLazuliChatBotMenuItem:")))
  {
    v10 = [(CTLazuliChatBotRenderInformation *)self verificationDetails];
    v11 = [v4 verificationDetails];
    if (v10 == v11 || (-[CTLazuliChatBotRenderInformation verificationDetails](self, "verificationDetails"), v20 = objc_claimAutoreleasedReturnValue(), [v4 verificationDetails], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "isEqualToCTLazuliChatBotVerificationDetails:")))
    {
      v12 = [(CTLazuliChatBotRenderInformation *)self cssInfo];
      v13 = [v4 cssInfo];
      v14 = v13;
      if (v12 == v13)
      {

        v7 = 1;
      }

      else
      {
        v15 = [(CTLazuliChatBotRenderInformation *)self cssInfo];
        v16 = [v4 cssInfo];
        v7 = [v15 isEqualToCTLazuliChatBotGenericCssTemplateInfo:v16];
      }

      if (v10 == v11)
      {
LABEL_15:

        v8 = v25;
        v9 = v23;
        if (v25 == v23)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_15;
  }

  v7 = 0;
  v8 = v25;
  v9 = v23;
LABEL_16:

LABEL_17:
  if (v5 != v6)
  {
    goto LABEL_18;
  }

LABEL_19:

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotRenderInformation *)self isEqualToCTLazuliChatBotRenderInformation:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotRenderInformation allocWithZone:?];
  v6 = [(CTLazuliChatBotInformation *)self->_botInfo copyWithZone:a3];
  [(CTLazuliChatBotRenderInformation *)v5 setBotInfo:v6];

  v7 = [(CTLazuliChatBotMenuItem *)self->_persistentMenu copyWithZone:a3];
  [(CTLazuliChatBotRenderInformation *)v5 setPersistentMenu:v7];

  v8 = [(CTLazuliChatBotVerificationDetails *)self->_verificationDetails copyWithZone:a3];
  [(CTLazuliChatBotRenderInformation *)v5 setVerificationDetails:v8];

  v9 = [(CTLazuliChatBotGenericCssTemplateInfo *)self->_cssInfo copyWithZone:a3];
  [(CTLazuliChatBotRenderInformation *)v5 setCssInfo:v9];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_botInfo forKey:@"kBotInfoKey"];
  [v4 encodeObject:self->_persistentMenu forKey:@"kPersistentMenuKey"];
  [v4 encodeObject:self->_verificationDetails forKey:@"kVerificationDetailsKey"];
  [v4 encodeObject:self->_cssInfo forKey:@"kCssInfoKey"];
}

- (CTLazuliChatBotRenderInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CTLazuliChatBotRenderInformation;
  v5 = [(CTLazuliChatBotRenderInformation *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kBotInfoKey"];
    botInfo = v5->_botInfo;
    v5->_botInfo = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kPersistentMenuKey"];
    persistentMenu = v5->_persistentMenu;
    v5->_persistentMenu = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kVerificationDetailsKey"];
    verificationDetails = v5->_verificationDetails;
    v5->_verificationDetails = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCssInfoKey"];
    cssInfo = v5->_cssInfo;
    v5->_cssInfo = v12;
  }

  return v5;
}

- (CTLazuliChatBotRenderInformation)initWithReflection:(const void *)a3
{
  v17.receiver = self;
  v17.super_class = CTLazuliChatBotRenderInformation;
  v4 = [(CTLazuliChatBotRenderInformation *)&v17 init];
  if (v4)
  {
    v5 = [[CTLazuliChatBotInformation alloc] initWithReflection:a3];
    botInfo = v4->_botInfo;
    v4->_botInfo = v5;

    if (*(a3 + 592) == 1)
    {
      v7 = [CTLazuliChatBotMenuItem alloc];
      if ((*(a3 + 592) & 1) == 0)
      {
        goto LABEL_12;
      }

      v8 = [(CTLazuliChatBotMenuItem *)v7 initWithReflection:a3 + 568];
    }

    else
    {
      v8 = 0;
    }

    persistentMenu = v4->_persistentMenu;
    v4->_persistentMenu = v8;

    v10 = [[CTLazuliChatBotVerificationDetails alloc] initWithReflection:a3 + 600];
    verificationDetails = v4->_verificationDetails;
    v4->_verificationDetails = v10;

    if (*(a3 + 680) != 1)
    {
      v13 = 0;
      goto LABEL_10;
    }

    v12 = [CTLazuliChatBotGenericCssTemplateInfo alloc];
    if (*(a3 + 680))
    {
      v13 = [(CTLazuliChatBotGenericCssTemplateInfo *)v12 initWithReflection:a3 + 656];
LABEL_10:
      cssInfo = v4->_cssInfo;
      v4->_cssInfo = v13;

      return v4;
    }

LABEL_12:
    v16 = std::__throw_bad_optional_access[abi:nn200100]();

    _Unwind_Resume(v16);
  }

  return v4;
}

@end