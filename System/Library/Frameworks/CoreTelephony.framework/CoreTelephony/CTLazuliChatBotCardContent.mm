@interface CTLazuliChatBotCardContent
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotCardContent:(id)content;
- (CTLazuliChatBotCardContent)initWithCoder:(id)coder;
- (CTLazuliChatBotCardContent)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliChatBotCardContent

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  media = [(CTLazuliChatBotCardContent *)self media];
  [v3 appendFormat:@", media = %@", media];

  title = [(CTLazuliChatBotCardContent *)self title];
  [v3 appendFormat:@", title = %@", title];

  cardDescription = [(CTLazuliChatBotCardContent *)self cardDescription];
  [v3 appendFormat:@", cardDescription = %@", cardDescription];

  chipList = [(CTLazuliChatBotCardContent *)self chipList];
  [v3 appendFormat:@", chipList = %@", chipList];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotCardContent:(id)content
{
  contentCopy = content;
  media = [(CTLazuliChatBotCardContent *)self media];
  media2 = [contentCopy media];
  if (media != media2)
  {
    media3 = [(CTLazuliChatBotCardContent *)self media];
    media4 = [contentCopy media];
    if (![media3 isEqualToCTLazuliChatBotCardMedia:?])
    {
      v7 = 0;
LABEL_18:

      goto LABEL_19;
    }
  }

  title = [(CTLazuliChatBotCardContent *)self title];
  title2 = [contentCopy title];
  if (title == title2 || (-[CTLazuliChatBotCardContent title](self, "title"), v22 = objc_claimAutoreleasedReturnValue(), [contentCopy title], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "isEqualToCTLazuliChatBotCardTitle:")))
  {
    cardDescription = [(CTLazuliChatBotCardContent *)self cardDescription];
    cardDescription2 = [contentCopy cardDescription];
    if (cardDescription == cardDescription2 || (-[CTLazuliChatBotCardContent cardDescription](self, "cardDescription"), v20 = objc_claimAutoreleasedReturnValue(), [contentCopy cardDescription], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "isEqualToCTLazuliChatBotCardDescription:")))
    {
      chipList = [(CTLazuliChatBotCardContent *)self chipList];
      chipList2 = [contentCopy chipList];
      v14 = chipList2;
      if (chipList == chipList2)
      {

        v7 = 1;
      }

      else
      {
        chipList3 = [(CTLazuliChatBotCardContent *)self chipList];
        chipList4 = [contentCopy chipList];
        v7 = [chipList3 isEqualToCTLazuliChatBotSuggestedChipList:chipList4];
      }

      if (cardDescription == cardDescription2)
      {
LABEL_15:

        v8 = title;
        v9 = title2;
        if (title == title2)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_15;
  }

  v7 = 0;
  v8 = title;
  v9 = title2;
LABEL_16:

LABEL_17:
  if (media != media2)
  {
    goto LABEL_18;
  }

LABEL_19:

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotCardContent *)self isEqualToCTLazuliChatBotCardContent:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotCardContent allocWithZone:?];
  v6 = [(CTLazuliChatBotCardMedia *)self->_media copyWithZone:zone];
  [(CTLazuliChatBotCardContent *)v5 setMedia:v6];

  v7 = [(CTLazuliChatBotCardTitle *)self->_title copyWithZone:zone];
  [(CTLazuliChatBotCardContent *)v5 setTitle:v7];

  v8 = [(CTLazuliChatBotCardDescription *)self->_cardDescription copyWithZone:zone];
  [(CTLazuliChatBotCardContent *)v5 setCardDescription:v8];

  v9 = [(CTLazuliChatBotSuggestedChipList *)self->_chipList copyWithZone:zone];
  [(CTLazuliChatBotCardContent *)v5 setChipList:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_media forKey:@"kMediaKey"];
  [coderCopy encodeObject:self->_title forKey:@"kTitleKey"];
  [coderCopy encodeObject:self->_cardDescription forKey:@"kCardDescriptionKey"];
  [coderCopy encodeObject:self->_chipList forKey:@"kChipListKey"];
}

- (CTLazuliChatBotCardContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CTLazuliChatBotCardContent;
  v5 = [(CTLazuliChatBotCardContent *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMediaKey"];
    media = v5->_media;
    v5->_media = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kTitleKey"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCardDescriptionKey"];
    cardDescription = v5->_cardDescription;
    v5->_cardDescription = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kChipListKey"];
    chipList = v5->_chipList;
    v5->_chipList = v12;
  }

  return v5;
}

- (CTLazuliChatBotCardContent)initWithReflection:(const void *)reflection
{
  v21.receiver = self;
  v21.super_class = CTLazuliChatBotCardContent;
  v4 = [(CTLazuliChatBotCardContent *)&v21 init];
  v5 = v4;
  if (v4)
  {
    if (*(reflection + 176) == 1)
    {
      v6 = v4;
      v7 = [CTLazuliChatBotCardMedia alloc];
      if ((*(reflection + 176) & 1) == 0)
      {
        goto LABEL_20;
      }

      v8 = [(CTLazuliChatBotCardMedia *)v7 initWithReflection:reflection];
    }

    else
    {
      v8 = 0;
    }

    media = v5->_media;
    v5->_media = v8;

    if (*(reflection + 208) == 1)
    {
      v6 = v5;
      v10 = [CTLazuliChatBotCardTitle alloc];
      if ((*(reflection + 208) & 1) == 0)
      {
        goto LABEL_20;
      }

      v11 = [(CTLazuliChatBotCardTitle *)v10 initWithReflection:reflection + 184];
    }

    else
    {
      v11 = 0;
    }

    title = v5->_title;
    v5->_title = v11;

    if (*(reflection + 240) == 1)
    {
      v6 = v5;
      v13 = [CTLazuliChatBotCardDescription alloc];
      if ((*(reflection + 240) & 1) == 0)
      {
        goto LABEL_20;
      }

      v14 = [(CTLazuliChatBotCardDescription *)v13 initWithReflection:reflection + 216];
    }

    else
    {
      v14 = 0;
    }

    cardDescription = v5->_cardDescription;
    v5->_cardDescription = v14;

    if (*(reflection + 272) != 1)
    {
      v17 = 0;
      goto LABEL_18;
    }

    v6 = v5;
    v16 = [CTLazuliChatBotSuggestedChipList alloc];
    if (*(reflection + 272))
    {
      v17 = [(CTLazuliChatBotSuggestedChipList *)v16 initWithReflection:reflection + 248];
LABEL_18:
      chipList = v5->_chipList;
      v5->_chipList = v17;

      return v5;
    }

LABEL_20:
    v20 = std::__throw_bad_optional_access[abi:nn200100]();

    _Unwind_Resume(v20);
  }

  return v5;
}

@end