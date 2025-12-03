@interface CLMonitoringEvent
- (BOOL)authorizationDenied;
- (CLMonitoringEvent)initWithCoder:(id)coder;
- (CLMonitoringEvent)initWithIdentifier:(id)identifier refinement:(id)refinement state:(unint64_t)state date:(id)date diagnostics:(unint64_t)diagnostics;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLMonitoringEvent

- (CLMonitoringEvent)initWithIdentifier:(id)identifier refinement:(id)refinement state:(unint64_t)state date:(id)date diagnostics:(unint64_t)diagnostics
{
  v14.receiver = self;
  v14.super_class = CLMonitoringEvent;
  v12 = [(CLMonitoringEvent *)&v14 init];
  if (v12)
  {
    v12->_identifier = [identifier copy];
    v12->_refinement = refinement;
    v12->_state = state;
    v12->_date = date;
    v12->_diagnosticMask = diagnostics;
  }

  return v12;
}

- (void)dealloc
{
  self->_identifier = 0;

  self->_refinement = 0;
  self->_date = 0;
  v3.receiver = self;
  v3.super_class = CLMonitoringEvent;
  [(CLMonitoringEvent *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder requiresSecureCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder encodeObject:-[CLMonitoringEvent identifier](self forKey:{"identifier"), @"kCLMonitoringEventIdentifier"}];
  [coder encodeObject:-[CLMonitoringEvent refinement](self forKey:{"refinement"), @"kCLMonitoringEventRefinement"}];
  [coder encodeInteger:-[CLMonitoringEvent state](self forKey:{"state"), @"kCLMonitoringEventState"}];
  [coder encodeObject:-[CLMonitoringEvent date](self forKey:{"date"), @"kCLMonitoringEventDate"}];
  diagnosticMask = [(CLMonitoringEvent *)self diagnosticMask];

  [coder encodeInteger:diagnosticMask forKey:@"kCLMonitoringEventDiagnosticMask"];
}

- (CLMonitoringEvent)initWithCoder:(id)coder
{
  if (([coder requiresSecureCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
  self->_identifier = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMonitoringEventIdentifier"];
  self->_refinement = [coder decodeObjectOfClasses:v10 forKey:@"kCLMonitoringEventRefinement"];
  self->_state = [coder decodeIntegerForKey:@"kCLMonitoringEventState"];
  self->_date = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMonitoringEventDate"];
  self->_diagnosticMask = [coder decodeIntegerForKey:@"kCLMonitoringEventDiagnosticMask"];
  return self;
}

- (id)description
{
  v15 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  identifier = [(CLMonitoringEvent *)self identifier];
  state = [(CLMonitoringEvent *)self state];
  if (state >= 4)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B8A0);
    }

    v7 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unsupported monitoring state}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B8A0);
      }
    }

    v8 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289026;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unsupported monitoring state", "{msg%{public}.0s:Unsupported monitoring state}", buf, 0x12u);
    }

    v6 = @".unsupported state";
  }

  else
  {
    v6 = off_1E753D590[state];
  }

  [string appendFormat:@"CLMonitoringEvent(identifier: %@, state: %@, refinement: %@, date: %@, diagnosticMask: %d)", identifier, v6, -[CLCondition description](-[CLMonitoringEvent refinement](self, "refinement"), "description"), -[NSDate description](-[CLMonitoringEvent date](self, "date"), "description"), -[CLMonitoringEvent diagnosticMask](self, "diagnosticMask")];
  v9 = *MEMORY[0x1E69E9840];
  return string;
}

- (BOOL)authorizationDenied
{
  if ([(CLMonitoringEvent *)self authorizationDeniedGlobally])
  {
    return 1;
  }

  else
  {
    return [(CLMonitoringEvent *)self diagnosticMask]& 1;
  }
}

@end