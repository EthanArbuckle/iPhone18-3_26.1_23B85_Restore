@interface T1SupervisoryBlock
+ (id)supervisoryBlockWithNad:(unsigned __int8)a3 operation:(char)a4 type:(char)a5 informationField:(id)a6 redundancyCode:(char)a7;
- (T1SupervisoryBlock)initWithData:(id)a3;
- (char)operation;
- (id)description;
- (id)operationStr;
- (id)typeStr;
- (unsigned)uint8Value;
@end

@implementation T1SupervisoryBlock

- (T1SupervisoryBlock)initWithData:(id)a3
{
  v8.receiver = self;
  v8.super_class = T1SupervisoryBlock;
  v3 = [(T1TPDUBlock *)&v8 initWithData:a3 needAck:0];
  v4 = v3;
  if (v3)
  {
    if ([(T1SupervisoryBlock *)v3 operation]>= 4)
    {
      v5 = sub_10000BF14();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_100016DB4(v4);
      }

LABEL_16:

      v6 = 0;
      goto LABEL_17;
    }

    if (([(T1SupervisoryBlock *)v4 operation]== 1 || [(T1SupervisoryBlock *)v4 operation]== 3) && [(T1TPDUBlock *)v4 lengthByte]!= 1)
    {
      v5 = sub_10000BF14();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_100016CC4(v4);
      }

      goto LABEL_16;
    }

    if ([(T1SupervisoryBlock *)v4 operation]!= 1 && [(T1SupervisoryBlock *)v4 operation]!= 3 && [(T1TPDUBlock *)v4 lengthByte])
    {
      v5 = sub_10000BF14();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_100016D3C(v4);
      }

      goto LABEL_16;
    }
  }

  v6 = v4;
LABEL_17:

  return v6;
}

- (id)operationStr
{
  v2 = [(T1SupervisoryBlock *)self operation]- 1;
  if (v2 > 4)
  {
    return @"resynch";
  }

  else
  {
    return *(&off_1000248F8 + v2);
  }
}

- (id)typeStr
{
  if ([(T1SupervisoryBlock *)self type])
  {
    return @"resp";
  }

  else
  {
    return @"req";
  }
}

- (id)description
{
  v3 = +[NSMutableString string];
  v8.receiver = self;
  v8.super_class = T1SupervisoryBlock;
  v4 = [(T1TPDUBlock *)&v8 description];
  [v3 appendFormat:@"{ %@", v4];

  v5 = [(T1SupervisoryBlock *)self operationStr];
  [v3 appendFormat:@"op: %@ ", v5];

  v6 = [(T1SupervisoryBlock *)self typeStr];
  [v3 appendFormat:@"type: %@ }", v6];

  return v3;
}

+ (id)supervisoryBlockWithNad:(unsigned __int8)a3 operation:(char)a4 type:(char)a5 informationField:(id)a6 redundancyCode:(char)a7
{
  v7 = a7;
  v8 = a5;
  v9 = a4;
  v22 = a3;
  v10 = a6;
  if (v9 >= 4)
  {
    [NSException raise:NSInvalidArgumentException format:@"Unsupported operation parameter"];
  }

  v11 = +[NSMutableData data];
  [v11 appendBytes:&v22 length:1];
  if (v8)
  {
    v12 = -32;
  }

  else
  {
    v12 = -64;
  }

  v21 = v12 | v9;
  [v11 appendBytes:&v21 length:1];
  v20 = [v10 length];
  [v11 appendBytes:&v20 length:1];
  if ([v10 length])
  {
    [v11 appendData:v10];
  }

  if (v7)
  {
    v18 = [RedundancyCheck crc16:v11];
    v13 = &v18;
    v14 = v11;
    v15 = 2;
  }

  else
  {
    v19 = [RedundancyCheck lrc:v11];
    v13 = &v19;
    v14 = v11;
    v15 = 1;
  }

  [v14 appendBytes:v13 length:v15];
  v16 = [[T1SupervisoryBlock alloc] initWithData:v11];

  return v16;
}

- (char)operation
{
  v2 = [(T1TPDUBlock *)self protocolControlByte]& 0x1F;
  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

- (unsigned)uint8Value
{
  v4 = 0;
  v2 = [(T1TPDUBlock *)self informationField];
  [v2 getBytes:&v4 length:1];

  return v4;
}

@end