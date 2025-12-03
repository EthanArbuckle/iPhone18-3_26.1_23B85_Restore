@interface MFAssistantEmailSend
- (id)_sendEmail:(id)email;
- (id)_validateEmail:(id)email;
- (void)performWithCompletion:(id)completion;
@end

@implementation MFAssistantEmailSend

- (id)_validateEmail:(id)email
{
  emailCopy = email;
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

  recipientsTo = [emailCopy recipientsTo];
  if ([recipientsTo count])
  {
    goto LABEL_6;
  }

  recipientsCc = [emailCopy recipientsCc];
  if ([recipientsCc count])
  {

LABEL_6:
    goto LABEL_7;
  }

  recipientsBcc = [emailCopy recipientsBcc];
  v20 = [recipientsBcc count];

  if (!v20)
  {
    v9 = [SACommandFailed alloc];
    v10 = @"Missing any recipients.";
    goto LABEL_11;
  }

LABEL_7:
  recipientsTo2 = [emailCopy recipientsTo];
  v8 = [(MFAssistantEmailSend *)self anyRecipientIsInvalid:recipientsTo2];

  if (v8)
  {
    v9 = [SACommandFailed alloc];
    v10 = @"Invalid to recipients.";
LABEL_11:
    v12 = [v9 initWithReason:v10];
    goto LABEL_12;
  }

  recipientsCc2 = [emailCopy recipientsCc];
  v16 = [(MFAssistantEmailSend *)self anyRecipientIsInvalid:recipientsCc2];

  if (v16)
  {
    v9 = [SACommandFailed alloc];
    v10 = @"Invalid cc recipients.";
    goto LABEL_11;
  }

  recipientsBcc2 = [emailCopy recipientsBcc];
  v18 = [(MFAssistantEmailSend *)self anyRecipientIsInvalid:recipientsBcc2];

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

- (id)_sendEmail:(id)email
{
  emailCopy = email;
  v4 = [[MSEmailModel alloc] initWithSAEmail:emailCopy];
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
  identifier = [emailCopy identifier];
  [v10 setIdentifier:identifier];

LABEL_6:
  _Block_object_dispose(&v19, 8);

  return v10;
}

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  identifier = [(MFAssistantEmailSend *)self identifier];
  v5 = [(MFAssistantEmailSend *)self _validateEmail:identifier];

  if (!v5)
  {
    identifier2 = [(MFAssistantEmailSend *)self identifier];
    v5 = [(MFAssistantEmailSend *)self _sendEmail:identifier2];
  }

  dictionary = [v5 dictionary];
  completionCopy[2](completionCopy, dictionary);
}

@end