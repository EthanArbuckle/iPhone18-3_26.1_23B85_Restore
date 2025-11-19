@interface OSLogEntryActivity
- (OSLogEntryActivity)initWithCoder:(id)a3;
- (OSLogEntryActivity)initWithEventProxy:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation OSLogEntryActivity

- (OSLogEntryActivity)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = OSLogEntryActivity;
  v5 = [(OSLogEntry *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityIdentifier"];
    v5->_activityIdentifier = [v6 unsignedLongLongValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"process"];
    process = v5->_process;
    v5->_process = v7;

    v5->_processIdentifier = [v4 decodeInt32ForKey:@"processIdentifier"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sender"];
    sender = v5->_sender;
    v5->_sender = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"threadIdentifier"];
    v5->_threadIdentifier = [v11 unsignedLongLongValue];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parentActivityIdentifier"];
    v5->_parentActivityIdentifier = [v12 unsignedLongLongValue];

    v13 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = OSLogEntryActivity;
  v4 = a3;
  [(OSLogEntry *)&v10 encodeWithCoder:v4];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[OSLogEntryActivity activityIdentifier](self, "activityIdentifier", v10.receiver, v10.super_class)}];
  [v4 encodeObject:v5 forKey:@"activityIdentifier"];

  v6 = [(OSLogEntryActivity *)self process];
  [v4 encodeObject:v6 forKey:@"process"];

  [v4 encodeInt32:-[OSLogEntryActivity processIdentifier](self forKey:{"processIdentifier"), @"processIdentifier"}];
  v7 = [(OSLogEntryActivity *)self sender];
  [v4 encodeObject:v7 forKey:@"sender"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[OSLogEntryActivity threadIdentifier](self, "threadIdentifier")}];
  [v4 encodeObject:v8 forKey:@"threadIdentifier"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[OSLogEntryActivity parentActivityIdentifier](self, "parentActivityIdentifier")}];
  [v4 encodeObject:v9 forKey:@"parentActivityIdentifier"];
}

- (OSLogEntryActivity)initWithEventProxy:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = OSLogEntryActivity;
  v5 = [(OSLogEntry *)&v12 initWithEventProxy:v4];
  if (v5)
  {
    v5->_activityIdentifier = [v4 activityIdentifier];
    v6 = [v4 process];
    process = v5->_process;
    v5->_process = v6;

    v5->_processIdentifier = [v4 processIdentifier];
    v8 = [v4 sender];
    sender = v5->_sender;
    v5->_sender = v8;

    v5->_threadIdentifier = [v4 threadIdentifier];
    v5->_parentActivityIdentifier = [v4 parentActivityIdentifier];
    v10 = v5;
  }

  return v5;
}

@end