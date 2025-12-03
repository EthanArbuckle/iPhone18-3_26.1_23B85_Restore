@interface WFSendEmailContent
- (WFSendEmailContent)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFSendEmailContent

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  toRecipients = [(WFSendEmailContent *)self toRecipients];
  [coderCopy encodeObject:toRecipients forKey:@"toRecipients"];

  ccRecipients = [(WFSendEmailContent *)self ccRecipients];
  [coderCopy encodeObject:ccRecipients forKey:@"ccRecipients"];

  bccRecipients = [(WFSendEmailContent *)self bccRecipients];
  [coderCopy encodeObject:bccRecipients forKey:@"bccRecipients"];

  subject = [(WFSendEmailContent *)self subject];
  [coderCopy encodeObject:subject forKey:@"subject"];

  body = [(WFSendEmailContent *)self body];
  [coderCopy encodeObject:body forKey:@"body"];

  [coderCopy encodeBool:-[WFSendEmailContent isHTML](self forKey:{"isHTML"), @"isHTML"}];
  attachments = [(WFSendEmailContent *)self attachments];
  [coderCopy encodeObject:attachments forKey:@"attachments"];
}

- (WFSendEmailContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = WFSendEmailContent;
  v5 = [(WFSendEmailContent *)&v32 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"toRecipients"];
    toRecipients = v5->_toRecipients;
    v5->_toRecipients = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"ccRecipients"];
    ccRecipients = v5->_ccRecipients;
    v5->_ccRecipients = v14;

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"bccRecipients"];
    bccRecipients = v5->_bccRecipients;
    v5->_bccRecipients = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subject"];
    subject = v5->_subject;
    v5->_subject = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"body"];
    body = v5->_body;
    v5->_body = v23;

    v5->_isHTML = [coderCopy decodeBoolForKey:@"isHTML"];
    v25 = MEMORY[0x277CBEB98];
    v26 = objc_opt_class();
    v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"attachments"];
    attachments = v5->_attachments;
    v5->_attachments = v28;

    v30 = v5;
  }

  return v5;
}

@end