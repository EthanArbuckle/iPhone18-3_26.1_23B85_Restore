@interface STSiriMessage
- (STSiriMessage)init;
- (STSiriMessage)initWithCoder:(id)coder;
- (id)_aceContextObjectValue;
- (void)encodeWithCoder:(id)coder;
- (void)setAttachmentURL:(id)l;
- (void)setBodyText:(id)text;
- (void)setChatIdentifier:(id)identifier;
- (void)setEffect:(id)effect;
- (void)setRecipientAddresses:(id)addresses;
- (void)setSendDate:(id)date;
- (void)setSubjectText:(id)text;
@end

@implementation STSiriMessage

- (STSiriMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v38.receiver = self;
  v38.super_class = STSiriMessage;
  v5 = [(STSiriModelObject *)&v38 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_outbound = [coderCopy decodeBoolForKey:@"Outbound"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SenderAddress"];
    senderAddress = v5->_senderAddress;
    v5->_senderAddress = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SenderInternalGUID"];
    senderInternalGUID = v5->_senderInternalGUID;
    v5->_senderInternalGUID = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"RecipientAddresses"];
    recipientAddresses = v5->_recipientAddresses;
    v5->_recipientAddresses = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"GroupName"];
    groupName = v5->_groupName;
    v5->_groupName = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"GroupNameId"];
    groupNameId = v5->_groupNameId;
    v5->_groupNameId = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SubjectText"];
    v20 = [v19 copy];
    subjectText = v5->_subjectText;
    v5->_subjectText = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BodyText"];
    v23 = [v22 copy];
    bodyText = v5->_bodyText;
    v5->_bodyText = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AttachmentURL"];
    v26 = [v25 copy];
    attachmentURL = v5->_attachmentURL;
    v5->_attachmentURL = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SendDate"];
    v29 = [v28 copy];
    sendDate = v5->_sendDate;
    v5->_sendDate = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ChatIdentifier"];
    v32 = [v31 copy];
    chatIdentifier = v5->_chatIdentifier;
    v5->_chatIdentifier = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Effect"];
    v35 = [v34 copy];
    effect = v5->_effect;
    v5->_effect = v35;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STSiriMessage;
  coderCopy = coder;
  [(STSiriModelObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_outbound forKey:{@"Outbound", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_senderAddress forKey:@"SenderAddress"];
  [coderCopy encodeObject:self->_senderInternalGUID forKey:@"SenderInternalGUID"];
  [coderCopy encodeObject:self->_recipientAddresses forKey:@"RecipientAddresses"];
  [coderCopy encodeObject:self->_groupName forKey:@"GroupName"];
  [coderCopy encodeObject:self->_groupNameId forKey:@"GroupNameId"];
  [coderCopy encodeObject:self->_subjectText forKey:@"SubjectText"];
  [coderCopy encodeObject:self->_bodyText forKey:@"BodyText"];
  [coderCopy encodeObject:self->_attachmentURL forKey:@"AttachmentURL"];
  [coderCopy encodeObject:self->_sendDate forKey:@"SendDate"];
  [coderCopy encodeObject:self->_chatIdentifier forKey:@"ChatIdentifier"];
  [coderCopy encodeObject:self->_effect forKey:@"Effect"];
}

- (id)_aceContextObjectValue
{
  v36[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69C7A98]);
  v4 = MEMORY[0x1E695DFF8];
  identifier = [(STSiriModelObject *)self identifier];
  v6 = [v4 _af_URLWithMessageIdentifier:identifier];
  [v3 setIdentifier:v6];

  attachmentURL = [(STSiriMessage *)self attachmentURL];
  if (attachmentURL)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69C7720]);
    [v8 setIdentifier:attachmentURL];
    v36[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
    [v3 setAttachments:v9];
  }

  sendDate = [(STSiriMessage *)self sendDate];
  [v3 setDateSent:sendDate];

  bodyText = [(STSiriMessage *)self bodyText];
  [v3 setMessage:bodyText];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[STSiriMessage isOutbound](self, "isOutbound")}];
  [v3 setOutgoing:v12];

  subjectText = [(STSiriMessage *)self subjectText];
  [v3 setSubject:subjectText];

  chatIdentifier = [(STSiriMessage *)self chatIdentifier];
  [v3 setChatIdentifier:chatIdentifier];

  groupName = [(STSiriMessage *)self groupName];
  [v3 setGroupName:groupName];

  groupNameId = [(STSiriMessage *)self groupNameId];
  [v3 setGroupNameId:groupNameId];

  senderAddress = [(STSiriMessage *)self senderAddress];
  _aceContextObjectValue = [senderAddress _aceContextObjectValue];
  [v3 setMsgSender:_aceContextObjectValue];

  v19 = objc_alloc(MEMORY[0x1E695DF70]);
  recipientAddresses = [(STSiriMessage *)self recipientAddresses];
  v21 = [v19 initWithCapacity:{objc_msgSend(recipientAddresses, "count")}];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  recipientAddresses2 = [(STSiriMessage *)self recipientAddresses];
  v23 = [recipientAddresses2 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v32;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(recipientAddresses2);
        }

        _aceContextObjectValue2 = [*(*(&v31 + 1) + 8 * i) _aceContextObjectValue];
        [v21 addObject:_aceContextObjectValue2];
      }

      v24 = [recipientAddresses2 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v24);
  }

  [v3 setMsgRecipients:v21];
  effect = [(STSiriMessage *)self effect];
  [v3 setEffect:effect];

  v29 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)setChatIdentifier:(id)identifier
{
  v4 = [identifier copy];
  chatIdentifier = self->_chatIdentifier;
  self->_chatIdentifier = v4;
}

- (void)setSendDate:(id)date
{
  v4 = [date copy];
  sendDate = self->_sendDate;
  self->_sendDate = v4;
}

- (void)setAttachmentURL:(id)l
{
  v4 = [l copy];
  attachmentURL = self->_attachmentURL;
  self->_attachmentURL = v4;
}

- (void)setEffect:(id)effect
{
  v4 = [effect copy];
  effect = self->_effect;
  self->_effect = v4;
}

- (void)setBodyText:(id)text
{
  v4 = [text copy];
  bodyText = self->_bodyText;
  self->_bodyText = v4;
}

- (void)setSubjectText:(id)text
{
  v4 = [text copy];
  subjectText = self->_subjectText;
  self->_subjectText = v4;
}

- (void)setRecipientAddresses:(id)addresses
{
  addressesCopy = addresses;
  v7 = addressesCopy;
  if (addressesCopy)
  {
    v5 = [addressesCopy copy];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  objc_storeStrong(&self->_recipientAddresses, v5);
  v6 = v7;
  if (v7)
  {

    v6 = v7;
  }
}

- (STSiriMessage)init
{
  v6.receiver = self;
  v6.super_class = STSiriMessage;
  v2 = [(STSiriMessage *)&v6 init];
  v3 = v2;
  if (v2)
  {
    recipientAddresses = v2->_recipientAddresses;
    v2->_recipientAddresses = MEMORY[0x1E695E0F0];
  }

  return v3;
}

@end