@interface CTLazuliMessageChatBotDescriptionStyle
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliMessageChatBotDescriptionStyle:(id)style;
- (CTLazuliMessageChatBotDescriptionStyle)initWithCoder:(id)coder;
- (CTLazuliMessageChatBotDescriptionStyle)initWithReflection:(const MessageChatBotDescriptionStyle *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CTLazuliMessageChatBotDescriptionStyle

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  style = [(CTLazuliMessageChatBotDescriptionStyle *)self style];
  [v3 appendFormat:@", style = %@", style];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliMessageChatBotDescriptionStyle:(id)style
{
  styleCopy = style;
  style = [(CTLazuliMessageChatBotDescriptionStyle *)self style];
  style2 = [styleCopy style];
  if (style == style2)
  {
    v9 = 1;
  }

  else
  {
    style3 = [(CTLazuliMessageChatBotDescriptionStyle *)self style];
    style4 = [styleCopy style];
    v9 = [style3 isEqualToCTLazuliMessageChatBotFontStyle:style4];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliMessageChatBotDescriptionStyle *)self isEqualToCTLazuliMessageChatBotDescriptionStyle:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliMessageChatBotDescriptionStyle allocWithZone:?];
  v6 = [(CTLazuliMessageChatBotFontStyle *)self->_style copyWithZone:zone];
  [(CTLazuliMessageChatBotDescriptionStyle *)v5 setStyle:v6];

  return v5;
}

- (CTLazuliMessageChatBotDescriptionStyle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTLazuliMessageChatBotDescriptionStyle;
  v5 = [(CTLazuliMessageChatBotDescriptionStyle *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kStyleKey"];
    style = v5->_style;
    v5->_style = v6;
  }

  return v5;
}

- (CTLazuliMessageChatBotDescriptionStyle)initWithReflection:(const MessageChatBotDescriptionStyle *)reflection
{
  v8.receiver = self;
  v8.super_class = CTLazuliMessageChatBotDescriptionStyle;
  v4 = [(CTLazuliMessageChatBotDescriptionStyle *)&v8 init];
  if (v4)
  {
    v5 = [[CTLazuliMessageChatBotFontStyle alloc] initWithReflection:reflection];
    style = v4->_style;
    v4->_style = v5;
  }

  return v4;
}

@end