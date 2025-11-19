@interface CCIDMessageView
+ (id)createWithData:(id)a3;
- (CCIDMessageView)initWithData:(id)a3;
- (CCIDMessageView)initWithLength:(unint64_t)a3;
- (CCIDSlotStatus)status;
- (NSData)aPayload;
- (char)bError;
- (id)ICCStatusToString:(unsigned __int8)a3;
- (id)commandStatusToString:(unsigned __int8)a3;
- (id)description;
- (id)errorToString:(char)a3;
- (unsigned)bBWI;
- (unsigned)bChainParameter;
- (unsigned)bPowerSelect;
- (unsigned)bProtocolNum;
- (unsigned)bSeq;
- (unsigned)bSlot;
- (unsigned)dwLength;
- (unsigned)messageType;
- (unsigned)wLevelParameter;
- (void)setBBWI:(unsigned __int8)a3;
- (void)setBChainParameter:(unsigned __int8)a3;
- (void)setBError:(char)a3;
- (void)setBPowerSelect:(unsigned __int8)a3;
- (void)setBProtocolNum:(unsigned __int8)a3;
- (void)setBSeq:(unsigned __int8)a3;
- (void)setBSlot:(unsigned __int8)a3;
- (void)setDwLength:(unsigned int)a3;
- (void)setMessageType:(unsigned __int8)a3;
- (void)setPayload:(id)a3;
- (void)setStatus:(id)a3;
- (void)setWLevelParameter:(unsigned __int16)a3;
@end

@implementation CCIDMessageView

- (CCIDMessageView)initWithLength:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = CCIDMessageView;
  return [(TKDataView *)&v4 initWithLength:a3];
}

- (CCIDMessageView)initWithData:(id)a3
{
  v4.receiver = self;
  v4.super_class = CCIDMessageView;
  return [(TKDataView *)&v4 initWithData:a3];
}

+ (id)createWithData:(id)a3
{
  v3 = a3;
  v4 = [[CCIDMessageView alloc] initWithData:v3];

  return v4;
}

- (id)errorToString:(char)a3
{
  if (a3 + 32) < 0x21 && ((0x1F9FD8001uLL >> (a3 + 32)))
  {
    v4 = *(&off_100024B28 + (a3 + 32));
  }

  else
  {
    v4 = [NSString stringWithFormat:@"0x%.2x", a3];
  }

  return v4;
}

- (id)ICCStatusToString:(unsigned __int8)a3
{
  if (a3 > 2u)
  {
    return @"Undefined";
  }

  else
  {
    return *(&off_100024C30 + a3);
  }
}

- (id)commandStatusToString:(unsigned __int8)a3
{
  v3 = @"TimeExtension";
  v4 = @"Undefined";
  if (a3 == 64)
  {
    v4 = @"Failed";
  }

  if (a3 != 128)
  {
    v3 = v4;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"OK";
  }
}

- (id)description
{
  v3 = +[NSMutableString string];
  v4 = [(CCIDMessageView *)self messageTypeToString:[(CCIDMessageView *)self messageType]];
  [v3 appendFormat:@"{ messageType: %@ ", v4];

  [v3 appendFormat:@"dwLength: %d ", -[CCIDMessageView dwLength](self, "dwLength")];
  [v3 appendFormat:@"bSlot: %d ", -[CCIDMessageView bSlot](self, "bSlot")];
  [v3 appendFormat:@"bSeq: %d ", -[CCIDMessageView bSeq](self, "bSeq")];
  [v3 appendFormat:@"bChainParameter: %d ", -[CCIDMessageView bChainParameter](self, "bChainParameter")];
  if ([(CCIDMessageView *)self messageType]== 128 || [(CCIDMessageView *)self messageType]== 129 || [(CCIDMessageView *)self messageType]== 130 || [(CCIDMessageView *)self messageType]== 132)
  {
    [v3 appendString:@"errorAndStatus: { "];
    v5 = [(CCIDMessageView *)self status];
    v6 = -[CCIDMessageView ICCStatusToString:](self, "ICCStatusToString:", [v5 bmICCStatus]);
    [v3 appendFormat:@"bmICCStatus: %@ ", v6];

    v7 = [(CCIDMessageView *)self status];
    v8 = -[CCIDMessageView commandStatusToString:](self, "commandStatusToString:", [v7 bmCommandStatus]);
    [v3 appendFormat:@"bmCommandStatus: %@ ", v8];

    v9 = [(CCIDMessageView *)self status];
    if ([v9 bmCommandStatus])
    {
    }

    else
    {
      v10 = [(CCIDMessageView *)self bError];

      if (!v10)
      {
LABEL_9:
        [v3 appendString:@" }"];
        goto LABEL_10;
      }
    }

    v11 = [(CCIDMessageView *)self errorToString:[(CCIDMessageView *)self bError]];
    [v3 appendFormat:@"bError: %@ ", v11];

    goto LABEL_9;
  }

  if ([(CCIDMessageView *)self messageType]== 98)
  {
    [v3 appendFormat:@"bPowerSelect: %d ", -[CCIDMessageView bPowerSelect](self, "bPowerSelect")];
  }

LABEL_10:
  [v3 appendString:@" }"];

  return v3;
}

