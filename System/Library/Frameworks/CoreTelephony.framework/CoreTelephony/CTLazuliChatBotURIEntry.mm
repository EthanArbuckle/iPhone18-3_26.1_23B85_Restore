@interface CTLazuliChatBotURIEntry
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotURIEntry:(id)entry;
- (CTLazuliChatBotURIEntry)initWithCoder:(id)coder;
- (CTLazuliChatBotURIEntry)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliChatBotURIEntry

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  addressUri = [(CTLazuliChatBotURIEntry *)self addressUri];
  [v3 appendFormat:@", addressUri = %@", addressUri];

  addressUriType = [(CTLazuliChatBotURIEntry *)self addressUriType];
  addressUriType2 = [(CTLazuliChatBotURIEntry *)self addressUriType];
  [v3 appendFormat:@", addressUriType = [%ld - %s]", addressUriType, print_CTLazuliChatBotAddressUriType(&addressUriType2)];
  label = [(CTLazuliChatBotURIEntry *)self label];
  addressUriType2 = [(CTLazuliChatBotURIEntry *)self label];
  [v3 appendFormat:@", label = [%ld - %s]", label, print_CTLazuliChatBotAddressLabelType(&addressUriType2)];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotURIEntry:(id)entry
{
  entryCopy = entry;
  addressUri = [(CTLazuliChatBotURIEntry *)self addressUri];
  addressUri2 = [entryCopy addressUri];
  if (addressUri != addressUri2)
  {
    addressUri3 = [(CTLazuliChatBotURIEntry *)self addressUri];
    addressUri4 = [entryCopy addressUri];
    if (![addressUri3 isEqualToString:addressUri4])
    {
      v9 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  addressUriType = [(CTLazuliChatBotURIEntry *)self addressUriType];
  if (addressUriType == [entryCopy addressUriType])
  {
    label = [(CTLazuliChatBotURIEntry *)self label];
    v9 = label == [entryCopy label];
  }

  else
  {
    v9 = 0;
  }

  if (addressUri != addressUri2)
  {
    goto LABEL_8;
  }

LABEL_9:

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotURIEntry *)self isEqualToCTLazuliChatBotURIEntry:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotURIEntry allocWithZone:?];
  v6 = [(NSString *)self->_addressUri copyWithZone:zone];
  [(CTLazuliChatBotURIEntry *)v5 setAddressUri:v6];

  [(CTLazuliChatBotURIEntry *)v5 setAddressUriType:self->_addressUriType];
  [(CTLazuliChatBotURIEntry *)v5 setLabel:self->_label];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_addressUri forKey:@"kAddressUriKey"];
  v4 = [MEMORY[0x1E696AD98] numberWithLong:self->_addressUriType];
  [coderCopy encodeObject:v4 forKey:@"kAddressUriTypeKey"];

  v5 = [MEMORY[0x1E696AD98] numberWithLong:self->_label];
  [coderCopy encodeObject:v5 forKey:@"kLabelKey"];
}

- (CTLazuliChatBotURIEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CTLazuliChatBotURIEntry;
  v5 = [(CTLazuliChatBotURIEntry *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kAddressUriKey"];
    addressUri = v5->_addressUri;
    v5->_addressUri = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kAddressUriTypeKey"];
    v5->_addressUriType = [v8 longValue];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kLabelKey"];
    v5->_label = [v9 longValue];
  }

  return v5;
}

- (CTLazuliChatBotURIEntry)initWithReflection:(const void *)reflection
{
  v9.receiver = self;
  v9.super_class = CTLazuliChatBotURIEntry;
  v4 = [(CTLazuliChatBotURIEntry *)&v9 init];
  if (v4)
  {
    if (*(reflection + 24) == 1)
    {
      if (*(reflection + 23) >= 0)
      {
        reflectionCopy = reflection;
      }

      else
      {
        reflectionCopy = *reflection;
      }

      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:reflectionCopy];
    }

    else
    {
      v6 = 0;
    }

    addressUri = v4->_addressUri;
    v4->_addressUri = v6;

    v4->_addressUriType = encode_CTLazuliGroupChatParticipantRoleType(reflection + 8);
    v4->_label = encode_CTLazuliGroupChatParticipantRoleType(reflection + 9);
  }

  return v4;
}

@end