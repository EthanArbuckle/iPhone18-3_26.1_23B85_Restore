@interface TKTLVRecord
+ (NSArray)sequenceOfRecordsFromData:(NSData *)data;
+ (TKTLVRecord)recordFromData:(NSData *)data;
- (TKTLVRecord)initWithTag:(unint64_t)tag value:(id)value data:(id)data;
- (id)description;
@end

@implementation TKTLVRecord

- (TKTLVRecord)initWithTag:(unint64_t)tag value:(id)value data:(id)data
{
  valueCopy = value;
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = TKTLVRecord;
  v11 = [(TKTLVRecord *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_tag = tag;
    objc_storeStrong(&v11->_value, value);
    objc_storeStrong(&v12->_data, data);
  }

  return v12;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  value = [(TKTLVRecord *)self value];
  bytes = [value bytes];

  value2 = [(TKTLVRecord *)self value];
  v7 = [value2 length];

  if (v7)
  {
    v8 = 0;
    do
    {
      [string appendFormat:@"%02x", *(bytes + v8++)];
      value3 = [(TKTLVRecord *)self value];
      v10 = [value3 length];
    }

    while (v8 < v10);
  }

  v11 = MEMORY[0x1E696AEC0];
  v15.receiver = self;
  v15.super_class = TKTLVRecord;
  v12 = [(TKTLVRecord *)&v15 description];
  v13 = [v11 stringWithFormat:@"%@ 0x%llx=%@", v12, -[TKTLVRecord tag](self, "tag"), string];

  return v13;
}

+ (TKTLVRecord)recordFromData:(NSData *)data
{
  v4 = data;
  v5 = [[TKDataSource alloc] initWithData:v4];

  v6 = [self parseFromDataSource:v5];
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
  array = [MEMORY[0x1E695DF70] array];
  v6 = [[TKDataSource alloc] initWithData:v4];
  for (i = v6; ; v6 = i)
  {
    v8 = [(TKDataSource *)v6 ptr];
    if (v8 >= [(TKDataSource *)i end])
    {
      v11 = array;
      goto LABEL_7;
    }

    v9 = [self parseFromDataSource:i];
    if (!v9)
    {
      break;
    }

    v10 = v9;
    [array addObject:v9];
  }

  v11 = 0;
LABEL_7:

  return v11;
}

@end