@interface HSTVendorEvent
- (HSTVendorEvent)initWithType:(unsigned __int16)a3 buffer:(const void *)a4 length:(unint64_t)a5;
@end

@implementation HSTVendorEvent

- (HSTVendorEvent)initWithType:(unsigned __int16)a3 buffer:(const void *)a4 length:(unint64_t)a5
{
  v14.receiver = self;
  v14.super_class = HSTVendorEvent;
  v8 = [(HSTEvent *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    v10 = [NSData dataWithBytes:a4 length:a5];
    data = v9->_data;
    v9->_data = v10;

    v12 = v9;
  }

  return v9;
}

@end