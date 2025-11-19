@interface OSLogEntrySignpost
- (OSLogEntrySignpost)initWithCoder:(id)a3;
- (OSLogEntrySignpost)initWithEventProxy:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation OSLogEntrySignpost

- (OSLogEntrySignpost)initWithCoder:(id)a3
{
  v30[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v29.receiver = self;
  v29.super_class = OSLogEntrySignpost;
  v5 = [(OSLogEntry *)&v29 initWithCoder:v4];
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
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
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

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signpostIdentifier"];
    v5->_signpostIdentifier = [v23 unsignedLongLongValue];

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signpostName"];
    signpostName = v5->_signpostName;
    v5->_signpostName = v24;

    v5->_signpostType = [v4 decodeIntegerForKey:@"level"];
    v26 = v5;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v15.receiver = self;
  v15.super_class = OSLogEntrySignpost;
  v4 = a3;
  [(OSLogEntry *)&v15 encodeWithCoder:v4];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[OSLogEntrySignpost activityIdentifier](self, "activityIdentifier", v15.receiver, v15.super_class)}];
  [v4 encodeObject:v5 forKey:@"activityIdentifier"];

  v6 = [(OSLogEntrySignpost *)self process];
  [v4 encodeObject:v6 forKey:@"process"];

  [v4 encodeInt32:-[OSLogEntrySignpost processIdentifier](self forKey:{"processIdentifier"), @"processIdentifier"}];
  v7 = [(OSLogEntrySignpost *)self sender];
  [v4 encodeObject:v7 forKey:@"sender"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[OSLogEntrySignpost threadIdentifier](self, "threadIdentifier")}];
  [v4 encodeObject:v8 forKey:@"threadIdentifier"];

  v9 = [(OSLogEntrySignpost *)self category];
  [v4 encodeObject:v9 forKey:@"category"];

  v10 = [(OSLogEntrySignpost *)self components];
  [v4 encodeObject:v10 forKey:@"components"];

  v11 = [(OSLogEntrySignpost *)self formatString];
  [v4 encodeObject:v11 forKey:@"formatString"];

  v12 = [(OSLogEntrySignpost *)self subsystem];
  [v4 encodeObject:v12 forKey:@"subsystem"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[OSLogEntrySignpost signpostIdentifier](self, "signpostIdentifier")}];
  [v4 encodeObject:v13 forKey:@"signpostIdentifier"];

  v14 = [(OSLogEntrySignpost *)self signpostName];
  [v4 encodeObject:v14 forKey:@"signpostName"];

  [v4 encodeInteger:-[OSLogEntrySignpost signpostType](self forKey:{"signpostType"), @"signpostType"}];
}

- (OSLogEntrySignpost)initWithEventProxy:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = OSLogEntrySignpost;
  v5 = [(OSLogEntry *)&v24 initWithEventProxy:v4];
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

    v5->_signpostIdentifier = [v4 signpostIdentifier];
    v18 = [v4 signpostName];
    signpostName = v5->_signpostName;
    v5->_signpostName = v18;

    v20 = [v4 signpostType];
    if (v20 > 2)
    {
      v21 = 0;
    }

    else
    {
      v21 = qword_23A00EB78[v20];
    }

    v5->_signpostType = v21;
    v22 = v5;
  }

  return v5;
}

@end