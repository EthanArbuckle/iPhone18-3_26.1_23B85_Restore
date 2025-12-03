@interface T1TPDUBlock
+ (BOOL)checkRedundacyCode:(id)code redundacyCode:(char)redundacyCode;
- (NSData)informationField;
- (NSNumber)redundancyCode;
- (T1TPDUBlock)initWithData:(id)data needAck:(BOOL)ack;
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

- (T1TPDUBlock)initWithData:(id)data needAck:(BOOL)ack
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = T1TPDUBlock;
  v8 = [(T1TPDUBlock *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_data, data);
    v9->_needAck = ack;
  }

  return v9;
}

- (id)blockTypeStr
{
  blockType = [(T1TPDUBlock *)self blockType];
  v3 = @"I-Block";
  if (blockType == 1)
  {
    v3 = @"R-Block";
  }

  if (blockType == 2)
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
  sequence = [(T1TPDUBlock *)self sequence];
  v3 = @"Even";
  if (sequence == 1)
  {
    v3 = @"Odd";
  }

  if (sequence == 2)
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
    informationField = [(T1TPDUBlock *)self informationField];
    [v3 appendFormat:@"infField: %@ ", informationField];
  }

  redundancyCodeType = [(T1TPDUBlock *)self redundancyCodeType];
  redundancyCode = [(T1TPDUBlock *)self redundancyCode];
  v7 = redundancyCode;
  if (redundancyCodeType)
  {
    [v3 appendFormat:@"crc: 0x%.4x ", objc_msgSend(redundancyCode, "unsignedShortValue")];
  }

  else
  {
    [v3 appendFormat:@"lrc: 0x%.2x ", objc_msgSend(redundancyCode, "unsignedCharValue")];
  }

  blockTypeStr = [(T1TPDUBlock *)self blockTypeStr];
  [v3 appendFormat:@"blockType: %@ ", blockTypeStr];

  blockSequenceStr = [(T1TPDUBlock *)self blockSequenceStr];
  [v3 appendFormat:@"seq: %@ ", blockSequenceStr];

  return v3;
}

+ (BOOL)checkRedundacyCode:(id)code redundacyCode:(char)redundacyCode
{
  redundacyCodeCopy = redundacyCode;
  codeCopy = code;
  v6 = codeCopy;
  if (redundacyCodeCopy)
  {
    v15 = 0;
    [codeCopy getBytes:&v15 range:{objc_msgSend(codeCopy, "length") - 1, 1}];
    v7 = v15;
    v8 = [v6 subdataWithRange:{0, objc_msgSend(v6, "length") - 1}];
    v9 = [RedundancyCheck crc16:v8]== v7;
  }

  else if ([codeCopy length])
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
  data = [(T1TPDUBlock *)self data];
  v3 = *[data bytes];

  return v3;
}

- (unsigned)protocolControlByte
{
  data = [(T1TPDUBlock *)self data];
  v3 = *([data bytes] + 1);

  return v3;
}

- (unsigned)lengthByte
{
  data = [(T1TPDUBlock *)self data];
  v3 = *([data bytes] + 2);

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

  data = [(T1TPDUBlock *)self data];
  v4 = [data length];
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

  data2 = [(T1TPDUBlock *)self data];
  v7 = [data2 subdataWithRange:{3, -[T1TPDUBlock lengthByte](self, "lengthByte")}];

LABEL_8:

  return v7;
}

- (NSNumber)redundancyCode
{
  data = [(T1TPDUBlock *)self data];
  v4 = [data length];
  v5 = &v4[[(T1TPDUBlock *)self]];

  if (v5 == 4)
  {
    data2 = [(T1TPDUBlock *)self data];
    bytes = [data2 bytes];
    data3 = [(T1TPDUBlock *)self data];
    v9 = *([data3 length] + bytes - 1);

    v10 = [NSNumber numberWithUnsignedChar:v9];
  }

  else
  {
    v14 = 0;
    data4 = [(T1TPDUBlock *)self data];
    data5 = [(T1TPDUBlock *)self data];
    [data4 getBytes:&v14 range:{objc_msgSend(data5, "length") - 2, 2}];

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
  selfCopy = self;
  data = [(T1TPDUBlock *)self data];
  v4 = [data length];
  LOBYTE(selfCopy) = &v4[[(T1TPDUBlock *)selfCopy]] != 4;

  return selfCopy;
}

@end