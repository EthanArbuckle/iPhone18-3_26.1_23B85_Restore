@interface STSiriMessage
- (STSiriMessage)init;
- (STSiriMessage)initWithCoder:(id)a3;
- (id)_aceContextObjectValue;
- (void)encodeWithCoder:(id)a3;
- (void)setAttachmentURL:(id)a3;
- (void)setBodyText:(id)a3;
- (void)setChatIdentifier:(id)a3;
- (void)setEffect:(id)a3;
- (void)setRecipientAddresses:(id)a3;
- (void)setSendDate:(id)a3;
- (void)setSubjectText:(id)a3;
@end

@implementation STSiriMessage

- (STSiriMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = STSiriMessage;
  v5 = [(STSiriModelObject *)&v38 initWithCoder:v4];
  if (v5)
  {
    v5->_outbound = [v4 decodeBoolForKey:@"Outbound"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SenderAddress"];
    senderAddress = v5->_senderAddress;
    v5->_senderAddress = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SenderInternalGUID"];
    senderInternalGUID = v5->_senderInternalGUID;
    v5->_senderInternalGUID = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"RecipientAddresses"];
    recipientAddresses = v5->_recipientAddresses;
    v5->_recipientAddresses = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"GroupName"];
    groupName = v5->_groupName;
    v5->_groupName = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"GroupNameId"];
    groupNameId = v5->_groupNameId;
    v5->_groupNameId = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SubjectText"];
    v20 = [v19 copy];
    subjectText = v5->_subjectText;
    v5->_subjectText = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BodyText"];
    v23 = [v22 copy];
    bodyText = v5->_bodyText;
    v5->_bodyText = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AttachmentURL"];
    v26 = [v25 copy];
    attachmentURL = v5->_attachmentURL;
    v5->_attachmentURL = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SendDate"];
    v29 = [v28 copy];
    sendDate = v5->_sendDate;
    v5->_sendDate = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ChatIdentifier"];
    v32 = [v31 copy];
    chatIdentifier = v5->_chatIdentifier;
    v5->_chatIdentifier = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Effect"];
    v35 = [v34 copy];
    effect = v5->_effect;
    v5->_effect = v35;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STSiriMessage;
  v4 = a3;
  [(STSiriModelObject *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_outbound forKey:{@"Outbound", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_senderAddress forKey:@"SenderAddress"];
  [v4 encodeObject:self->_senderInternalGUID forKey:@"SenderInternalGUID"];
  [v4 encodeObject:self->_recipientAddresses forKey:@"RecipientAddresses"];
  [v4 encodeObject:self->_groupName forKey:@"GroupName"];
  [v4 encodeObject:self->_groupNameId forKey:@"GroupNameId"];
  [v4 encodeObject:self->_subjectText forKey:@"SubjectText"];
  [v4 encodeObject:self->_bodyText forKey:@"BodyText"];
  [v4 encodeObject:self->_attachmentURL forKey:@"AttachmentURL"];
  [v4 encodeObject:self->_sendDate forKey:@"SendDate"];
  [v4 encodeObject:self->_chatIdentifier forKey:@"ChatIdentifier"];
  [v4 encodeObject:self->_effect forKey:@"Effect"];
}

- (id)_aceContextObjectValue
{
  v36[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69C7A98]);
  v4 = MEMORY[0x1E695DFF8];
  v5 = [(STSiriModelObject *)self identifier];
  v6 = [v4 _af_URLWithMessageIdentifier:v5];
  [v3 setIdentifier:v6];

  v7 = [(STSiriMessage *)self attachmentURL];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69C7720]);
    [v8 setIdentifier:v7];
    v36[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
    [v3 setAttachments:v9];
  }

  v10 = [(STSiriMessage *)self sendDate];
  [v3 setDateSent:v10];

  v11 = [(STSiriMessage *)self bodyText];
  [v3 setMessage:v11];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[STSiriMessage isOutbound](self, "isOutbound")}];
  [v3 setOutgoing:v12];

  v13 = [(STSiriMessage *)self subjectText];
  [v3 setSubject:v13];

  v14 = [(STSiriMessage *)self chatIdentifier];
  [v3 setChatIdentifier:v14];

  v15 = [(STSiriMessage *)self groupName];
  [v3 setGroupName:v15];

  v16 = [(STSiriMessage *)self groupNameId];
  [v3 setGroupNameId:v16];

  v17 = [(STSiriMessage *)self senderAddress];
  v18 = [v17 _aceContextObjectValue];
  [v3 setMsgSender:v18];

  v19 = objc_alloc(MEMORY[0x1E695DF70]);
  v20 = [(STSiriMessage *)self recipientAddresses];
  v21 = [v19 initWithCapacity:{objc_msgSend(v20, "count")}];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v22 = [(STSiriMessage *)self recipientAddresses];
  v23 = [v22 countByEnumeratingWithState:&v31 objects:v35 count:16];
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
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v31 + 1) + 8 * i) _aceContextObjectValue];
        [v21 addObject:v27];
      }

      v24 = [v22 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v24);
  }

  [v3 setMsgRecipients:v21];
  v28 = [(STSiriMessage *)self effect];
  [v3 setEffect:v28];

  v29 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)setChatIdentifier:(id)a3
{
  v4 = [a3 copy];
  chatIdentifier = self->_chatIdentifier;
  self->_chatIdentifier = v4;
}

- (void)setSendDate:(id)a3
{
  v4 = [a3 copy];
  sendDate = self->_sendDate;
  self->_sendDate = v4;
}

- (void)setAttachmentURL:(id)a3
{
  v4 = [a3 copy];
  attachmentURL = self->_attachmentURL;
  self->_attachmentURL = v4;
}

- (void)setEffect:(id)a3
{
  v4 = [a3 copy];
  effect = self->_effect;
  self->_effect = v4;
}

- (void)setBodyText:(id)a3
{
  v4 = [a3 copy];
  bodyText = self->_bodyText;
  self->_bodyText = v4;
}

- (void)setSubjectText:(id)a3
{
  v4 = [a3 copy];
  subjectText = self->_subjectText;
  self->_subjectText = v4;
}

- (void)setRecipientAddresses:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = [v4 copy];
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