@interface WFSendEmailContent
- (WFSendEmailContent)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFSendEmailContent

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFSendEmailContent *)self toRecipients];
  [v4 encodeObject:v5 forKey:@"toRecipients"];

  v6 = [(WFSendEmailContent *)self ccRecipients];
  [v4 encodeObject:v6 forKey:@"ccRecipients"];

  v7 = [(WFSendEmailContent *)self bccRecipients];
  [v4 encodeObject:v7 forKey:@"bccRecipients"];

  v8 = [(WFSendEmailContent *)self subject];
  [v4 encodeObject:v8 forKey:@"subject"];

  v9 = [(WFSendEmailContent *)self body];
  [v4 encodeObject:v9 forKey:@"body"];

  [v4 encodeBool:-[WFSendEmailContent isHTML](self forKey:{"isHTML"), @"isHTML"}];
  v10 = [(WFSendEmailContent *)self attachments];
  [v4 encodeObject:v10 forKey:@"attachments"];
}

- (WFSendEmailContent)initWithCoder:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = WFSendEmailContent;
  v5 = [(WFSendEmailContent *)&v32 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"toRecipients"];
    toRecipients = v5->_toRecipients;
    v5->_toRecipients = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"ccRecipients"];
    ccRecipients = v5->_ccRecipients;
    v5->_ccRecipients = v14;

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"bccRecipients"];
    bccRecipients = v5->_bccRecipients;
    v5->_bccRecipients = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subject"];
    subject = v5->_subject;
    v5->_subject = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"body"];
    body = v5->_body;
    v5->_body = v23;

    v5->_isHTML = [v4 decodeBoolForKey:@"isHTML"];
    v25 = MEMORY[0x277CBEB98];
    v26 = objc_opt_class();
    v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"attachments"];
    attachments = v5->_attachments;
    v5->_attachments = v28;

    v30 = v5;
  }

  return v5;
}

@end