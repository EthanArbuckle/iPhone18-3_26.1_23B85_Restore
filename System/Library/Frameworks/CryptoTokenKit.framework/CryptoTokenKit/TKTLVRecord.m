@interface TKTLVRecord
+ (NSArray)sequenceOfRecordsFromData:(NSData *)data;
+ (TKTLVRecord)recordFromData:(NSData *)data;
- (TKTLVRecord)initWithTag:(unint64_t)a3 value:(id)a4 data:(id)a5;
- (id)description;
@end

@implementation TKTLVRecord

- (TKTLVRecord)initWithTag:(unint64_t)a3 value:(id)a4 data:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = TKTLVRecord;
  v11 = [(TKTLVRecord *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_tag = a3;
    objc_storeStrong(&v11->_value, a4);
    objc_storeStrong(&v12->_data, a5);
  }

  return v12;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [(TKTLVRecord *)self value];
  v5 = [v4 bytes];

  v6 = [(TKTLVRecord *)self value];
  v7 = [v6 length];

  if (v7)
  {
    v8 = 0;
    do
    {
      [v3 appendFormat:@"%02x", *(v5 + v8++)];
      v9 = [(TKTLVRecord *)self value];
      v10 = [v9 length];
    }

    while (v8 < v10);
  }

  v11 = MEMORY[0x1E696AEC0];
  v15.receiver = self;
  v15.super_class = TKTLVRecord;
  v12 = [(TKTLVRecord *)&v15 description];
  v13 = [v11 stringWithFormat:@"%@ 0x%llx=%@", v12, -[TKTLVRecord tag](self, "tag"), v3];

  return v13;
}

+ (TKTLVRecord)recordFromData:(NSData *)data
{
  v4 = data;
  v5 = [[TKDataSource alloc] initWithData:v4];

  v6 = [a1 parseFromDataSource:v5];
  v7 = [(TKDataSource *)v5 ptr];
  if (v7 == [(TKDataSource *)v5 end])
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

+ (NSArray)sequenceOfRecordsFromData:(NSData *)data
{
  v4 = data;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [[TKDataSource alloc] initWithData:v4];
  for (i = v6; ; v6 = i)
  {
    v8 = [(TKDataSource *)v6 ptr];
    if (v8 >= [(TKDataSource *)i end])
    {
      v11 = v5;
      goto LABEL_7;
    }

    v9 = [a1 parseFromDataSource:i];
    if (!v9)
    {
      break;
    }

    v10 = v9;
    [v5 addObject:v9];
  }

  v11 = 0;
LABEL_7:

  return v11;
}

@end