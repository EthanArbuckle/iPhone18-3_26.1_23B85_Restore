@interface OSDError
+ (BOOL)setError:(id *)error withDomain:(id)domain withCode:(int)code format:(id)format;
@end

@implementation OSDError

+ (BOOL)setError:(id *)error withDomain:(id)domain withCode:(int)code format:(id)format
{
  domainCopy = domain;
  formatCopy = format;
  if (formatCopy)
  {
    v11 = [[NSString alloc] initWithFormat:formatCopy arguments:&v20];
  }

  else
  {
    v11 = 0;
  }

  v12 = +[NSMutableDictionary dictionary];
  v13 = v12;
  if (v11)
  {
    [v12 setObject:v11 forKeyedSubscript:NSLocalizedDescriptionKey];
  }

  v14 = [NSError errorWithDomain:domainCopy code:code userInfo:v13];
  v15 = v14;
  if (error)
  {
    if (!*error)
    {
      v18 = v14;
      *error = v15;
      v17 = 1;
      goto LABEL_14;
    }

    v16 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100008514(v15, v16);
    }
  }

  else
  {
    v16 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10000858C(v15, v16);
    }
  }

  v17 = 0;
LABEL_14:

  return v17;
}

@end