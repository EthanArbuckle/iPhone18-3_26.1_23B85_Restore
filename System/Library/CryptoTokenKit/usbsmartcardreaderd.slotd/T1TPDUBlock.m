@interface T1TPDUBlock
+ (BOOL)checkRedundacyCode:(id)a3 redundacyCode:(char)a4;
- (NSData)informationField;
- (NSNumber)redundancyCode;
- (T1TPDUBlock)initWithData:(id)a3 needAck:(BOOL)a4;
- (char)blockType;
- (char)redundancyCodeType;
- (id)blockSequenceStr;
- (id)blockTypeStr;
- (id)description;
- (unsigned)lengthByte;
- (unsigned)nodeAddressByte;
- (unsigned)protocolControlByte;
@end

@implementation T1TPDUBlock

- (T1TPDUBlock)initWithData:(id)a3 needAck:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = T1TPDUBlock;
  v8 = [(T1TPDUBlock *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_data, a3);
    v9->_needAck = a4;
  }

  return v9;
}

- (id)blockTypeStr
{
  v2 = [(T1TPDUBlock *)self blockType];
  v3 = @"I-Block";
  if (v2 == 1)
  {
    v3 = @"R-Block";
  }

  if (v2 == 2)
  {
    return @"S-Block";
  }

  else
  {
    return v3;
  }
}

- (id)blockSequenceStr
{
  v2 = [(T1TPDUBlock *)self sequence];
  v3 = @"Even";
  if (v2 == 1)
  {
    v3 = @"Odd";
  }

  if (v2 == 2)
  {
    return @"None";
  }

  else
  {
    return v3;
  }
}

- (id)description
{
  v3 = +[NSMutableString string];
  [v3 appendFormat:@"nad: 0x%.2x ", -[T1TPDUBlock nodeAddressByte](self, "nodeAddressByte")];
  [v3 appendFormat:@"pcb: 0x%.2x ", -[T1TPDUBlock protocolControlByte](self, "protocolControlByte")];
  [v3 appendFormat:@"len: 0x%.2x ", -[T1TPDUBlock lengthByte](self, "lengthByte")];
  if ([(T1TPDUBlock *)self lengthByte])
  {
    v4 = [(T1TPDUBlock *)self informationField];
    [v3 appendFormat:@"infField: %@ ", v4];
  }

  v5 = [(T1TPDUBlock *)self redundancyCodeType];
  v6 = [(T1TPDUBlock *)self redundancyCode];
  v7 = v6;
  if (v5)
  {
    [v3 appendFormat:@"crc: 0x%.4x ", objc_msgSend(v6, "unsignedShortValue")];
  }

  else
  {
    [v3 appendFormat:@"lrc: 0x%.2x ", objc_msgSend(v6, "unsignedCharValue")];
  }

  v8 = [(T1TPDUBlock *)self blockTypeStr];
  [v3 appendFormat:@"blockType: %@ ", v8];

  v9 = [(T1TPDUBlock *)self blockSequenceStr];
  [v3 appendFormat:@"seq: %@ ", v9];

  return v3;
}

+ (BOOL)checkRedundacyCode:(id)a3 redundacyCode:(char)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if (v4)
  {
    v15 = 0;
    [v5 getBytes:&v15 range:{objc_msgSend(v5, "length") - 1, 1}];
    v7 = v15;
    v8 = [v6 subdataWithRange:{0, objc_msgSend(v6, "length") - 1}];
    v9 = [RedundancyCheck crc16:v8]== v7;
  }

  else if ([v5 length])
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = v10;
      v13 = *([v6 bytes] + v11);
      v10 ^= v13;
      ++v11;
    }

    while (v11 < [v6 length]);
    v9 = v13 == v12;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (unsigned)nodeAddressByte
{
  v2 = [(T1TPDUBlock *)self data];
  v3 = *[v2 bytes];

  return v3;
}

- (unsigned)protocolControlByte
{
  v2 = [(T1TPDUBlock *)self data];
  v3 = *([v2 bytes] + 1);

  return v3;
}

- (unsigned)lengthByte
{
  v2 = [(T1TPDUBlock *)self data];
  v3 = *([v2 bytes] + 2);

  return v3;
}

- (NSData)informationField
{
  if (![(T1TPDUBlock *)self lengthByte])
  {
LABEL_6:
    v7 = 0;
    goto LABEL_8;
  }

  v3 = [(T1TPDUBlock *)self data];
  v4 = [v3 length];
  v5 = [(T1TPDUBlock *)self lengthByte]+ 3;

  if (v4 < v5)
  {
    v6 = sub_10000BF14();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100016B0C(self);
    }

    goto LABEL_6;
  }

  v8 = [(T1TPDUBlock *)self data];
  v7 = [v8 subdataWithRange:{3, -[T1TPDUBlock lengthByte](self, "lengthByte")}];

LABEL_8:

  return v7;
}

- (NSNumber)redundancyCode
{
  v3 = [(T1TPDUBlock *)self data];
  v4 = [v3 length];
  v5 = &v4[[(T1TPDUBlock *)self]];

  if (v5 == 4)
  {
    v6 = [(T1TPDUBlock *)self data];
    v7 = [v6 bytes];
    v8 = [(T1TPDUBlock *)self data];
    v9 = *([v8 length] + v7 - 1);

    v10 = [NSNumber numberWithUnsignedChar:v9];
  }

  else
  {
    v14 = 0;
    v11 = [(T1TPDUBlock *)self data];
    v12 = [(T1TPDUBlock *)self data];
    [v11 getBytes:&v14 range:{objc_msgSend(v12, "length") - 2, 2}];

    v10 = [NSNumber numberWithUnsignedShort:v14];
  }

  return v10;
}

- (char)blockType
{
  if (([(T1TPDUBlock *)self protocolControlByte]& 0x80) == 0)
  {
    return 0;
  }

  if (([(T1TPDUBlock *)self protocolControlByte]& 0xC0) == 0x80)
  {
    return 1;
  }

  return 2;
}

- (char)redundancyCodeType
{
  v2 = self;
  v3 = [(T1TPDUBlock *)self data];
  v4 = [v3 length];
  LOBYTE(v2) = &v4[[(T1TPDUBlock *)v2]] != 4;

  return v2;
}

@end