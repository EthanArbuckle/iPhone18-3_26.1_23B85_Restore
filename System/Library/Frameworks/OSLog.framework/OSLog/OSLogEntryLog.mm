@interface OSLogEntryLog
- (OSLogEntryLog)initWithCoder:(id)a3;
- (OSLogEntryLog)initWithDate:(id)a3 composedMessage:(id)a4 processIdentifier:(int)a5;
- (OSLogEntryLog)initWithEventProxy:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation OSLogEntryLog

- (OSLogEntryLog)initWithCoder:(id)a3
{
  v27[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = OSLogEntryLog;
  v5 = [(OSLogEntry *)&v26 initWithCoder:v4];
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

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"category"];
    category = v5->_category;
    v5->_category = v12;

    v14 = MEMORY[0x277CBEB98];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v16 = [v14 setWithArray:v15];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"components"];
    components = v5->_components;
    v5->_components = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"formatString"];
    formatString = v5->_formatString;
    v5->_formatString = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subsystem"];
    subsystem = v5->_subsystem;
    v5->_subsystem = v21;

    v5->_level = [v4 decodeIntegerForKey:@"level"];
    v23 = v5;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v13.receiver = self;
  v13.super_class = OSLogEntryLog;
  v4 = a3;
  [(OSLogEntry *)&v13 encodeWithCoder:v4];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[OSLogEntryLog activityIdentifier](self, "activityIdentifier", v13.receiver, v13.super_class)}];
  [v4 encodeObject:v5 forKey:@"activityIdentifier"];

  v6 = [(OSLogEntryLog *)self process];
  [v4 encodeObject:v6 forKey:@"process"];

  [v4 encodeInt32:-[OSLogEntryLog processIdentifier](self forKey:{"processIdentifier"), @"processIdentifier"}];
  v7 = [(OSLogEntryLog *)self sender];
  [v4 encodeObject:v7 forKey:@"sender"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[OSLogEntryLog threadIdentifier](self, "threadIdentifier")}];
  [v4 encodeObject:v8 forKey:@"threadIdentifier"];

  v9 = [(OSLogEntryLog *)self category];
  [v4 encodeObject:v9 forKey:@"category"];

  v10 = [(OSLogEntryLog *)self components];
  [v4 encodeObject:v10 forKey:@"components"];

  v11 = [(OSLogEntryLog *)self formatString];
  [v4 encodeObject:v11 forKey:@"formatString"];

  v12 = [(OSLogEntryLog *)self subsystem];
  [v4 encodeObject:v12 forKey:@"subsystem"];

  [v4 encodeInteger:-[OSLogEntryLog level](self forKey:{"level"), @"level"}];
}

- (OSLogEntryLog)initWithDate:(id)a3 composedMessage:(id)a4 processIdentifier:(int)a5
{
  v10.receiver = self;
  v10.super_class = OSLogEntryLog;
  v6 = [(OSLogEntry *)&v10 initWithDate:a3 composedMessage:a4];
  v7 = v6;
  if (v6)
  {
    v6->_processIdentifier = a5;
    v8 = v6;
  }

  return v7;
}

- (OSLogEntryLog)initWithEventProxy:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = OSLogEntryLog;
  v5 = [(OSLogEntry *)&v22 initWithEventProxy:v4];
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
    v10 = [v4 category];
    category = v5->_category;
    v5->_category = v10;

    v12 = makeComponents(v4);
    components = v5->_components;
    v5->_components = v12;

    v14 = [v4 formatString];
    formatString = v5->_formatString;
    v5->_formatString = v14;

    v16 = [v4 subsystem];
    subsystem = v5->_subsystem;
    v5->_subsystem = v16;

    v18 = [v4 logType];
    if (v18 <= 1)
    {
      if (!v18)
      {
        v19 = 3;
        goto LABEL_14;
      }

      if (v18 == 1)
      {
        v19 = 2;
        goto LABEL_14;
      }
    }

    else
    {
      switch(v18)
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