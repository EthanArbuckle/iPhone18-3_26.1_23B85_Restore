@interface CLCondition
- (BOOL)isAuthorized;
- (CLCondition)initWithCoder:(id)a3;
- (NSString)monitoredIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initCondition;
- (void)dealloc;
- (void)setCallbackHandler:(id)a3;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation CLCondition

- (id)initCondition
{
  [(CLCondition *)self setIsMonitoring:0];
  v4.receiver = self;
  v4.super_class = CLCondition;
  return [(CLCondition *)&v4 init];
}

- (void)dealloc
{
  self->_refinement = 0;

  self->_authorizationContext = 0;
  [(CLCondition *)self setCkp:0];
  [(CLCondition *)self setOnConditionUpdateCallbackHandler:0];

  self->_identifier = 0;
  self->_universe = 0;
  v3.receiver = self;
  v3.super_class = CLCondition;
  [(CLCondition *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = CLCondition;
  return [(CLCondition *)&v4 copy];
}

- (CLCondition)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = CLCondition;
  return [(CLCondition *)&v4 init];
}

- (void)setCallbackHandler:(id)a3
{
  [(CLCondition *)self setOnConditionUpdateCallbackHandler:a3];
  if ([(CLCondition *)self onConditionUpdateCallbackHandler])
  {
    v4 = [(CLCondition *)self onConditionUpdateCallbackHandler];
    v5 = [(CLCondition *)self monitoredIdentifier];
    v6 = [(CLCondition *)self lastMonitoringState];
    v7 = [(CLCondition *)self refinement];
    v8 = v4[2];

    v8(v4, v5, self, v6, v7);
  }
}

- (BOOL)isAuthorized
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED519078 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "false";
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Cannot call base isAuthorized directly, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6EE10);
      }
    }

    v3 = qword_1ED519080;
    if (os_signpost_enabled(qword_1ED519080))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "false";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Cannot call base isAuthorized directly", "{msg%{public}.0s:Cannot call base isAuthorized directly, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6EE10);
      }
    }

    v4 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "false";
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Cannot call base isAuthorized directly, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1ED519078, &unk_1F0E6EE10);
  }
}

- (void)startMonitoring
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED519078 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "false";
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Cannot call base startMonitoring directly, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6EE10);
      }
    }

    v3 = qword_1ED519080;
    if (os_signpost_enabled(qword_1ED519080))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "false";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Cannot call base startMonitoring directly", "{msg%{public}.0s:Cannot call base startMonitoring directly, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6EE10);
      }
    }

    v4 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "false";
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Cannot call base startMonitoring directly, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1ED519078, &unk_1F0E6EE10);
  }
}

- (void)stopMonitoring
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED519078 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "false";
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Cannot call base stopMonitoring directly, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6EE10);
      }
    }

    v3 = qword_1ED519080;
    if (os_signpost_enabled(qword_1ED519080))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "false";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Cannot call base stopMonitoring directly", "{msg%{public}.0s:Cannot call base stopMonitoring directly, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6EE10);
      }
    }

    v4 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "false";
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Cannot call base stopMonitoring directly, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1ED519078, &unk_1F0E6EE10);
  }
}

- (NSString)monitoredIdentifier
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(NSString *)[(CLCondition *)self identifier] rangeOfString:@"@"];
  v4 = [(CLCondition *)self identifier];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6EE10);
    }

    v6 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_FAULT))
    {
      v13 = 68289282;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2114;
      v18 = [(CLCondition *)self identifier];
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#monitor ill formatted identifier name, fenceName:%{public, location:escape_only}@}", &v13, 0x1Cu);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6EE10);
      }
    }

    v7 = qword_1ED519080;
    if (os_signpost_enabled(qword_1ED519080))
    {
      v8 = [(CLCondition *)self identifier];
      v13 = 68289282;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2114;
      v18 = v8;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#monitor ill formatted identifier name", "{msg%{public}.0s:#monitor ill formatted identifier name, fenceName:%{public, location:escape_only}@}", &v13, 0x1Cu);
    }

    v9 = *MEMORY[0x1E69E9840];
    return v5;
  }

  else
  {
    v11 = [(CLCondition *)self identifier];
    v12 = *MEMORY[0x1E69E9840];

    return [(NSString *)v11 substringFromIndex:v3 + 1];
  }
}

@end