@interface OSLogEntryActivity
- (OSLogEntryActivity)initWithCoder:(id)coder;
- (OSLogEntryActivity)initWithEventProxy:(id)proxy;
- (void)encodeWithCoder:(id)coder;
@end

@implementation OSLogEntryActivity

- (OSLogEntryActivity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = OSLogEntryActivity;
  v5 = [(OSLogEntry *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityIdentifier"];
    v5->_activityIdentifier = [v6 unsignedLongLongValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"process"];
    process = v5->_process;
    v5->_process = v7;

    v5->_processIdentifier = [coderCopy decodeInt32ForKey:@"processIdentifier"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sender"];
    sender = v5->_sender;
    v5->_sender = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"threadIdentifier"];
    v5->_threadIdentifier = [v11 unsignedLongLongValue];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parentActivityIdentifier"];
    v5->_parentActivityIdentifier = [v12 unsignedLongLongValue];

    v13 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = OSLogEntryActivity;
  coderCopy = coder;
  [(OSLogEntry *)&v10 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[OSLogEntryActivity activityIdentifier](self, "activityIdentifier", v10.receiver, v10.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"activityIdentifier"];

  process = [(OSLogEntryActivity *)self process];
  [coderCopy encodeObject:process forKey:@"process"];

  [coderCopy encodeInt32:-[OSLogEntryActivity processIdentifier](self forKey:{"processIdentifier"), @"processIdentifier"}];
  sender = [(OSLogEntryActivity *)self sender];
  [coderCopy encodeObject:sender forKey:@"sender"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[OSLogEntryActivity threadIdentifier](self, "threadIdentifier")}];
  [coderCopy encodeObject:v8 forKey:@"threadIdentifier"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[OSLogEntryActivity parentActivityIdentifier](self, "parentActivityIdentifier")}];
  [coderCopy encodeObject:v9 forKey:@"parentActivityIdentifier"];
}

- (OSLogEntryActivity)initWithEventProxy:(id)proxy
{
  proxyCopy = proxy;
  v12.receiver = self;
  v12.super_class = OSLogEntryActivity;
  v5 = [(OSLogEntry *)&v12 initWithEventProxy:proxyCopy];
  if (v5)
  {
    v5->_activityIdentifier = [proxyCopy activityIdentifier];
    process = [proxyCopy process];
    process = v5->_process;
    v5->_process = process;

    v5->_processIdentifier = [proxyCopy processIdentifier];
    sender = [proxyCopy sender];
    sender = v5->_sender;
    v5->_sender = sender;

    v5->_threadIdentifier = [proxyCopy threadIdentifier];
    v5->_parentActivityIdentifier = [proxyCopy parentActivityIdentifier];
    v10 = v5;
  }

  return v5;
}

@end