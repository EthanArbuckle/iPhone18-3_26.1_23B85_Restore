@interface CTLazuliMessageChatBotTitleStyle
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliMessageChatBotTitleStyle:(id)a3;
- (CTLazuliMessageChatBotTitleStyle)initWithCoder:(id)a3;
- (CTLazuliMessageChatBotTitleStyle)initWithReflection:(const MessageChatBotTitleStyle *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CTLazuliMessageChatBotTitleStyle

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliMessageChatBotTitleStyle *)self style];
  [v3 appendFormat:@", style = %@", v4];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliMessageChatBotTitleStyle:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliMessageChatBotTitleStyle *)self style];
  v6 = [v4 style];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(CTLazuliMessageChatBotTitleStyle *)self style];
    v8 = [v4 style];
    v9 = [v7 isEqualToCTLazuliMessageChatBotFontStyle:v8];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliMessageChatBotTitleStyle *)self isEqualToCTLazuliMessageChatBotTitleStyle:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliMessageChatBotTitleStyle allocWithZone:?];
  v6 = [(CTLazuliMessageChatBotFontStyle *)self->_style copyWithZone:a3];
  [(CTLazuliMessageChatBotTitleStyle *)v5 setStyle:v6];

  return v5;
}

- (CTLazuliMessageChatBotTitleStyle)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTLazuliMessageChatBotTitleStyle;
  v5 = [(CTLazuliMessageChatBotTitleStyle *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kStyleKey"];
    style = v5->_style;
    v5->_style = v6;
  }

  return v5;
}

- (CTLazuliMessageChatBotTitleStyle)initWithReflection:(const MessageChatBotTitleStyle *)a3
{
  v8.receiver = self;
  v8.super_class = CTLazuliMessageChatBotTitleStyle;
  v4 = [(CTLazuliMessageChatBotTitleStyle *)&v8 init];
  if (v4)
  {
    v5 = [[CTLazuliMessageChatBotFontStyle alloc] initWithReflection:a3];
    style = v4->_style;
    v4->_style = v5;
  }

  return v4;
}

@end