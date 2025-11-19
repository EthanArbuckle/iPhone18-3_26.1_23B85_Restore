@interface NSCoreDataXPCMessage
- (NSCoreDataXPCMessage)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSCoreDataXPCMessage

- (void)dealloc
{
  self->_messageBody = 0;

  self->_token = 0;
  self->_contextName = 0;

  self->_contextTransactionAuthor = 0;
  self->_processName = 0;
  v3.receiver = self;
  v3.super_class = NSCoreDataXPCMessage;
  [(NSCoreDataXPCMessage *)&v3 dealloc];
}

- (NSCoreDataXPCMessage)initWithCoder:(id)a3
{
  v4 = [(NSCoreDataXPCMessage *)self init];
  if (v4)
  {
    v4->_messageCode = [a3 decodeIntegerForKey:@"NSCoreDataXPCMessageCode"];
    v4->_messageBody = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSCoreDataXPCMessageBody"];
    v4->_token = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSCoreDataXPCMessageToken"];
    v4->_contextName = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSCoreDataXPCMessageContextName"];
    v4->_contextTransactionAuthor = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSCoreDataXPCMessageContextTransactionAuthor"];
    v4->_processName = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSCoreDataXPCMessageProcessName"];
    v4->_allowAncillary = [a3 decodeBoolForKey:@"NSCoreDataXPCMessageContextAllowAncillary"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInteger:self->_messageCode forKey:@"NSCoreDataXPCMessageCode"];
  [a3 encodeObject:self->_messageBody forKey:@"NSCoreDataXPCMessageBody"];
  [a3 encodeObject:self->_token forKey:@"NSCoreDataXPCMessageToken"];
  [a3 encodeObject:self->_contextName forKey:@"NSCoreDataXPCMessageContextName"];
  [a3 encodeObject:self->_contextTransactionAuthor forKey:@"NSCoreDataXPCMessageContextTransactionAuthor"];
  [a3 encodeObject:self->_processName forKey:@"NSCoreDataXPCMessageProcessName"];
  allowAncillary = self->_allowAncillary;

  [a3 encodeBool:allowAncillary forKey:@"NSCoreDataXPCMessageContextAllowAncillary"];
}

@end