@interface CTLazuliChatBotMenuL2Content
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotMenuL2Content:(id)content;
- (CTLazuliChatBotMenuL2Content)initWithCoder:(id)coder;
- (CTLazuliChatBotMenuL2Content)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CTLazuliChatBotMenuL2Content

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  chip = [(CTLazuliChatBotMenuL2Content *)self chip];
  [v3 appendFormat:@", chip = %@", chip];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotMenuL2Content:(id)content
{
  contentCopy = content;
  chip = [(CTLazuliChatBotMenuL2Content *)self chip];
  chip2 = [contentCopy chip];
  if (chip == chip2)
  {
    v9 = 1;
  }

  else
  {
    chip3 = [(CTLazuliChatBotMenuL2Content *)self chip];
    chip4 = [contentCopy chip];
    v9 = [chip3 isEqualToCTLazuliChatBotSuggestedChip:chip4];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotMenuL2Content *)self isEqualToCTLazuliChatBotMenuL2Content:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotMenuL2Content allocWithZone:?];
  v6 = [(CTLazuliChatBotSuggestedChip *)self->_chip copyWithZone:zone];
  [(CTLazuliChatBotMenuL2Content *)v5 setChip:v6];

  return v5;
}

- (CTLazuliChatBotMenuL2Content)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTLazuliChatBotMenuL2Content;
  v5 = [(CTLazuliChatBotMenuL2Content *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kChipKey"];
    chip = v5->_chip;
    v5->_chip = v6;
  }

  return v5;
}

- (CTLazuliChatBotMenuL2Content)initWithReflection:(const void *)reflection
{
  v8.receiver = self;
  v8.super_class = CTLazuliChatBotMenuL2Content;
  v4 = [(CTLazuliChatBotMenuL2Content *)&v8 init];
  if (v4)
  {
    v5 = [[CTLazuliChatBotSuggestedChip alloc] initWithReflection:reflection];
    chip = v4->_chip;
    v4->_chip = v5;
  }

  return v4;
}

@end