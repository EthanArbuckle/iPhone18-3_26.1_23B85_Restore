@interface ILMessageCommunication
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMessageCommunication:(ILMessageCommunication *)communication;
- (ILMessageCommunication)initWithCoder:(id)a3;
- (ILMessageCommunication)initWithSender:(id)a3 dateReceived:(id)a4 messageBody:(id)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ILMessageCommunication

- (ILMessageCommunication)initWithSender:(id)a3 dateReceived:(id)a4 messageBody:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = ILMessageCommunication;
  v10 = [(ILCommunication *)&v13 initWithSender:a3 dateReceived:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_messageBody, a5);
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ILMessageCommunication *)self isEqualToMessageCommunication:v4];

  return v5;
}

- (BOOL)isEqualToMessageCommunication:(ILMessageCommunication *)communication
{
  v4 = communication;
  if ([(ILCommunication *)self isEqualToCommunication:v4])
  {
    v5 = [(ILMessageCommunication *)self messageBody];
    v6 = [(ILMessageCommunication *)v4 messageBody];
    v7 = (v5 | v6) == 0;
    if (v6)
    {
      v7 = [v5 isEqualToString:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = ILMessageCommunication;
  v3 = [(ILCommunication *)&v7 hash];
  v4 = [(ILMessageCommunication *)self messageBody];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (ILMessageCommunication)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ILMessageCommunication;
  v5 = [(ILCommunication *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_messageBody);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    messageBody = v5->_messageBody;
    v5->_messageBody = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = ILMessageCommunication;
  v4 = a3;
  [(ILCommunication *)&v7 encodeWithCoder:v4];
  v5 = [(ILMessageCommunication *)self messageBody:v7.receiver];
  v6 = NSStringFromSelector(sel_messageBody);
  [v4 encodeObject:v5 forKey:v6];
}

@end