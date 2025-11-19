@interface CLMonitoringRecord
- (BOOL)isEqual:(id)a3;
- (CLMonitoringRecord)initWithCoder:(id)a3;
- (NSString)identifier;
- (id)description;
- (id)initRecordWithCondition:(id)a3 identifier:(id)a4 options:(unint64_t)a5 initialState:(unint64_t)a6;
- (id)initRecordWithCondition:(id)a3 options:(unint64_t)a4 event:(id)a5;
- (id)initRecordWithMonitoringRecord:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)updateEvent:(id)a3;
@end

@implementation CLMonitoringRecord

- (id)initRecordWithMonitoringRecord:(id)a3
{
  [a3 condition];
  [a3 options];
  [a3 lastEvent];

  return MEMORY[0x1EEE66B58](self, sel_initRecordWithCondition_options_event_);
}

- (id)initRecordWithCondition:(id)a3 identifier:(id)a4 options:(unint64_t)a5 initialState:(unint64_t)a6
{
  v9 = [CLMonitoringEvent alloc];
  v10 = -[CLMonitoringEvent initWithIdentifier:refinement:state:date:diagnostics:](v9, "initWithIdentifier:refinement:state:date:diagnostics:", a4, 0, a6, [MEMORY[0x1E695DF00] date], 0);

  return MEMORY[0x1EEE66B58](self, sel_initRecordWithCondition_options_event_);
}

- (id)initRecordWithCondition:(id)a3 options:(unint64_t)a4 event:(id)a5
{
  v10.receiver = self;
  v10.super_class = CLMonitoringRecord;
  v8 = [(CLMonitoringRecord *)&v10 init];
  if (v8)
  {
    v8->_condition = a3;
    v8->_options = a4;
    v8->_lastEvent = a5;
  }

  return v8;
}

- (void)dealloc
{
  self->_condition = 0;

  self->_lastEvent = 0;
  v3.receiver = self;
  v3.super_class = CLMonitoringRecord;
  [(CLMonitoringRecord *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 requiresSecureCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [a3 encodeObject:-[CLMonitoringRecord condition](self forKey:{"condition"), @"kCLMonitoringRecordCondition"}];
  [a3 encodeObject:-[CLMonitoringRecord lastEvent](self forKey:{"lastEvent"), @"kCLMonitoringRecordLastEvent"}];
  v6 = [(CLMonitoringRecord *)self options];

  [a3 encodeInteger:v6 forKey:@"kCLMonitoringRecordMonitoringOptions"];
}

- (CLMonitoringRecord)initWithCoder:(id)a3
{
  if (([a3 requiresSecureCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  self->_condition = [a3 decodeObjectOfClasses:objc_msgSend(v6 forKey:{"setWithObjects:", v7, v8, v9, objc_opt_class(), 0), @"kCLMonitoringRecordCondition"}];
  self->_lastEvent = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMonitoringRecordLastEvent"];
  self->_options = [a3 decodeIntegerForKey:@"kCLMonitoringRecordMonitoringOptions"];
  return self;
}

- (NSString)identifier
{
  v2 = [(CLMonitoringRecord *)self lastEvent];

  return [(CLMonitoringEvent *)v2 identifier];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  [v3 appendString:{-[CLCondition description](-[CLMonitoringRecord condition](self, "condition"), "description")}];
  [v3 appendFormat:@", options: %lu", -[CLMonitoringRecord options](self, "options")];
  [v3 appendFormat:@", lastEvent: %@", -[CLMonitoringRecord lastEvent](self, "lastEvent")];
  return v3;
}

- (void)updateEvent:(id)a3
{
  v4 = a3;

  self->_lastEvent = v4;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = -[CLCondition isEqual:](-[CLMonitoringRecord condition](self, "condition"), "isEqual:", [a3 condition]);
      if (v5)
      {
        v6 = [(CLMonitoringEvent *)[(CLMonitoringRecord *)self lastEvent] identifier];
        v7 = [objc_msgSend(a3 "lastEvent")];

        LOBYTE(v5) = [(NSString *)v6 isEqualToString:v7];
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

@end