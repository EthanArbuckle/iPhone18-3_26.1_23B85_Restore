@interface INSendMessageIntentDonationMetadata
- (BOOL)isEqual:(id)equal;
- (INSendMessageIntentDonationMetadata)init;
- (INSendMessageIntentDonationMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INSendMessageIntentDonationMetadata

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INSendMessageIntentDonationMetadata;
  coderCopy = coder;
  [(INIntentDonationMetadata *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_mentionsCurrentUser forKey:{@"mentionsCurrentUser", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_replyToCurrentUser forKey:@"replyToCurrentUser"];
  [coderCopy encodeBool:self->_businessChat forKey:@"businessChat"];
  [coderCopy encodeBool:self->_notifyRecipientAnyway forKey:@"notifyRecipientAnyway"];
  [coderCopy encodeInteger:self->_recipientCount forKey:@"recipientCount"];
}

- (INSendMessageIntentDonationMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = INSendMessageIntentDonationMetadata;
  v5 = [(INIntentDonationMetadata *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_mentionsCurrentUser = [coderCopy decodeBoolForKey:@"mentionsCurrentUser"];
    v5->_replyToCurrentUser = [coderCopy decodeBoolForKey:@"replyToCurrentUser"];
    v5->_businessChat = [coderCopy decodeBoolForKey:@"businessChat"];
    v5->_notifyRecipientAnyway = [coderCopy decodeBoolForKey:@"notifyRecipientAnyway"];
    v5->_recipientCount = [coderCopy decodeIntegerForKey:@"recipientCount"];
    v6 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = INSendMessageIntentDonationMetadata;
  v4 = [(INIntentDonationMetadata *)&v6 copyWithZone:zone];
  [v4 setMentionsCurrentUser:{-[INSendMessageIntentDonationMetadata mentionsCurrentUser](self, "mentionsCurrentUser")}];
  [v4 setReplyToCurrentUser:{-[INSendMessageIntentDonationMetadata isReplyToCurrentUser](self, "isReplyToCurrentUser")}];
  [v4 setBusinessChat:{-[INSendMessageIntentDonationMetadata isBusinessChat](self, "isBusinessChat")}];
  [v4 setNotifyRecipientAnyway:{-[INSendMessageIntentDonationMetadata notifyRecipientAnyway](self, "notifyRecipientAnyway")}];
  [v4 setRecipientCount:{-[INSendMessageIntentDonationMetadata recipientCount](self, "recipientCount")}];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
    goto LABEL_13;
  }

  v6 = equalCopy;
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v6 = 0;
LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  mentionsCurrentUser = [(INSendMessageIntentDonationMetadata *)self mentionsCurrentUser];
  if (mentionsCurrentUser != [(INSendMessageIntentDonationMetadata *)v6 mentionsCurrentUser])
  {
    goto LABEL_10;
  }

  isReplyToCurrentUser = [(INSendMessageIntentDonationMetadata *)self isReplyToCurrentUser];
  if (isReplyToCurrentUser != [(INSendMessageIntentDonationMetadata *)v6 isReplyToCurrentUser])
  {
    goto LABEL_10;
  }

  isBusinessChat = [(INSendMessageIntentDonationMetadata *)self isBusinessChat];
  if (isBusinessChat != [(INSendMessageIntentDonationMetadata *)v6 isBusinessChat])
  {
    goto LABEL_10;
  }

  notifyRecipientAnyway = [(INSendMessageIntentDonationMetadata *)self notifyRecipientAnyway];
  if (notifyRecipientAnyway != [(INSendMessageIntentDonationMetadata *)v6 notifyRecipientAnyway])
  {
    goto LABEL_10;
  }

  recipientCount = [(INSendMessageIntentDonationMetadata *)self recipientCount];
  v12 = recipientCount == [(INSendMessageIntentDonationMetadata *)v6 recipientCount];
LABEL_11:

LABEL_13:
  return v12;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = INSendMessageIntentDonationMetadata;
  return [(INSendMessageIntentDonationMetadata *)&v3 hash]^ self->_mentionsCurrentUser ^ self->_recipientCount;
}

- (INSendMessageIntentDonationMetadata)init
{
  v3.receiver = self;
  v3.super_class = INSendMessageIntentDonationMetadata;
  return [(INIntentDonationMetadata *)&v3 _init];
}

@end