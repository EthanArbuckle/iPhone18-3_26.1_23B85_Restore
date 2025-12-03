@interface CTLazuliMessageChatBotCard
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliMessageChatBotCard:(id)card;
- (CTLazuliMessageChatBotCard)initWithCoder:(id)coder;
- (CTLazuliMessageChatBotCard)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliMessageChatBotCard

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  card = [(CTLazuliMessageChatBotCard *)self card];
  [v3 appendFormat:@", card = %@", card];

  chipList = [(CTLazuliMessageChatBotCard *)self chipList];
  [v3 appendFormat:@", chipList = %@", chipList];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliMessageChatBotCard:(id)card
{
  cardCopy = card;
  card = [(CTLazuliMessageChatBotCard *)self card];
  card2 = [cardCopy card];
  if (card != card2)
  {
    card3 = [(CTLazuliMessageChatBotCard *)self card];
    card4 = [cardCopy card];
    if (![card3 isEqualToCTLazuliChatBotCard:card4])
    {
      v9 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  chipList = [(CTLazuliMessageChatBotCard *)self chipList];
  chipList2 = [cardCopy chipList];
  v12 = chipList2;
  if (chipList == chipList2)
  {

    v9 = 1;
  }

  else
  {
    chipList3 = [(CTLazuliMessageChatBotCard *)self chipList];
    chipList4 = [cardCopy chipList];
    v9 = [chipList3 isEqualToCTLazuliChatBotSuggestedChipList:chipList4];
  }

  if (card != card2)
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliMessageChatBotCard *)self isEqualToCTLazuliMessageChatBotCard:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliMessageChatBotCard allocWithZone:?];
  v6 = [(CTLazuliChatBotCard *)self->_card copyWithZone:zone];
  [(CTLazuliMessageChatBotCard *)v5 setCard:v6];

  v7 = [(CTLazuliChatBotSuggestedChipList *)self->_chipList copyWithZone:zone];
  [(CTLazuliMessageChatBotCard *)v5 setChipList:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_card forKey:@"kCardKey"];
  [coderCopy encodeObject:self->_chipList forKey:@"kChipListKey"];
}

- (CTLazuliMessageChatBotCard)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CTLazuliMessageChatBotCard;
  v5 = [(CTLazuliMessageChatBotCard *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCardKey"];
    card = v5->_card;
    v5->_card = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kChipListKey"];
    chipList = v5->_chipList;
    v5->_chipList = v8;
  }

  return v5;
}

- (CTLazuliMessageChatBotCard)initWithReflection:(const void *)reflection
{
  v13.receiver = self;
  v13.super_class = CTLazuliMessageChatBotCard;
  v4 = [(CTLazuliMessageChatBotCard *)&v13 init];
  if (v4)
  {
    v5 = [[CTLazuliChatBotCard alloc] initWithReflection:reflection];
    card = v4->_card;
    v4->_card = v5;

    if (*(reflection + 352) == 1)
    {
      v7 = v4;
      v8 = [CTLazuliChatBotSuggestedChipList alloc];
      if ((*(reflection + 352) & 1) == 0)
      {
        v12 = std::__throw_bad_optional_access[abi:nn200100]();

        _Unwind_Resume(v12);
      }

      v9 = [(CTLazuliChatBotSuggestedChipList *)v8 initWithReflection:reflection + 328];
    }

    else
    {
      v9 = 0;
    }

    chipList = v4->_chipList;
    v4->_chipList = v9;
  }

  return v4;
}

@end