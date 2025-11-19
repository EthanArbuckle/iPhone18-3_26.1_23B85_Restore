@interface TKSmartCard
- (id)recordsOfObject:(id)a3 error:(id *)a4;
@end

@implementation TKSmartCard

- (id)recordsOfObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = sub_1000021D4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1000037E8();
    }

    v8 = [[TKBERTLVRecord alloc] initWithTag:92 value:v6];
    v15 = 0;
    v9 = [(TKSmartCard *)self sendIns:203 p1:63 p2:255 request:v8 expectedTag:83 sw:&v15 error:a4];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 value];
      v12 = [TKBERTLVRecord sequenceOfRecordsFromData:v11];

      if (!v12)
      {
        v13 = sub_1000021D4();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_10000385C();
        }

        if (a4)
        {
          *a4 = [NSError errorWithDomain:TKErrorDomain code:-3 userInfo:0];
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else if (a4)
  {
    [NSError errorWithDomain:TKErrorDomain code:-6 userInfo:0];
    *a4 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end