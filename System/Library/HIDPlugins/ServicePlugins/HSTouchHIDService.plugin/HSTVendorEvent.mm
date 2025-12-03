@interface HSTVendorEvent
- (HSTVendorEvent)initWithType:(unsigned __int16)type buffer:(const void *)buffer length:(unint64_t)length;
@end

@implementation HSTVendorEvent

- (HSTVendorEvent)initWithType:(unsigned __int16)type buffer:(const void *)buffer length:(unint64_t)length
{
  v14.receiver = self;
  v14.super_class = HSTVendorEvent;
  v8 = [(HSTEvent *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    v10 = [NSData dataWithBytes:buffer length:length];
    data = v9->_data;
    v9->_data = v10;

    v12 = v9;
  }

  return v9;
}

@end