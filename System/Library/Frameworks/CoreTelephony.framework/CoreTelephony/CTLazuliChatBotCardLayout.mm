@interface CTLazuliChatBotCardLayout
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotCardLayout:(id)a3;
- (CTLazuliChatBotCardLayout)initWithCoder:(id)a3;
- (CTLazuliChatBotCardLayout)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliChatBotCardLayout

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotCardLayout *)self cardOrientation];
  v10 = [(CTLazuliChatBotCardLayout *)self cardOrientation];
  [v3 appendFormat:@", cardOrientation = [%ld - %s]", v4, print_CTLazuliChatBotCardContentOrientationType(&v10)];
  v5 = [(CTLazuliChatBotCardLayout *)self imageAlignment];
  v10 = [(CTLazuliChatBotCardLayout *)self imageAlignment];
  [v3 appendFormat:@", imageAlignment = [%ld - %s]", v5, print_CTLazuliChatBotCardContentImageAlignmentType(&v10)];
  v6 = [(CTLazuliChatBotCardLayout *)self titleStyle];
  [v3 appendFormat:@", titleStyle = %@", v6];

  v7 = [(CTLazuliChatBotCardLayout *)self descriptionStyle];
  [v3 appendFormat:@", descriptionStyle = %@", v7];

  v8 = [(CTLazuliChatBotCardLayout *)self cardStyle];
  [v3 appendFormat:@", cardStyle = %@", v8];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotCardLayout:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliChatBotCardLayout *)self cardOrientation];
  if (v5 == [v4 cardOrientation])
  {
    v6 = [(CTLazuliChatBotCardLayout *)self imageAlignment];
    if (v6 == [v4 imageAlignment])
    {
      v7 = [(CTLazuliChatBotCardLayout *)self titleStyle];
      v8 = [v4 titleStyle];
      if (v7 != v8)
      {
        v21 = [(CTLazuliChatBotCardLayout *)self titleStyle];
        v19 = [v4 titleStyle];
        if (![v21 isEqualToCTLazuliMessageChatBotTitleStyle:?])
        {
          v9 = 0;
          goto LABEL_16;
        }
      }

      v10 = [(CTLazuliChatBotCardLayout *)self descriptionStyle];
      v11 = [v4 descriptionStyle];
      if (v10 == v11 || (-[CTLazuliChatBotCardLayout descriptionStyle](self, "descriptionStyle"), v20 = objc_claimAutoreleasedReturnValue(), [v4 descriptionStyle], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "isEqualToCTLazuliMessageChatBotDescriptionStyle:")))
      {
        v12 = [(CTLazuliChatBotCardLayout *)self cardStyle];
        v13 = [v4 cardStyle];
        v14 = v13;
        if (v12 == v13)
        {

          v9 = 1;
        }

        else
        {
          v15 = [(CTLazuliChatBotCardLayout *)self cardStyle];
          v16 = [v4 cardStyle];
          v9 = [v15 isEqualToCTLazuliMessageChatBotCardStyle:v16];
        }

        if (v10 == v11)
        {
LABEL_15:

          if (v7 == v8)
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotCardLayout *)self isEqualToCTLazuliChatBotCardLayout:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotCardLayout allocWithZone:?];
  [(CTLazuliChatBotCardLayout *)v5 setCardOrientation:self->_cardOrientation];
  [(CTLazuliChatBotCardLayout *)v5 setImageAlignment:self->_imageAlignment];
  v6 = [(CTLazuliMessageChatBotTitleStyle *)self->_titleStyle copyWithZone:a3];
  [(CTLazuliChatBotCardLayout *)v5 setTitleStyle:v6];

  v7 = [(CTLazuliMessageChatBotDescriptionStyle *)self->_descriptionStyle copyWithZone:a3];
  [(CTLazuliChatBotCardLayout *)v5 setDescriptionStyle:v7];

  v8 = [(CTLazuliMessageChatBotCardStyle *)self->_cardStyle copyWithZone:a3];
  [(CTLazuliChatBotCardLayout *)v5 setCardStyle:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [MEMORY[0x1E696AD98] numberWithLong:self->_cardOrientation];
  [v6 encodeObject:v4 forKey:@"kCardOrientationKey"];

  v5 = [MEMORY[0x1E696AD98] numberWithLong:self->_imageAlignment];
  [v6 encodeObject:v5 forKey:@"kImageAlignmentKey"];

  [v6 encodeObject:self->_titleStyle forKey:@"kTitleStyleKey"];
  [v6 encodeObject:self->_descriptionStyle forKey:@"kDescriptionStyleKey"];
  [v6 encodeObject:self->_cardStyle forKey:@"kCardStyleKey"];
}

- (CTLazuliChatBotCardLayout)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CTLazuliChatBotCardLayout;
  v5 = [(CTLazuliChatBotCardLayout *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCardOrientationKey"];
    v5->_cardOrientation = [v6 longValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kImageAlignmentKey"];
    v5->_imageAlignment = [v7 longValue];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kTitleStyleKey"];
    titleStyle = v5->_titleStyle;
    v5->_titleStyle = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kDescriptionStyleKey"];
    descriptionStyle = v5->_descriptionStyle;
    v5->_descriptionStyle = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCardStyleKey"];
    cardStyle = v5->_cardStyle;
    v5->_cardStyle = v12;
  }

  return v5;
}

- (CTLazuliChatBotCardLayout)initWithReflection:(const void *)a3
{
  v17.receiver = self;
  v17.super_class = CTLazuliChatBotCardLayout;
  v4 = [(CTLazuliChatBotCardLayout *)&v17 init];
  if (v4)
  {
    v4->_cardOrientation = encode_CTLazuliGroupChatParticipantRoleType(a3);
    v4->_imageAlignment = encode_CTLazuliGroupChatParticipantRoleType(a3 + 1);
    if (*(a3 + 11) == 1)
    {
      v5 = v4;
      v6 = [CTLazuliMessageChatBotTitleStyle alloc];
      if ((*(a3 + 11) & 1) == 0)
      {
        goto LABEL_16;
      }

      v7 = [(CTLazuliMessageChatBotTitleStyle *)v6 initWithReflection:a3 + 8];
    }

    else
    {
      v7 = 0;
    }

    titleStyle = v4->_titleStyle;
    v4->_titleStyle = v7;

    if (*(a3 + 15) == 1)
    {
      v5 = v4;
      v9 = [CTLazuliMessageChatBotDescriptionStyle alloc];
      if ((*(a3 + 15) & 1) == 0)
      {
        goto LABEL_16;
      }

      v10 = [(CTLazuliMessageChatBotDescriptionStyle *)v9 initWithReflection:a3 + 12];
    }

    else
    {
      v10 = 0;
    }

    descriptionStyle = v4->_descriptionStyle;
    v4->_descriptionStyle = v10;

    if (*(a3 + 40) != 1)
    {
      v13 = 0;
      goto LABEL_14;
    }

    v5 = v4;
    v12 = [CTLazuliMessageChatBotCardStyle alloc];
    if (*(a3 + 40))
    {
      v13 = [(CTLazuliMessageChatBotCardStyle *)v12 initWithReflection:a3 + 16];
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