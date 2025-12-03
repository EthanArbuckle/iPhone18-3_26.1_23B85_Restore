@interface CTLazuliChatBotCard
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotCard:(id)card;
- (CTLazuliChatBotCard)initWithCoder:(id)coder;
- (CTLazuliChatBotCard)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliChatBotCard

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  layout = [(CTLazuliChatBotCard *)self layout];
  [v3 appendFormat:@", layout = %@", layout];

  content = [(CTLazuliChatBotCard *)self content];
  [v3 appendFormat:@", content = %@", content];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotCard:(id)card
{
  cardCopy = card;
  layout = [(CTLazuliChatBotCard *)self layout];
  layout2 = [cardCopy layout];
  if (layout != layout2)
  {
    layout3 = [(CTLazuliChatBotCard *)self layout];
    layout4 = [cardCopy layout];
    if (![layout3 isEqualToCTLazuliChatBotCardLayout:layout4])
    {
      v9 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  content = [(CTLazuliChatBotCard *)self content];
  content2 = [cardCopy content];
  v12 = content2;
  if (content == content2)
  {

    v9 = 1;
  }

  else
  {
    content3 = [(CTLazuliChatBotCard *)self content];
    content4 = [cardCopy content];
    v9 = [content3 isEqualToCTLazuliChatBotCardContent:content4];
  }

  if (layout != layout2)
  {
    goto LABEL_8;
  }

LABEL_9:

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotCard *)self isEqualToCTLazuliChatBotCard:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotCard allocWithZone:?];
  v6 = [(CTLazuliChatBotCardLayout *)self->_layout copyWithZone:zone];
  [(CTLazuliChatBotCard *)v5 setLayout:v6];

  v7 = [(CTLazuliChatBotCardContent *)self->_content copyWithZone:zone];
  [(CTLazuliChatBotCard *)v5 setContent:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_layout forKey:@"kLayoutKey"];
  [coderCopy encodeObject:self->_content forKey:@"kContentKey"];
}

- (CTLazuliChatBotCard)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CTLazuliChatBotCard;
  v5 = [(CTLazuliChatBotCard *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kLayoutKey"];
    layout = v5->_layout;
    v5->_layout = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kContentKey"];
    content = v5->_content;
    v5->_content = v8;
  }

  return v5;
}

- (CTLazuliChatBotCard)initWithReflection:(const void *)reflection
{
  v10.receiver = self;
  v10.super_class = CTLazuliChatBotCard;
  v4 = [(CTLazuliChatBotCard *)&v10 init];
  if (v4)
  {
    v5 = [[CTLazuliChatBotCardLayout alloc] initWithReflection:reflection];
    layout = v4->_layout;
    v4->_layout = v5;

    v7 = [[CTLazuliChatBotCardContent alloc] initWithReflection:reflection + 48];
    content = v4->_content;
    v4->_content = v7;
  }

  return v4;
}

@end