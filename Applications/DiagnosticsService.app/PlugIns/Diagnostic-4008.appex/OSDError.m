@interface OSDError
+ (BOOL)setError:(id *)a3 withDomain:(id)a4 withCode:(int)a5 format:(id)a6;
@end

@implementation OSDError

+ (BOOL)setError:(id *)a3 withDomain:(id)a4 withCode:(int)a5 format:(id)a6
{
  v9 = a4;
  v10 = a6;
  if (v10)
  {
    v11 = [[NSString alloc] initWithFormat:v10 arguments:&v20];
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

  v14 = [NSError errorWithDomain:v9 code:a5 userInfo:v13];
  v15 = v14;
  if (a3)
  {
    if (!*a3)
    {
      v18 = v14;
      *a3 = v15;
      v17 = 1;
      goto LABEL_14;
    }

    v16 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000039F4(v15, v16);
    }
  }

  else
  {
    v16 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100003A6C(v15, v16);
    }
  }

  v17 = 0;
LABEL_14:

  return v17;
}

@end