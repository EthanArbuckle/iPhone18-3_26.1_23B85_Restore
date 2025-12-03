@interface ATXMailMessage
- (ATXMailMessage)initWithCoder:(id)coder;
- (ATXMailMessage)initWithMailID:(id)d bundleID:(id)iD dateReceived:(id)received sender:(id)sender recipients:(id)recipients subject:(id)subject body:(id)body;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXMailMessage

- (ATXMailMessage)initWithMailID:(id)d bundleID:(id)iD dateReceived:(id)received sender:(id)sender recipients:(id)recipients subject:(id)subject body:(id)body
{
  dCopy = d;
  iDCopy = iD;
  receivedCopy = received;
  senderCopy = sender;
  recipientsCopy = recipients;
  subjectCopy = subject;
  bodyCopy = body;
  v34.receiver = self;
  v34.super_class = ATXMailMessage;
  v21 = [(ATXMailMessage *)&v34 init];
  if (v21)
  {
    v22 = [dCopy copy];
    mailID = v21->_mailID;
    v21->_mailID = v22;

    v24 = [iDCopy copy];
    bundleID = v21->_bundleID;
    v21->_bundleID = v24;

    objc_storeStrong(&v21->_dateReceived, received);
    objc_storeStrong(&v21->_sender, sender);
    v26 = [recipientsCopy copy];
    recipients = v21->_recipients;
    v21->_recipients = v26;

    v28 = [subjectCopy copy];
    subject = v21->_subject;
    v21->_subject = v28;

    v30 = [bodyCopy copy];
    body = v21->_body;
    v21->_body = v30;
  }

  return v21;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  mailID = [(ATXMailMessage *)self mailID];
  [coderCopy encodeObject:mailID forKey:@"mailID"];

  bundleID = [(ATXMailMessage *)self bundleID];
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];

  dateReceived = [(ATXMailMessage *)self dateReceived];
  [coderCopy encodeObject:dateReceived forKey:@"dateReceived"];

  sender = [(ATXMailMessage *)self sender];
  [coderCopy encodeObject:sender forKey:@"sender"];

  recipients = [(ATXMailMessage *)self recipients];
  [coderCopy encodeObject:recipients forKey:@"recipients"];

  subject = [(ATXMailMessage *)self subject];
  [coderCopy encodeObject:subject forKey:@"subject"];

  body = [(ATXMailMessage *)self body];
  [coderCopy encodeObject:body forKey:@"body"];
}

- (ATXMailMessage)initWithCoder:(id)coder
{
  v26[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = ATXMailMessage;
  v5 = [(ATXMailMessage *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mailID"];
    mailID = v5->_mailID;
    v5->_mailID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateReceived"];
    dateReceived = v5->_dateReceived;
    v5->_dateReceived = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sender"];
    sender = v5->_sender;
    v5->_sender = v12;

    v14 = MEMORY[0x1E695DFD8];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v16 = [v14 setWithArray:v15];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"recipients"];
    recipients = v5->_recipients;
    v5->_recipients = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subject"];
    subject = v5->_subject;
    v5->_subject = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"body"];
    body = v5->_body;
    v5->_body = v21;

    v23 = v5;
  }

  return v5;
}

@end