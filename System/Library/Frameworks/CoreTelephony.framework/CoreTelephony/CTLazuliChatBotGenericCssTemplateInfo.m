@interface CTLazuliChatBotGenericCssTemplateInfo
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotGenericCssTemplateInfo:(id)a3;
- (CTLazuliChatBotGenericCssTemplateInfo)initWithCoder:(id)a3;
- (CTLazuliChatBotGenericCssTemplateInfo)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CTLazuliChatBotGenericCssTemplateInfo

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotGenericCssTemplateInfo *)self cssUrl];
  [v3 appendFormat:@", cssUrl = %@", v4];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotGenericCssTemplateInfo:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliChatBotGenericCssTemplateInfo *)self cssUrl];
  v6 = [v4 cssUrl];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(CTLazuliChatBotGenericCssTemplateInfo *)self cssUrl];
    v8 = [v4 cssUrl];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotGenericCssTemplateInfo *)self isEqualToCTLazuliChatBotGenericCssTemplateInfo:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotGenericCssTemplateInfo allocWithZone:?];
  v6 = [(NSString *)self->_cssUrl copyWithZone:a3];
  [(CTLazuliChatBotGenericCssTemplateInfo *)v5 setCssUrl:v6];

  return v5;
}

- (CTLazuliChatBotGenericCssTemplateInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTLazuliChatBotGenericCssTemplateInfo;
  v5 = [(CTLazuliChatBotGenericCssTemplateInfo *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCssUrlKey"];
    cssUrl = v5->_cssUrl;
    v5->_cssUrl = v6;
  }

  return v5;
}

- (CTLazuliChatBotGenericCssTemplateInfo)initWithReflection:(const void *)a3
{
  v9.receiver = self;
  v9.super_class = CTLazuliChatBotGenericCssTemplateInfo;
  v4 = [(CTLazuliChatBotGenericCssTemplateInfo *)&v9 init];
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
    cssUrl = v4->_cssUrl;
    v4->_cssUrl = v6;
  }

  return v4;
}

@end