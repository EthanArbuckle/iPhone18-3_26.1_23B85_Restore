@interface CTLazuliChatBotCommunicationAddress
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotCommunicationAddress:(id)a3;
- (CTLazuliChatBotCommunicationAddress)initWithCoder:(id)a3;
- (CTLazuliChatBotCommunicationAddress)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliChatBotCommunicationAddress

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotCommunicationAddress *)self telInformation];
  [v3 appendFormat:@", telInformation = %@", v4];

  v5 = [(CTLazuliChatBotCommunicationAddress *)self uriList];
  [v3 appendFormat:@", uriList = %@", v5];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotCommunicationAddress:(id)a3
{
  v6 = a3;
  v7 = [(CTLazuliChatBotCommunicationAddress *)self telInformation];
  v8 = [v6 telInformation];
  if (v7 != v8)
  {
    v3 = [(CTLazuliChatBotCommunicationAddress *)self telInformation];
    v4 = [v6 telInformation];
    if (![v3 isEqualToCTLazuliChatBotTelephoneInformation:v4])
    {
      v9 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  v10 = [(CTLazuliChatBotCommunicationAddress *)self uriList];
  v11 = [v6 uriList];
  v12 = v11;
  if (v10 == v11)
  {

    v9 = 1;
  }

  else
  {
    v13 = [(CTLazuliChatBotCommunicationAddress *)self uriList];
    v14 = [v6 uriList];
    v9 = [v13 isEqualToCTLazuliChatBotURIEntryList:v14];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotCommunicationAddress *)self isEqualToCTLazuliChatBotCommunicationAddress:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotCommunicationAddress allocWithZone:?];
  v6 = [(CTLazuliChatBotTelephoneInformation *)self->_telInformation copyWithZone:a3];
  [(CTLazuliChatBotCommunicationAddress *)v5 setTelInformation:v6];

  v7 = [(CTLazuliChatBotURIEntryList *)self->_uriList copyWithZone:a3];
  [(CTLazuliChatBotCommunicationAddress *)v5 setUriList:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_telInformation forKey:@"kTelInformationKey"];
  [v4 encodeObject:self->_uriList forKey:@"kUriListKey"];
}

- (CTLazuliChatBotCommunicationAddress)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CTLazuliChatBotCommunicationAddress;
  v5 = [(CTLazuliChatBotCommunicationAddress *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kTelInformationKey"];
    telInformation = v5->_telInformation;
    v5->_telInformation = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kUriListKey"];
    uriList = v5->_uriList;
    v5->_uriList = v8;
  }

  return v5;
}

- (CTLazuliChatBotCommunicationAddress)initWithReflection:(const void *)a3
{
  v10.receiver = self;
  v10.super_class = CTLazuliChatBotCommunicationAddress;
  v4 = [(CTLazuliChatBotCommunicationAddress *)&v10 init];
  if (v4)
  {
    v5 = [[CTLazuliChatBotTelephoneInformation alloc] initWithReflection:a3];
    telInformation = v4->_telInformation;
    v4->_telInformation = v5;

    v7 = [[CTLazuliChatBotURIEntryList alloc] initWithReflection:a3 + 72];
    uriList = v4->_uriList;
    v4->_uriList = v7;
  }

  return v4;
}

@end