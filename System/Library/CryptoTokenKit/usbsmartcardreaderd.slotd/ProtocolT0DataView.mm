@interface ProtocolT0DataView
+ (id)createWithData:(id)a3;
- (ProtocolT0DataView)init;
- (id)description;
- (unsigned)bWaitingInteger;
- (void)setBWaitingInteger:(unsigned __int8)a3;
@end

@implementation ProtocolT0DataView

- (ProtocolT0DataView)init
{
  v3.receiver = self;
  v3.super_class = ProtocolT0DataView;
  return [(ProtocolDataView *)&v3 initWithLength:+[ProtocolT0DataView length]];
}

- (id)description
{
  v3 = +[NSMutableString string];
  [v3 appendFormat:@"{ protocol: T0 bmFindexDindex: 0x%.2x ", -[ProtocolDataView bmFindexDindex](self, "bmFindexDindex")];
  [v3 appendFormat:@"bmTCCKS: %d ", -[ProtocolDataView bmTCCKS](self, "bmTCCKS")];
  [v3 appendFormat:@"bGuardTime: %d ", -[ProtocolDataView bGuardTime](self, "bGuardTime")];
  [v3 appendFormat:@"bWaitingInteger: %d ", -[ProtocolT0DataView bWaitingInteger](self, "bWaitingInteger")];
  [v3 appendFormat:@"bClockStop: %d }", -[ProtocolDataView bClockStop](self, "bClockStop")];

  return v3;
}

- (unsigned)bWaitingInteger
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{3, 1}];

  return v4;
}

- (void)setBWaitingInteger:(unsigned __int8)a3
{
  v4 = a3;
  v3 = [(TKDataView *)self mutableBuffer];
  [v3 replaceBytesInRange:3 withBytes:{1, &v4}];
}

+ (id)createWithData:(id)a3
{
  v3 = a3;
  v4 = [(ProtocolDataView *)[ProtocolT0DataView alloc] initWithData:v3];

  return v4;
}

@end