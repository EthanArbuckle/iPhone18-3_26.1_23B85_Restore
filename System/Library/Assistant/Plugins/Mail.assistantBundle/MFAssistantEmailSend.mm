@interface MFAssistantEmailSend
- (id)_sendEmail:(id)a3;
- (id)_validateEmail:(id)a3;
- (void)performWithCompletion:(id)a3;
@end

@implementation MFAssistantEmailSend

- (id)_validateEmail:(id)a3
{
  v4 = a3;
  if ((MSCanSendMail() & 1) == 0)
  {
    v11 = [SACommandFailed alloc];
    v12 = [v11 initWithErrorCode:SAEmailNoAccountErrorCode];
LABEL_12:
    v13 = v12;
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [SACommandFailed alloc];
    v10 = @"Did not get an email to send.";
    goto LABEL_11;
  }

  v5 = [v4 recipientsTo];
  if ([v5 count])
  {
    goto LABEL_6;
  }

  v6 = [v4 recipientsCc];
  if ([v6 count])
  {

LABEL_6:
    goto LABEL_7;
  }

  v19 = [v4 recipientsBcc];
  v20 = [v19 count];

  if (!v20)
  {
    v9 = [SACommandFailed alloc];
    v10 = @"Missing any recipients.";
    goto LABEL_11;
  }

LABEL_7:
  v7 = [v4 recipientsTo];
  v8 = [(MFAssistantEmailSend *)self anyRecipientIsInvalid:v7];

  if (v8)
  {
    v9 = [SACommandFailed alloc];
    v10 = @"Invalid to recipients.";
LABEL_11:
    v12 = [v9 initWithReason:v10];
    goto LABEL_12;
  }

  v15 = [v4 recipientsCc];
  v16 = [(MFAssistantEmailSend *)self anyRecipientIsInvalid:v15];

  if (v16)
  {
    v9 = [SACommandFailed alloc];
    v10 = @"Invalid cc recipients.";
    goto LABEL_11;
  }

  v17 = [v4 recipientsBcc];
  v18 = [(MFAssistantEmailSend *)self anyRecipientIsInvalid:v17];

  if (v18)
  {
    v9 = [SACommandFailed alloc];
    v10 = @"Invalid bcc recipients.";
    goto LABEL_11;
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (id)_sendEmail:(id)a3
{
  v3 = a3;
  v4 = [[MSEmailModel alloc] initWithSAEmail:v3];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_3F64;
  v23 = sub_3F74;
  v24 = 0;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_3F7C;
  v16 = &unk_C418;
  v18 = &v19;
  v5 = dispatch_semaphore_create(0);
  v17 = v5;
  v6 = [MSSendEmail sendEmail:v4 playSound:1 completionBlock:&v13];
  v7 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v5, v7))
  {
    [v6 cancel];
    v8 = [SACommandFailed alloc];
    v9 = @"Send timed out.";
LABEL_3:
    v10 = [v8 initWithReason:{v9, v13, v14, v15, v16}];
    goto LABEL_6;
  }

  if (!v20[5])
  {
    v8 = [SACommandFailed alloc];
    v9 = @"Send failed.";
    goto LABEL_3;
  }

  v10 = objc_alloc_init(SADomainObjectCommitCompleted);
  v11 = [v3 identifier];
  [v10 setIdentifier:v11];

LABEL_6:
  _Block_object_dispose(&v19, 8);

  return v10;
}

- (void)performWithCompletion:(id)a3
{
  v8 = a3;
  v4 = [(MFAssistantEmailSend *)self identifier];
  v5 = [(MFAssistantEmailSend *)self _validateEmail:v4];

  if (!v5)
  {
    v6 = [(MFAssistantEmailSend *)self identifier];
    v5 = [(MFAssistantEmailSend *)self _sendEmail:v6];
  }

  v7 = [v5 dictionary];
  v8[2](v8, v7);
}

@end