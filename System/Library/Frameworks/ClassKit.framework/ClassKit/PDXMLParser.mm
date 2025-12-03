@interface PDXMLParser
- (id)parseData:(id)data expectedClass:(Class)class error:(id *)error;
@end

@implementation PDXMLParser

- (id)parseData:(id)data expectedClass:(Class)class error:(id *)error
{
  dataCopy = data;
  v12 = 0;
  v13 = 0;
  v7 = [NSPropertyListSerialization propertyListWithData:dataCopy options:0 format:&v13 error:&v12];
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
      *buf = 138543874;
      v15 = dataCopy;
      v16 = 2048;
      v17 = v13;
      v18 = 2114;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Error parsing XML from data: %{public}@ format:%lu error: %{public}@.", buf, 0x20u);
    }

    [NSError cls_assignError:error fromError:v8];
  }

  return v7;
}

@end