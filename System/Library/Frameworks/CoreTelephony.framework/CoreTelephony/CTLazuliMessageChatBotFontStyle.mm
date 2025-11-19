@interface CTLazuliMessageChatBotFontStyle
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliMessageChatBotFontStyle:(id)a3;
- (CTLazuliMessageChatBotFontStyle)initWithCoder:(id)a3;
- (CTLazuliMessageChatBotFontStyle)initWithReflection:(const MessageChatBotFontStyle *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (BOOL)isEqualToCTLazuliMessageChatBotFontStyle:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliMessageChatBotFontStyle *)self bold];
  if (v5 == [v4 bold] && (v6 = -[CTLazuliMessageChatBotFontStyle italics](self, "italics"), v6 == objc_msgSend(v4, "italics")))
  {
    v8 = [(CTLazuliMessageChatBotFontStyle *)self underline];
    v7 = v8 ^ [v4 underline] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliMessageChatBotFontStyle *)self isEqualToCTLazuliMessageChatBotFontStyle:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CTLazuliMessageChatBotFontStyle allocWithZone:a3];
  [(CTLazuliMessageChatBotFontStyle *)v4 setBold:self->_bold];
  [(CTLazuliMessageChatBotFontStyle *)v4 setItalics:self->_italics];
  [(CTLazuliMessageChatBotFontStyle *)v4 setUnderline:self->_underline];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:self->_bold forKey:@"kBoldKey"];
  [v4 encodeBool:self->_italics forKey:@"kItalicsKey"];
  [v4 encodeBool:self->_underline forKey:@"kUnderlineKey"];
}

- (CTLazuliMessageChatBotFontStyle)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CTLazuliMessageChatBotFontStyle;
  v5 = [(CTLazuliMessageChatBotFontStyle *)&v7 init];
  if (v5)
  {
    v5->_bold = [v4 decodeBoolForKey:@"kBoldKey"];
    v5->_italics = [v4 decodeBoolForKey:@"kItalicsKey"];
    v5->_underline = [v4 decodeBoolForKey:@"kUnderlineKey"];
  }

  return v5;
}

- (CTLazuliMessageChatBotFontStyle)initWithReflection:(const MessageChatBotFontStyle *)a3
{
  v5.receiver = self;
  v5.super_class = CTLazuliMessageChatBotFontStyle;
  result = [(CTLazuliMessageChatBotFontStyle *)&v5 init];
  if (result)
  {
    result->_bold = a3->var0;
    result->_italics = a3->var1;
    result->_underline = a3->var2;
  }

  return result;
}

@end