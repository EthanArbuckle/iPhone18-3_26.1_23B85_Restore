@interface CTLazuliMessageChatBotCardStyle
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliMessageChatBotCardStyle:(id)a3;
- (CTLazuliMessageChatBotCardStyle)initWithCoder:(id)a3;
- (CTLazuliMessageChatBotCardStyle)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
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

- (BOOL)isEqualToCTLazuliMessageChatBotCardStyle:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliMessageChatBotCardStyle *)self uri];
  v6 = [v4 uri];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(CTLazuliMessageChatBotCardStyle *)self uri];
    v8 = [v4 uri];
    v9 = [v7 isEqual:v8];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliMessageChatBotCardStyle *)self isEqualToCTLazuliMessageChatBotCardStyle:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliMessageChatBotCardStyle allocWithZone:?];
  v6 = [(NSURL *)self->_uri copyWithZone:a3];
  [(CTLazuliMessageChatBotCardStyle *)v5 setUri:v6];

  return v5;
}

- (CTLazuliMessageChatBotCardStyle)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTLazuliMessageChatBotCardStyle;
  v5 = [(CTLazuliMessageChatBotCardStyle *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kUriKey"];
    uri = v5->_uri;
    v5->_uri = v6;
  }

  return v5;
}

- (CTLazuliMessageChatBotCardStyle)initWithReflection:(const void *)a3
{
  v15.receiver = self;
  v15.super_class = CTLazuliMessageChatBotCardStyle;
  v4 = [(CTLazuliMessageChatBotCardStyle *)&v15 init];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFF8];
    v6 = MEMORY[0x1E696AEC0];
    v7 = *(a3 + 23);
    v8 = *a3;
    v9 = [MEMORY[0x1E696AEC0] defaultCStringEncoding];
    if (v7 >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = v8;
    }

    v11 = [v6 stringWithCString:v10 encoding:v9];
    v12 = [v5 URLWithString:v11];
    uri = v4->_uri;
    v4->_uri = v12;
  }

  return v4;
}

@end