@interface ProtocolDataView
- (ProtocolDataView)initWithData:(id)data;
- (ProtocolDataView)initWithLength:(unint64_t)length;
- (unsigned)bClockStop;
- (unsigned)bGuardTime;
- (unsigned)bmFindexDindex;
- (unsigned)bmTCCKS;
- (void)setBClockStop:(unsigned __int8)stop;
- (void)setBGuardTime:(unsigned __int8)time;
- (void)setBmFindexDindex:(unsigned __int8)dindex;
- (void)setBmTCCKS:(unsigned __int8)s;
@end

@implementation ProtocolDataView

- (ProtocolDataView)initWithLength:(unint64_t)length
{
  v4.receiver = self;
  v4.super_class = ProtocolDataView;
  return [(TKDataView *)&v4 initWithLength:length];
}

- (ProtocolDataView)initWithData:(id)data
{
  v4.receiver = self;
  v4.super_class = ProtocolDataView;
  return [(TKDataView *)&v4 initWithData:data];
}

- (unsigned)bmFindexDindex
{
  v4 = 0;
  buffer = [(TKDataView *)self buffer];
  [buffer getBytes:&v4 range:{0, 1}];

  return v4;
}

- (void)setBmFindexDindex:(unsigned __int8)dindex
{
  dindexCopy = dindex;
  mutableBuffer = [(TKDataView *)self mutableBuffer];
  [mutableBuffer replaceBytesInRange:0 withBytes:{1, &dindexCopy}];
}

- (unsigned)bmTCCKS
{
  v4 = 0;
  buffer = [(TKDataView *)self buffer];
  [buffer getBytes:&v4 range:{1, 1}];

  return v4;
}

- (void)setBmTCCKS:(unsigned __int8)s
{
  sCopy = s;
  mutableBuffer = [(TKDataView *)self mutableBuffer];
  [mutableBuffer replaceBytesInRange:1 withBytes:{1, &sCopy}];
}

- (unsigned)bGuardTime
{
  v4 = 0;
  buffer = [(TKDataView *)self buffer];
  [buffer getBytes:&v4 range:{2, 1}];

  return v4;
}

- (void)setBGuardTime:(unsigned __int8)time
{
  timeCopy = time;
  mutableBuffer = [(TKDataView *)self mutableBuffer];
  [mutableBuffer replaceBytesInRange:2 withBytes:{1, &timeCopy}];
}

- (unsigned)bClockStop
{
  v4 = 0;
  buffer = [(TKDataView *)self buffer];
  [buffer getBytes:&v4 range:{4, 1}];

  return v4;
}

- (void)setBClockStop:(unsigned __int8)stop
{
  stopCopy = stop;
  mutableBuffer = [(TKDataView *)self mutableBuffer];
  [mutableBuffer replaceBytesInRange:4 withBytes:{1, &stopCopy}];
}

@end