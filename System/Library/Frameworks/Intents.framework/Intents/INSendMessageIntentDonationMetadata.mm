@interface INSendMessageIntentDonationMetadata
- (BOOL)isEqual:(id)a3;
- (INSendMessageIntentDonationMetadata)init;
- (INSendMessageIntentDonationMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INSendMessageIntentDonationMetadata

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INSendMessageIntentDonationMetadata;
  v4 = a3;
  [(INIntentDonationMetadata *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_mentionsCurrentUser forKey:{@"mentionsCurrentUser", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_replyToCurrentUser forKey:@"replyToCurrentUser"];
  [v4 encodeBool:self->_businessChat forKey:@"businessChat"];
  [v4 encodeBool:self->_notifyRecipientAnyway forKey:@"notifyRecipientAnyway"];
  [v4 encodeInteger:self->_recipientCount forKey:@"recipientCount"];
}

- (INSendMessageIntentDonationMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = INSendMessageIntentDonationMetadata;
  v5 = [(INIntentDonationMetadata *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_mentionsCurrentUser = [v4 decodeBoolForKey:@"mentionsCurrentUser"];
    v5->_replyToCurrentUser = [v4 decodeBoolForKey:@"replyToCurrentUser"];
    v5->_businessChat = [v4 decodeBoolForKey:@"businessChat"];
    v5->_notifyRecipientAnyway = [v4 decodeBoolForKey:@"notifyRecipientAnyway"];
    v5->_recipientCount = [v4 decodeIntegerForKey:@"recipientCount"];
    v6 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = INSendMessageIntentDonationMetadata;
  v4 = [(INIntentDonationMetadata *)&v6 copyWithZone:a3];
  [v4 setMentionsCurrentUser:{-[INSendMessageIntentDonationMetadata mentionsCurrentUser](self, "mentionsCurrentUser")}];
  [v4 setReplyToCurrentUser:{-[INSendMessageIntentDonationMetadata isReplyToCurrentUser](self, "isReplyToCurrentUser")}];
  [v4 setBusinessChat:{-[INSendMessageIntentDonationMetadata isBusinessChat](self, "isBusinessChat")}];
  [v4 setNotifyRecipientAnyway:{-[INSendMessageIntentDonationMetadata notifyRecipientAnyway](self, "notifyRecipientAnyway")}];
  [v4 setRecipientCount:{-[INSendMessageIntentDonationMetadata recipientCount](self, "recipientCount")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
    goto LABEL_13;
  }

  v6 = v4;
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v6 = 0;
LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  v7 = [(INSendMessageIntentDonationMetadata *)self mentionsCurrentUser];
  if (v7 != [(INSendMessageIntentDonationMetadata *)v6 mentionsCurrentUser])
  {
    goto LABEL_10;
  }

  v8 = [(INSendMessageIntentDonationMetadata *)self isReplyToCurrentUser];
  if (v8 != [(INSendMessageIntentDonationMetadata *)v6 isReplyToCurrentUser])
  {
    goto LABEL_10;
  }

  v9 = [(INSendMessageIntentDonationMetadata *)self isBusinessChat];
  if (v9 != [(INSendMessageIntentDonationMetadata *)v6 isBusinessChat])
  {
    goto LABEL_10;
  }

  v10 = [(INSendMessageIntentDonationMetadata *)self notifyRecipientAnyway];
  if (v10 != [(INSendMessageIntentDonationMetadata *)v6 notifyRecipientAnyway])
  {
    goto LABEL_10;
  }

  v11 = [(INSendMessageIntentDonationMetadata *)self recipientCount];
  v12 = v11 == [(INSendMessageIntentDonationMetadata *)v6 recipientCount];
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