@interface CTLazuliMessageChatBotCardStyle
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliMessageChatBotCardStyle:(id)style;
- (CTLazuliMessageChatBotCardStyle)initWithCoder:(id)coder;
- (CTLazuliMessageChatBotCardStyle)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CTLazuliMessageChatBotCardStyle

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliMessageChatBotCardStyle *)self uri];
  [v3 appendFormat:@", uri = %@", v4];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliMessageChatBotCardStyle:(id)style
{
  styleCopy = style;
  v5 = [(CTLazuliMessageChatBotCardStyle *)self uri];
  v6 = [styleCopy uri];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(CTLazuliMessageChatBotCardStyle *)self uri];
    v8 = [styleCopy uri];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliMessageChatBotCardStyle *)self isEqualToCTLazuliMessageChatBotCardStyle:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliMessageChatBotCardStyle allocWithZone:?];
  v6 = [(NSURL *)self->_uri copyWithZone:zone];
  [(CTLazuliMessageChatBotCardStyle *)v5 setUri:v6];

  return v5;
}

- (CTLazuliMessageChatBotCardStyle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTLazuliMessageChatBotCardStyle;
  v5 = [(CTLazuliMessageChatBotCardStyle *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kUriKey"];
    uri = v5->_uri;
    v5->_uri = v6;
  }

  return v5;
}

- (CTLazuliMessageChatBotCardStyle)initWithReflection:(const void *)reflection
{
  v15.receiver = self;
  v15.super_class = CTLazuliMessageChatBotCardStyle;
  v4 = [(CTLazuliMessageChatBotCardStyle *)&v15 init];
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
    uri = v4->_uri;
    v4->_uri = v12;
  }

  return v4;
}

@end