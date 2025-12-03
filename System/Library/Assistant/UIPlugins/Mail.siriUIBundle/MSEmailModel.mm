@interface MSEmailModel
- (id)initWithSAEmail:(id)email;
@end

@implementation MSEmailModel

- (id)initWithSAEmail:(id)email
{
  emailCopy = email;
  v18.receiver = self;
  v18.super_class = MSEmailModel;
  v5 = [(MSEmailModel *)&v18 init];
  if (v5)
  {
    recipientsTo = [emailCopy recipientsTo];
    v7 = MFCommentedEmailsFromSAPersonAttributes(recipientsTo);
    [(MSEmailModel *)v5 setTo:v7];

    recipientsCc = [emailCopy recipientsCc];
    v9 = MFCommentedEmailsFromSAPersonAttributes(recipientsCc);
    [(MSEmailModel *)v5 setCc:v9];

    recipientsBcc = [emailCopy recipientsBcc];
    v11 = MFCommentedEmailsFromSAPersonAttributes(recipientsBcc);
    [(MSEmailModel *)v5 setBcc:v11];

    subject = [emailCopy subject];
    [(MSEmailModel *)v5 setSubject:subject];

    message = [emailCopy message];
    [(MSEmailModel *)v5 setBody:message];

    type = [emailCopy type];
    v15 = [MFAssistantEmail MSSendTypeForSAEMailType:type];

    if (v15 == 2)
    {
      [(MSEmailModel *)v5 setType:2];
      referenceId = [emailCopy referenceId];
      [(MSEmailModel *)v5 setReference:referenceId];
    }

    else
    {
      if (v15 != 3)
      {
        [(MSEmailModel *)v5 setType:1];
        goto LABEL_8;
      }

      [(MSEmailModel *)v5 setType:3];
      referenceId = [emailCopy referenceId];
      [(MSEmailModel *)v5 setReference:referenceId];
    }
  }

LABEL_8:

  return v5;
}

@end