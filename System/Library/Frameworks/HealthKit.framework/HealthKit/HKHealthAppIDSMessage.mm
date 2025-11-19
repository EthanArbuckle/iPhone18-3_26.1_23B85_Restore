@interface HKHealthAppIDSMessage
- (HKHealthAppIDSMessage)initWithCoder:(id)a3;
- (HKHealthAppIDSMessage)initWithMessageKind:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKHealthAppIDSMessage

- (HKHealthAppIDSMessage)initWithMessageKind:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = HKHealthAppIDSMessage;
  v4 = [(HKHealthAppIDSMessage *)&v8 init];
  v5 = v4;
  if (v4)
  {
    payload = v4->_payload;
    v4->_type = a3;
    v4->_payload = 0;
  }

  return v5;
}

- (HKHealthAppIDSMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKHealthAppIDSMessage;
  v5 = [(HKHealthAppIDSMessage *)&v9 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v6 = [v4 decodeObjectForKey:@"payload"];
    payload = v5->_payload;
    v5->_payload = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"type"];
  [v5 encodeObject:self->_payload forKey:@"payload"];
}

@end