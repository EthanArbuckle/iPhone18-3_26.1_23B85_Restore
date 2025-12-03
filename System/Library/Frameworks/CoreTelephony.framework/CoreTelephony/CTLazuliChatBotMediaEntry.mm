@interface CTLazuliChatBotMediaEntry
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotMediaEntry:(id)entry;
- (CTLazuliChatBotMediaEntry)initWithCoder:(id)coder;
- (CTLazuliChatBotMediaEntry)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliChatBotMediaEntry

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  label = [(CTLazuliChatBotMediaEntry *)self label];
  label2 = [(CTLazuliChatBotMediaEntry *)self label];
  [v3 appendFormat:@", label = [%ld - %s]", label, print_CTLazuliChatBotMediaLabelType(&label2)];
  media = [(CTLazuliChatBotMediaEntry *)self media];
  [v3 appendFormat:@", media = %@", media];

  content = [(CTLazuliChatBotMediaEntry *)self content];
  label2 = [(CTLazuliChatBotMediaEntry *)self content];
  [v3 appendFormat:@", content = [%ld - %s]", content, print_CTLazuliChatBotMediaContentType(&label2)];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotMediaEntry:(id)entry
{
  entryCopy = entry;
  label = [(CTLazuliChatBotMediaEntry *)self label];
  if (label == [entryCopy label])
  {
    media = [(CTLazuliChatBotMediaEntry *)self media];
    media2 = [entryCopy media];
    if (media == media2 || (-[CTLazuliChatBotMediaEntry media](self, "media"), v3 = objc_claimAutoreleasedReturnValue(), [entryCopy media], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqualToCTLazuliChatBotMedia:", v4)))
    {
      content = [(CTLazuliChatBotMediaEntry *)self content];
      v10 = content == [entryCopy content];
      if (media == media2)
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotMediaEntry *)self isEqualToCTLazuliChatBotMediaEntry:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotMediaEntry allocWithZone:?];
  [(CTLazuliChatBotMediaEntry *)v5 setLabel:self->_label];
  v6 = [(CTLazuliChatBotMedia *)self->_media copyWithZone:zone];
  [(CTLazuliChatBotMediaEntry *)v5 setMedia:v6];

  [(CTLazuliChatBotMediaEntry *)v5 setContent:self->_content];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x1E696AD98] numberWithLong:self->_label];
  [coderCopy encodeObject:v4 forKey:@"kLabelKey"];

  [coderCopy encodeObject:self->_media forKey:@"kMediaKey"];
  v5 = [MEMORY[0x1E696AD98] numberWithLong:self->_content];
  [coderCopy encodeObject:v5 forKey:@"kContentKey"];
}

- (CTLazuliChatBotMediaEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CTLazuliChatBotMediaEntry;
  v5 = [(CTLazuliChatBotMediaEntry *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kLabelKey"];
    v5->_label = [v6 longValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMediaKey"];
    media = v5->_media;
    v5->_media = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kContentKey"];
    v5->_content = [v9 longValue];
  }

  return v5;
}

- (CTLazuliChatBotMediaEntry)initWithReflection:(const void *)reflection
{
  v10.receiver = self;
  v10.super_class = CTLazuliChatBotMediaEntry;
  v4 = [(CTLazuliChatBotMediaEntry *)&v10 init];
  if (v4)
  {
    v4->_label = encode_CTLazuliChatBotMediaLabelType(reflection);
    if (*(reflection + 64) == 1)
    {
      v5 = [CTLazuliChatBotMedia alloc];
      if ((*(reflection + 64) & 1) == 0)
      {
        v9 = std::__throw_bad_optional_access[abi:nn200100]();

        _Unwind_Resume(v9);
      }

      v6 = [(CTLazuliChatBotMedia *)v5 initWithReflection:reflection + 8];
    }

    else
    {
      v6 = 0;
    }

    media = v4->_media;
    v4->_media = v6;

    v4->_content = encode_CTLazuliGroupChatParticipantRoleType(reflection + 18);
  }

  return v4;
}

@end