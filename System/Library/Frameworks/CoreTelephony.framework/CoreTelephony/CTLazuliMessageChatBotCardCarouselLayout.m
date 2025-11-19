@interface CTLazuliMessageChatBotCardCarouselLayout
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliMessageChatBotCardCarouselLayout:(id)a3;
- (CTLazuliMessageChatBotCardCarouselLayout)initWithCoder:(id)a3;
- (CTLazuliMessageChatBotCardCarouselLayout)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliMessageChatBotCardCarouselLayout

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliMessageChatBotCardCarouselLayout *)self orientation];
  v11 = [(CTLazuliMessageChatBotCardCarouselLayout *)self orientation];
  [v3 appendFormat:@", orientation = [%ld - %s]", v4, print_CTLazuliChatBotCardContentOrientationType(&v11)];
  v5 = [(CTLazuliMessageChatBotCardCarouselLayout *)self imageAlignment];
  v11 = [(CTLazuliMessageChatBotCardCarouselLayout *)self imageAlignment];
  [v3 appendFormat:@", imageAlignment = [%ld - %s]", v5, print_CTLazuliChatBotCardContentImageAlignmentType(&v11)];
  v6 = [(CTLazuliMessageChatBotCardCarouselLayout *)self width];
  v11 = [(CTLazuliMessageChatBotCardCarouselLayout *)self width];
  [v3 appendFormat:@", width = [%ld - %s]", v6, print_CTLazuliChatBotCardCarouselWidthType(&v11)];
  v7 = [(CTLazuliMessageChatBotCardCarouselLayout *)self titleStyle];
  [v3 appendFormat:@", titleStyle = %@", v7];

  v8 = [(CTLazuliMessageChatBotCardCarouselLayout *)self descriptionStyle];
  [v3 appendFormat:@", descriptionStyle = %@", v8];

  v9 = [(CTLazuliMessageChatBotCardCarouselLayout *)self cardStyle];
  [v3 appendFormat:@", cardStyle = %@", v9];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliMessageChatBotCardCarouselLayout:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliMessageChatBotCardCarouselLayout *)self orientation];
  if (v5 == [v4 orientation])
  {
    v6 = [(CTLazuliMessageChatBotCardCarouselLayout *)self imageAlignment];
    if (v6 == [v4 imageAlignment])
    {
      v7 = [(CTLazuliMessageChatBotCardCarouselLayout *)self width];
      if (v7 == [v4 width])
      {
        v8 = [(CTLazuliMessageChatBotCardCarouselLayout *)self titleStyle];
        v9 = [v4 titleStyle];
        if (v8 != v9)
        {
          v22 = [(CTLazuliMessageChatBotCardCarouselLayout *)self titleStyle];
          v20 = [v4 titleStyle];
          if (![v22 isEqualToCTLazuliMessageChatBotTitleStyle:?])
          {
            v10 = 0;
            goto LABEL_18;
          }
        }

        v12 = [(CTLazuliMessageChatBotCardCarouselLayout *)self descriptionStyle];
        v13 = [v4 descriptionStyle];
        if (v12 == v13 || (-[CTLazuliMessageChatBotCardCarouselLayout descriptionStyle](self, "descriptionStyle"), v21 = objc_claimAutoreleasedReturnValue(), [v4 descriptionStyle], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "isEqualToCTLazuliMessageChatBotDescriptionStyle:")))
        {
          v14 = [(CTLazuliMessageChatBotCardCarouselLayout *)self cardStyle];
          v15 = [v4 cardStyle];
          v16 = v15;
          if (v14 == v15)
          {

            v10 = 1;
          }

          else
          {
            v17 = [(CTLazuliMessageChatBotCardCarouselLayout *)self cardStyle];
            v18 = [v4 cardStyle];
            v10 = [v17 isEqualToCTLazuliMessageChatBotCardStyle:v18];
          }

          if (v12 == v13)
          {
LABEL_17:

            if (v8 == v9)
            {
LABEL_19:

              goto LABEL_8;
            }

LABEL_18:

            goto LABEL_19;
          }
        }

        else
        {
          v10 = 0;
        }

        goto LABEL_17;
      }
    }
  }

  v10 = 0;
