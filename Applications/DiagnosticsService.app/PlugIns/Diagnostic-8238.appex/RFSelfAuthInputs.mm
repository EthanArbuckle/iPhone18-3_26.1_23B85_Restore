@interface RFSelfAuthInputs
- (BOOL)validateAndInitializeParameters:(id)parameters;
@end

@implementation RFSelfAuthInputs

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  parametersCopy = parameters;
  v8 = 0;
  v5 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = parametersCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Validating parmaeters: %@", buf, 0xCu);
  }

  if (parametersCopy)
  {
    v6 = [parametersCopy ds_BOOLFromKey:@"addAPTagToTicket" defaultValue:1 failed:&v8];
  }

  else
  {
    v6 = 1;
  }

  [(RFSelfAuthInputs *)self setAddAPTagToTicket:v6];

  return 1;
}

@end