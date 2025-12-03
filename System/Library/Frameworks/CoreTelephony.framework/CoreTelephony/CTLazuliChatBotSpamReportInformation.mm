@interface CTLazuliChatBotSpamReportInformation
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotSpamReportInformation:(id)information;
- (CTLazuliChatBotSpamReportInformation)initWithCoder:(id)coder;
- (CTLazuliChatBotSpamReportInformation)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliChatBotSpamReportInformation

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  chatbotUri = [(CTLazuliChatBotSpamReportInformation *)self chatbotUri];
  [v3 appendFormat:@", chatbotUri = %@", chatbotUri];

  messageIDList = [(CTLazuliChatBotSpamReportInformation *)self messageIDList];
  [v3 appendFormat:@", messageIDList = %@", messageIDList];

  spamType = [(CTLazuliChatBotSpamReportInformation *)self spamType];
  spamType2 = [(CTLazuliChatBotSpamReportInformation *)self spamType];
  [v3 appendFormat:@", spamType = [%ld - %s]", spamType, print_CTLazuliSpamReportType(&spamType2)];
  freeBodyText = [(CTLazuliChatBotSpamReportInformation *)self freeBodyText];
  [v3 appendFormat:@", freeBodyText = %@", freeBodyText];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotSpamReportInformation:(id)information
{
  informationCopy = information;
  chatbotUri = [(CTLazuliChatBotSpamReportInformation *)self chatbotUri];
  chatbotUri2 = [informationCopy chatbotUri];
  if (chatbotUri != chatbotUri2)
  {
    chatbotUri3 = [(CTLazuliChatBotSpamReportInformation *)self chatbotUri];
    chatbotUri4 = [informationCopy chatbotUri];
    if (![chatbotUri3 isEqualToString:?])
    {
      v8 = 0;
LABEL_15:

      goto LABEL_16;
    }
  }

  messageIDList = [(CTLazuliChatBotSpamReportInformation *)self messageIDList];
  messageIDList2 = [informationCopy messageIDList];
  if (messageIDList != messageIDList2)
  {
    messageIDList3 = [(CTLazuliChatBotSpamReportInformation *)self messageIDList];
    messageIDList4 = [informationCopy messageIDList];
    if (![messageIDList3 isEqualToCTLazuliMessageIDList:messageIDList4])
    {
      v8 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  spamType = [(CTLazuliChatBotSpamReportInformation *)self spamType];
  if (spamType == [informationCopy spamType])
  {
    freeBodyText = [(CTLazuliChatBotSpamReportInformation *)self freeBodyText];
    freeBodyText2 = [informationCopy freeBodyText];
    v13 = freeBodyText2;
    if (freeBodyText == freeBodyText2)
    {

      v8 = 1;
    }

    else
    {
      freeBodyText3 = [(CTLazuliChatBotSpamReportInformation *)self freeBodyText];
      freeBodyText4 = [informationCopy freeBodyText];
      v8 = [freeBodyText3 isEqualToString:freeBodyText4];
    }
  }

  else
  {
    v8 = 0;
  }

  if (messageIDList != messageIDList2)
  {
    goto LABEL_13;
  }

LABEL_14:

  if (chatbotUri != chatbotUri2)
  {
    goto LABEL_15;
  }

LABEL_16:

  return v8;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotSpamReportInformation *)self isEqualToCTLazuliChatBotSpamReportInformation:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotSpamReportInformation allocWithZone:?];
  v6 = [(NSString *)self->_chatbotUri copyWithZone:zone];
  [(CTLazuliChatBotSpamReportInformation *)v5 setChatbotUri:v6];

  v7 = [(CTLazuliMessageIDList *)self->_messageIDList copyWithZone:zone];
  [(CTLazuliChatBotSpamReportInformation *)v5 setMessageIDList:v7];

  [(CTLazuliChatBotSpamReportInformation *)v5 setSpamType:self->_spamType];
  v8 = [(NSString *)self->_freeBodyText copyWithZone:zone];
  [(CTLazuliChatBotSpamReportInformation *)v5 setFreeBodyText:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_chatbotUri forKey:@"kChatbotUriKey"];
  [coderCopy encodeObject:self->_messageIDList forKey:@"kMessageIDListKey"];
  v4 = [MEMORY[0x1E696AD98] numberWithLong:self->_spamType];
  [coderCopy encodeObject:v4 forKey:@"kSpamTypeKey"];

  [coderCopy encodeObject:self->_freeBodyText forKey:@"kFreeBodyTextKey"];
}

- (CTLazuliChatBotSpamReportInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CTLazuliChatBotSpamReportInformation;
  v5 = [(CTLazuliChatBotSpamReportInformation *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kChatbotUriKey"];
    chatbotUri = v5->_chatbotUri;
    v5->_chatbotUri = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMessageIDListKey"];
    messageIDList = v5->_messageIDList;
    v5->_messageIDList = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kSpamTypeKey"];
    v5->_spamType = [v10 longValue];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kFreeBodyTextKey"];
    freeBodyText = v5->_freeBodyText;
    v5->_freeBodyText = v11;
  }

  return v5;
}

- (CTLazuliChatBotSpamReportInformation)initWithReflection:(const void *)reflection
{
  v17.receiver = self;
  v17.super_class = CTLazuliChatBotSpamReportInformation;
  v4 = [(CTLazuliChatBotSpamReportInformation *)&v17 init];
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
    chatbotUri = v4->_chatbotUri;
    v4->_chatbotUri = v6;

    v8 = [[CTLazuliMessageIDList alloc] initWithReflection:reflection + 24];
    messageIDList = v4->_messageIDList;
    v4->_messageIDList = v8;

    v4->_spamType = encode_CTLazuliSpamReportType(reflection + 12);
    if (*(reflection + 80) == 1)
    {
      v12 = *(reflection + 7);
      v11 = reflection + 56;
      v10 = v12;
      if (v11[23] >= 0)
      {
        v13 = v11;
      }

      else
      {
        v13 = v10;
      }

      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v13];
    }

    else
    {
      v14 = 0;
    }

    freeBodyText = v4->_freeBodyText;
    v4->_freeBodyText = v14;
  }

  return v4;
}

@end