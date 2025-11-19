@interface CTLazuliChatBotURIEntry
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotURIEntry:(id)a3;
- (CTLazuliChatBotURIEntry)initWithCoder:(id)a3;
- (CTLazuliChatBotURIEntry)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliChatBotURIEntry

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotURIEntry *)self addressUri];
  [v3 appendFormat:@", addressUri = %@", v4];

  v5 = [(CTLazuliChatBotURIEntry *)self addressUriType];
  v8 = [(CTLazuliChatBotURIEntry *)self addressUriType];
  [v3 appendFormat:@", addressUriType = [%ld - %s]", v5, print_CTLazuliChatBotAddressUriType(&v8)];
  v6 = [(CTLazuliChatBotURIEntry *)self label];
  v8 = [(CTLazuliChatBotURIEntry *)self label];
  [v3 appendFormat:@", label = [%ld - %s]", v6, print_CTLazuliChatBotAddressLabelType(&v8)];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotURIEntry:(id)a3
{
  v6 = a3;
  v7 = [(CTLazuliChatBotURIEntry *)self addressUri];
  v8 = [v6 addressUri];
  if (v7 != v8)
  {
    v3 = [(CTLazuliChatBotURIEntry *)self addressUri];
    v4 = [v6 addressUri];
    if (![v3 isEqualToString:v4])
    {
      v9 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  v10 = [(CTLazuliChatBotURIEntry *)self addressUriType];
  if (v10 == [v6 addressUriType])
  {
    v11 = [(CTLazuliChatBotURIEntry *)self label];
    v9 = v11 == [v6 label];
  }

  else
  {
    v9 = 0;
  }

  if (v7 != v8)
  {
    goto LABEL_8;
  }

LABEL_9:

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotURIEntry *)self isEqualToCTLazuliChatBotURIEntry:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotURIEntry allocWithZone:?];
  v6 = [(NSString *)self->_addressUri copyWithZone:a3];
  [(CTLazuliChatBotURIEntry *)v5 setAddressUri:v6];

  [(CTLazuliChatBotURIEntry *)v5 setAddressUriType:self->_addressUriType];
  [(CTLazuliChatBotURIEntry *)v5 setLabel:self->_label];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeObject:self->_addressUri forKey:@"kAddressUriKey"];
  v4 = [MEMORY[0x1E696AD98] numberWithLong:self->_addressUriType];
  [v6 encodeObject:v4 forKey:@"kAddressUriTypeKey"];

  v5 = [MEMORY[0x1E696AD98] numberWithLong:self->_label];
  [v6 encodeObject:v5 forKey:@"kLabelKey"];
}

- (CTLazuliChatBotURIEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CTLazuliChatBotURIEntry;
  v5 = [(CTLazuliChatBotURIEntry *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kAddressUriKey"];
    addressUri = v5->_addressUri;
    v5->_addressUri = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kAddressUriTypeKey"];
    v5->_addressUriType = [v8 longValue];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kLabelKey"];
    v5->_label = [v9 longValue];
  }

  return v5;
}

- (CTLazuliChatBotURIEntry)initWithReflection:(const void *)a3
{
  v9.receiver = self;
  v9.super_class = CTLazuliChatBotURIEntry;
  v4 = [(CTLazuliChatBotURIEntry *)&v9 init];
  if (v4)
  {
    if (*(a3 + 24) == 1)
    {
      if (*(a3 + 23) >= 0)
      {
        v5 = a3;
      }

      else
      {
        v5 = *a3;
      }

      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
    }

    else
    {
      v6 = 0;
    }

    addressUri = v4->_addressUri;
    v4->_addressUri = v6;

    v4->_addressUriType = encode_CTLazuliGroupChatParticipantRoleType(a3 + 8);
    v4->_label = encode_CTLazuliGroupChatParticipantRoleType(a3 + 9);
  }

  return v4;
}

@end