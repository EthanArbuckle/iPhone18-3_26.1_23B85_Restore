@interface CTLazuliChatBotMediaEntry
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotMediaEntry:(id)a3;
- (CTLazuliChatBotMediaEntry)initWithCoder:(id)a3;
- (CTLazuliChatBotMediaEntry)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliChatBotMediaEntry

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotMediaEntry *)self label];
  v8 = [(CTLazuliChatBotMediaEntry *)self label];
  [v3 appendFormat:@", label = [%ld - %s]", v4, print_CTLazuliChatBotMediaLabelType(&v8)];
  v5 = [(CTLazuliChatBotMediaEntry *)self media];
  [v3 appendFormat:@", media = %@", v5];

  v6 = [(CTLazuliChatBotMediaEntry *)self content];
  v8 = [(CTLazuliChatBotMediaEntry *)self content];
  [v3 appendFormat:@", content = [%ld - %s]", v6, print_CTLazuliChatBotMediaContentType(&v8)];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotMediaEntry:(id)a3
{
  v6 = a3;
  v7 = [(CTLazuliChatBotMediaEntry *)self label];
  if (v7 == [v6 label])
  {
    v8 = [(CTLazuliChatBotMediaEntry *)self media];
    v9 = [v6 media];
    if (v8 == v9 || (-[CTLazuliChatBotMediaEntry media](self, "media"), v3 = objc_claimAutoreleasedReturnValue(), [v6 media], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqualToCTLazuliChatBotMedia:", v4)))
    {
      v11 = [(CTLazuliChatBotMediaEntry *)self content];
      v10 = v11 == [v6 content];
      if (v8 == v9)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_8;
  }

  v10 = 0;
LABEL_9:

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotMediaEntry *)self isEqualToCTLazuliChatBotMediaEntry:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotMediaEntry allocWithZone:?];
  [(CTLazuliChatBotMediaEntry *)v5 setLabel:self->_label];
  v6 = [(CTLazuliChatBotMedia *)self->_media copyWithZone:a3];
  [(CTLazuliChatBotMediaEntry *)v5 setMedia:v6];

  [(CTLazuliChatBotMediaEntry *)v5 setContent:self->_content];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [MEMORY[0x1E696AD98] numberWithLong:self->_label];
  [v6 encodeObject:v4 forKey:@"kLabelKey"];

  [v6 encodeObject:self->_media forKey:@"kMediaKey"];
  v5 = [MEMORY[0x1E696AD98] numberWithLong:self->_content];
  [v6 encodeObject:v5 forKey:@"kContentKey"];
}

- (CTLazuliChatBotMediaEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CTLazuliChatBotMediaEntry;
  v5 = [(CTLazuliChatBotMediaEntry *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kLabelKey"];
    v5->_label = [v6 longValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMediaKey"];
    media = v5->_media;
    v5->_media = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kContentKey"];
    v5->_content = [v9 longValue];
  }

  return v5;
}

- (CTLazuliChatBotMediaEntry)initWithReflection:(const void *)a3
{
  v10.receiver = self;
  v10.super_class = CTLazuliChatBotMediaEntry;
  v4 = [(CTLazuliChatBotMediaEntry *)&v10 init];
  if (v4)
  {
    v4->_label = encode_CTLazuliChatBotMediaLabelType(a3);
    if (*(a3 + 64) == 1)
    {
      v5 = [CTLazuliChatBotMedia alloc];
      if ((*(a3 + 64) & 1) == 0)
      {
        v9 = std::__throw_bad_optional_access[abi:nn200100]();

        _Unwind_Resume(v9);
      }

      v6 = [(CTLazuliChatBotMedia *)v5 initWithReflection:a3 + 8];
    }

    else
    {
      v6 = 0;
    }

    media = v4->_media;
    v4->_media = v6;

    v4->_content = encode_CTLazuliGroupChatParticipantRoleType(a3 + 18);
  }

  return v4;
}

@end