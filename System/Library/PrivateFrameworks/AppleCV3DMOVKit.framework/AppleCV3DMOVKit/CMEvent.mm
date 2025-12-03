@interface CMEvent
- (CMEvent)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMEvent

- (CMEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CMEvent;
  v5 = [(CMEvent *)&v13 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v5->_eventType = [coderCopy decodeIntegerForKey:@"ev"];
    v7 = [coderCopy decodeObjectForKey:@"pd"];
    peerDisplayName = v5->_peerDisplayName;
    v5->_peerDisplayName = v7;

    v9 = [coderCopy decodeObjectForKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v9;

    [coderCopy decodeDoubleForKey:@"t"];
    v5->_timestamp = v11;
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  [coderCopy encodeInteger:self->_eventType forKey:@"ev"];
  [coderCopy encodeObject:self->_peerDisplayName forKey:@"pd"];
  [coderCopy encodeObject:self->_uuid forKey:@"uuid"];
  [coderCopy encodeDouble:@"t" forKey:self->_timestamp];
  objc_autoreleasePoolPop(v4);
}

@end