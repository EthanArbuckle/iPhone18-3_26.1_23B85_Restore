@interface TKCompactTLVRecord
+ (id)parseFromDataSource:(id)a3;
@end

@implementation TKCompactTLVRecord

+ (id)parseFromDataSource:(id)a3
{
  v4 = a3;
  if ([v4 bytesSafeToRead:1])
  {
    v5 = [v4 ptr];
    v6 = [v4 fetchByte];
    v7 = v6;
    v8 = [v4 fetchDataWithLength:v6 & 0xF];
    if (v8)
    {
      v13.receiver = a1;
      v13.super_class = &OBJC_METACLASS___TKCompactTLVRecord;
      v9 = objc_msgSendSuper2(&v13, sel_alloc);
      v10 = [v4 dataFromPtr:v5];
      v11 = [v9 initWithTag:v7 >> 4 value:v8 data:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end