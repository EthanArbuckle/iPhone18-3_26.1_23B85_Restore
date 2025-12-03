@interface OSLogEntryLog
- (OSLogEntryLog)initWithCoder:(id)coder;
- (OSLogEntryLog)initWithDate:(id)date composedMessage:(id)message processIdentifier:(int)identifier;
- (OSLogEntryLog)initWithEventProxy:(id)proxy;
- (void)encodeWithCoder:(id)coder;
@end

@implementation OSLogEntryLog

- (OSLogEntryLog)initWithCoder:(id)coder
{
  v27[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = OSLogEntryLog;
  v5 = [(OSLogEntry *)&v26 initWithCoder:coderCopy];
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

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"category"];
    category = v5->_category;
    v5->_category = v12;

    v14 = MEMORY[0x277CBEB98];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v16 = [v14 setWithArray:v15];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"components"];
    components = v5->_components;
    v5->_components = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"formatString"];
    formatString = v5->_formatString;
    v5->_formatString = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subsystem"];
    subsystem = v5->_subsystem;
    v5->_subsystem = v21;

    v5->_level = [coderCopy decodeIntegerForKey:@"level"];
    v23 = v5;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v13.receiver = self;
  v13.super_class = OSLogEntryLog;
  coderCopy = coder;
  [(OSLogEntry *)&v13 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[OSLogEntryLog activityIdentifier](self, "activityIdentifier", v13.receiver, v13.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"activityIdentifier"];

  process = [(OSLogEntryLog *)self process];
  [coderCopy encodeObject:process forKey:@"process"];

  [coderCopy encodeInt32:-[OSLogEntryLog processIdentifier](self forKey:{"processIdentifier"), @"processIdentifier"}];
  sender = [(OSLogEntryLog *)self sender];
  [coderCopy encodeObject:sender forKey:@"sender"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[OSLogEntryLog threadIdentifier](self, "threadIdentifier")}];
  [coderCopy encodeObject:v8 forKey:@"threadIdentifier"];

  category = [(OSLogEntryLog *)self category];
  [coderCopy encodeObject:category forKey:@"category"];

  components = [(OSLogEntryLog *)self components];
  [coderCopy encodeObject:components forKey:@"components"];

  formatString = [(OSLogEntryLog *)self formatString];
  [coderCopy encodeObject:formatString forKey:@"formatString"];

  subsystem = [(OSLogEntryLog *)self subsystem];
  [coderCopy encodeObject:subsystem forKey:@"subsystem"];

  [coderCopy encodeInteger:-[OSLogEntryLog level](self forKey:{"level"), @"level"}];
}

- (OSLogEntryLog)initWithDate:(id)date composedMessage:(id)message processIdentifier:(int)identifier
{
  v10.receiver = self;
  v10.super_class = OSLogEntryLog;
  v6 = [(OSLogEntry *)&v10 initWithDate:date composedMessage:message];
  v7 = v6;
  if (v6)
  {
    v6->_processIdentifier = identifier;
    v8 = v6;
  }

  return v7;
}

- (OSLogEntryLog)initWithEventProxy:(id)proxy
{
  proxyCopy = proxy;
  v22.receiver = self;
  v22.super_class = OSLogEntryLog;
  v5 = [(OSLogEntry *)&v22 initWithEventProxy:proxyCopy];
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
    category = [proxyCopy category];
    category = v5->_category;
    v5->_category = category;

    v12 = makeComponents(proxyCopy);
    components = v5->_components;
    v5->_components = v12;

    formatString = [proxyCopy formatString];
    formatString = v5->_formatString;
    v5->_formatString = formatString;

    subsystem = [proxyCopy subsystem];
    subsystem = v5->_subsystem;
    v5->_subsystem = subsystem;

    logType = [proxyCopy logType];
    if (logType <= 1)
    {
      if (!logType)
      {
        v19 = 3;
        goto LABEL_14;
      }

      if (logType == 1)
      {
        v19 = 2;
        goto LABEL_14;
      }
    }

    else
    {
      switch(logType)
      {
        case 2:
          v19 = 1;
          goto LABEL_14;
        case 16:
          v19 = 4;
          goto LABEL_14;
        case 17:
          v19 = 5;
LABEL_14:
          v5->_level = v19;
          v20 = v5;
          goto LABEL_15;
      }
    }

    v19 = 0;
    goto LABEL_14;
  }

LABEL_15:

  return v5;
}

@end