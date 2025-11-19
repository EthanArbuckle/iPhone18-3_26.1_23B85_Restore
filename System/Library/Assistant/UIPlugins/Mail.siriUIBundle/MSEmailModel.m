@interface MSEmailModel
- (id)initWithSAEmail:(id)a3;
@end

@implementation MSEmailModel

- (id)initWithSAEmail:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = MSEmailModel;
  v5 = [(MSEmailModel *)&v18 init];
  if (v5)
  {
    v6 = [v4 recipientsTo];
    v7 = MFCommentedEmailsFromSAPersonAttributes(v6);
    [(MSEmailModel *)v5 setTo:v7];

    v8 = [v4 recipientsCc];
    v9 = MFCommentedEmailsFromSAPersonAttributes(v8);
    [(MSEmailModel *)v5 setCc:v9];

    v10 = [v4 recipientsBcc];
    v11 = MFCommentedEmailsFromSAPersonAttributes(v10);
    [(MSEmailModel *)v5 setBcc:v11];

    v12 = [v4 subject];
    [(MSEmailModel *)v5 setSubject:v12];

    v13 = [v4 message];
    [(MSEmailModel *)v5 setBody:v13];

    v14 = [v4 type];
    v15 = [MFAssistantEmail MSSendTypeForSAEMailType:v14];

    if (v15 == 2)
    {
      [(MSEmailModel *)v5 setType:2];
      v16 = [v4 referenceId];
      [(MSEmailModel *)v5 setReference:v16];
    }

    else
    {
      if (v15 != 3)
      {
        [(MSEmailModel *)v5 setType:1];
        goto LABEL_8;
      }

      [(MSEmailModel *)v5 setType:3];
      v16 = [v4 referenceId];
      [(MSEmailModel *)v5 setReference:v16];
    }
  }

LABEL_8:

  return v5;
}

@end