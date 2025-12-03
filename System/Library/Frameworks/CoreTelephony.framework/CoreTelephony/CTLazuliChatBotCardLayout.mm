@interface CTLazuliChatBotCardLayout
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotCardLayout:(id)layout;
- (CTLazuliChatBotCardLayout)initWithCoder:(id)coder;
- (CTLazuliChatBotCardLayout)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliChatBotCardLayout

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  cardOrientation = [(CTLazuliChatBotCardLayout *)self cardOrientation];
  cardOrientation2 = [(CTLazuliChatBotCardLayout *)self cardOrientation];
  [v3 appendFormat:@", cardOrientation = [%ld - %s]", cardOrientation, print_CTLazuliChatBotCardContentOrientationType(&cardOrientation2)];
  imageAlignment = [(CTLazuliChatBotCardLayout *)self imageAlignment];
  cardOrientation2 = [(CTLazuliChatBotCardLayout *)self imageAlignment];
  [v3 appendFormat:@", imageAlignment = [%ld - %s]", imageAlignment, print_CTLazuliChatBotCardContentImageAlignmentType(&cardOrientation2)];
  titleStyle = [(CTLazuliChatBotCardLayout *)self titleStyle];
  [v3 appendFormat:@", titleStyle = %@", titleStyle];

  descriptionStyle = [(CTLazuliChatBotCardLayout *)self descriptionStyle];
  [v3 appendFormat:@", descriptionStyle = %@", descriptionStyle];

  cardStyle = [(CTLazuliChatBotCardLayout *)self cardStyle];
  [v3 appendFormat:@", cardStyle = %@", cardStyle];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotCardLayout:(id)layout
{
  layoutCopy = layout;
  cardOrientation = [(CTLazuliChatBotCardLayout *)self cardOrientation];
  if (cardOrientation == [layoutCopy cardOrientation])
  {
    imageAlignment = [(CTLazuliChatBotCardLayout *)self imageAlignment];
    if (imageAlignment == [layoutCopy imageAlignment])
    {
      titleStyle = [(CTLazuliChatBotCardLayout *)self titleStyle];
      titleStyle2 = [layoutCopy titleStyle];
      if (titleStyle != titleStyle2)
      {
        titleStyle3 = [(CTLazuliChatBotCardLayout *)self titleStyle];
        titleStyle4 = [layoutCopy titleStyle];
        if (![titleStyle3 isEqualToCTLazuliMessageChatBotTitleStyle:?])
        {
          v9 = 0;
          goto LABEL_16;
        }
      }

      descriptionStyle = [(CTLazuliChatBotCardLayout *)self descriptionStyle];
      descriptionStyle2 = [layoutCopy descriptionStyle];
      if (descriptionStyle == descriptionStyle2 || (-[CTLazuliChatBotCardLayout descriptionStyle](self, "descriptionStyle"), v20 = objc_claimAutoreleasedReturnValue(), [layoutCopy descriptionStyle], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "isEqualToCTLazuliMessageChatBotDescriptionStyle:")))
      {
        cardStyle = [(CTLazuliChatBotCardLayout *)self cardStyle];
        cardStyle2 = [layoutCopy cardStyle];
        v14 = cardStyle2;
        if (cardStyle == cardStyle2)
        {

          v9 = 1;
        }

        else
        {
          cardStyle3 = [(CTLazuliChatBotCardLayout *)self cardStyle];
          cardStyle4 = [layoutCopy cardStyle];
          v9 = [cardStyle3 isEqualToCTLazuliMessageChatBotCardStyle:cardStyle4];
        }

        if (descriptionStyle == descriptionStyle2)
        {
LABEL_15:

          if (titleStyle == titleStyle2)
          {
LABEL_17:

            goto LABEL_18;
          }

LABEL_16:

          goto LABEL_17;
        }
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_15;
    }
  }

  v9 = 0;
LABEL_18:

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotCardLayout *)self isEqualToCTLazuliChatBotCardLayout:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotCardLayout allocWithZone:?];
  [(CTLazuliChatBotCardLayout *)v5 setCardOrientation:self->_cardOrientation];
  [(CTLazuliChatBotCardLayout *)v5 setImageAlignment:self->_imageAlignment];
  v6 = [(CTLazuliMessageChatBotTitleStyle *)self->_titleStyle copyWithZone:zone];
  [(CTLazuliChatBotCardLayout *)v5 setTitleStyle:v6];

  v7 = [(CTLazuliMessageChatBotDescriptionStyle *)self->_descriptionStyle copyWithZone:zone];
  [(CTLazuliChatBotCardLayout *)v5 setDescriptionStyle:v7];

  v8 = [(CTLazuliMessageChatBotCardStyle *)self->_cardStyle copyWithZone:zone];
  [(CTLazuliChatBotCardLayout *)v5 setCardStyle:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x1E696AD98] numberWithLong:self->_cardOrientation];
  [coderCopy encodeObject:v4 forKey:@"kCardOrientationKey"];

  v5 = [MEMORY[0x1E696AD98] numberWithLong:self->_imageAlignment];
  [coderCopy encodeObject:v5 forKey:@"kImageAlignmentKey"];

  [coderCopy encodeObject:self->_titleStyle forKey:@"kTitleStyleKey"];
  [coderCopy encodeObject:self->_descriptionStyle forKey:@"kDescriptionStyleKey"];
  [coderCopy encodeObject:self->_cardStyle forKey:@"kCardStyleKey"];
}

