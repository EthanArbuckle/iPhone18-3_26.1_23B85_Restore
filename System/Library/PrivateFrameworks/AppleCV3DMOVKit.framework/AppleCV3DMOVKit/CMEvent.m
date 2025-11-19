@interface CMEvent
- (CMEvent)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMEvent

- (CMEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CMEvent;
  v5 = [(CMEvent *)&v13 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v5->_eventType = [v4 decodeIntegerForKey:@"ev"];
    v7 = [v4 decodeObjectForKey:@"pd"];
    peerDisplayName = v5->_peerDisplayName;
    v5->_peerDisplayName = v7;

    v9 = [v4 decodeObjectForKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v9;

    [v4 decodeDoubleForKey:@"t"];
    v5->_timestamp = v11;
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = objc_autoreleasePoolPush();
  [v5 encodeInteger:self->_eventType forKey:@"ev"];
  [v5 encodeObject:self->_peerDisplayName forKey:@"pd"];
  [v5 encodeObject:self->_uuid forKey:@"uuid"];
  [v5 encodeDouble:@"t" forKey:self->_timestamp];
  objc_autoreleasePoolPop(v4);
}

@end