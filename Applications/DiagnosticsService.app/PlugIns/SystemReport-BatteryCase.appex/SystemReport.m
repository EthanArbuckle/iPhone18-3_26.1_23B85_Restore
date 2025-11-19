@interface SystemReport
- (BOOL)isPresent;
- (void)populateAttributes:(id)a3;
- (void)setupWithContext:(id)a3;
@end

@implementation SystemReport

- (void)setupWithContext:(id)a3
{
  v4 = a3;
  v5 = [(SystemReport *)self componentIdentity];
  v6 = [v5 type];
  v7 = [@"Component" stringByAppendingString:v6];

  v8 = [(SystemReport *)self componentIdentity];
  v9 = [v8 identifier];

  if (v9)
  {
    v10 = [(SystemReport *)self componentIdentity];
    v11 = [v10 identifier];
    v12 = [v7 stringByAppendingString:v11];

    v7 = v12;
  }

  v13 = NSClassFromString(v7);
  if (!v13)
  {
    v16 = DiagnosticLogHandleForCategory();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    v18 = 138412290;
    v19 = v7;
    v17 = "Class named [%@] does not exist";
LABEL_12:
    _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, v17, &v18, 0xCu);
    goto LABEL_10;
  }

  if (![(objc_class *)v13 conformsToProtocol:&OBJC_PROTOCOL___DKReporter])
  {
    v16 = DiagnosticLogHandleForCategory();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    v18 = 138412290;
    v19 = v7;
    v17 = "Class named [%@] does not conform to protocol DKReporter";
    goto LABEL_12;
  }

  v14 = objc_opt_new();
  [(SystemReport *)self setComponent:v14];

  v15 = [(SystemReport *)self component];
  [v15 setupWithContext:v4];

  v16 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Running [%@]", &v18, 0xCu);
  }

LABEL_10:
}

- (BOOL)isPresent
{
  v2 = [(SystemReport *)self component];
  v3 = [v2 isPresent];

  return v3;
}

- (void)populateAttributes:(id)a3
{
  v4 = a3;
  v5 = [(SystemReport *)self component];
  [v5 populateAttributes:v4];
}

@end