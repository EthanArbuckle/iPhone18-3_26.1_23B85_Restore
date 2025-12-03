@interface OSLogEntry
- (OSLogEntry)initWithCoder:(id)coder;
- (OSLogEntry)initWithDate:(id)date composedMessage:(id)message;
- (OSLogEntry)initWithEventProxy:(id)proxy;
- (void)encodeWithCoder:(id)coder;
@end

@implementation OSLogEntry

- (OSLogEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = OSLogEntry;
  v5 = [(OSLogEntry *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"composedMessage"];
    composedMessage = v5->_composedMessage;
    v5->_composedMessage = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v8;

    v5->_storeCategory = [coderCopy decodeIntegerForKey:@"storeCategory"];
    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  composedMessage = [(OSLogEntry *)self composedMessage];
  [coderCopy encodeObject:composedMessage forKey:@"composedMessage"];

  date = [(OSLogEntry *)self date];
  [coderCopy encodeObject:date forKey:@"date"];

  [coderCopy encodeInteger:-[OSLogEntry storeCategory](self forKey:{"storeCategory"), @"storeCategory"}];
}

- (OSLogEntry)initWithDate:(id)date composedMessage:(id)message
{
  dateCopy = date;
  messageCopy = message;
  v13.receiver = self;
  v13.super_class = OSLogEntry;
  v9 = [(OSLogEntry *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_composedMessage, message);
    objc_storeStrong(&v10->_date, date);
    v10->_storeCategory = 0;
    v11 = v10;
  }

  return v10;
}

- (OSLogEntry)initWithEventProxy:(id)proxy
{
  proxyCopy = proxy;
  v12.receiver = self;
  v12.super_class = OSLogEntry;
  v5 = [(OSLogEntry *)&v12 init];
  if (v5)
  {
    composedMessage = [proxyCopy composedMessage];
    composedMessage = v5->_composedMessage;
    v5->_composedMessage = composedMessage;

    date = [proxyCopy date];
    date = v5->_date;
    v5->_date = date;

    v5->_storeCategory = 0;
    v10 = v5;
  }

  return v5;
}

@end