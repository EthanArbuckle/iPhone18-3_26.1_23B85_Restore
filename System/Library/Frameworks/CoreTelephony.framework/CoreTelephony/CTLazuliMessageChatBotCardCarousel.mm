@interface CTLazuliMessageChatBotCardCarousel
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliMessageChatBotCardCarousel:(id)carousel;
- (CTLazuliMessageChatBotCardCarousel)initWithCoder:(id)coder;
- (CTLazuliMessageChatBotCardCarousel)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliMessageChatBotCardCarousel

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  layout = [(CTLazuliMessageChatBotCardCarousel *)self layout];
  [v3 appendFormat:@", layout = %@", layout];

  content = [(CTLazuliMessageChatBotCardCarousel *)self content];
  [v3 appendFormat:@", content = %@", content];

  chipList = [(CTLazuliMessageChatBotCardCarousel *)self chipList];
  [v3 appendFormat:@", chipList = %@", chipList];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliMessageChatBotCardCarousel:(id)carousel
{
  carouselCopy = carousel;
  layout = [(CTLazuliMessageChatBotCardCarousel *)self layout];
  layout2 = [carouselCopy layout];
  if (layout != layout2)
  {
    layout3 = [(CTLazuliMessageChatBotCardCarousel *)self layout];
    layout4 = [carouselCopy layout];
    if (![layout3 isEqualToCTLazuliMessageChatBotCardCarouselLayout:?])
    {
      v7 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  content = [(CTLazuliMessageChatBotCardCarousel *)self content];
  content2 = [carouselCopy content];
  if (content != content2)
  {
    content3 = [(CTLazuliMessageChatBotCardCarousel *)self content];
    content4 = [carouselCopy content];
    if (![content3 isEqualToArray:?])
    {
      v7 = 0;
LABEL_11:

      goto LABEL_12;
    }
  }

  chipList = [(CTLazuliMessageChatBotCardCarousel *)self chipList];
  chipList2 = [carouselCopy chipList];
  v12 = chipList2;
  if (chipList == chipList2)
  {

    v7 = 1;
  }

  else
  {
    chipList3 = [(CTLazuliMessageChatBotCardCarousel *)self chipList];
    chipList4 = [carouselCopy chipList];
    v7 = [chipList3 isEqualToCTLazuliChatBotSuggestedChipList:chipList4];
  }

  if (content != content2)
  {
    goto LABEL_11;
  }

LABEL_12:

  if (layout != layout2)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v7;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliMessageChatBotCardCarousel *)self isEqualToCTLazuliMessageChatBotCardCarousel:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliMessageChatBotCardCarousel allocWithZone:?];
  v6 = [(CTLazuliMessageChatBotCardCarouselLayout *)self->_layout copyWithZone:zone];
  [(CTLazuliMessageChatBotCardCarousel *)v5 setLayout:v6];

  v7 = [(NSArray *)self->_content copyWithZone:zone];
  [(CTLazuliMessageChatBotCardCarousel *)v5 setContent:v7];

  v8 = [(CTLazuliChatBotSuggestedChipList *)self->_chipList copyWithZone:zone];
  [(CTLazuliMessageChatBotCardCarousel *)v5 setChipList:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_layout forKey:@"kLayoutKey"];
  [coderCopy encodeObject:self->_content forKey:@"kContentKey"];
  [coderCopy encodeObject:self->_chipList forKey:@"kChipListKey"];
}

- (CTLazuliMessageChatBotCardCarousel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CTLazuliMessageChatBotCardCarousel;
  v5 = [(CTLazuliMessageChatBotCardCarousel *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kLayoutKey"];
    layout = v5->_layout;
    v5->_layout = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"kContentKey"];
    content = v5->_content;
    v5->_content = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kChipListKey"];
    chipList = v5->_chipList;
    v5->_chipList = v13;
  }

  return v5;
}

- (CTLazuliMessageChatBotCardCarousel)initWithReflection:(const void *)reflection
{
  v16.receiver = self;
  v16.super_class = CTLazuliMessageChatBotCardCarousel;
  v4 = [(CTLazuliMessageChatBotCardCarousel *)&v16 init];
  if (v4)
  {
    v5 = [[CTLazuliMessageChatBotCardCarouselLayout alloc] initWithReflection:reflection];
    layout = v4->_layout;
    v4->_layout = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = *(reflection + 7);
    for (i = *(reflection + 8); v8 != i; v8 += 280)
    {
      v10 = [[CTLazuliChatBotCardContent alloc] initWithReflection:v8];
      [v7 addObject:v10];
    }

    objc_storeStrong(&v4->_content, v7);
    if (*(reflection + 104))
    {
      v11 = [CTLazuliChatBotSuggestedChipList alloc];
      if ((*(reflection + 104) & 1) == 0)
      {
        v15 = std::__throw_bad_optional_access[abi:nn200100]();

        _Unwind_Resume(v15);
      }

      v12 = [(CTLazuliChatBotSuggestedChipList *)v11 initWithReflection:reflection + 80];
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