@interface DAError
+ (BOOL)setError:(id *)a3 withCode:(int)a4 format:(id)a5;
@end

@implementation DAError

+ (BOOL)setError:(id *)a3 withCode:(int)a4 format:(id)a5
{
  v7 = a5;
  if (v7)
  {
    v8 = [[NSString alloc] initWithFormat:v7 arguments:&v17];
  }

  else
  {
    v8 = 0;
  }

  v9 = +[NSMutableDictionary dictionary];
  v10 = v9;
  if (v8)
  {
    [v9 setObject:v8 forKeyedSubscript:NSLocalizedDescriptionKey];
  }

  v11 = [NSError errorWithDomain:@"com.apple.FieldDiagnostics" code:a4 userInfo:v10];
  v12 = v11;
  if (a3)
  {
    if (!*a3)
    {
      v15 = v11;
      *a3 = v12;
      v14 = 1;
      goto LABEL_14;
    }

    v13 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100002894(v12, v13);
    }
  }

  else
  {
    v13 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10000290C(v12, v13);
    }
  }

  v14 = 0;
LABEL_14:

  return v14;
}

@end