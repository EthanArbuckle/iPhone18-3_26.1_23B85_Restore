@interface SASmsSms(STSiriMessage)
- (STSiriMessage)af_messageValue;
@end

@implementation SASmsSms(STSiriMessage)

- (STSiriMessage)af_messageValue
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(STSiriMessage);
  v3 = [a1 identifier];
  v4 = [v3 _af_messageIdentifierValue];
  [(STSiriModelObject *)v2 setIdentifier:v4];

  v5 = [a1 attachments];
  v6 = [v5 firstObject];
  v7 = [v6 identifier];
  [(STSiriMessage *)v2 setAttachmentURL:v7];

  v8 = [a1 dateSent];
  [(STSiriMessage *)v2 setSendDate:v8];

  v9 = [a1 message];
  [(STSiriMessage *)v2 setBodyText:v9];

  v10 = [a1 outgoing];
  -[STSiriMessage setOutbound:](v2, "setOutbound:", [v10 BOOLValue]);

  v11 = [a1 subject];
  [(STSiriMessage *)v2 setSubjectText:v11];

  v12 = [a1 chatIdentifier];
  [(STSiriMessage *)v2 setChatIdentifier:v12];

  v13 = [a1 groupName];
  [(STSiriMessage *)v2 setGroupName:v13];

  v14 = [a1 groupNameId];
  [(STSiriMessage *)v2 setGroupNameId:v14];

  v15 = [a1 msgSender];
  v16 = [v15 st_contactAddressValue];
  [(STSiriMessage *)v2 setSenderAddress:v16];

  v17 = [a1 msgSender];
  v18 = [v17 object];
  v19 = [v18 internalGUID];
  v36 = v2;
  [(STSiriMessage *)v2 _setSenderInternalGUID:v19];

  v20 = objc_alloc(MEMORY[0x1E695DF70]);
  v21 = [a1 msgRecipients];
  v22 = [v20 initWithCapacity:{objc_msgSend(v21, "count")}];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v23 = [a1 msgRecipients];
  v24 = [v23 countByEnumeratingWithState:&v37 objects:v45 count:16];
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
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v37 + 1) + 8 * i);
        v29 = [v28 st_contactAddressValue];
        if (v29)
        {
          [v22 addObject:v29];
        }

        else
        {
          v30 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
          {
            v31 = v30;
            v32 = [v28 aceId];
            *buf = 136315394;
            v42 = "[SASmsSms(STSiriMessage) af_messageValue]";
            v43 = 2112;
            v44 = v32;
            _os_log_error_impl(&dword_1912FE000, v31, OS_LOG_TYPE_ERROR, "%s Invalid message recipient has no actionable contact values %@. Ignoring that recipient.", buf, 0x16u);
          }
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v25);
  }

  if ([v22 count])
  {
    [(STSiriMessage *)v36 setRecipientAddresses:v22];
  }

  v33 = [a1 effect];
  [(STSiriMessage *)v36 setEffect:v33];

  v34 = *MEMORY[0x1E69E9840];

  return v36;
}

@end