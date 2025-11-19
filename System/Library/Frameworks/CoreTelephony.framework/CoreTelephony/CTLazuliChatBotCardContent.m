@interface CTLazuliChatBotCardContent
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotCardContent:(id)a3;
- (CTLazuliChatBotCardContent)initWithCoder:(id)a3;
- (CTLazuliChatBotCardContent)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliChatBotCardContent

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotCardContent *)self media];
  [v3 appendFormat:@", media = %@", v4];

  v5 = [(CTLazuliChatBotCardContent *)self title];
  [v3 appendFormat:@", title = %@", v5];

  v6 = [(CTLazuliChatBotCardContent *)self cardDescription];
  [v3 appendFormat:@", cardDescription = %@", v6];

  v7 = [(CTLazuliChatBotCardContent *)self chipList];
  [v3 appendFormat:@", chipList = %@", v7];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotCardContent:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliChatBotCardContent *)self media];
  v6 = [v4 media];
  if (v5 != v6)
  {
    v24 = [(CTLazuliChatBotCardContent *)self media];
    v21 = [v4 media];
    if (![v24 isEqualToCTLazuliChatBotCardMedia:?])
    {
      v7 = 0;
LABEL_18:

      goto LABEL_19;
    }
  }

  v25 = [(CTLazuliChatBotCardContent *)self title];
  v23 = [v4 title];
  if (v25 == v23 || (-[CTLazuliChatBotCardContent title](self, "title"), v22 = objc_claimAutoreleasedReturnValue(), [v4 title], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "isEqualToCTLazuliChatBotCardTitle:")))
  {
    v10 = [(CTLazuliChatBotCardContent *)self cardDescription];
    v11 = [v4 cardDescription];
    if (v10 == v11 || (-[CTLazuliChatBotCardContent cardDescription](self, "cardDescription"), v20 = objc_claimAutoreleasedReturnValue(), [v4 cardDescription], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "isEqualToCTLazuliChatBotCardDescription:")))
    {
      v12 = [(CTLazuliChatBotCardContent *)self chipList];
      v13 = [v4 chipList];
      v14 = v13;
      if (v12 == v13)
      {

        v7 = 1;
      }

      else
      {
        v15 = [(CTLazuliChatBotCardContent *)self chipList];
        v16 = [v4 chipList];
        v7 = [v15 isEqualToCTLazuliChatBotSuggestedChipList:v16];
      }

      if (v10 == v11)
      {
LABEL_15:

        v8 = v25;
        v9 = v23;
        if (v25 == v23)
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
  v8 = v25;
  v9 = v23;
LABEL_16:

LABEL_17:
  if (v5 != v6)
  {
    goto LABEL_18;
  }

LABEL_19:

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotCardContent *)self isEqualToCTLazuliChatBotCardContent:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotCardContent allocWithZone:?];
  v6 = [(CTLazuliChatBotCardMedia *)self->_media copyWithZone:a3];
  [(CTLazuliChatBotCardContent *)v5 setMedia:v6];

  v7 = [(CTLazuliChatBotCardTitle *)self->_title copyWithZone:a3];
  [(CTLazuliChatBotCardContent *)v5 setTitle:v7];

  v8 = [(CTLazuliChatBotCardDescription *)self->_cardDescription copyWithZone:a3];
  [(CTLazuliChatBotCardContent *)v5 setCardDescription:v8];

  v9 = [(CTLazuliChatBotSuggestedChipList *)self->_chipList copyWithZone:a3];
  [(CTLazuliChatBotCardContent *)v5 setChipList:v9];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_media forKey:@"kMediaKey"];
  [v4 encodeObject:self->_title forKey:@"kTitleKey"];
  [v4 encodeObject:self->_cardDescription forKey:@"kCardDescriptionKey"];
  [v4 encodeObject:self->_chipList forKey:@"kChipListKey"];
}

- (CTLazuliChatBotCardContent)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CTLazuliChatBotCardContent;
  v5 = [(CTLazuliChatBotCardContent *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMediaKey"];
    media = v5->_media;
    v5->_media = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kTitleKey"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCardDescriptionKey"];
    cardDescription = v5->_cardDescription;
    v5->_cardDescription = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kChipListKey"];
    chipList = v5->_chipList;
    v5->_chipList = v12;
  }

  return v5;
}

- (CTLazuliChatBotCardContent)initWithReflection:(const void *)a3
{
  v21.receiver = self;
  v21.super_class = CTLazuliChatBotCardContent;
  v4 = [(CTLazuliChatBotCardContent *)&v21 init];
  v5 = v4;
  if (v4)
  {
    if (*(a3 + 176) == 1)
    {
      v6 = v4;
      v7 = [CTLazuliChatBotCardMedia alloc];
      if ((*(a3 + 176) & 1) == 0)
      {
        goto LABEL_20;
      }

      v8 = [(CTLazuliChatBotCardMedia *)v7 initWithReflection:a3];
    }

    else
    {
      v8 = 0;
    }

    media = v5->_media;
    v5->_media = v8;

    if (*(a3 + 208) == 1)
    {
      v6 = v5;
      v10 = [CTLazuliChatBotCardTitle alloc];
      if ((*(a3 + 208) & 1) == 0)
      {
        goto LABEL_20;
      }

      v11 = [(CTLazuliChatBotCardTitle *)v10 initWithReflection:a3 + 184];
    }

    else
    {
      v11 = 0;
    }

    title = v5->_title;
    v5->_title = v11;

    if (*(a3 + 240) == 1)
    {
      v6 = v5;
      v13 = [CTLazuliChatBotCardDescription alloc];
      if ((*(a3 + 240) & 1) == 0)
      {
        goto LABEL_20;
      }

      v14 = [(CTLazuliChatBotCardDescription *)v13 initWithReflection:a3 + 216];
    }

    else
    {
      v14 = 0;
    }

    cardDescription = v5->_cardDescription;
    v5->_cardDescription = v14;

    if (*(a3 + 272) != 1)
    {
      v17 = 0;
      goto LABEL_18;
    }

    v6 = v5;
    v16 = [CTLazuliChatBotSuggestedChipList alloc];
    if (*(a3 + 272))
    {
      v17 = [(CTLazuliChatBotSuggestedChipList *)v16 initWithReflection:a3 + 248];
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