- (CTLazuliChatBotCardLayout)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CTLazuliChatBotCardLayout;
  v5 = [(CTLazuliChatBotCardLayout *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCardOrientationKey"];
    v5->_cardOrientation = [v6 longValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kImageAlignmentKey"];
    v5->_imageAlignment = [v7 longValue];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kTitleStyleKey"];
    titleStyle = v5->_titleStyle;
    v5->_titleStyle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kDescriptionStyleKey"];
    descriptionStyle = v5->_descriptionStyle;
    v5->_descriptionStyle = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCardStyleKey"];
    cardStyle = v5->_cardStyle;
    v5->_cardStyle = v12;
  }

  return v5;
}

- (CTLazuliChatBotCardLayout)initWithReflection:(const void *)reflection
{
  v17.receiver = self;
  v17.super_class = CTLazuliChatBotCardLayout;
  v4 = [(CTLazuliChatBotCardLayout *)&v17 init];
  if (v4)
  {
    v4->_cardOrientation = encode_CTLazuliGroupChatParticipantRoleType(reflection);
    v4->_imageAlignment = encode_CTLazuliGroupChatParticipantRoleType(reflection + 1);
    if (*(reflection + 11) == 1)
    {
      v5 = v4;
      v6 = [CTLazuliMessageChatBotTitleStyle alloc];
      if ((*(reflection + 11) & 1) == 0)
      {
        goto LABEL_16;
      }

      v7 = [(CTLazuliMessageChatBotTitleStyle *)v6 initWithReflection:reflection + 8];
    }

    else
    {
      v7 = 0;
    }

    titleStyle = v4->_titleStyle;
    v4->_titleStyle = v7;

    if (*(reflection + 15) == 1)
    {
      v5 = v4;
      v9 = [CTLazuliMessageChatBotDescriptionStyle alloc];
      if ((*(reflection + 15) & 1) == 0)
      {
        goto LABEL_16;
      }

      v10 = [(CTLazuliMessageChatBotDescriptionStyle *)v9 initWithReflection:reflection + 12];
    }

    else
    {
      v10 = 0;
    }

    descriptionStyle = v4->_descriptionStyle;
    v4->_descriptionStyle = v10;

    if (*(reflection + 40) != 1)
    {
      v13 = 0;
      goto LABEL_14;
    }

    v5 = v4;
    v12 = [CTLazuliMessageChatBotCardStyle alloc];
    if (*(reflection + 40))
    {
      v13 = [(CTLazuliMessageChatBotCardStyle *)v12 initWithReflection:reflection + 16];
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