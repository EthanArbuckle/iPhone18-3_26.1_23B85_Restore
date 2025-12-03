@interface SASmsSms(STSiriMessage)
- (STSiriMessage)af_messageValue;
@end

@implementation SASmsSms(STSiriMessage)

- (STSiriMessage)af_messageValue
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(STSiriMessage);
  identifier = [self identifier];
  _af_messageIdentifierValue = [identifier _af_messageIdentifierValue];
  [(STSiriModelObject *)v2 setIdentifier:_af_messageIdentifierValue];

  attachments = [self attachments];
  firstObject = [attachments firstObject];
  identifier2 = [firstObject identifier];
  [(STSiriMessage *)v2 setAttachmentURL:identifier2];

  dateSent = [self dateSent];
  [(STSiriMessage *)v2 setSendDate:dateSent];

  message = [self message];
  [(STSiriMessage *)v2 setBodyText:message];

  outgoing = [self outgoing];
  -[STSiriMessage setOutbound:](v2, "setOutbound:", [outgoing BOOLValue]);

  subject = [self subject];
  [(STSiriMessage *)v2 setSubjectText:subject];

  chatIdentifier = [self chatIdentifier];
  [(STSiriMessage *)v2 setChatIdentifier:chatIdentifier];

  groupName = [self groupName];
  [(STSiriMessage *)v2 setGroupName:groupName];

  groupNameId = [self groupNameId];
  [(STSiriMessage *)v2 setGroupNameId:groupNameId];

  msgSender = [self msgSender];
  st_contactAddressValue = [msgSender st_contactAddressValue];
  [(STSiriMessage *)v2 setSenderAddress:st_contactAddressValue];

  msgSender2 = [self msgSender];
  object = [msgSender2 object];
  internalGUID = [object internalGUID];
  v36 = v2;
  [(STSiriMessage *)v2 _setSenderInternalGUID:internalGUID];

  v20 = objc_alloc(MEMORY[0x1E695DF70]);
  msgRecipients = [self msgRecipients];
  v22 = [v20 initWithCapacity:{objc_msgSend(msgRecipients, "count")}];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  msgRecipients2 = [self msgRecipients];
  v24 = [msgRecipients2 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v38;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v38 != v26)
        {
          objc_enumerationMutation(msgRecipients2);
        }

        v28 = *(*(&v37 + 1) + 8 * i);
        st_contactAddressValue2 = [v28 st_contactAddressValue];
        if (st_contactAddressValue2)
        {
          [v22 addObject:st_contactAddressValue2];
        }

        else
        {
          v30 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
          {
            v31 = v30;
            aceId = [v28 aceId];
            *buf = 136315394;
            v42 = "[SASmsSms(STSiriMessage) af_messageValue]";
            v43 = 2112;
            v44 = aceId;
            _os_log_error_impl(&dword_1912FE000, v31, OS_LOG_TYPE_ERROR, "%s Invalid message recipient has no actionable contact values %@. Ignoring that recipient.", buf, 0x16u);
          }
        }
      }

      v25 = [msgRecipients2 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v25);
  }

  if ([v22 count])
  {
    [(STSiriMessage *)v36 setRecipientAddresses:v22];
  }

  effect = [self effect];
  [(STSiriMessage *)v36 setEffect:effect];

  v34 = *MEMORY[0x1E69E9840];

  return v36;
}

@end