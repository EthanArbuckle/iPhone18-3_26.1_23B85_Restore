@interface CTLazuliChatBotGenericCssTemplateInfo
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotGenericCssTemplateInfo:(id)info;
- (CTLazuliChatBotGenericCssTemplateInfo)initWithCoder:(id)coder;
- (CTLazuliChatBotGenericCssTemplateInfo)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CTLazuliChatBotGenericCssTemplateInfo

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  cssUrl = [(CTLazuliChatBotGenericCssTemplateInfo *)self cssUrl];
  [v3 appendFormat:@", cssUrl = %@", cssUrl];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotGenericCssTemplateInfo:(id)info
{
  infoCopy = info;
  cssUrl = [(CTLazuliChatBotGenericCssTemplateInfo *)self cssUrl];
  cssUrl2 = [infoCopy cssUrl];
  if (cssUrl == cssUrl2)
  {
    v9 = 1;
  }

  else
  {
    cssUrl3 = [(CTLazuliChatBotGenericCssTemplateInfo *)self cssUrl];
    cssUrl4 = [infoCopy cssUrl];
    v9 = [cssUrl3 isEqualToString:cssUrl4];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotGenericCssTemplateInfo *)self isEqualToCTLazuliChatBotGenericCssTemplateInfo:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotGenericCssTemplateInfo allocWithZone:?];
  v6 = [(NSString *)self->_cssUrl copyWithZone:zone];
  [(CTLazuliChatBotGenericCssTemplateInfo *)v5 setCssUrl:v6];

  return v5;
}

- (CTLazuliChatBotGenericCssTemplateInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTLazuliChatBotGenericCssTemplateInfo;
  v5 = [(CTLazuliChatBotGenericCssTemplateInfo *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCssUrlKey"];
    cssUrl = v5->_cssUrl;
    v5->_cssUrl = v6;
  }

  return v5;
}

- (CTLazuliChatBotGenericCssTemplateInfo)initWithReflection:(const void *)reflection
{
  v9.receiver = self;
  v9.super_class = CTLazuliChatBotGenericCssTemplateInfo;
  v4 = [(CTLazuliChatBotGenericCssTemplateInfo *)&v9 init];
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
    cssUrl = v4->_cssUrl;
    v4->_cssUrl = v6;
  }

  return v4;
}

@end