@interface CTLazuliChatBotRenderInformation
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotRenderInformation:(id)information;
- (CTLazuliChatBotRenderInformation)initWithCoder:(id)coder;
- (CTLazuliChatBotRenderInformation)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliChatBotRenderInformation

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  botInfo = [(CTLazuliChatBotRenderInformation *)self botInfo];
  [v3 appendFormat:@", botInfo = %@", botInfo];

  persistentMenu = [(CTLazuliChatBotRenderInformation *)self persistentMenu];
  [v3 appendFormat:@", persistentMenu = %@", persistentMenu];

  verificationDetails = [(CTLazuliChatBotRenderInformation *)self verificationDetails];
  [v3 appendFormat:@", verificationDetails = %@", verificationDetails];

  cssInfo = [(CTLazuliChatBotRenderInformation *)self cssInfo];
  [v3 appendFormat:@", cssInfo = %@", cssInfo];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotRenderInformation:(id)information
{
  informationCopy = information;
  botInfo = [(CTLazuliChatBotRenderInformation *)self botInfo];
  botInfo2 = [informationCopy botInfo];
  if (botInfo != botInfo2)
  {
    botInfo3 = [(CTLazuliChatBotRenderInformation *)self botInfo];
    botInfo4 = [informationCopy botInfo];
    if (![botInfo3 isEqualToCTLazuliChatBotInformation:?])
    {
      v7 = 0;
LABEL_18:

      goto LABEL_19;
    }
  }

  persistentMenu = [(CTLazuliChatBotRenderInformation *)self persistentMenu];
  persistentMenu2 = [informationCopy persistentMenu];
  if (persistentMenu == persistentMenu2 || (-[CTLazuliChatBotRenderInformation persistentMenu](self, "persistentMenu"), v22 = objc_claimAutoreleasedReturnValue(), [informationCopy persistentMenu], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "isEqualToCTLazuliChatBotMenuItem:")))
  {
    verificationDetails = [(CTLazuliChatBotRenderInformation *)self verificationDetails];
    verificationDetails2 = [informationCopy verificationDetails];
    if (verificationDetails == verificationDetails2 || (-[CTLazuliChatBotRenderInformation verificationDetails](self, "verificationDetails"), v20 = objc_claimAutoreleasedReturnValue(), [informationCopy verificationDetails], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "isEqualToCTLazuliChatBotVerificationDetails:")))
    {
      cssInfo = [(CTLazuliChatBotRenderInformation *)self cssInfo];
      cssInfo2 = [informationCopy cssInfo];
      v14 = cssInfo2;
      if (cssInfo == cssInfo2)
      {

        v7 = 1;
      }

      else
      {
        cssInfo3 = [(CTLazuliChatBotRenderInformation *)self cssInfo];
        cssInfo4 = [informationCopy cssInfo];
        v7 = [cssInfo3 isEqualToCTLazuliChatBotGenericCssTemplateInfo:cssInfo4];
      }

      if (verificationDetails == verificationDetails2)
      {
LABEL_15:

        v8 = persistentMenu;
        v9 = persistentMenu2;
        if (persistentMenu == persistentMenu2)
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
  v8 = persistentMenu;
  v9 = persistentMenu2;
LABEL_16:

LABEL_17:
  if (botInfo != botInfo2)
  {
    goto LABEL_18;
  }

LABEL_19:

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotRenderInformation *)self isEqualToCTLazuliChatBotRenderInformation:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotRenderInformation allocWithZone:?];
  v6 = [(CTLazuliChatBotInformation *)self->_botInfo copyWithZone:zone];
  [(CTLazuliChatBotRenderInformation *)v5 setBotInfo:v6];

  v7 = [(CTLazuliChatBotMenuItem *)self->_persistentMenu copyWithZone:zone];
  [(CTLazuliChatBotRenderInformation *)v5 setPersistentMenu:v7];

  v8 = [(CTLazuliChatBotVerificationDetails *)self->_verificationDetails copyWithZone:zone];
  [(CTLazuliChatBotRenderInformation *)v5 setVerificationDetails:v8];

  v9 = [(CTLazuliChatBotGenericCssTemplateInfo *)self->_cssInfo copyWithZone:zone];
  [(CTLazuliChatBotRenderInformation *)v5 setCssInfo:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_botInfo forKey:@"kBotInfoKey"];
  [coderCopy encodeObject:self->_persistentMenu forKey:@"kPersistentMenuKey"];
  [coderCopy encodeObject:self->_verificationDetails forKey:@"kVerificationDetailsKey"];
  [coderCopy encodeObject:self->_cssInfo forKey:@"kCssInfoKey"];
}

- (CTLazuliChatBotRenderInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CTLazuliChatBotRenderInformation;
  v5 = [(CTLazuliChatBotRenderInformation *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kBotInfoKey"];
    botInfo = v5->_botInfo;
    v5->_botInfo = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kPersistentMenuKey"];
    persistentMenu = v5->_persistentMenu;
    v5->_persistentMenu = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kVerificationDetailsKey"];
    verificationDetails = v5->_verificationDetails;
    v5->_verificationDetails = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCssInfoKey"];
    cssInfo = v5->_cssInfo;
    v5->_cssInfo = v12;
  }

  return v5;
}

- (CTLazuliChatBotRenderInformation)initWithReflection:(const void *)reflection
{
  v17.receiver = self;
  v17.super_class = CTLazuliChatBotRenderInformation;
  v4 = [(CTLazuliChatBotRenderInformation *)&v17 init];
  if (v4)
  {
    v5 = [[CTLazuliChatBotInformation alloc] initWithReflection:reflection];
    botInfo = v4->_botInfo;
    v4->_botInfo = v5;

    if (*(reflection + 592) == 1)
    {
      v7 = [CTLazuliChatBotMenuItem alloc];
      if ((*(reflection + 592) & 1) == 0)
      {
        goto LABEL_12;
      }

      v8 = [(CTLazuliChatBotMenuItem *)v7 initWithReflection:reflection + 568];
    }

    else
    {
      v8 = 0;
    }

    persistentMenu = v4->_persistentMenu;
    v4->_persistentMenu = v8;

    v10 = [[CTLazuliChatBotVerificationDetails alloc] initWithReflection:reflection + 600];
    verificationDetails = v4->_verificationDetails;
    v4->_verificationDetails = v10;

    if (*(reflection + 680) != 1)
    {
      v13 = 0;
      goto LABEL_10;
    }

    v12 = [CTLazuliChatBotGenericCssTemplateInfo alloc];
    if (*(reflection + 680))
    {
      v13 = [(CTLazuliChatBotGenericCssTemplateInfo *)v12 initWithReflection:reflection + 656];
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