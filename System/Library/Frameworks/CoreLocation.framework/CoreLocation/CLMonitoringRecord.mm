@interface CLMonitoringRecord
- (BOOL)isEqual:(id)equal;
- (CLMonitoringRecord)initWithCoder:(id)coder;
- (NSString)identifier;
- (id)description;
- (id)initRecordWithCondition:(id)condition identifier:(id)identifier options:(unint64_t)options initialState:(unint64_t)state;
- (id)initRecordWithCondition:(id)condition options:(unint64_t)options event:(id)event;
- (id)initRecordWithMonitoringRecord:(id)record;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)updateEvent:(id)event;
@end

@implementation CLMonitoringRecord

- (id)initRecordWithMonitoringRecord:(id)record
{
  [record condition];
  [record options];
  [record lastEvent];

  return MEMORY[0x1EEE66B58](self, sel_initRecordWithCondition_options_event_);
}

- (id)initRecordWithCondition:(id)condition identifier:(id)identifier options:(unint64_t)options initialState:(unint64_t)state
{
  v9 = [CLMonitoringEvent alloc];
  v10 = -[CLMonitoringEvent initWithIdentifier:refinement:state:date:diagnostics:](v9, "initWithIdentifier:refinement:state:date:diagnostics:", identifier, 0, state, [MEMORY[0x1E695DF00] date], 0);

  return MEMORY[0x1EEE66B58](self, sel_initRecordWithCondition_options_event_);
}

- (id)initRecordWithCondition:(id)condition options:(unint64_t)options event:(id)event
{
  v10.receiver = self;
  v10.super_class = CLMonitoringRecord;
  v8 = [(CLMonitoringRecord *)&v10 init];
  if (v8)
  {
    v8->_condition = condition;
    v8->_options = options;
    v8->_lastEvent = event;
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

- (void)encodeWithCoder:(id)coder
{
  if (([coder requiresSecureCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder encodeObject:-[CLMonitoringRecord condition](self forKey:{"condition"), @"kCLMonitoringRecordCondition"}];
  [coder encodeObject:-[CLMonitoringRecord lastEvent](self forKey:{"lastEvent"), @"kCLMonitoringRecordLastEvent"}];
  options = [(CLMonitoringRecord *)self options];

  [coder encodeInteger:options forKey:@"kCLMonitoringRecordMonitoringOptions"];
}

- (CLMonitoringRecord)initWithCoder:(id)coder
{
  if (([coder requiresSecureCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  self->_condition = [coder decodeObjectOfClasses:objc_msgSend(v6 forKey:{"setWithObjects:", v7, v8, v9, objc_opt_class(), 0), @"kCLMonitoringRecordCondition"}];
  self->_lastEvent = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMonitoringRecordLastEvent"];
  self->_options = [coder decodeIntegerForKey:@"kCLMonitoringRecordMonitoringOptions"];
  return self;
}

- (NSString)identifier
{
  lastEvent = [(CLMonitoringRecord *)self lastEvent];

  return [(CLMonitoringEvent *)lastEvent identifier];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  [string appendString:{-[CLCondition description](-[CLMonitoringRecord condition](self, "condition"), "description")}];
  [string appendFormat:@", options: %lu", -[CLMonitoringRecord options](self, "options")];
  [string appendFormat:@", lastEvent: %@", -[CLMonitoringRecord lastEvent](self, "lastEvent")];
  return string;
}

- (void)updateEvent:(id)event
{
  eventCopy = event;

  self->_lastEvent = eventCopy;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = -[CLCondition isEqual:](-[CLMonitoringRecord condition](self, "condition"), "isEqual:", [equal condition]);
      if (v5)
      {
        identifier = [(CLMonitoringEvent *)[(CLMonitoringRecord *)self lastEvent] identifier];
        v7 = [objc_msgSend(equal "lastEvent")];

        LOBYTE(v5) = [(NSString *)identifier isEqualToString:v7];
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