@interface CTLazuliChatBotSpamReportInformation
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotSpamReportInformation:(id)a3;
- (CTLazuliChatBotSpamReportInformation)initWithCoder:(id)a3;
- (CTLazuliChatBotSpamReportInformation)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliChatBotSpamReportInformation

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotSpamReportInformation *)self chatbotUri];
  [v3 appendFormat:@", chatbotUri = %@", v4];

  v5 = [(CTLazuliChatBotSpamReportInformation *)self messageIDList];
  [v3 appendFormat:@", messageIDList = %@", v5];

  v6 = [(CTLazuliChatBotSpamReportInformation *)self spamType];
  v9 = [(CTLazuliChatBotSpamReportInformation *)self spamType];
  [v3 appendFormat:@", spamType = [%ld - %s]", v6, print_CTLazuliSpamReportType(&v9)];
  v7 = [(CTLazuliChatBotSpamReportInformation *)self freeBodyText];
  [v3 appendFormat:@", freeBodyText = %@", v7];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotSpamReportInformation:(id)a3
{
  v5 = a3;
  v6 = [(CTLazuliChatBotSpamReportInformation *)self chatbotUri];
  v7 = [v5 chatbotUri];
  if (v6 != v7)
  {
    v20 = [(CTLazuliChatBotSpamReportInformation *)self chatbotUri];
    v18 = [v5 chatbotUri];
    if (![v20 isEqualToString:?])
    {
      v8 = 0;
LABEL_15:

      goto LABEL_16;
    }
  }

  v9 = [(CTLazuliChatBotSpamReportInformation *)self messageIDList];
  v10 = [v5 messageIDList];
  if (v9 != v10)
  {
    v19 = [(CTLazuliChatBotSpamReportInformation *)self messageIDList];
    v3 = [v5 messageIDList];
    if (![v19 isEqualToCTLazuliMessageIDList:v3])
    {
      v8 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  v11 = [(CTLazuliChatBotSpamReportInformation *)self spamType];
  if (v11 == [v5 spamType])
  {
    v17 = [(CTLazuliChatBotSpamReportInformation *)self freeBodyText];
    v12 = [v5 freeBodyText];
    v13 = v12;
    if (v17 == v12)
    {

      v8 = 1;
    }

    else
    {
      v14 = [(CTLazuliChatBotSpamReportInformation *)self freeBodyText];
      v15 = [v5 freeBodyText];
      v8 = [v14 isEqualToString:v15];
    }
  }

  else
  {
    v8 = 0;
  }

  if (v9 != v10)
  {
    goto LABEL_13;
  }

LABEL_14:

  if (v6 != v7)
  {
    goto LABEL_15;
  }

LABEL_16:

  return v8;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotSpamReportInformation *)self isEqualToCTLazuliChatBotSpamReportInformation:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotSpamReportInformation allocWithZone:?];
  v6 = [(NSString *)self->_chatbotUri copyWithZone:a3];
  [(CTLazuliChatBotSpamReportInformation *)v5 setChatbotUri:v6];

  v7 = [(CTLazuliMessageIDList *)self->_messageIDList copyWithZone:a3];
  [(CTLazuliChatBotSpamReportInformation *)v5 setMessageIDList:v7];

  [(CTLazuliChatBotSpamReportInformation *)v5 setSpamType:self->_spamType];
  v8 = [(NSString *)self->_freeBodyText copyWithZone:a3];
  [(CTLazuliChatBotSpamReportInformation *)v5 setFreeBodyText:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_chatbotUri forKey:@"kChatbotUriKey"];
  [v5 encodeObject:self->_messageIDList forKey:@"kMessageIDListKey"];
  v4 = [MEMORY[0x1E696AD98] numberWithLong:self->_spamType];
  [v5 encodeObject:v4 forKey:@"kSpamTypeKey"];

  [v5 encodeObject:self->_freeBodyText forKey:@"kFreeBodyTextKey"];
}

- (CTLazuliChatBotSpamReportInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CTLazuliChatBotSpamReportInformation;
  v5 = [(CTLazuliChatBotSpamReportInformation *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kChatbotUriKey"];
    chatbotUri = v5->_chatbotUri;
    v5->_chatbotUri = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMessageIDListKey"];
    messageIDList = v5->_messageIDList;
    v5->_messageIDList = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSpamTypeKey"];
    v5->_spamType = [v10 longValue];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kFreeBodyTextKey"];
    freeBodyText = v5->_freeBodyText;
    v5->_freeBodyText = v11;
  }

  return v5;
}

- (CTLazuliChatBotSpamReportInformation)initWithReflection:(const void *)a3
{
  v17.receiver = self;
  v17.super_class = CTLazuliChatBotSpamReportInformation;
  v4 = [(CTLazuliChatBotSpamReportInformation *)&v17 init];
  if (v4)
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
    chatbotUri = v4->_chatbotUri;
    v4->_chatbotUri = v6;

    v8 = [[CTLazuliMessageIDList alloc] initWithReflection:a3 + 24];
    messageIDList = v4->_messageIDList;
    v4->_messageIDList = v8;

    v4->_spamType = encode_CTLazuliSpamReportType(a3 + 12);
    if (*(a3 + 80) == 1)
    {
      v12 = *(a3 + 7);
      v11 = a3 + 56;
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