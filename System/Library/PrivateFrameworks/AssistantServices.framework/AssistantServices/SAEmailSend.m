@interface SAEmailSend
- (id)_ad_transformedMailSuccessResponse;
- (id)_ad_transformedSendEmailRequest;
- (id)_personsForRecipients:(id)a3;
@end

@implementation SAEmailSend

- (id)_personsForRecipients:(id)a3
{
  v3 = a3;
  v16 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v3;
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
        v10 = [v8 data];
        [v9 setHandle:v10];

        v11 = objc_alloc_init(STPerson);
        v12 = [NSSet setWithObject:v9];
        [v11 setContactHandles:v12];

        v13 = [v8 displayText];
        [v11 setFullName:v13];

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
  v3 = [(SAEmailSend *)self email];
  v4 = [v3 type];
  v5 = [v4 isEqualToString:SAEmailTypeNewValue];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [v3 type];
    v8 = [v7 isEqualToString:SAEmailTypeReplyValue];

    if (v8)
    {
      v6 = 1;
    }

    else
    {
      v9 = [v3 type];
      v10 = [v9 isEqualToString:SAEmailTypeReplyAllValue];

      if (v10)
      {
        v6 = 2;
      }

      else
      {
        v11 = [v3 type];
        v12 = [v11 isEqualToString:SAEmailTypeForwardValue];

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
  v14 = [v3 recipientsTo];
  v15 = [(SAEmailSend *)self _personsForRecipients:v14];
  [v13 setToRecipients:v15];

  v16 = [v3 recipientsCc];
  v17 = [(SAEmailSend *)self _personsForRecipients:v16];
  [v13 setCcRecipients:v17];

  v18 = [v3 recipientsBcc];
  v19 = [(SAEmailSend *)self _personsForRecipients:v18];
  [v13 setBccRecipients:v19];

  v20 = [v3 receivingAddresses];
  [v13 setReceivingAddresses:v20];

  v21 = [v3 fromEmail];
  v22 = v21;
  if (v21)
  {
    v31 = v21;
    v23 = [NSArray arrayWithObjects:&v31 count:1];
    v24 = [(SAEmailSend *)self _personsForRecipients:v23];
    v25 = [v24 firstObject];
    [v13 setSender:v25];
  }

  v26 = [v3 subject];
  [v13 setSubject:v26];

  v27 = [v3 message];
  [v13 setMessageBody:v27];

  v28 = [v3 identifier];
  [v13 setMessageIdentifier:v28];

  v29 = [[STSendEmailRequest alloc] _initWithMessage:v13];

  return v29;
}

@end