LABEL_8:

  return v10;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliMessageChatBotCardCarouselLayout *)self isEqualToCTLazuliMessageChatBotCardCarouselLayout:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliMessageChatBotCardCarouselLayout allocWithZone:?];
  [(CTLazuliMessageChatBotCardCarouselLayout *)v5 setOrientation:self->_orientation];
  [(CTLazuliMessageChatBotCardCarouselLayout *)v5 setImageAlignment:self->_imageAlignment];
  [(CTLazuliMessageChatBotCardCarouselLayout *)v5 setWidth:self->_width];
  v6 = [(CTLazuliMessageChatBotTitleStyle *)self->_titleStyle copyWithZone:a3];
  [(CTLazuliMessageChatBotCardCarouselLayout *)v5 setTitleStyle:v6];

  v7 = [(CTLazuliMessageChatBotDescriptionStyle *)self->_descriptionStyle copyWithZone:a3];
  [(CTLazuliMessageChatBotCardCarouselLayout *)v5 setDescriptionStyle:v7];

  v8 = [(CTLazuliMessageChatBotCardStyle *)self->_cardStyle copyWithZone:a3];
  [(CTLazuliMessageChatBotCardCarouselLayout *)v5 setCardStyle:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [MEMORY[0x1E696AD98] numberWithLong:self->_orientation];
  [v7 encodeObject:v4 forKey:@"kOrientationKey"];

  v5 = [MEMORY[0x1E696AD98] numberWithLong:self->_imageAlignment];
  [v7 encodeObject:v5 forKey:@"kImageAlignmentKey"];

  v6 = [MEMORY[0x1E696AD98] numberWithLong:self->_width];
  [v7 encodeObject:v6 forKey:@"kWidthKey"];

  [v7 encodeObject:self->_titleStyle forKey:@"kTitleStyleKey"];
  [v7 encodeObject:self->_descriptionStyle forKey:@"kDescriptionStyleKey"];
  [v7 encodeObject:self->_cardStyle forKey:@"kCardStyleKey"];
}

- (CTLazuliMessageChatBotCardCarouselLayout)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CTLazuliMessageChatBotCardCarouselLayout;
  v5 = [(CTLazuliMessageChatBotCardCarouselLayout *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kOrientationKey"];
    v5->_orientation = [v6 longValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kImageAlignmentKey"];
    v5->_imageAlignment = [v7 longValue];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kWidthKey"];
    v5->_width = [v8 longValue];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kTitleStyleKey"];
    titleStyle = v5->_titleStyle;
    v5->_titleStyle = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kDescriptionStyleKey"];
    descriptionStyle = v5->_descriptionStyle;
    v5->_descriptionStyle = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCardStyleKey"];
    cardStyle = v5->_cardStyle;
    v5->_cardStyle = v13;
  }

  return v5;
}

- (CTLazuliMessageChatBotCardCarouselLayout)initWithReflection:(const void *)a3
{
  v17.receiver = self;
  v17.super_class = CTLazuliMessageChatBotCardCarouselLayout;
  v4 = [(CTLazuliMessageChatBotCardCarouselLayout *)&v17 init];
  if (v4)
  {
    v4->_orientation = encode_CTLazuliGroupChatParticipantRoleType(a3);
    v4->_imageAlignment = encode_CTLazuliGroupChatParticipantRoleType(a3 + 1);
    v4->_width = encode_CTLazuliGroupChatParticipantRoleType(a3 + 2);
    if (*(a3 + 15) == 1)
    {
      v5 = v4;
      v6 = [CTLazuliMessageChatBotTitleStyle alloc];
      if ((*(a3 + 15) & 1) == 0)
      {
        goto LABEL_16;
      }

      v7 = [(CTLazuliMessageChatBotTitleStyle *)v6 initWithReflection:a3 + 12];
    }

    else
    {
      v7 = 0;
    }

    titleStyle = v4->_titleStyle;
    v4->_titleStyle = v7;

    if (*(a3 + 19) == 1)
    {
      v5 = v4;
      v9 = [CTLazuliMessageChatBotDescriptionStyle alloc];
      if ((*(a3 + 19) & 1) == 0)
      {
        goto LABEL_16;
      }

      v10 = [(CTLazuliMessageChatBotDescriptionStyle *)v9 initWithReflection:a3 + 16];
    }

    else
    {
      v10 = 0;
    }

    descriptionStyle = v4->_descriptionStyle;
    v4->_descriptionStyle = v10;

    if (*(a3 + 48) != 1)
    {
      v13 = 0;
      goto LABEL_14;
    }

    v5 = v4;
    v12 = [CTLazuliMessageChatBotCardStyle alloc];
    if (*(a3 + 48))
    {
      v13 = [(CTLazuliMessageChatBotCardStyle *)v12 initWithReflection:a3 + 24];
LABEL_14:
      cardStyle = v4->_cardStyle;
      v4->_cardStyle = v13;

      return v4;
    }

LABEL_16:
    v16 = std::__throw_bad_optional_access[abi:nn200100]();

    _Unwind_Resume(v16);
  }

  return v4;
}

@end