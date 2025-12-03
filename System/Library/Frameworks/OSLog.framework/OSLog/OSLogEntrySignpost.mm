@interface OSLogEntrySignpost
- (OSLogEntrySignpost)initWithCoder:(id)coder;
- (OSLogEntrySignpost)initWithEventProxy:(id)proxy;
- (void)encodeWithCoder:(id)coder;
@end

@implementation OSLogEntrySignpost

- (OSLogEntrySignpost)initWithCoder:(id)coder
{
  v30[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = OSLogEntrySignpost;
  v5 = [(OSLogEntry *)&v29 initWithCoder:coderCopy];
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
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
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

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signpostIdentifier"];
    v5->_signpostIdentifier = [v23 unsignedLongLongValue];

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signpostName"];
    signpostName = v5->_signpostName;
    v5->_signpostName = v24;

    v5->_signpostType = [coderCopy decodeIntegerForKey:@"level"];
    v26 = v5;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v15.receiver = self;
  v15.super_class = OSLogEntrySignpost;
  coderCopy = coder;
  [(OSLogEntry *)&v15 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[OSLogEntrySignpost activityIdentifier](self, "activityIdentifier", v15.receiver, v15.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"activityIdentifier"];

  process = [(OSLogEntrySignpost *)self process];
  [coderCopy encodeObject:process forKey:@"process"];

  [coderCopy encodeInt32:-[OSLogEntrySignpost processIdentifier](self forKey:{"processIdentifier"), @"processIdentifier"}];
  sender = [(OSLogEntrySignpost *)self sender];
  [coderCopy encodeObject:sender forKey:@"sender"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[OSLogEntrySignpost threadIdentifier](self, "threadIdentifier")}];
  [coderCopy encodeObject:v8 forKey:@"threadIdentifier"];

  category = [(OSLogEntrySignpost *)self category];
  [coderCopy encodeObject:category forKey:@"category"];

  components = [(OSLogEntrySignpost *)self components];
  [coderCopy encodeObject:components forKey:@"components"];

  formatString = [(OSLogEntrySignpost *)self formatString];
  [coderCopy encodeObject:formatString forKey:@"formatString"];

  subsystem = [(OSLogEntrySignpost *)self subsystem];
  [coderCopy encodeObject:subsystem forKey:@"subsystem"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[OSLogEntrySignpost signpostIdentifier](self, "signpostIdentifier")}];
  [coderCopy encodeObject:v13 forKey:@"signpostIdentifier"];

  signpostName = [(OSLogEntrySignpost *)self signpostName];
  [coderCopy encodeObject:signpostName forKey:@"signpostName"];

  [coderCopy encodeInteger:-[OSLogEntrySignpost signpostType](self forKey:{"signpostType"), @"signpostType"}];
}

- (OSLogEntrySignpost)initWithEventProxy:(id)proxy
{
  proxyCopy = proxy;
  v24.receiver = self;
  v24.super_class = OSLogEntrySignpost;
  v5 = [(OSLogEntry *)&v24 initWithEventProxy:proxyCopy];
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

    v5->_signpostIdentifier = [proxyCopy signpostIdentifier];
    signpostName = [proxyCopy signpostName];
    signpostName = v5->_signpostName;
    v5->_signpostName = signpostName;

    signpostType = [proxyCopy signpostType];
    if (signpostType > 2)
    {
      v21 = 0;
    }

    else
    {
      v21 = qword_23A00EB78[signpostType];
    }

    v5->_signpostType = v21;
    v22 = v5;
  }

  return v5;
}

@end