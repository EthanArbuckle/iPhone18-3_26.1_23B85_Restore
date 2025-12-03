@interface NSCoreDataXPCMessage
- (NSCoreDataXPCMessage)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
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

- (NSCoreDataXPCMessage)initWithCoder:(id)coder
{
  v4 = [(NSCoreDataXPCMessage *)self init];
  if (v4)
  {
    v4->_messageCode = [coder decodeIntegerForKey:@"NSCoreDataXPCMessageCode"];
    v4->_messageBody = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSCoreDataXPCMessageBody"];
    v4->_token = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSCoreDataXPCMessageToken"];
    v4->_contextName = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSCoreDataXPCMessageContextName"];
    v4->_contextTransactionAuthor = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSCoreDataXPCMessageContextTransactionAuthor"];
    v4->_processName = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSCoreDataXPCMessageProcessName"];
    v4->_allowAncillary = [coder decodeBoolForKey:@"NSCoreDataXPCMessageContextAllowAncillary"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInteger:self->_messageCode forKey:@"NSCoreDataXPCMessageCode"];
  [coder encodeObject:self->_messageBody forKey:@"NSCoreDataXPCMessageBody"];
  [coder encodeObject:self->_token forKey:@"NSCoreDataXPCMessageToken"];
  [coder encodeObject:self->_contextName forKey:@"NSCoreDataXPCMessageContextName"];
  [coder encodeObject:self->_contextTransactionAuthor forKey:@"NSCoreDataXPCMessageContextTransactionAuthor"];
  [coder encodeObject:self->_processName forKey:@"NSCoreDataXPCMessageProcessName"];
  allowAncillary = self->_allowAncillary;

  [coder encodeBool:allowAncillary forKey:@"NSCoreDataXPCMessageContextAllowAncillary"];
}

@end