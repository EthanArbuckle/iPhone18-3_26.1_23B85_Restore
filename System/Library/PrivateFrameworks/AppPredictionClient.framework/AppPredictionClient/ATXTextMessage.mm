@interface ATXTextMessage
- (ATXTextMessage)initWithCoder:(id)a3;
- (ATXTextMessage)initWithMessageID:(id)a3 bundleID:(id)a4 dateReceived:(id)a5 threadID:(id)a6 sender:(id)a7 recipients:(id)a8 subject:(id)a9 body:(id)a10;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXTextMessage

- (ATXTextMessage)initWithMessageID:(id)a3 bundleID:(id)a4 dateReceived:(id)a5 threadID:(id)a6 sender:(id)a7 recipients:(id)a8 subject:(id)a9 body:(id)a10
{
  v16 = a3;
  v17 = a4;
  v37 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v38.receiver = self;
  v38.super_class = ATXTextMessage;
  v23 = [(ATXTextMessage *)&v38 init];
  if (v23)
  {
    v24 = [v16 copy];
    messageID = v23->_messageID;
    v23->_messageID = v24;

    v26 = [v17 copy];
    bundleID = v23->_bundleID;
    v23->_bundleID = v26;

    objc_storeStrong(&v23->_dateReceived, a5);
    v28 = [v18 copy];
    threadID = v23->_threadID;
    v23->_threadID = v28;

    objc_storeStrong(&v23->_sender, a7);
    v30 = [v20 copy];
    recipients = v23->_recipients;
    v23->_recipients = v30;

    v32 = [v21 copy];
    subject = v23->_subject;
    v23->_subject = v32;

    v34 = [v22 copy];
    body = v23->_body;
    v23->_body = v34;
  }

  return v23;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXTextMessage *)self messageID];
  [v4 encodeObject:v5 forKey:@"messageID"];

  v6 = [(ATXTextMessage *)self bundleID];
  [v4 encodeObject:v6 forKey:@"bundleID"];

  v7 = [(ATXTextMessage *)self dateReceived];
  [v4 encodeObject:v7 forKey:@"dateReceived"];

  v8 = [(ATXTextMessage *)self threadID];
  [v4 encodeObject:v8 forKey:@"threadID"];

  v9 = [(ATXTextMessage *)self sender];
  [v4 encodeObject:v9 forKey:@"sender"];

  v10 = [(ATXTextMessage *)self recipients];
  [v4 encodeObject:v10 forKey:@"recipients"];

  v11 = [(ATXTextMessage *)self subject];
  [v4 encodeObject:v11 forKey:@"subject"];

  v12 = [(ATXTextMessage *)self body];
  [v4 encodeObject:v12 forKey:@"body"];
}

- (ATXTextMessage)initWithCoder:(id)a3
{
  v28[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = ATXTextMessage;
  v5 = [(ATXTextMessage *)&v27 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"messageID"];
    messageID = v5->_messageID;
    v5->_messageID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateReceived"];
    dateReceived = v5->_dateReceived;
    v5->_dateReceived = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"threadID"];
    threadID = v5->_threadID;
    v5->_threadID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sender"];
    sender = v5->_sender;
    v5->_sender = v14;

    v16 = MEMORY[0x1E695DFD8];
    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    v18 = [v16 setWithArray:v17];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"recipients"];
    recipients = v5->_recipients;
    v5->_recipients = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subject"];
    subject = v5->_subject;
    v5->_subject = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"body"];
    body = v5->_body;
    v5->_body = v23;

    v25 = v5;
  }

  return v5;
}

@end