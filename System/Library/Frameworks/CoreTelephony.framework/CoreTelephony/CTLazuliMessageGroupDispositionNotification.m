@interface CTLazuliMessageGroupDispositionNotification
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliMessageGroupDispositionNotification:(id)a3;
- (CTLazuliMessageGroupDispositionNotification)initWithCoder:(id)a3;
- (CTLazuliMessageGroupDispositionNotification)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliMessageGroupDispositionNotification

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliMessageGroupDispositionNotification *)self chatInformation];
  [v3 appendFormat:@", chatInformation = %@", v4];

  v5 = [(CTLazuliMessageGroupDispositionNotification *)self deliveryType];
  v8 = [(CTLazuliMessageGroupDispositionNotification *)self deliveryType];
  [v3 appendFormat:@", deliveryType = [%ld - %s]", v5, print_CTLazuliMessageDispositionNotificationType(&v8)];
  v6 = [(CTLazuliMessageGroupDispositionNotification *)self messageID];
  [v3 appendFormat:@", messageID = %@", v6];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliMessageGroupDispositionNotification:(id)a3
{
  v6 = a3;
  v7 = [(CTLazuliMessageGroupDispositionNotification *)self chatInformation];
  v8 = [v6 chatInformation];
  if (v7 != v8)
  {
    v3 = [(CTLazuliMessageGroupDispositionNotification *)self chatInformation];
    v4 = [v6 chatInformation];
    if (![v3 isEqualToCTLazuliGroupChatInformation:v4])
    {
      v9 = 0;
LABEL_10:

      goto LABEL_11;
    }
  }

  v10 = [(CTLazuliMessageGroupDispositionNotification *)self deliveryType];
  if (v10 == [v6 deliveryType])
  {
    v11 = [(CTLazuliMessageGroupDispositionNotification *)self messageID];
    v12 = [v6 messageID];
    v13 = v12;
    if (v11 == v12)
    {

      v9 = 1;
    }

    else
    {
      v14 = [(CTLazuliMessageGroupDispositionNotification *)self messageID];
      v15 = [v6 messageID];
      v9 = [v14 isEqualToCTLazuliMessageID:v15];
    }
  }

  else
  {
    v9 = 0;
  }

  if (v7 != v8)
  {
    goto LABEL_10;
  }

LABEL_11:

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliMessageGroupDispositionNotification *)self isEqualToCTLazuliMessageGroupDispositionNotification:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliMessageGroupDispositionNotification allocWithZone:?];
  v6 = [(CTLazuliGroupChatInformation *)self->_chatInformation copyWithZone:a3];
  [(CTLazuliMessageGroupDispositionNotification *)v5 setChatInformation:v6];

  [(CTLazuliMessageGroupDispositionNotification *)v5 setDeliveryType:self->_deliveryType];
  v7 = [(CTLazuliMessageID *)self->_messageID copyWithZone:a3];
  [(CTLazuliMessageGroupDispositionNotification *)v5 setMessageID:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_chatInformation forKey:@"kChatInformationKey"];
  v4 = [MEMORY[0x1E696AD98] numberWithLong:self->_deliveryType];
  [v5 encodeObject:v4 forKey:@"kDeliveryTypeKey"];

  [v5 encodeObject:self->_messageID forKey:@"kMessageIDKey"];
}

- (CTLazuliMessageGroupDispositionNotification)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CTLazuliMessageGroupDispositionNotification;
  v5 = [(CTLazuliMessageGroupDispositionNotification *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kChatInformationKey"];
    chatInformation = v5->_chatInformation;
    v5->_chatInformation = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kDeliveryTypeKey"];
    v5->_deliveryType = [v8 longValue];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMessageIDKey"];
    messageID = v5->_messageID;
    v5->_messageID = v9;
  }

  return v5;
}

- (CTLazuliMessageGroupDispositionNotification)initWithReflection:(const void *)a3
{
  v10.receiver = self;
  v10.super_class = CTLazuliMessageGroupDispositionNotification;
  v4 = [(CTLazuliMessageGroupDispositionNotification *)&v10 init];
  if (v4)
  {
    v5 = [[CTLazuliGroupChatInformation alloc] initWithReflection:a3];
    chatInformation = v4->_chatInformation;
    v4->_chatInformation = v5;

    v4->_deliveryType = encode_CTLazuliMessageDispositionNotificationType(a3 + 82);
    v7 = [[CTLazuliMessageID alloc] initWithReflection:a3 + 336];
    messageID = v4->_messageID;
    v4->_messageID = v7;
  }

  return v4;
}

@end