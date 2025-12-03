@interface CCIDMessageView
+ (id)createWithData:(id)data;
- (CCIDMessageView)initWithData:(id)data;
- (CCIDMessageView)initWithLength:(unint64_t)length;
- (CCIDSlotStatus)status;
- (NSData)aPayload;
- (char)bError;
- (id)ICCStatusToString:(unsigned __int8)string;
- (id)commandStatusToString:(unsigned __int8)string;
- (id)description;
- (id)errorToString:(char)string;
- (unsigned)bBWI;
- (unsigned)bChainParameter;
- (unsigned)bPowerSelect;
- (unsigned)bProtocolNum;
- (unsigned)bSeq;
- (unsigned)bSlot;
- (unsigned)dwLength;
- (unsigned)messageType;
- (unsigned)wLevelParameter;
- (void)setBBWI:(unsigned __int8)i;
- (void)setBChainParameter:(unsigned __int8)parameter;
- (void)setBError:(char)error;
- (void)setBPowerSelect:(unsigned __int8)select;
- (void)setBProtocolNum:(unsigned __int8)num;
- (void)setBSeq:(unsigned __int8)seq;
- (void)setBSlot:(unsigned __int8)slot;
- (void)setDwLength:(unsigned int)length;
- (void)setMessageType:(unsigned __int8)type;
- (void)setPayload:(id)payload;
- (void)setStatus:(id)status;
- (void)setWLevelParameter:(unsigned __int16)parameter;
@end

@implementation CCIDMessageView

- (CCIDMessageView)initWithLength:(unint64_t)length
{
  v4.receiver = self;
  v4.super_class = CCIDMessageView;
  return [(TKDataView *)&v4 initWithLength:length];
}

- (CCIDMessageView)initWithData:(id)data
{
  v4.receiver = self;
  v4.super_class = CCIDMessageView;
  return [(TKDataView *)&v4 initWithData:data];
}

+ (id)createWithData:(id)data
{
  dataCopy = data;
  v4 = [[CCIDMessageView alloc] initWithData:dataCopy];

  return v4;
}

- (id)errorToString:(char)string
{
  if (string + 32) < 0x21 && ((0x1F9FD8001uLL >> (string + 32)))
  {
    string = *(&off_100024B28 + (string + 32));
  }

  else
  {
    string = [NSString stringWithFormat:@"0x%.2x", string];
  }

  return string;
}

- (id)ICCStatusToString:(unsigned __int8)string
{
  if (string > 2u)
  {
    return @"Undefined";
  }

  else
  {
    return *(&off_100024C30 + string);
  }
}

