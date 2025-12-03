@interface CTLazuliChatBotAddressEntry
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotAddressEntry:(id)entry;
- (CTLazuliChatBotAddressEntry)initWithCoder:(id)coder;
- (CTLazuliChatBotAddressEntry)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliChatBotAddressEntry

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  address = [(CTLazuliChatBotAddressEntry *)self address];
  [v3 appendFormat:@", address = %@", address];

  label = [(CTLazuliChatBotAddressEntry *)self label];
  [v3 appendFormat:@", label = %@", label];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotAddressEntry:(id)entry
{
  entryCopy = entry;
  address = [(CTLazuliChatBotAddressEntry *)self address];
  address2 = [entryCopy address];
  if (address != address2)
  {
    address3 = [(CTLazuliChatBotAddressEntry *)self address];
    address4 = [entryCopy address];
    if (![address3 isEqualToString:address4])
    {
      v9 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  label = [(CTLazuliChatBotAddressEntry *)self label];
  label2 = [entryCopy label];
  v12 = label2;
  if (label == label2)
  {

    v9 = 1;
  }

  else
  {
    label3 = [(CTLazuliChatBotAddressEntry *)self label];
    label4 = [entryCopy label];
    v9 = [label3 isEqualToString:label4];
  }

  if (address != address2)
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotAddressEntry *)self isEqualToCTLazuliChatBotAddressEntry:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotAddressEntry allocWithZone:?];
  v6 = [(NSString *)self->_address copyWithZone:zone];
  [(CTLazuliChatBotAddressEntry *)v5 setAddress:v6];

  v7 = [(NSString *)self->_label copyWithZone:zone];
  [(CTLazuliChatBotAddressEntry *)v5 setLabel:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_address forKey:@"kAddressKey"];
  [coderCopy encodeObject:self->_label forKey:@"kLabelKey"];
}

- (CTLazuliChatBotAddressEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CTLazuliChatBotAddressEntry;
  v5 = [(CTLazuliChatBotAddressEntry *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kAddressKey"];
    address = v5->_address;
    v5->_address = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kLabelKey"];
    label = v5->_label;
    v5->_label = v8;
  }

  return v5;
}

- (CTLazuliChatBotAddressEntry)initWithReflection:(const void *)reflection
{
  v15.receiver = self;
  v15.super_class = CTLazuliChatBotAddressEntry;
  v4 = [(CTLazuliChatBotAddressEntry *)&v15 init];
  if (v4)
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
    address = v4->_address;
    v4->_address = v6;

    v10 = *(reflection + 3);
    v9 = reflection + 24;
    v8 = v10;
    if (v9[23] >= 0)
    {
      v11 = v9;
    }

    else
    {
      v11 = v8;
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
    label = v4->_label;
    v4->_label = v12;
  }

  return v4;
}

@end