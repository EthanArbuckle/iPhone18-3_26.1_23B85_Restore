@interface ProtocolT1DataView
+ (id)createWithData:(id)data;
- (ProtocolT1DataView)init;
- (id)description;
- (unsigned)bIFSC;
- (unsigned)bNadValue;
- (unsigned)bmWaitingIntegers;
- (void)setBIFSC:(unsigned __int8)c;
- (void)setBNadValue:(unsigned __int8)value;
- (void)setBmWaitingIntegers:(unsigned __int8)integers;
@end

@implementation ProtocolT1DataView

- (ProtocolT1DataView)init
{
  v3.receiver = self;
  v3.super_class = ProtocolT1DataView;
  return [(ProtocolDataView *)&v3 initWithLength:+[ProtocolT1DataView length]];
}

- (id)description
{
  v3 = +[NSMutableString string];
  [v3 appendFormat:@"{ protocol: T1 bmFindexDindex: 0x%.2x ", -[ProtocolDataView bmFindexDindex](self, "bmFindexDindex")];
  [v3 appendFormat:@"bmTCCKST: %d ", -[ProtocolDataView bmTCCKS](self, "bmTCCKS")];
  [v3 appendFormat:@"bGuardTime: %d ", -[ProtocolDataView bGuardTime](self, "bGuardTime")];
  [v3 appendFormat:@"bmWaitingIntegers: 0x%1x ", -[ProtocolT1DataView bmWaitingIntegers](self, "bmWaitingIntegers")];
  [v3 appendFormat:@"bClockStop: %d ", -[ProtocolDataView bClockStop](self, "bClockStop")];
  [v3 appendFormat:@"bIFSC: %d ", -[ProtocolT1DataView bIFSC](self, "bIFSC")];
  [v3 appendFormat:@"bNadValue: %d }", -[ProtocolT1DataView bNadValue](self, "bNadValue")];

  return v3;
}

- (unsigned)bmWaitingIntegers
{
  v4 = 0;
  buffer = [(TKDataView *)self buffer];
  [buffer getBytes:&v4 range:{3, 1}];

  return v4;
}

- (void)setBmWaitingIntegers:(unsigned __int8)integers
{
  integersCopy = integers;
  mutableBuffer = [(TKDataView *)self mutableBuffer];
  [mutableBuffer replaceBytesInRange:3 withBytes:{1, &integersCopy}];
}

- (unsigned)bIFSC
{
  v4 = 0;
  buffer = [(TKDataView *)self buffer];
  [buffer getBytes:&v4 range:{5, 1}];

  return v4;
}

- (void)setBIFSC:(unsigned __int8)c
{
  cCopy = c;
  mutableBuffer = [(TKDataView *)self mutableBuffer];
  [mutableBuffer replaceBytesInRange:5 withBytes:{1, &cCopy}];
}

- (unsigned)bNadValue
{
  v4 = 0;
  buffer = [(TKDataView *)self buffer];
  [buffer getBytes:&v4 range:{6, 1}];

  return v4;
}

- (void)setBNadValue:(unsigned __int8)value
{
  valueCopy = value;
  mutableBuffer = [(TKDataView *)self mutableBuffer];
  [mutableBuffer replaceBytesInRange:6 withBytes:{1, &valueCopy}];
}

+ (id)createWithData:(id)data
{
  dataCopy = data;
  v4 = [(ProtocolDataView *)[ProtocolT1DataView alloc] initWithData:dataCopy];

  return v4;
}

@end