- (id)commandStatusToString:(unsigned __int8)string
{
  v3 = @"TimeExtension";
  v4 = @"Undefined";
  if (string == 64)
  {
    v4 = @"Failed";
  }

  if (string != 128)
  {
    v3 = v4;
  }

  if (string)
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
    status = [(CCIDMessageView *)self status];
    v6 = -[CCIDMessageView ICCStatusToString:](self, "ICCStatusToString:", [status bmICCStatus]);
    [v3 appendFormat:@"bmICCStatus: %@ ", v6];

    status2 = [(CCIDMessageView *)self status];
    v8 = -[CCIDMessageView commandStatusToString:](self, "commandStatusToString:", [status2 bmCommandStatus]);
    [v3 appendFormat:@"bmCommandStatus: %@ ", v8];

    status3 = [(CCIDMessageView *)self status];
    if ([status3 bmCommandStatus])
    {
    }

    else
    {
      bError = [(CCIDMessageView *)self bError];

      if (!bError)
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
  buffer = [(TKDataView *)self buffer];
  [buffer getBytes:&v4 range:{0, 1}];

  return v4;
}

- (void)setMessageType:(unsigned __int8)type
{
  typeCopy = type;
  mutableBuffer = [(TKDataView *)self mutableBuffer];
  [mutableBuffer replaceBytesInRange:0 withBytes:{1, &typeCopy}];
}

- (unsigned)dwLength
{
  v4 = 0;
  buffer = [(TKDataView *)self buffer];
  [buffer getBytes:&v4 range:{1, 4}];

  return v4;
}

- (void)setDwLength:(unsigned int)length
{
  lengthCopy = length;
  mutableBuffer = [(TKDataView *)self mutableBuffer];
  [mutableBuffer replaceBytesInRange:1 withBytes:{4, &lengthCopy}];
}

- (unsigned)bSlot
{
  v4 = 0;
  buffer = [(TKDataView *)self buffer];
  [buffer getBytes:&v4 range:{5, 1}];

  return v4;
}

- (void)setBSlot:(unsigned __int8)slot
{
  slotCopy = slot;
  mutableBuffer = [(TKDataView *)self mutableBuffer];
  [mutableBuffer replaceBytesInRange:5 withBytes:{1, &slotCopy}];
}

- (unsigned)bSeq
{
  v4 = 0;
  buffer = [(TKDataView *)self buffer];
  [buffer getBytes:&v4 range:{6, 1}];

  return v4;
}

- (void)setBSeq:(unsigned __int8)seq
{
  seqCopy = seq;
  mutableBuffer = [(TKDataView *)self mutableBuffer];
  [mutableBuffer replaceBytesInRange:6 withBytes:{1, &seqCopy}];
}

- (CCIDSlotStatus)status
{
  v3 = objc_opt_new();
  buffer = [(TKDataView *)self buffer];
  [buffer getBytes:objc_msgSend(v3 range:{"statusPtr"), 7, 1}];

  return v3;
}

- (void)setStatus:(id)status
{
  statusCopy = status;
  mutableBuffer = [(TKDataView *)self mutableBuffer];
  statusPtr = [statusCopy statusPtr];

  [mutableBuffer replaceBytesInRange:7 withBytes:{1, statusPtr}];
}

- (unsigned)bBWI
{
  v4 = 0;
  buffer = [(TKDataView *)self buffer];
  [buffer getBytes:&v4 range:{7, 1}];

  return v4;
}

- (void)setBBWI:(unsigned __int8)i
{
  iCopy = i;
  mutableBuffer = [(TKDataView *)self mutableBuffer];
  [mutableBuffer replaceBytesInRange:7 withBytes:{1, &iCopy}];
}

- (unsigned)bPowerSelect
{
  v4 = 0;
  buffer = [(TKDataView *)self buffer];
  [buffer getBytes:&v4 range:{7, 1}];

  return v4;
}

- (void)setBPowerSelect:(unsigned __int8)select
{
  selectCopy = select;
  mutableBuffer = [(TKDataView *)self mutableBuffer];
  [mutableBuffer replaceBytesInRange:7 withBytes:{1, &selectCopy}];
}

- (unsigned)bProtocolNum
{
  v4 = 0;
  buffer = [(TKDataView *)self buffer];
  [buffer getBytes:&v4 range:{7, 1}];

  return v4;
}

- (void)setBProtocolNum:(unsigned __int8)num
{
  numCopy = num;
  mutableBuffer = [(TKDataView *)self mutableBuffer];
  [mutableBuffer replaceBytesInRange:7 withBytes:{1, &numCopy}];
}

- (char)bError
{
  v4 = 0;
  buffer = [(TKDataView *)self buffer];
  [buffer getBytes:&v4 range:{8, 1}];

  return v4;
}

- (void)setBError:(char)error
{
  errorCopy = error;
  mutableBuffer = [(TKDataView *)self mutableBuffer];
  [mutableBuffer replaceBytesInRange:8 withBytes:{1, &errorCopy}];
}

- (unsigned)wLevelParameter
{
  v4 = 0;
  buffer = [(TKDataView *)self buffer];
  [buffer getBytes:&v4 range:{8, 2}];

  return v4;
}

- (void)setWLevelParameter:(unsigned __int16)parameter
{
  parameterCopy = parameter;
  mutableBuffer = [(TKDataView *)self mutableBuffer];
  [mutableBuffer replaceBytesInRange:8 withBytes:{2, &parameterCopy}];
}

- (unsigned)bChainParameter
{
  v4 = 0;
  buffer = [(TKDataView *)self buffer];
  [buffer getBytes:&v4 range:{9, 1}];

  return v4;
}

- (void)setBChainParameter:(unsigned __int8)parameter
{
  parameterCopy = parameter;
  mutableBuffer = [(TKDataView *)self mutableBuffer];
  [mutableBuffer replaceBytesInRange:8 withBytes:{1, &parameterCopy}];
}

- (NSData)aPayload
{
  buffer = [(TKDataView *)self buffer];
  v4 = [buffer length];
  v5 = qword_10002BF30;

  if (v4 <= v5)
  {
    v10 = 0;
  }

  else
  {
    buffer2 = [(TKDataView *)self buffer];
    v7 = qword_10002BF30;
    buffer3 = [(TKDataView *)self buffer];
    v9 = [buffer3 length];
    v10 = [buffer2 subdataWithRange:{v7, &v9[-qword_10002BF30]}];
  }

  return v10;
}

- (void)setPayload:(id)payload
{
  payloadCopy = payload;
  mutableBuffer = [(TKDataView *)self mutableBuffer];
  v5 = qword_10002BF30;
  v6 = [payloadCopy length];
  bytes = [payloadCopy bytes];

  [mutableBuffer replaceBytesInRange:v5 withBytes:{v6, bytes}];
}

@end