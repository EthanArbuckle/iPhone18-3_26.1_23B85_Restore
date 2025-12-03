@interface ILMessageCommunication
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMessageCommunication:(ILMessageCommunication *)communication;
- (ILMessageCommunication)initWithCoder:(id)coder;
- (ILMessageCommunication)initWithSender:(id)sender dateReceived:(id)received messageBody:(id)body;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ILMessageCommunication

- (ILMessageCommunication)initWithSender:(id)sender dateReceived:(id)received messageBody:(id)body
{
  bodyCopy = body;
  v13.receiver = self;
  v13.super_class = ILMessageCommunication;
  v10 = [(ILCommunication *)&v13 initWithSender:sender dateReceived:received];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_messageBody, body);
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ILMessageCommunication *)self isEqualToMessageCommunication:equalCopy];

  return v5;
}

- (BOOL)isEqualToMessageCommunication:(ILMessageCommunication *)communication
{
  v4 = communication;
  if ([(ILCommunication *)self isEqualToCommunication:v4])
  {
    messageBody = [(ILMessageCommunication *)self messageBody];
    messageBody2 = [(ILMessageCommunication *)v4 messageBody];
    v7 = (messageBody | messageBody2) == 0;
    if (messageBody2)
    {
      v7 = [messageBody isEqualToString:messageBody2];
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
  messageBody = [(ILMessageCommunication *)self messageBody];
  v5 = [messageBody hash];

  return v5 ^ v3;
}

- (ILMessageCommunication)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ILMessageCommunication;
  v5 = [(ILCommunication *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_messageBody);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    messageBody = v5->_messageBody;
    v5->_messageBody = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = ILMessageCommunication;
  coderCopy = coder;
  [(ILCommunication *)&v7 encodeWithCoder:coderCopy];
  v5 = [(ILMessageCommunication *)self messageBody:v7.receiver];
  v6 = NSStringFromSelector(sel_messageBody);
  [coderCopy encodeObject:v5 forKey:v6];
}

@end