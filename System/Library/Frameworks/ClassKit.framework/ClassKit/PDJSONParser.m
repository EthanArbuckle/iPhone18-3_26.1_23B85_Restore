@interface PDJSONParser
- (id)parseData:(id)a3 expectedClass:(Class)a4 error:(id *)a5;
@end

@implementation PDJSONParser

- (id)parseData:(id)a3 expectedClass:(Class)a4 error:(id *)a5
{
  v6 = a3;
  v12 = 0;
  v7 = [NSJSONSerialization JSONObjectWithData:v6 options:1 error:&v12];
  v8 = v12;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    CLSInitLog();
    v10 = CLSLogOperations;
    if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v14 = v6;
      v15 = 2114;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Error parsing JSON from data: %{public}@ error: %{public}@.", buf, 0x16u);
    }

    [NSError cls_assignError:a5 fromError:v8];
  }

  return v7;
}

@end