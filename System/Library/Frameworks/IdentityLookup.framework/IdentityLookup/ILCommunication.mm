@interface ILCommunication
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCommunication:(ILCommunication *)communication;
- (ILCommunication)initWithCoder:(id)coder;
- (ILCommunication)initWithSender:(id)sender dateReceived:(id)received;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ILCommunication

- (ILCommunication)initWithSender:(id)sender dateReceived:(id)received
{
  senderCopy = sender;
  receivedCopy = received;
  v12.receiver = self;
  v12.super_class = ILCommunication;
  v9 = [(ILCommunication *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sender, sender);
    objc_storeStrong(&v10->_dateReceived, received);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  sender = [(ILCommunication *)self sender];
  dateReceived = [(ILCommunication *)self dateReceived];
  v7 = [v3 stringWithFormat:@"<%@ %p sender=%@ dateReceived=%@>", v4, self, sender, dateReceived];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ILCommunication *)self isEqualToCommunication:equalCopy];

  return v5;
}

- (BOOL)isEqualToCommunication:(ILCommunication *)communication
{
  v4 = communication;
  dateReceived = [(ILCommunication *)self dateReceived];
  dateReceived2 = [(ILCommunication *)v4 dateReceived];
  if ([dateReceived isEqualToDate:dateReceived2])
  {
    sender = [(ILCommunication *)self sender];
    sender2 = [(ILCommunication *)v4 sender];
    v9 = (sender | sender2) == 0;
    if (sender2)
    {
      v9 = [sender isEqualToString:sender2];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  dateReceived = [(ILCommunication *)self dateReceived];
  v4 = [dateReceived hash];
  sender = [(ILCommunication *)self sender];
  v6 = [sender hash];

  return v6 ^ v4;
}

- (ILCommunication)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = ILCommunication;
  v5 = [(ILCommunication *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_sender);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    sender = v5->_sender;
    v5->_sender = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_dateReceived);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    dateReceived = v5->_dateReceived;
    v5->_dateReceived = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sender = [(ILCommunication *)self sender];
  v6 = NSStringFromSelector(sel_sender);
  [coderCopy encodeObject:sender forKey:v6];

  dateReceived = [(ILCommunication *)self dateReceived];
  v7 = NSStringFromSelector(sel_dateReceived);
  [coderCopy encodeObject:dateReceived forKey:v7];
}

@end