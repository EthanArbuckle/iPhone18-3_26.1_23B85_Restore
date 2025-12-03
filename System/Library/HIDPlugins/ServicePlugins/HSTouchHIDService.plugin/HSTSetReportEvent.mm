@interface HSTSetReportEvent
- (HSTSetReportEvent)initWithBuffer:(void *)buffer length:(unint64_t)length;
@end

@implementation HSTSetReportEvent

- (HSTSetReportEvent)initWithBuffer:(void *)buffer length:(unint64_t)length
{
  v11.receiver = self;
  v11.super_class = HSTSetReportEvent;
  v6 = [(HSTEvent *)&v11 init];
  if (v6)
  {
    v7 = [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:0];
    report = v6->_report;
    v6->_report = v7;

    v9 = v6;
  }

  return v6;
}

@end