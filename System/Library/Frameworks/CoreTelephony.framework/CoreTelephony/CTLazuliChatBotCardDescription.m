@interface CTLazuliChatBotCardDescription
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotCardDescription:(id)a3;
- (CTLazuliChatBotCardDescription)initWithCoder:(id)a3;
- (CTLazuliChatBotCardDescription)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CTLazuliChatBotCardDescription

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotCardDescription *)self text];
  [v3 appendFormat:@", text = %@", v4];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotCardDescription:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliChatBotCardDescription *)self text];
  v6 = [v4 text];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(CTLazuliChatBotCardDescription *)self text];
    v8 = [v4 text];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotCardDescription *)self isEqualToCTLazuliChatBotCardDescription:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotCardDescription allocWithZone:?];
  v6 = [(NSString *)self->_text copyWithZone:a3];
  [(CTLazuliChatBotCardDescription *)v5 setText:v6];

  return v5;
}

- (CTLazuliChatBotCardDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTLazuliChatBotCardDescription;
  v5 = [(CTLazuliChatBotCardDescription *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kTextKey"];
    text = v5->_text;
    v5->_text = v6;
  }

  return v5;
}

- (CTLazuliChatBotCardDescription)initWithReflection:(const void *)a3
{
  v9.receiver = self;
  v9.super_class = CTLazuliChatBotCardDescription;
  v4 = [(CTLazuliChatBotCardDescription *)&v9 init];
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
    text = v4->_text;
    v4->_text = v6;
  }

  return v4;
}

@end