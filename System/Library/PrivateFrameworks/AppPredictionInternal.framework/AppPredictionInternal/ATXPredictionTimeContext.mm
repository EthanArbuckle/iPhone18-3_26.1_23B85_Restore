@interface ATXPredictionTimeContext
- (ATXPredictionTimeContext)initWithDate:(id)date;
- (ATXPredictionTimeContext)initWithProto:(id)proto;
- (ATXPredictionTimeContext)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXPredictionTimeContext:(id)context;
- (NSDate)date;
- (id)description;
- (id)encodeAsProto;
- (id)jsonDict;
- (id)proto;
- (void)setDate:(id)date;
@end

@implementation ATXPredictionTimeContext

- (ATXPredictionTimeContext)initWithDate:(id)date
{
  dateCopy = date;
  v8.receiver = self;
  v8.super_class = ATXPredictionTimeContext;
  v5 = [(ATXPredictionTimeContext *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ATXPredictionTimeContext *)v5 setDate:dateCopy];
  }

  return v6;
}

- (NSDate)date
{
  v2 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:self->_absoluteDate];

  return v2;
}

- (void)setDate:(id)date
{
  v4 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v4 currentCalendar];
  v6 = [currentCalendar components:544 fromDate:dateCopy];
  [dateCopy timeIntervalSince1970];
  self->_absoluteDate = v7;
  self->_dayOfWeek = [v6 weekday] - 1;
  self->_timeOfDay = [v6 hour];
  v8 = [currentCalendar isDateInWeekend:dateCopy];

  self->_dateInWeekend = v8;
}

- (id)description
{
  jsonDict = [(ATXPredictionTimeContext *)self jsonDict];
  v3 = [jsonDict description];

  return v3;
}

- (id)jsonDict
{
  v13[4] = *MEMORY[0x277D85DE8];
  v12[0] = @"date";
  v3 = MEMORY[0x277CCABB0];
  date = [(ATXPredictionTimeContext *)self date];
  [date timeIntervalSinceReferenceDate];
  v5 = [v3 numberWithDouble:?];
  v13[0] = v5;
  v12[1] = @"dayOfWeek";
  v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_dayOfWeek];
  v13[1] = v6;
  v12[2] = @"timeOfDay";
  v7 = [MEMORY[0x277CCABB0] numberWithInt:self->_timeOfDay];
  v13[2] = v7;
  v12[3] = @"dateInWeekend";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_dateInWeekend];
  v13[3] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (ATXPredictionTimeContext)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBPredictionTimeContext alloc] initWithData:dataCopy];

    self = [(ATXPredictionTimeContext *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)encodeAsProto
{
  proto = [(ATXPredictionTimeContext *)self proto];
  data = [proto data];

  return data;
}

- (ATXPredictionTimeContext)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_7:
    selfCopy = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = __atxlog_handle_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [(ATXPredictionTimeContext *)self initWithProto:v12];
    }

    goto LABEL_7;
  }

  v5 = MEMORY[0x277CBEAA8];
  v6 = protoCopy;
  v7 = [v5 alloc];
  [v6 date];
  v9 = v8;

  v10 = [v7 initWithTimeIntervalSince1970:v9];
  self = [(ATXPredictionTimeContext *)self initWithDate:v10];

  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setDate:self->_absoluteDate];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXPredictionTimeContext *)self isEqualToATXPredictionTimeContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXPredictionTimeContext:(id)context
{
  contextCopy = context;
  v5 = self->_absoluteDate - contextCopy[1];
  if (v5 < 0.0)
  {
    v5 = -v5;
  }

  v6 = v5 <= 2.22044605e-16 && self->_dayOfWeek == *(contextCopy + 5) && self->_timeOfDay == *(contextCopy + 6) && self->_dateInWeekend == *(contextCopy + 16);

  return v6;
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = 138412290;
  v7 = v4;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "%@: tried to initialize with a non-ATXPBPredictionTimeContext proto", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end