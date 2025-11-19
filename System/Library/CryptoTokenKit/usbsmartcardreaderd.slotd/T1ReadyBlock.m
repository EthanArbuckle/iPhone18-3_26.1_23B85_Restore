@interface T1ReadyBlock
+ (id)readyBlockWithNad:(unsigned __int8)a3 sequence:(unsigned __int8)a4 status:(char)a5 redundancyCode:(char)a6;
- (T1ReadyBlock)initWithData:(id)a3;
- (char)status;
- (id)description;
- (id)statusStr;
@end

@implementation T1ReadyBlock

- (T1ReadyBlock)initWithData:(id)a3
{
  v8.receiver = self;
  v8.super_class = T1ReadyBlock;
  v3 = [(T1TPDUBlock *)&v8 initWithData:a3 needAck:0];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_9;
  }

  if ([(T1ReadyBlock *)v3 status]< 3)
  {
    if ([(T1TPDUBlock *)v4 lengthByte])
    {
      v5 = sub_10000BF14();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100016BC4(v4);
      }

      goto LABEL_8;
    }

LABEL_9:
    v6 = v4;
    goto LABEL_10;
  }

  v5 = sub_10000BF14();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100016C44(v4);
  }

LABEL_8:

  v6 = 0;
LABEL_10:

  return v6;
}

- (id)statusStr
{
  v2 = [(T1ReadyBlock *)self status]- 1;
  if (v2 > 2)
  {
    return @"OK";
  }

  else
  {
    return *(&off_1000248E0 + v2);
  }
}

- (id)description
{
  v3 = +[NSMutableString string];
  v7.receiver = self;
  v7.super_class = T1ReadyBlock;
  v4 = [(T1TPDUBlock *)&v7 description];
  [v3 appendFormat:@"{ %@", v4];

  v5 = [(T1ReadyBlock *)self statusStr];
  [v3 appendFormat:@"status: %@ }", v5];

  return v3;
}

+ (id)readyBlockWithNad:(unsigned __int8)a3 sequence:(unsigned __int8)a4 status:(char)a5 redundancyCode:(char)a6
{
  v6 = a6;
  v8 = a4;
  v20 = a3;
  if (a5 >= 3)
  {
    [NSException raise:NSInvalidArgumentException format:@"Unsupported operation parameter"];
  }

  v9 = +[NSMutableData data];
  [v9 appendBytes:&v20 length:1];
  if (v8)
  {
    v10 = -112;
  }

  else
  {
    v10 = 0x80;
  }

  v19 = v10 | a5;
  [v9 appendBytes:&v19 length:1];
  v18 = 0;
  [v9 appendBytes:&v18 length:1];
  if (v6)
  {
    v16 = [RedundancyCheck crc16:v9];
    v11 = &v16;
    v12 = v9;
    v13 = 2;
  }

  else
  {
    v17 = [RedundancyCheck lrc:v9];
    v11 = &v17;
    v12 = v9;
    v13 = 1;
  }

  [v12 appendBytes:v11 length:v13];
  v14 = [[T1ReadyBlock alloc] initWithData:v9];

  return v14;
}

- (char)status
{
  v2 = [(T1TPDUBlock *)self protocolControlByte]& 0xF;
  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

@end