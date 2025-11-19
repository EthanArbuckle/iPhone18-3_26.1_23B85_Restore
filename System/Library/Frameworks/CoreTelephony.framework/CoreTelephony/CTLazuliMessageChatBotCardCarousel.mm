@interface CTLazuliMessageChatBotCardCarousel
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliMessageChatBotCardCarousel:(id)a3;
- (CTLazuliMessageChatBotCardCarousel)initWithCoder:(id)a3;
- (CTLazuliMessageChatBotCardCarousel)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliMessageChatBotCardCarousel

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliMessageChatBotCardCarousel *)self layout];
  [v3 appendFormat:@", layout = %@", v4];

  v5 = [(CTLazuliMessageChatBotCardCarousel *)self content];
  [v3 appendFormat:@", content = %@", v5];

  v6 = [(CTLazuliMessageChatBotCardCarousel *)self chipList];
  [v3 appendFormat:@", chipList = %@", v6];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliMessageChatBotCardCarousel:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliMessageChatBotCardCarousel *)self layout];
  v6 = [v4 layout];
  if (v5 != v6)
  {
    v19 = [(CTLazuliMessageChatBotCardCarousel *)self layout];
    v17 = [v4 layout];
    if (![v19 isEqualToCTLazuliMessageChatBotCardCarouselLayout:?])
    {
      v7 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  v8 = [(CTLazuliMessageChatBotCardCarousel *)self content];
  v9 = [v4 content];
  if (v8 != v9)
  {
    v18 = [(CTLazuliMessageChatBotCardCarousel *)self content];
    v16 = [v4 content];
    if (![v18 isEqualToArray:?])
    {
      v7 = 0;
LABEL_11:

      goto LABEL_12;
    }
  }

  v10 = [(CTLazuliMessageChatBotCardCarousel *)self chipList];
  v11 = [v4 chipList];
  v12 = v11;
  if (v10 == v11)
  {

    v7 = 1;
  }

  else
  {
    v13 = [(CTLazuliMessageChatBotCardCarousel *)self chipList];
    v14 = [v4 chipList];
    v7 = [v13 isEqualToCTLazuliChatBotSuggestedChipList:v14];
  }

  if (v8 != v9)
  {
    goto LABEL_11;
  }

LABEL_12:

  if (v5 != v6)
  {
    goto LABEL_13;
  }

LABEL_14:

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliMessageChatBotCardCarousel *)self isEqualToCTLazuliMessageChatBotCardCarousel:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliMessageChatBotCardCarousel allocWithZone:?];
  v6 = [(CTLazuliMessageChatBotCardCarouselLayout *)self->_layout copyWithZone:a3];
  [(CTLazuliMessageChatBotCardCarousel *)v5 setLayout:v6];

  v7 = [(NSArray *)self->_content copyWithZone:a3];
  [(CTLazuliMessageChatBotCardCarousel *)v5 setContent:v7];

  v8 = [(CTLazuliChatBotSuggestedChipList *)self->_chipList copyWithZone:a3];
  [(CTLazuliMessageChatBotCardCarousel *)v5 setChipList:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_layout forKey:@"kLayoutKey"];
  [v4 encodeObject:self->_content forKey:@"kContentKey"];
  [v4 encodeObject:self->_chipList forKey:@"kChipListKey"];
}

- (CTLazuliMessageChatBotCardCarousel)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CTLazuliMessageChatBotCardCarousel;
  v5 = [(CTLazuliMessageChatBotCardCarousel *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kLayoutKey"];
    layout = v5->_layout;
    v5->_layout = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"kContentKey"];
    content = v5->_content;
    v5->_content = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kChipListKey"];
    chipList = v5->_chipList;
    v5->_chipList = v13;
  }

  return v5;
}

- (CTLazuliMessageChatBotCardCarousel)initWithReflection:(const void *)a3
{
  v16.receiver = self;
  v16.super_class = CTLazuliMessageChatBotCardCarousel;
  v4 = [(CTLazuliMessageChatBotCardCarousel *)&v16 init];
  if (v4)
  {
    v5 = [[CTLazuliMessageChatBotCardCarouselLayout alloc] initWithReflection:a3];
    layout = v4->_layout;
    v4->_layout = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = *(a3 + 7);
    for (i = *(a3 + 8); v8 != i; v8 += 280)
    {
      v10 = [[CTLazuliChatBotCardContent alloc] initWithReflection:v8];
      [v7 addObject:v10];
    }

    objc_storeStrong(&v4->_content, v7);
    if (*(a3 + 104))
    {
      v11 = [CTLazuliChatBotSuggestedChipList alloc];
      if ((*(a3 + 104) & 1) == 0)
      {
        v15 = std::__throw_bad_optional_access[abi:nn200100]();

        _Unwind_Resume(v15);
      }

      v12 = [(CTLazuliChatBotSuggestedChipList *)v11 initWithReflection:a3 + 80];
    }

    else
    {
      v12 = 0;
    }

    chipList = v4->_chipList;
    v4->_chipList = v12;
  }

  return v4;
}

@end