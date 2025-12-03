@interface HSTCopyEvent
- (HSTCopyEvent)initWithType:(unsigned int)type matching:(id)matching;
@end

@implementation HSTCopyEvent

- (HSTCopyEvent)initWithType:(unsigned int)type matching:(id)matching
{
  matchingCopy = matching;
  v12.receiver = self;
  v12.super_class = HSTCopyEvent;
  v8 = [(HSTEvent *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_matching, matching);
    v10 = v9;
  }

  return v9;
}

@end