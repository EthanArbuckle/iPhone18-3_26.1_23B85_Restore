@interface CTLazuliChatBotCard
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotCard:(id)a3;
- (CTLazuliChatBotCard)initWithCoder:(id)a3;
- (CTLazuliChatBotCard)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliChatBotCard

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotCard *)self layout];
  [v3 appendFormat:@", layout = %@", v4];

  v5 = [(CTLazuliChatBotCard *)self content];
  [v3 appendFormat:@", content = %@", v5];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotCard:(id)a3
{
  v6 = a3;
  v7 = [(CTLazuliChatBotCard *)self layout];
  v8 = [v6 layout];
  if (v7 != v8)
  {
    v3 = [(CTLazuliChatBotCard *)self layout];
    v4 = [v6 layout];
    if (![v3 isEqualToCTLazuliChatBotCardLayout:v4])
    {
      v9 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  v10 = [(CTLazuliChatBotCard *)self content];
  v11 = [v6 content];
  v12 = v11;
  if (v10 == v11)
  {

    v9 = 1;
  }

  else
  {
    v13 = [(CTLazuliChatBotCard *)self content];
    v14 = [v6 content];
    v9 = [v13 isEqualToCTLazuliChatBotCardContent:v14];
  }

  if (v7 != v8)
  {
    goto LABEL_8;
  }

LABEL_9:

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotCard *)self isEqualToCTLazuliChatBotCard:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotCard allocWithZone:?];
  v6 = [(CTLazuliChatBotCardLayout *)self->_layout copyWithZone:a3];
  [(CTLazuliChatBotCard *)v5 setLayout:v6];

  v7 = [(CTLazuliChatBotCardContent *)self->_content copyWithZone:a3];
  [(CTLazuliChatBotCard *)v5 setContent:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_layout forKey:@"kLayoutKey"];
  [v4 encodeObject:self->_content forKey:@"kContentKey"];
}

- (CTLazuliChatBotCard)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CTLazuliChatBotCard;
  v5 = [(CTLazuliChatBotCard *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kLayoutKey"];
    layout = v5->_layout;
    v5->_layout = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kContentKey"];
    content = v5->_content;
    v5->_content = v8;
  }

  return v5;
}

- (CTLazuliChatBotCard)initWithReflection:(const void *)a3
{
  v10.receiver = self;
  v10.super_class = CTLazuliChatBotCard;
  v4 = [(CTLazuliChatBotCard *)&v10 init];
  if (v4)
  {
    v5 = [[CTLazuliChatBotCardLayout alloc] initWithReflection:a3];
    layout = v4->_layout;
    v4->_layout = v5;

    v7 = [[CTLazuliChatBotCardContent alloc] initWithReflection:a3 + 48];
    content = v4->_content;
    v4->_content = v7;
  }

  return v4;
}

@end