@interface TKCompactTLVRecord
+ (id)parseFromDataSource:(id)source;
@end

@implementation TKCompactTLVRecord

+ (id)parseFromDataSource:(id)source
{
  sourceCopy = source;
  if ([sourceCopy bytesSafeToRead:1])
  {
    v5 = [sourceCopy ptr];
    fetchByte = [sourceCopy fetchByte];
    v7 = fetchByte;
    v8 = [sourceCopy fetchDataWithLength:fetchByte & 0xF];
    if (v8)
    {
      v13.receiver = self;
      v13.super_class = &OBJC_METACLASS___TKCompactTLVRecord;
      v9 = objc_msgSendSuper2(&v13, sel_alloc);
      v10 = [sourceCopy dataFromPtr:v5];
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