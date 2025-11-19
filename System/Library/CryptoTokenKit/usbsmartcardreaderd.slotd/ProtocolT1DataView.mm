@interface ProtocolT1DataView
+ (id)createWithData:(id)a3;
- (ProtocolT1DataView)init;
- (id)description;
- (unsigned)bIFSC;
- (unsigned)bNadValue;
- (unsigned)bmWaitingIntegers;
- (void)setBIFSC:(unsigned __int8)a3;
- (void)setBNadValue:(unsigned __int8)a3;
- (void)setBmWaitingIntegers:(unsigned __int8)a3;
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
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{3, 1}];

  return v4;
}

- (void)setBmWaitingIntegers:(unsigned __int8)a3
{
  v4 = a3;
  v3 = [(TKDataView *)self mutableBuffer];
  [v3 replaceBytesInRange:3 withBytes:{1, &v4}];
}

- (unsigned)bIFSC
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{5, 1}];

  return v4;
}

- (void)setBIFSC:(unsigned __int8)a3
{
  v4 = a3;
  v3 = [(TKDataView *)self mutableBuffer];
  [v3 replaceBytesInRange:5 withBytes:{1, &v4}];
}

- (unsigned)bNadValue
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{6, 1}];

  return v4;
}

- (void)setBNadValue:(unsigned __int8)a3
{
  v4 = a3;
  v3 = [(TKDataView *)self mutableBuffer];
  [v3 replaceBytesInRange:6 withBytes:{1, &v4}];
}

+ (id)createWithData:(id)a3
{
  v3 = a3;
  v4 = [(ProtocolDataView *)[ProtocolT1DataView alloc] initWithData:v3];

  return v4;
}

@end