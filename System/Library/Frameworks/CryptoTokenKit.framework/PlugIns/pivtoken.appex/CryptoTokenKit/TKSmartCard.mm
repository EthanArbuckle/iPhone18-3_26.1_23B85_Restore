@interface TKSmartCard
- (id)recordsOfObject:(id)object error:(id *)error;
@end

@implementation TKSmartCard

- (id)recordsOfObject:(id)object error:(id *)error
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = sub_1000021D4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1000037E8();
    }

    v8 = [[TKBERTLVRecord alloc] initWithTag:92 value:objectCopy];
    v15 = 0;
    v9 = [(TKSmartCard *)self sendIns:203 p1:63 p2:255 request:v8 expectedTag:83 sw:&v15 error:error];
    v10 = v9;
    if (v9)
    {
      value = [v9 value];
      v12 = [TKBERTLVRecord sequenceOfRecordsFromData:value];

      if (!v12)
      {
        v13 = sub_1000021D4();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_10000385C();
        }

        if (error)
        {
          *error = [NSError errorWithDomain:TKErrorDomain code:-3 userInfo:0];
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else if (error)
  {
    [NSError errorWithDomain:TKErrorDomain code:-6 userInfo:0];
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end