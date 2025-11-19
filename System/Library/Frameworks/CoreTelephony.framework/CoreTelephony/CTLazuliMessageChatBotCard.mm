@interface CTLazuliMessageChatBotCard
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliMessageChatBotCard:(id)a3;
- (CTLazuliMessageChatBotCard)initWithCoder:(id)a3;
- (CTLazuliMessageChatBotCard)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliMessageChatBotCard

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliMessageChatBotCard *)self card];
  [v3 appendFormat:@", card = %@", v4];

  v5 = [(CTLazuliMessageChatBotCard *)self chipList];
  [v3 appendFormat:@", chipList = %@", v5];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliMessageChatBotCard:(id)a3
{
  v6 = a3;
  v7 = [(CTLazuliMessageChatBotCard *)self card];
  v8 = [v6 card];
  if (v7 != v8)
  {
    v3 = [(CTLazuliMessageChatBotCard *)self card];
    v4 = [v6 card];
    if (![v3 isEqualToCTLazuliChatBotCard:v4])
    {
      v9 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  v10 = [(CTLazuliMessageChatBotCard *)self chipList];
  v11 = [v6 chipList];
  v12 = v11;
  if (v10 == v11)
  {

    v9 = 1;
  }

  else
  {
    v13 = [(CTLazuliMessageChatBotCard *)self chipList];
    v14 = [v6 chipList];
    v9 = [v13 isEqualToCTLazuliChatBotSuggestedChipList:v14];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliMessageChatBotCard *)self isEqualToCTLazuliMessageChatBotCard:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliMessageChatBotCard allocWithZone:?];
  v6 = [(CTLazuliChatBotCard *)self->_card copyWithZone:a3];
  [(CTLazuliMessageChatBotCard *)v5 setCard:v6];

  v7 = [(CTLazuliChatBotSuggestedChipList *)self->_chipList copyWithZone:a3];
  [(CTLazuliMessageChatBotCard *)v5 setChipList:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_card forKey:@"kCardKey"];
  [v4 encodeObject:self->_chipList forKey:@"kChipListKey"];
}

- (CTLazuliMessageChatBotCard)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CTLazuliMessageChatBotCard;
  v5 = [(CTLazuliMessageChatBotCard *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCardKey"];
    card = v5->_card;
    v5->_card = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kChipListKey"];
    chipList = v5->_chipList;
    v5->_chipList = v8;
  }

  return v5;
}

- (CTLazuliMessageChatBotCard)initWithReflection:(const void *)a3
{
  v13.receiver = self;
  v13.super_class = CTLazuliMessageChatBotCard;
  v4 = [(CTLazuliMessageChatBotCard *)&v13 init];
  if (v4)
  {
    v5 = [[CTLazuliChatBotCard alloc] initWithReflection:a3];
    card = v4->_card;
    v4->_card = v5;

    if (*(a3 + 352) == 1)
    {
      v7 = v4;
      v8 = [CTLazuliChatBotSuggestedChipList alloc];
      if ((*(a3 + 352) & 1) == 0)
      {
        v12 = std::__throw_bad_optional_access[abi:nn200100]();

        _Unwind_Resume(v12);
      }

      v9 = [(CTLazuliChatBotSuggestedChipList *)v8 initWithReflection:a3 + 328];
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