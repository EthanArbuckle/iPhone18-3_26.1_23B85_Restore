@interface CLMonitoringEvent
- (BOOL)authorizationDenied;
- (CLMonitoringEvent)initWithCoder:(id)a3;
- (CLMonitoringEvent)initWithIdentifier:(id)a3 refinement:(id)a4 state:(unint64_t)a5 date:(id)a6 diagnostics:(unint64_t)a7;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLMonitoringEvent

- (CLMonitoringEvent)initWithIdentifier:(id)a3 refinement:(id)a4 state:(unint64_t)a5 date:(id)a6 diagnostics:(unint64_t)a7
{
  v14.receiver = self;
  v14.super_class = CLMonitoringEvent;
  v12 = [(CLMonitoringEvent *)&v14 init];
  if (v12)
  {
    v12->_identifier = [a3 copy];
    v12->_refinement = a4;
    v12->_state = a5;
    v12->_date = a6;
    v12->_diagnosticMask = a7;
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

- (void)encodeWithCoder:(id)a3
{
  if (([a3 requiresSecureCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [a3 encodeObject:-[CLMonitoringEvent identifier](self forKey:{"identifier"), @"kCLMonitoringEventIdentifier"}];
  [a3 encodeObject:-[CLMonitoringEvent refinement](self forKey:{"refinement"), @"kCLMonitoringEventRefinement"}];
  [a3 encodeInteger:-[CLMonitoringEvent state](self forKey:{"state"), @"kCLMonitoringEventState"}];
  [a3 encodeObject:-[CLMonitoringEvent date](self forKey:{"date"), @"kCLMonitoringEventDate"}];
  v6 = [(CLMonitoringEvent *)self diagnosticMask];

  [a3 encodeInteger:v6 forKey:@"kCLMonitoringEventDiagnosticMask"];
}

- (CLMonitoringEvent)initWithCoder:(id)a3
{
  if (([a3 requiresSecureCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
  self->_identifier = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMonitoringEventIdentifier"];
  self->_refinement = [a3 decodeObjectOfClasses:v10 forKey:@"kCLMonitoringEventRefinement"];
  self->_state = [a3 decodeIntegerForKey:@"kCLMonitoringEventState"];
  self->_date = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMonitoringEventDate"];
  self->_diagnosticMask = [a3 decodeIntegerForKey:@"kCLMonitoringEventDiagnosticMask"];
  return self;
}

- (id)description
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [(CLMonitoringEvent *)self identifier];
  v5 = [(CLMonitoringEvent *)self state];
  if (v5 >= 4)
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
    v6 = off_1E753D590[v5];
  }

  [v3 appendFormat:@"CLMonitoringEvent(identifier: %@, state: %@, refinement: %@, date: %@, diagnosticMask: %d)", v4, v6, -[CLCondition description](-[CLMonitoringEvent refinement](self, "refinement"), "description"), -[NSDate description](-[CLMonitoringEvent date](self, "date"), "description"), -[CLMonitoringEvent diagnosticMask](self, "diagnosticMask")];
  v9 = *MEMORY[0x1E69E9840];
  return v3;
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