@interface CTLazuliChatBotMenuL2Content
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotMenuL2Content:(id)a3;
- (CTLazuliChatBotMenuL2Content)initWithCoder:(id)a3;
- (CTLazuliChatBotMenuL2Content)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CTLazuliChatBotMenuL2Content

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotMenuL2Content *)self chip];
  [v3 appendFormat:@", chip = %@", v4];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotMenuL2Content:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliChatBotMenuL2Content *)self chip];
  v6 = [v4 chip];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(CTLazuliChatBotMenuL2Content *)self chip];
    v8 = [v4 chip];
    v9 = [v7 isEqualToCTLazuliChatBotSuggestedChip:v8];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotMenuL2Content *)self isEqualToCTLazuliChatBotMenuL2Content:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotMenuL2Content allocWithZone:?];
  v6 = [(CTLazuliChatBotSuggestedChip *)self->_chip copyWithZone:a3];
  [(CTLazuliChatBotMenuL2Content *)v5 setChip:v6];

  return v5;
}

- (CTLazuliChatBotMenuL2Content)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTLazuliChatBotMenuL2Content;
  v5 = [(CTLazuliChatBotMenuL2Content *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kChipKey"];
    chip = v5->_chip;
    v5->_chip = v6;
  }

  return v5;
}

- (CTLazuliChatBotMenuL2Content)initWithReflection:(const void *)a3
{
  v8.receiver = self;
  v8.super_class = CTLazuliChatBotMenuL2Content;
  v4 = [(CTLazuliChatBotMenuL2Content *)&v8 init];
  if (v4)
  {
    v5 = [[CTLazuliChatBotSuggestedChip alloc] initWithReflection:a3];
    chip = v4->_chip;
    v4->_chip = v5;
  }

  return v4;
}

@end