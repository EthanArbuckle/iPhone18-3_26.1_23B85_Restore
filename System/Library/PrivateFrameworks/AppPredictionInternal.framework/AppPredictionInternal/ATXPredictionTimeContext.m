@interface ATXPredictionTimeContext
- (ATXPredictionTimeContext)initWithDate:(id)a3;
- (ATXPredictionTimeContext)initWithProto:(id)a3;
- (ATXPredictionTimeContext)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXPredictionTimeContext:(id)a3;
- (NSDate)date;
- (id)description;
- (id)encodeAsProto;
- (id)jsonDict;
- (id)proto;
- (void)setDate:(id)a3;
@end

@implementation ATXPredictionTimeContext

- (ATXPredictionTimeContext)initWithDate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ATXPredictionTimeContext;
  v5 = [(ATXPredictionTimeContext *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ATXPredictionTimeContext *)v5 setDate:v4];
  }

  return v6;
}

- (NSDate)date
{
  v2 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:self->_absoluteDate];

  return v2;
}

- (void)setDate:(id)a3
{
  v4 = MEMORY[0x277CBEA80];
  v5 = a3;
  v9 = [v4 currentCalendar];
  v6 = [v9 components:544 fromDate:v5];
  [v5 timeIntervalSince1970];
  self->_absoluteDate = v7;
  self->_dayOfWeek = [v6 weekday] - 1;
  self->_timeOfDay = [v6 hour];
  v8 = [v9 isDateInWeekend:v5];

  self->_dateInWeekend = v8;
}

- (id)description
{
  v2 = [(ATXPredictionTimeContext *)self jsonDict];
  v3 = [v2 description];

  return v3;
}

- (id)jsonDict
{
  v13[4] = *MEMORY[0x277D85DE8];
  v12[0] = @"date";
  v3 = MEMORY[0x277CCABB0];
  v4 = [(ATXPredictionTimeContext *)self date];
  [v4 timeIntervalSinceReferenceDate];
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

- (ATXPredictionTimeContext)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBPredictionTimeContext alloc] initWithData:v4];

    self = [(ATXPredictionTimeContext *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)encodeAsProto
{
  v2 = [(ATXPredictionTimeContext *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXPredictionTimeContext)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v11 = 0;
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
  v6 = v4;
  v7 = [v5 alloc];
  [v6 date];
  v9 = v8;

  v10 = [v7 initWithTimeIntervalSince1970:v9];
  self = [(ATXPredictionTimeContext *)self initWithDate:v10];

  v11 = self;
LABEL_8:

  return v11;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setDate:self->_absoluteDate];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXPredictionTimeContext *)self isEqualToATXPredictionTimeContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXPredictionTimeContext:(id)a3
{
  v4 = a3;
  v5 = self->_absoluteDate - v4[1];
  if (v5 < 0.0)
  {
    v5 = -v5;
  }

  v6 = v5 <= 2.22044605e-16 && self->_dayOfWeek == *(v4 + 5) && self->_timeOfDay == *(v4 + 6) && self->_dateInWeekend == *(v4 + 16);

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