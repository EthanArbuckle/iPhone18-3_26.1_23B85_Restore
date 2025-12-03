@interface SAEmailSend
- (id)_ad_transformedMailSuccessResponse;
- (id)_ad_transformedSendEmailRequest;
- (id)_personsForRecipients:(id)recipients;
@end

@implementation SAEmailSend

- (id)_personsForRecipients:(id)recipients
{
  recipientsCopy = recipients;
  v16 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [recipientsCopy count]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = recipientsCopy;
  v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = objc_alloc_init(STPersonContactHandle);
        [v9 setType:0];
        data = [v8 data];
        [v9 setHandle:data];

        v11 = objc_alloc_init(STPerson);
        v12 = [NSSet setWithObject:v9];
        [v11 setContactHandles:v12];

        displayText = [v8 displayText];
        [v11 setFullName:displayText];

        if (v11)
        {
          [v16 addObject:v11];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  return v16;
}

- (id)_ad_transformedMailSuccessResponse
{
  v2 = objc_alloc_init(SACommandSucceeded);

  return v2;
}

- (id)_ad_transformedSendEmailRequest
{
  email = [(SAEmailSend *)self email];
  type = [email type];
  v5 = [type isEqualToString:SAEmailTypeNewValue];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    type2 = [email type];
    v8 = [type2 isEqualToString:SAEmailTypeReplyValue];

    if (v8)
    {
      v6 = 1;
    }

    else
    {
      type3 = [email type];
      v10 = [type3 isEqualToString:SAEmailTypeReplyAllValue];

      if (v10)
      {
        v6 = 2;
      }

      else
      {
        type4 = [email type];
        v12 = [type4 isEqualToString:SAEmailTypeForwardValue];

        if (v12)
        {
          v6 = 3;
        }

        else
        {
          v6 = 0;
        }
      }
    }
  }

  v13 = objc_alloc_init(STEmailMessage);
  [v13 setType:v6];
  recipientsTo = [email recipientsTo];
  v15 = [(SAEmailSend *)self _personsForRecipients:recipientsTo];
  [v13 setToRecipients:v15];

  recipientsCc = [email recipientsCc];
  v17 = [(SAEmailSend *)self _personsForRecipients:recipientsCc];
  [v13 setCcRecipients:v17];

  recipientsBcc = [email recipientsBcc];
  v19 = [(SAEmailSend *)self _personsForRecipients:recipientsBcc];
  [v13 setBccRecipients:v19];

  receivingAddresses = [email receivingAddresses];
  [v13 setReceivingAddresses:receivingAddresses];

  fromEmail = [email fromEmail];
  v22 = fromEmail;
  if (fromEmail)
  {
    v31 = fromEmail;
    v23 = [NSArray arrayWithObjects:&v31 count:1];
    v24 = [(SAEmailSend *)self _personsForRecipients:v23];
    firstObject = [v24 firstObject];
    [v13 setSender:firstObject];
  }

  subject = [email subject];
  [v13 setSubject:subject];

  message = [email message];
  [v13 setMessageBody:message];

  identifier = [email identifier];
  [v13 setMessageIdentifier:identifier];

  v29 = [[STSendEmailRequest alloc] _initWithMessage:v13];

  return v29;
}

@end