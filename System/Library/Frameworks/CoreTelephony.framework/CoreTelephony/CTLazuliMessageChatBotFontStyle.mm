@interface CTLazuliMessageChatBotFontStyle
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliMessageChatBotFontStyle:(id)style;
- (CTLazuliMessageChatBotFontStyle)initWithCoder:(id)coder;
- (CTLazuliMessageChatBotFontStyle)initWithReflection:(const MessageChatBotFontStyle *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliMessageChatBotFontStyle

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  [v3 appendFormat:@", bold = %d", -[CTLazuliMessageChatBotFontStyle bold](self, "bold")];
  [v3 appendFormat:@", italics = %d", -[CTLazuliMessageChatBotFontStyle italics](self, "italics")];
  [v3 appendFormat:@", underline = %d", -[CTLazuliMessageChatBotFontStyle underline](self, "underline")];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliMessageChatBotFontStyle:(id)style
{
  styleCopy = style;
  bold = [(CTLazuliMessageChatBotFontStyle *)self bold];
  if (bold == [styleCopy bold] && (v6 = -[CTLazuliMessageChatBotFontStyle italics](self, "italics"), v6 == objc_msgSend(styleCopy, "italics")))
  {
    underline = [(CTLazuliMessageChatBotFontStyle *)self underline];
    v7 = underline ^ [styleCopy underline] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliMessageChatBotFontStyle *)self isEqualToCTLazuliMessageChatBotFontStyle:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CTLazuliMessageChatBotFontStyle allocWithZone:zone];
  [(CTLazuliMessageChatBotFontStyle *)v4 setBold:self->_bold];
  [(CTLazuliMessageChatBotFontStyle *)v4 setItalics:self->_italics];
  [(CTLazuliMessageChatBotFontStyle *)v4 setUnderline:self->_underline];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:self->_bold forKey:@"kBoldKey"];
  [coderCopy encodeBool:self->_italics forKey:@"kItalicsKey"];
  [coderCopy encodeBool:self->_underline forKey:@"kUnderlineKey"];
}

- (CTLazuliMessageChatBotFontStyle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CTLazuliMessageChatBotFontStyle;
  v5 = [(CTLazuliMessageChatBotFontStyle *)&v7 init];
  if (v5)
  {
    v5->_bold = [coderCopy decodeBoolForKey:@"kBoldKey"];
    v5->_italics = [coderCopy decodeBoolForKey:@"kItalicsKey"];
    v5->_underline = [coderCopy decodeBoolForKey:@"kUnderlineKey"];
  }

  return v5;
}

- (CTLazuliMessageChatBotFontStyle)initWithReflection:(const MessageChatBotFontStyle *)reflection
{
  v5.receiver = self;
  v5.super_class = CTLazuliMessageChatBotFontStyle;
  result = [(CTLazuliMessageChatBotFontStyle *)&v5 init];
  if (result)
  {
    result->_bold = reflection->var0;
    result->_italics = reflection->var1;
    result->_underline = reflection->var2;
  }

  return result;
}

@end