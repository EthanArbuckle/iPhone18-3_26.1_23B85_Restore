@interface HSTCopyEvent
- (HSTCopyEvent)initWithType:(unsigned int)a3 matching:(id)a4;
@end

@implementation HSTCopyEvent

- (HSTCopyEvent)initWithType:(unsigned int)a3 matching:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HSTCopyEvent;
  v8 = [(HSTEvent *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_matching, a4);
    v10 = v9;
  }

  return v9;
}

@end