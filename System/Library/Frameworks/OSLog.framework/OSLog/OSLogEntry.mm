@interface OSLogEntry
- (OSLogEntry)initWithCoder:(id)a3;
- (OSLogEntry)initWithDate:(id)a3 composedMessage:(id)a4;
- (OSLogEntry)initWithEventProxy:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation OSLogEntry

- (OSLogEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = OSLogEntry;
  v5 = [(OSLogEntry *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"composedMessage"];
    composedMessage = v5->_composedMessage;
    v5->_composedMessage = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v8;

    v5->_storeCategory = [v4 decodeIntegerForKey:@"storeCategory"];
    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(OSLogEntry *)self composedMessage];
  [v6 encodeObject:v4 forKey:@"composedMessage"];

  v5 = [(OSLogEntry *)self date];
  [v6 encodeObject:v5 forKey:@"date"];

  [v6 encodeInteger:-[OSLogEntry storeCategory](self forKey:{"storeCategory"), @"storeCategory"}];
}

- (OSLogEntry)initWithDate:(id)a3 composedMessage:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = OSLogEntry;
  v9 = [(OSLogEntry *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_composedMessage, a4);
    objc_storeStrong(&v10->_date, a3);
    v10->_storeCategory = 0;
    v11 = v10;
  }

  return v10;
}

- (OSLogEntry)initWithEventProxy:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = OSLogEntry;
  v5 = [(OSLogEntry *)&v12 init];
  if (v5)
  {
    v6 = [v4 composedMessage];
    composedMessage = v5->_composedMessage;
    v5->_composedMessage = v6;

    v8 = [v4 date];
    date = v5->_date;
    v5->_date = v8;

    v5->_storeCategory = 0;
    v10 = v5;
  }

  return v5;
}

@end