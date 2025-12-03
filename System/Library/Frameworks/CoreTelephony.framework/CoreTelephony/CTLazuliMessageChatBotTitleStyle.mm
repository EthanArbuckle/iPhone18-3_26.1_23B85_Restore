@interface CTLazuliMessageChatBotTitleStyle
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliMessageChatBotTitleStyle:(id)style;
- (CTLazuliMessageChatBotTitleStyle)initWithCoder:(id)coder;
- (CTLazuliMessageChatBotTitleStyle)initWithReflection:(const MessageChatBotTitleStyle *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CTLazuliMessageChatBotTitleStyle

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  style = [(CTLazuliMessageChatBotTitleStyle *)self style];
  [v3 appendFormat:@", style = %@", style];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliMessageChatBotTitleStyle:(id)style
{
  styleCopy = style;
  style = [(CTLazuliMessageChatBotTitleStyle *)self style];
  style2 = [styleCopy style];
  if (style == style2)
  {
    v9 = 1;
  }

  else
  {
    style3 = [(CTLazuliMessageChatBotTitleStyle *)self style];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliMessageChatBotTitleStyle *)self isEqualToCTLazuliMessageChatBotTitleStyle:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliMessageChatBotTitleStyle allocWithZone:?];
  v6 = [(CTLazuliMessageChatBotFontStyle *)self->_style copyWithZone:zone];
  [(CTLazuliMessageChatBotTitleStyle *)v5 setStyle:v6];

  return v5;
}

- (CTLazuliMessageChatBotTitleStyle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTLazuliMessageChatBotTitleStyle;
  v5 = [(CTLazuliMessageChatBotTitleStyle *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kStyleKey"];
    style = v5->_style;
    v5->_style = v6;
  }

  return v5;
}

- (CTLazuliMessageChatBotTitleStyle)initWithReflection:(const MessageChatBotTitleStyle *)reflection
{
  v8.receiver = self;
  v8.super_class = CTLazuliMessageChatBotTitleStyle;
  v4 = [(CTLazuliMessageChatBotTitleStyle *)&v8 init];
  if (v4)
  {
    v5 = [[CTLazuliMessageChatBotFontStyle alloc] initWithReflection:reflection];
    style = v4->_style;
    v4->_style = v5;
  }

  return v4;
}

@end