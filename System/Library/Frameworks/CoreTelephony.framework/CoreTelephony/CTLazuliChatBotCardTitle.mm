@interface CTLazuliChatBotCardTitle
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotCardTitle:(id)title;
- (CTLazuliChatBotCardTitle)initWithCoder:(id)coder;
- (CTLazuliChatBotCardTitle)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CTLazuliChatBotCardTitle

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  text = [(CTLazuliChatBotCardTitle *)self text];
  [v3 appendFormat:@", text = %@", text];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotCardTitle:(id)title
{
  titleCopy = title;
  text = [(CTLazuliChatBotCardTitle *)self text];
  text2 = [titleCopy text];
  if (text == text2)
  {
    v9 = 1;
  }

  else
  {
    text3 = [(CTLazuliChatBotCardTitle *)self text];
    text4 = [titleCopy text];
    v9 = [text3 isEqualToString:text4];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotCardTitle *)self isEqualToCTLazuliChatBotCardTitle:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotCardTitle allocWithZone:?];
  v6 = [(NSString *)self->_text copyWithZone:zone];
  [(CTLazuliChatBotCardTitle *)v5 setText:v6];

  return v5;
}

- (CTLazuliChatBotCardTitle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTLazuliChatBotCardTitle;
  v5 = [(CTLazuliChatBotCardTitle *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kTextKey"];
    text = v5->_text;
    v5->_text = v6;
  }

  return v5;
}

- (CTLazuliChatBotCardTitle)initWithReflection:(const void *)reflection
{
  v9.receiver = self;
  v9.super_class = CTLazuliChatBotCardTitle;
  v4 = [(CTLazuliChatBotCardTitle *)&v9 init];
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
    text = v4->_text;
    v4->_text = v6;
  }

  return v4;
}

@end