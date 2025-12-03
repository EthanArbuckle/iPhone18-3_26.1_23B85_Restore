@interface CTLazuliChatBotCommunicationAddress
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotCommunicationAddress:(id)address;
- (CTLazuliChatBotCommunicationAddress)initWithCoder:(id)coder;
- (CTLazuliChatBotCommunicationAddress)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliChatBotCommunicationAddress

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  telInformation = [(CTLazuliChatBotCommunicationAddress *)self telInformation];
  [v3 appendFormat:@", telInformation = %@", telInformation];

  uriList = [(CTLazuliChatBotCommunicationAddress *)self uriList];
  [v3 appendFormat:@", uriList = %@", uriList];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotCommunicationAddress:(id)address
{
  addressCopy = address;
  telInformation = [(CTLazuliChatBotCommunicationAddress *)self telInformation];
  telInformation2 = [addressCopy telInformation];
  if (telInformation != telInformation2)
  {
    telInformation3 = [(CTLazuliChatBotCommunicationAddress *)self telInformation];
    telInformation4 = [addressCopy telInformation];
    if (![telInformation3 isEqualToCTLazuliChatBotTelephoneInformation:telInformation4])
    {
      v9 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  uriList = [(CTLazuliChatBotCommunicationAddress *)self uriList];
  uriList2 = [addressCopy uriList];
  v12 = uriList2;
  if (uriList == uriList2)
  {

    v9 = 1;
  }

  else
  {
    uriList3 = [(CTLazuliChatBotCommunicationAddress *)self uriList];
    uriList4 = [addressCopy uriList];
    v9 = [uriList3 isEqualToCTLazuliChatBotURIEntryList:uriList4];
  }

  if (telInformation != telInformation2)
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotCommunicationAddress *)self isEqualToCTLazuliChatBotCommunicationAddress:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotCommunicationAddress allocWithZone:?];
  v6 = [(CTLazuliChatBotTelephoneInformation *)self->_telInformation copyWithZone:zone];
  [(CTLazuliChatBotCommunicationAddress *)v5 setTelInformation:v6];

  v7 = [(CTLazuliChatBotURIEntryList *)self->_uriList copyWithZone:zone];
  [(CTLazuliChatBotCommunicationAddress *)v5 setUriList:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_telInformation forKey:@"kTelInformationKey"];
  [coderCopy encodeObject:self->_uriList forKey:@"kUriListKey"];
}

- (CTLazuliChatBotCommunicationAddress)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CTLazuliChatBotCommunicationAddress;
  v5 = [(CTLazuliChatBotCommunicationAddress *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kTelInformationKey"];
    telInformation = v5->_telInformation;
    v5->_telInformation = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kUriListKey"];
    uriList = v5->_uriList;
    v5->_uriList = v8;
  }

  return v5;
}

- (CTLazuliChatBotCommunicationAddress)initWithReflection:(const void *)reflection
{
  v10.receiver = self;
  v10.super_class = CTLazuliChatBotCommunicationAddress;
  v4 = [(CTLazuliChatBotCommunicationAddress *)&v10 init];
  if (v4)
  {
    v5 = [[CTLazuliChatBotTelephoneInformation alloc] initWithReflection:reflection];
    telInformation = v4->_telInformation;
    v4->_telInformation = v5;

    v7 = [[CTLazuliChatBotURIEntryList alloc] initWithReflection:reflection + 72];
    uriList = v4->_uriList;
    v4->_uriList = v7;
  }

  return v4;
}

@end