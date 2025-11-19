@interface ATXMailMessage
- (ATXMailMessage)initWithCoder:(id)a3;
- (ATXMailMessage)initWithMailID:(id)a3 bundleID:(id)a4 dateReceived:(id)a5 sender:(id)a6 recipients:(id)a7 subject:(id)a8 body:(id)a9;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXMailMessage

- (ATXMailMessage)initWithMailID:(id)a3 bundleID:(id)a4 dateReceived:(id)a5 sender:(id)a6 recipients:(id)a7 subject:(id)a8 body:(id)a9
{
  v15 = a3;
  v16 = a4;
  v33 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v34.receiver = self;
  v34.super_class = ATXMailMessage;
  v21 = [(ATXMailMessage *)&v34 init];
  if (v21)
  {
    v22 = [v15 copy];
    mailID = v21->_mailID;
    v21->_mailID = v22;

    v24 = [v16 copy];
    bundleID = v21->_bundleID;
    v21->_bundleID = v24;

    objc_storeStrong(&v21->_dateReceived, a5);
    objc_storeStrong(&v21->_sender, a6);
    v26 = [v18 copy];
    recipients = v21->_recipients;
    v21->_recipients = v26;

    v28 = [v19 copy];
    subject = v21->_subject;
    v21->_subject = v28;

    v30 = [v20 copy];
    body = v21->_body;
    v21->_body = v30;
  }

  return v21;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXMailMessage *)self mailID];
  [v4 encodeObject:v5 forKey:@"mailID"];

  v6 = [(ATXMailMessage *)self bundleID];
  [v4 encodeObject:v6 forKey:@"bundleID"];

  v7 = [(ATXMailMessage *)self dateReceived];
  [v4 encodeObject:v7 forKey:@"dateReceived"];

  v8 = [(ATXMailMessage *)self sender];
  [v4 encodeObject:v8 forKey:@"sender"];

  v9 = [(ATXMailMessage *)self recipients];
  [v4 encodeObject:v9 forKey:@"recipients"];

  v10 = [(ATXMailMessage *)self subject];
  [v4 encodeObject:v10 forKey:@"subject"];

  v11 = [(ATXMailMessage *)self body];
  [v4 encodeObject:v11 forKey:@"body"];
}

- (ATXMailMessage)initWithCoder:(id)a3
{
  v26[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = ATXMailMessage;
  v5 = [(ATXMailMessage *)&v25 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mailID"];
    mailID = v5->_mailID;
    v5->_mailID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateReceived"];
    dateReceived = v5->_dateReceived;
    v5->_dateReceived = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sender"];
    sender = v5->_sender;
    v5->_sender = v12;

    v14 = MEMORY[0x1E695DFD8];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v16 = [v14 setWithArray:v15];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"recipients"];
    recipients = v5->_recipients;
    v5->_recipients = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subject"];
    subject = v5->_subject;
    v5->_subject = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"body"];
    body = v5->_body;
    v5->_body = v21;

    v23 = v5;
  }

  return v5;
}

@end