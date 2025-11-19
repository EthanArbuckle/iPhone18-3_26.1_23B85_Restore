@interface ProtocolDataView
- (ProtocolDataView)initWithData:(id)a3;
- (ProtocolDataView)initWithLength:(unint64_t)a3;
- (unsigned)bClockStop;
- (unsigned)bGuardTime;
- (unsigned)bmFindexDindex;
- (unsigned)bmTCCKS;
- (void)setBClockStop:(unsigned __int8)a3;
- (void)setBGuardTime:(unsigned __int8)a3;
- (void)setBmFindexDindex:(unsigned __int8)a3;
- (void)setBmTCCKS:(unsigned __int8)a3;
@end

@implementation ProtocolDataView

- (ProtocolDataView)initWithLength:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = ProtocolDataView;
  return [(TKDataView *)&v4 initWithLength:a3];
}

- (ProtocolDataView)initWithData:(id)a3
{
  v4.receiver = self;
  v4.super_class = ProtocolDataView;
  return [(TKDataView *)&v4 initWithData:a3];
}

- (unsigned)bmFindexDindex
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{0, 1}];

  return v4;
}

- (void)setBmFindexDindex:(unsigned __int8)a3
{
  v4 = a3;
  v3 = [(TKDataView *)self mutableBuffer];
  [v3 replaceBytesInRange:0 withBytes:{1, &v4}];
}

- (unsigned)bmTCCKS
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{1, 1}];

  return v4;
}

- (void)setBmTCCKS:(unsigned __int8)a3
{
  v4 = a3;
  v3 = [(TKDataView *)self mutableBuffer];
  [v3 replaceBytesInRange:1 withBytes:{1, &v4}];
}

- (unsigned)bGuardTime
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{2, 1}];

  return v4;
}

- (void)setBGuardTime:(unsigned __int8)a3
{
  v4 = a3;
  v3 = [(TKDataView *)self mutableBuffer];
  [v3 replaceBytesInRange:2 withBytes:{1, &v4}];
}

- (unsigned)bClockStop
{
  v4 = 0;
  v2 = [(TKDataView *)self buffer];
  [v2 getBytes:&v4 range:{4, 1}];

  return v4;
}

- (void)setBClockStop:(unsigned __int8)a3
{
  v4 = a3;
  v3 = [(TKDataView *)self mutableBuffer];
  [v3 replaceBytesInRange:4 withBytes:{1, &v4}];
}

@end