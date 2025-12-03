@interface SystemReport
- (BOOL)isPresent;
- (void)populateAttributes:(id)attributes;
- (void)setupWithContext:(id)context;
@end

@implementation SystemReport

- (void)setupWithContext:(id)context
{
  contextCopy = context;
  componentIdentity = [(SystemReport *)self componentIdentity];
  type = [componentIdentity type];
  v7 = [@"Component" stringByAppendingString:type];

  componentIdentity2 = [(SystemReport *)self componentIdentity];
  identifier = [componentIdentity2 identifier];

  if (identifier)
  {
    componentIdentity3 = [(SystemReport *)self componentIdentity];
    identifier2 = [componentIdentity3 identifier];
    v12 = [v7 stringByAppendingString:identifier2];

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

  component = [(SystemReport *)self component];
  [component setupWithContext:contextCopy];

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
  component = [(SystemReport *)self component];
  isPresent = [component isPresent];

  return isPresent;
}

- (void)populateAttributes:(id)attributes
{
  attributesCopy = attributes;
  component = [(SystemReport *)self component];
  [component populateAttributes:attributesCopy];
}

@end