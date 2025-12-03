@interface CTLazuliChatBotMediaUrl
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotMediaUrl:(id)url;
- (CTLazuliChatBotMediaUrl)initWithCoder:(id)coder;
- (CTLazuliChatBotMediaUrl)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CTLazuliChatBotMediaUrl

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotMediaUrl *)self url];
  [v3 appendFormat:@", url = %@", v4];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotMediaUrl:(id)url
{
  urlCopy = url;
  v5 = [(CTLazuliChatBotMediaUrl *)self url];
  v6 = [urlCopy url];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(CTLazuliChatBotMediaUrl *)self url];
    v8 = [urlCopy url];
    v9 = [v7 isEqual:v8];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotMediaUrl *)self isEqualToCTLazuliChatBotMediaUrl:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotMediaUrl allocWithZone:?];
  v6 = [(NSURL *)self->_url copyWithZone:zone];
  [(CTLazuliChatBotMediaUrl *)v5 setUrl:v6];

  return v5;
}

- (CTLazuliChatBotMediaUrl)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTLazuliChatBotMediaUrl;
  v5 = [(CTLazuliChatBotMediaUrl *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kUrlKey"];
    url = v5->_url;
    v5->_url = v6;
  }

  return v5;
}

- (CTLazuliChatBotMediaUrl)initWithReflection:(const void *)reflection
{
  v15.receiver = self;
  v15.super_class = CTLazuliChatBotMediaUrl;
  v4 = [(CTLazuliChatBotMediaUrl *)&v15 init];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFF8];
    v6 = MEMORY[0x1E696AEC0];
    v7 = *(reflection + 23);
    v8 = *reflection;
    defaultCStringEncoding = [MEMORY[0x1E696AEC0] defaultCStringEncoding];
    if (v7 >= 0)
    {
      reflectionCopy = reflection;
    }

    else
    {
      reflectionCopy = v8;
    }

    v11 = [v6 stringWithCString:reflectionCopy encoding:defaultCStringEncoding];
    v12 = [v5 URLWithString:v11];
    url = v4->_url;
    v4->_url = v12;
  }

  return v4;
}

@end