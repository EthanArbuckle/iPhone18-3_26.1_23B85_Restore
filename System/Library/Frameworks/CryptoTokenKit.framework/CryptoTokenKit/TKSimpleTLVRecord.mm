@interface TKSimpleTLVRecord
+ (id)parseFromDataSource:(id)source error:(id *)error;
- (TKSimpleTLVRecord)initWithTag:(UInt8)tag value:(NSData *)value;
@end

@implementation TKSimpleTLVRecord

- (TKSimpleTLVRecord)initWithTag:(UInt8)tag value:(NSData *)value
{
  v4 = tag;
  v6 = value;
  if ([(NSData *)v6 length]> 0xFE)
  {
    if ([(NSData *)v6 length]>= 0x10000)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"value for TKSimpleTLVRecord record too big (%lu)", -[NSData length](v6, "length")}];
    }

    v13 = v4;
    v14 = -1;
    v15 = [(NSData *)v6 length]>> 8;
    v16 = [(NSData *)v6 length];
    v7 = MEMORY[0x1E695DF88];
    v8 = 4;
  }

  else
  {
    v13 = v4;
    v14 = [(NSData *)v6 length];
    v7 = MEMORY[0x1E695DF88];
    v8 = 2;
  }

  v9 = [v7 dataWithBytes:&v13 length:v8];
  [v9 appendData:v6];
  v12.receiver = self;
  v12.super_class = TKSimpleTLVRecord;
  v10 = [(TKTLVRecord *)&v12 initWithTag:v4 value:v6 data:v9];

  return v10;
}

+ (id)parseFromDataSource:(id)source error:(id *)error
{
  sourceCopy = source;
  if ([sourceCopy bytesSafeToRead:1])
  {
    v6 = [sourceCopy ptr];
    fetchByte = [sourceCopy fetchByte];
    if (fetchByte - 255 >= 0xFFFFFF02)
    {
      v8 = fetchByte;
      if ([sourceCopy bytesSafeToRead:1])
      {
        fetchByte2 = [sourceCopy fetchByte];
        if (fetchByte2 != 255)
        {
          v10 = fetchByte2;
LABEL_8:
          v12 = [sourceCopy fetchDataWithLength:v10];
          if (v12)
          {
            v13 = [self alloc];
            v14 = [sourceCopy dataFromPtr:v6];
            v15 = [v13 initWithTag:v8 value:v12 data:v14];
          }

          else
          {
            v15 = 0;
          }

          goto LABEL_11;
        }

        if ([sourceCopy bytesSafeToRead:2])
        {
          fetchByte3 = [sourceCopy fetchByte];
          v10 = [sourceCopy fetchByte] | (fetchByte3 << 8);
          goto LABEL_8;
        }
      }
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

@end