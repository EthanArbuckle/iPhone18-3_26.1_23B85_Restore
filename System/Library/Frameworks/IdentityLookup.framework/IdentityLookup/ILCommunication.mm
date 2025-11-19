@interface ILCommunication
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCommunication:(ILCommunication *)communication;
- (ILCommunication)initWithCoder:(id)a3;
- (ILCommunication)initWithSender:(id)a3 dateReceived:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ILCommunication

- (ILCommunication)initWithSender:(id)a3 dateReceived:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ILCommunication;
  v9 = [(ILCommunication *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sender, a3);
    objc_storeStrong(&v10->_dateReceived, a4);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(ILCommunication *)self sender];
  v6 = [(ILCommunication *)self dateReceived];
  v7 = [v3 stringWithFormat:@"<%@ %p sender=%@ dateReceived=%@>", v4, self, v5, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ILCommunication *)self isEqualToCommunication:v4];

  return v5;
}

- (BOOL)isEqualToCommunication:(ILCommunication *)communication
{
  v4 = communication;
  v5 = [(ILCommunication *)self dateReceived];
  v6 = [(ILCommunication *)v4 dateReceived];
  if ([v5 isEqualToDate:v6])
  {
    v7 = [(ILCommunication *)self sender];
    v8 = [(ILCommunication *)v4 sender];
    v9 = (v7 | v8) == 0;
    if (v8)
    {
      v9 = [v7 isEqualToString:v8];
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
  v3 = [(ILCommunication *)self dateReceived];
  v4 = [v3 hash];
  v5 = [(ILCommunication *)self sender];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (ILCommunication)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ILCommunication;
  v5 = [(ILCommunication *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_sender);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    sender = v5->_sender;
    v5->_sender = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_dateReceived);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    dateReceived = v5->_dateReceived;
    v5->_dateReceived = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ILCommunication *)self sender];
  v6 = NSStringFromSelector(sel_sender);
  [v4 encodeObject:v5 forKey:v6];

  v8 = [(ILCommunication *)self dateReceived];
  v7 = NSStringFromSelector(sel_dateReceived);
  [v4 encodeObject:v8 forKey:v7];
}

@end