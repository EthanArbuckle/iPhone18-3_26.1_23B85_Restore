@interface ATXTextMessage
- (ATXTextMessage)initWithCoder:(id)coder;
- (ATXTextMessage)initWithMessageID:(id)d bundleID:(id)iD dateReceived:(id)received threadID:(id)threadID sender:(id)sender recipients:(id)recipients subject:(id)subject body:(id)self0;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXTextMessage

- (ATXTextMessage)initWithMessageID:(id)d bundleID:(id)iD dateReceived:(id)received threadID:(id)threadID sender:(id)sender recipients:(id)recipients subject:(id)subject body:(id)self0
{
  dCopy = d;
  iDCopy = iD;
  receivedCopy = received;
  threadIDCopy = threadID;
  senderCopy = sender;
  recipientsCopy = recipients;
  subjectCopy = subject;
  bodyCopy = body;
  v38.receiver = self;
  v38.super_class = ATXTextMessage;
  v23 = [(ATXTextMessage *)&v38 init];
  if (v23)
  {
    v24 = [dCopy copy];
    messageID = v23->_messageID;
    v23->_messageID = v24;

    v26 = [iDCopy copy];
    bundleID = v23->_bundleID;
    v23->_bundleID = v26;

    objc_storeStrong(&v23->_dateReceived, received);
    v28 = [threadIDCopy copy];
    threadID = v23->_threadID;
    v23->_threadID = v28;

    objc_storeStrong(&v23->_sender, sender);
    v30 = [recipientsCopy copy];
    recipients = v23->_recipients;
    v23->_recipients = v30;

    v32 = [subjectCopy copy];
    subject = v23->_subject;
    v23->_subject = v32;

    v34 = [bodyCopy copy];
    body = v23->_body;
    v23->_body = v34;
  }

  return v23;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  messageID = [(ATXTextMessage *)self messageID];
  [coderCopy encodeObject:messageID forKey:@"messageID"];

  bundleID = [(ATXTextMessage *)self bundleID];
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];

  dateReceived = [(ATXTextMessage *)self dateReceived];
  [coderCopy encodeObject:dateReceived forKey:@"dateReceived"];

  threadID = [(ATXTextMessage *)self threadID];
  [coderCopy encodeObject:threadID forKey:@"threadID"];

  sender = [(ATXTextMessage *)self sender];
  [coderCopy encodeObject:sender forKey:@"sender"];

  recipients = [(ATXTextMessage *)self recipients];
  [coderCopy encodeObject:recipients forKey:@"recipients"];

  subject = [(ATXTextMessage *)self subject];
  [coderCopy encodeObject:subject forKey:@"subject"];

  body = [(ATXTextMessage *)self body];
  [coderCopy encodeObject:body forKey:@"body"];
}

- (ATXTextMessage)initWithCoder:(id)coder
{
  v28[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = ATXTextMessage;
  v5 = [(ATXTextMessage *)&v27 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"messageID"];
    messageID = v5->_messageID;
    v5->_messageID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateReceived"];
    dateReceived = v5->_dateReceived;
    v5->_dateReceived = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"threadID"];
    threadID = v5->_threadID;
    v5->_threadID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sender"];
    sender = v5->_sender;
    v5->_sender = v14;

    v16 = MEMORY[0x1E695DFD8];
    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    v18 = [v16 setWithArray:v17];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"recipients"];
    recipients = v5->_recipients;
    v5->_recipients = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subject"];
    subject = v5->_subject;
    v5->_subject = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"body"];
    body = v5->_body;
    v5->_body = v23;

    v25 = v5;
  }

  return v5;
}

@end