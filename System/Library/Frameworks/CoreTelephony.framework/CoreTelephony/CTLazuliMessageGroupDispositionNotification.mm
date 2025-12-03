@interface CTLazuliMessageGroupDispositionNotification
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliMessageGroupDispositionNotification:(id)notification;
- (CTLazuliMessageGroupDispositionNotification)initWithCoder:(id)coder;
- (CTLazuliMessageGroupDispositionNotification)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliMessageGroupDispositionNotification

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  chatInformation = [(CTLazuliMessageGroupDispositionNotification *)self chatInformation];
  [v3 appendFormat:@", chatInformation = %@", chatInformation];

  deliveryType = [(CTLazuliMessageGroupDispositionNotification *)self deliveryType];
  deliveryType2 = [(CTLazuliMessageGroupDispositionNotification *)self deliveryType];
  [v3 appendFormat:@", deliveryType = [%ld - %s]", deliveryType, print_CTLazuliMessageDispositionNotificationType(&deliveryType2)];
  messageID = [(CTLazuliMessageGroupDispositionNotification *)self messageID];
  [v3 appendFormat:@", messageID = %@", messageID];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliMessageGroupDispositionNotification:(id)notification
{
  notificationCopy = notification;
  chatInformation = [(CTLazuliMessageGroupDispositionNotification *)self chatInformation];
  chatInformation2 = [notificationCopy chatInformation];
  if (chatInformation != chatInformation2)
  {
    chatInformation3 = [(CTLazuliMessageGroupDispositionNotification *)self chatInformation];
    chatInformation4 = [notificationCopy chatInformation];
    if (![chatInformation3 isEqualToCTLazuliGroupChatInformation:chatInformation4])
    {
      v9 = 0;
LABEL_10:

      goto LABEL_11;
    }
  }

  deliveryType = [(CTLazuliMessageGroupDispositionNotification *)self deliveryType];
  if (deliveryType == [notificationCopy deliveryType])
  {
    messageID = [(CTLazuliMessageGroupDispositionNotification *)self messageID];
    messageID2 = [notificationCopy messageID];
    v13 = messageID2;
    if (messageID == messageID2)
    {

      v9 = 1;
    }

    else
    {
      messageID3 = [(CTLazuliMessageGroupDispositionNotification *)self messageID];
      messageID4 = [notificationCopy messageID];
      v9 = [messageID3 isEqualToCTLazuliMessageID:messageID4];
    }
  }

  else
  {
    v9 = 0;
  }

  if (chatInformation != chatInformation2)
  {
    goto LABEL_10;
  }

LABEL_11:

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliMessageGroupDispositionNotification *)self isEqualToCTLazuliMessageGroupDispositionNotification:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliMessageGroupDispositionNotification allocWithZone:?];
  v6 = [(CTLazuliGroupChatInformation *)self->_chatInformation copyWithZone:zone];
  [(CTLazuliMessageGroupDispositionNotification *)v5 setChatInformation:v6];

  [(CTLazuliMessageGroupDispositionNotification *)v5 setDeliveryType:self->_deliveryType];
  v7 = [(CTLazuliMessageID *)self->_messageID copyWithZone:zone];
  [(CTLazuliMessageGroupDispositionNotification *)v5 setMessageID:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_chatInformation forKey:@"kChatInformationKey"];
  v4 = [MEMORY[0x1E696AD98] numberWithLong:self->_deliveryType];
  [coderCopy encodeObject:v4 forKey:@"kDeliveryTypeKey"];

  [coderCopy encodeObject:self->_messageID forKey:@"kMessageIDKey"];
}

- (CTLazuliMessageGroupDispositionNotification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CTLazuliMessageGroupDispositionNotification;
  v5 = [(CTLazuliMessageGroupDispositionNotification *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kChatInformationKey"];
    chatInformation = v5->_chatInformation;
    v5->_chatInformation = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kDeliveryTypeKey"];
    v5->_deliveryType = [v8 longValue];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMessageIDKey"];
    messageID = v5->_messageID;
    v5->_messageID = v9;
  }

  return v5;
}

- (CTLazuliMessageGroupDispositionNotification)initWithReflection:(const void *)reflection
{
  v10.receiver = self;
  v10.super_class = CTLazuliMessageGroupDispositionNotification;
  v4 = [(CTLazuliMessageGroupDispositionNotification *)&v10 init];
  if (v4)
  {
    v5 = [[CTLazuliGroupChatInformation alloc] initWithReflection:reflection];
    chatInformation = v4->_chatInformation;
    v4->_chatInformation = v5;

    v4->_deliveryType = encode_CTLazuliMessageDispositionNotificationType(reflection + 82);
    v7 = [[CTLazuliMessageID alloc] initWithReflection:reflection + 336];
    messageID = v4->_messageID;
    v4->_messageID = v7;
  }

  return v4;
}

@end