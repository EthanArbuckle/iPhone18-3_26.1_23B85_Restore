@interface CTLazuliMessageChatBotCardCarouselLayout
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliMessageChatBotCardCarouselLayout:(id)layout;
- (CTLazuliMessageChatBotCardCarouselLayout)initWithCoder:(id)coder;
- (CTLazuliMessageChatBotCardCarouselLayout)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliMessageChatBotCardCarouselLayout

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  orientation = [(CTLazuliMessageChatBotCardCarouselLayout *)self orientation];
  orientation2 = [(CTLazuliMessageChatBotCardCarouselLayout *)self orientation];
  [v3 appendFormat:@", orientation = [%ld - %s]", orientation, print_CTLazuliChatBotCardContentOrientationType(&orientation2)];
  imageAlignment = [(CTLazuliMessageChatBotCardCarouselLayout *)self imageAlignment];
  orientation2 = [(CTLazuliMessageChatBotCardCarouselLayout *)self imageAlignment];
  [v3 appendFormat:@", imageAlignment = [%ld - %s]", imageAlignment, print_CTLazuliChatBotCardContentImageAlignmentType(&orientation2)];
  width = [(CTLazuliMessageChatBotCardCarouselLayout *)self width];
  orientation2 = [(CTLazuliMessageChatBotCardCarouselLayout *)self width];
  [v3 appendFormat:@", width = [%ld - %s]", width, print_CTLazuliChatBotCardCarouselWidthType(&orientation2)];
  titleStyle = [(CTLazuliMessageChatBotCardCarouselLayout *)self titleStyle];
  [v3 appendFormat:@", titleStyle = %@", titleStyle];

  descriptionStyle = [(CTLazuliMessageChatBotCardCarouselLayout *)self descriptionStyle];
  [v3 appendFormat:@", descriptionStyle = %@", descriptionStyle];

  cardStyle = [(CTLazuliMessageChatBotCardCarouselLayout *)self cardStyle];
  [v3 appendFormat:@", cardStyle = %@", cardStyle];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliMessageChatBotCardCarouselLayout:(id)layout
{
  layoutCopy = layout;
  orientation = [(CTLazuliMessageChatBotCardCarouselLayout *)self orientation];
  if (orientation == [layoutCopy orientation])
  {
    imageAlignment = [(CTLazuliMessageChatBotCardCarouselLayout *)self imageAlignment];
    if (imageAlignment == [layoutCopy imageAlignment])
    {
      width = [(CTLazuliMessageChatBotCardCarouselLayout *)self width];
      if (width == [layoutCopy width])
      {
        titleStyle = [(CTLazuliMessageChatBotCardCarouselLayout *)self titleStyle];
        titleStyle2 = [layoutCopy titleStyle];
        if (titleStyle != titleStyle2)
        {
          titleStyle3 = [(CTLazuliMessageChatBotCardCarouselLayout *)self titleStyle];
          titleStyle4 = [layoutCopy titleStyle];
          if (![titleStyle3 isEqualToCTLazuliMessageChatBotTitleStyle:?])
          {
            v10 = 0;
            goto LABEL_18;
          }
        }

        descriptionStyle = [(CTLazuliMessageChatBotCardCarouselLayout *)self descriptionStyle];
        descriptionStyle2 = [layoutCopy descriptionStyle];
        if (descriptionStyle == descriptionStyle2 || (-[CTLazuliMessageChatBotCardCarouselLayout descriptionStyle](self, "descriptionStyle"), v21 = objc_claimAutoreleasedReturnValue(), [layoutCopy descriptionStyle], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "isEqualToCTLazuliMessageChatBotDescriptionStyle:")))
        {
          cardStyle = [(CTLazuliMessageChatBotCardCarouselLayout *)self cardStyle];
          cardStyle2 = [layoutCopy cardStyle];
          v16 = cardStyle2;
          if (cardStyle == cardStyle2)
          {

            v10 = 1;
          }

          else
          {
            cardStyle3 = [(CTLazuliMessageChatBotCardCarouselLayout *)self cardStyle];
            cardStyle4 = [layoutCopy cardStyle];
            v10 = [cardStyle3 isEqualToCTLazuliMessageChatBotCardStyle:cardStyle4];
          }

          if (descriptionStyle == descriptionStyle2)
          {
LABEL_17:

            if (titleStyle == titleStyle2)
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliMessageChatBotCardCarouselLayout *)self isEqualToCTLazuliMessageChatBotCardCarouselLayout:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliMessageChatBotCardCarouselLayout allocWithZone:?];
  [(CTLazuliMessageChatBotCardCarouselLayout *)v5 setOrientation:self->_orientation];
  [(CTLazuliMessageChatBotCardCarouselLayout *)v5 setImageAlignment:self->_imageAlignment];
  [(CTLazuliMessageChatBotCardCarouselLayout *)v5 setWidth:self->_width];
  v6 = [(CTLazuliMessageChatBotTitleStyle *)self->_titleStyle copyWithZone:zone];
  [(CTLazuliMessageChatBotCardCarouselLayout *)v5 setTitleStyle:v6];

  v7 = [(CTLazuliMessageChatBotDescriptionStyle *)self->_descriptionStyle copyWithZone:zone];
  [(CTLazuliMessageChatBotCardCarouselLayout *)v5 setDescriptionStyle:v7];

  v8 = [(CTLazuliMessageChatBotCardStyle *)self->_cardStyle copyWithZone:zone];
  [(CTLazuliMessageChatBotCardCarouselLayout *)v5 setCardStyle:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x1E696AD98] numberWithLong:self->_orientation];
  [coderCopy encodeObject:v4 forKey:@"kOrientationKey"];

  v5 = [MEMORY[0x1E696AD98] numberWithLong:self->_imageAlignment];
  [coderCopy encodeObject:v5 forKey:@"kImageAlignmentKey"];

  v6 = [MEMORY[0x1E696AD98] numberWithLong:self->_width];
  [coderCopy encodeObject:v6 forKey:@"kWidthKey"];

  [coderCopy encodeObject:self->_titleStyle forKey:@"kTitleStyleKey"];
  [coderCopy encodeObject:self->_descriptionStyle forKey:@"kDescriptionStyleKey"];
  [coderCopy encodeObject:self->_cardStyle forKey:@"kCardStyleKey"];
}

- (CTLazuliMessageChatBotCardCarouselLayout)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CTLazuliMessageChatBotCardCarouselLayout;
  v5 = [(CTLazuliMessageChatBotCardCarouselLayout *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kOrientationKey"];
    v5->_orientation = [v6 longValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kImageAlignmentKey"];
    v5->_imageAlignment = [v7 longValue];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kWidthKey"];
    v5->_width = [v8 longValue];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kTitleStyleKey"];
    titleStyle = v5->_titleStyle;
    v5->_titleStyle = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kDescriptionStyleKey"];
    descriptionStyle = v5->_descriptionStyle;
    v5->_descriptionStyle = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCardStyleKey"];
    cardStyle = v5->_cardStyle;
    v5->_cardStyle = v13;
  }

  return v5;
}

- (CTLazuliMessageChatBotCardCarouselLayout)initWithReflection:(const void *)reflection
{
  v17.receiver = self;
  v17.super_class = CTLazuliMessageChatBotCardCarouselLayout;
  v4 = [(CTLazuliMessageChatBotCardCarouselLayout *)&v17 init];
  if (v4)
  {
    v4->_orientation = encode_CTLazuliGroupChatParticipantRoleType(reflection);
    v4->_imageAlignment = encode_CTLazuliGroupChatParticipantRoleType(reflection + 1);
    v4->_width = encode_CTLazuliGroupChatParticipantRoleType(reflection + 2);
    if (*(reflection + 15) == 1)
    {
      v5 = v4;
      v6 = [CTLazuliMessageChatBotTitleStyle alloc];
      if ((*(reflection + 15) & 1) == 0)
      {
        goto LABEL_16;
      }

      v7 = [(CTLazuliMessageChatBotTitleStyle *)v6 initWithReflection:reflection + 12];
    }

    else
    {
      v7 = 0;
    }

    titleStyle = v4->_titleStyle;
    v4->_titleStyle = v7;

    if (*(reflection + 19) == 1)
    {
      v5 = v4;
      v9 = [CTLazuliMessageChatBotDescriptionStyle alloc];
      if ((*(reflection + 19) & 1) == 0)
      {
        goto LABEL_16;
      }

      v10 = [(CTLazuliMessageChatBotDescriptionStyle *)v9 initWithReflection:reflection + 16];
    }

    else
    {
      v10 = 0;
    }

    descriptionStyle = v4->_descriptionStyle;
    v4->_descriptionStyle = v10;

    if (*(reflection + 48) != 1)
    {
      v13 = 0;
      goto LABEL_14;
    }

    v5 = v4;
    v12 = [CTLazuliMessageChatBotCardStyle alloc];
    if (*(reflection + 48))
    {
      v13 = [(CTLazuliMessageChatBotCardStyle *)v12 initWithReflection:reflection + 24];
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