- (unsigned)messageType
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{0, 1}];

  return v4;
}

- (void)setMessageType:(unsigned __int8)a3
{
  v4 = a3;
  v3 = [(TKDataView *)self mutableBuffer];
  [v3 replaceBytesInRange:0 withBytes:{1, &v4}];
}

- (unsigned)dwLength
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{1, 4}];

  return v4;
}

- (void)setDwLength:(unsigned int)a3
{
  v4 = a3;
  v3 = [(TKDataView *)self mutableBuffer];
  [v3 replaceBytesInRange:1 withBytes:{4, &v4}];
}

- (unsigned)bSlot
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{5, 1}];

  return v4;
}

- (void)setBSlot:(unsigned __int8)a3
{
  v4 = a3;
  v3 = [(TKDataView *)self mutableBuffer];
  [v3 replaceBytesInRange:5 withBytes:{1, &v4}];
}

- (unsigned)bSeq
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{6, 1}];

  return v4;
}

- (void)setBSeq:(unsigned __int8)a3
{
  v4 = a3;
  v3 = [(TKDataView *)self mutableBuffer];
  [v3 replaceBytesInRange:6 withBytes:{1, &v4}];
}

- (CCIDSlotStatus)status
{
  v3 = objc_opt_new();
  v4 = [(TKDataView *)self buffer];
  [v4 getBytes:objc_msgSend(v3 range:{"statusPtr"), 7, 1}];

  return v3;
}

- (void)setStatus:(id)a3
{
  v4 = a3;
  v6 = [(TKDataView *)self mutableBuffer];
  v5 = [v4 statusPtr];

  [v6 replaceBytesInRange:7 withBytes:{1, v5}];
}

- (unsigned)bBWI
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{7, 1}];

  return v4;
}

- (void)setBBWI:(unsigned __int8)a3
{
  v4 = a3;
  v3 = [(TKDataView *)self mutableBuffer];
  [v3 replaceBytesInRange:7 withBytes:{1, &v4}];
}

- (unsigned)bPowerSelect
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{7, 1}];

  return v4;
}

- (void)setBPowerSelect:(unsigned __int8)a3
{
  v4 = a3;
  v3 = [(TKDataView *)self mutableBuffer];
  [v3 replaceBytesInRange:7 withBytes:{1, &v4}];
}

- (unsigned)bProtocolNum
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{7, 1}];

  return v4;
}

- (void)setBProtocolNum:(unsigned __int8)a3
{
  v4 = a3;
  v3 = [(TKDataView *)self mutableBuffer];
  [v3 replaceBytesInRange:7 withBytes:{1, &v4}];
}

- (char)bError
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{8, 1}];

  return v4;
}

- (void)setBError:(char)a3
{
  v4 = a3;
  v3 = [(TKDataView *)self mutableBuffer];
  [v3 replaceBytesInRange:8 withBytes:{1, &v4}];
}

- (unsigned)wLevelParameter
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{8, 2}];

  return v4;
}

- (void)setWLevelParameter:(unsigned __int16)a3
{
  v4 = a3;
  v3 = [(TKDataView *)self mutableBuffer];
  [v3 replaceBytesInRange:8 withBytes:{2, &v4}];
}

- (unsigned)bChainParameter
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{9, 1}];

  return v4;
}

- (void)setBChainParameter:(unsigned __int8)a3
{
  v4 = a3;
  v3 = [(TKDataView *)self mutableBuffer];
  [v3 replaceBytesInRange:8 withBytes:{1, &v4}];
}

- (NSData)aPayload
{
  v3 = [(TKDataView *)self buffer];
  v4 = [v3 length];
  v5 = qword_10002BF30;

  if (v4 <= v5)
  {
    v10 = 0;
  }

  else
  {
    v6 = [(TKDataView *)self buffer];
    v7 = qword_10002BF30;
    v8 = [(TKDataView *)self buffer];
    v9 = [v8 length];
    v10 = [v6 subdataWithRange:{v7, &v9[-qword_10002BF30]}];
  }

  return v10;
}

- (void)setPayload:(id)a3
{
  v4 = a3;
  v8 = [(TKDataView *)self mutableBuffer];
  v5 = qword_10002BF30;
  v6 = [v4 length];
  v7 = [v4 bytes];

  [v8 replaceBytesInRange:v5 withBytes:{v6, v7}];
}

@end