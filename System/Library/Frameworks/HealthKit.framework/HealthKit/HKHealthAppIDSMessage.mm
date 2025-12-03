@interface HKHealthAppIDSMessage
- (HKHealthAppIDSMessage)initWithCoder:(id)coder;
- (HKHealthAppIDSMessage)initWithMessageKind:(int64_t)kind;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKHealthAppIDSMessage

- (HKHealthAppIDSMessage)initWithMessageKind:(int64_t)kind
{
  v8.receiver = self;
  v8.super_class = HKHealthAppIDSMessage;
  v4 = [(HKHealthAppIDSMessage *)&v8 init];
  v5 = v4;
  if (v4)
  {
    payload = v4->_payload;
    v4->_type = kind;
    v4->_payload = 0;
  }

  return v5;
}

- (HKHealthAppIDSMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HKHealthAppIDSMessage;
  v5 = [(HKHealthAppIDSMessage *)&v9 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v6 = [coderCopy decodeObjectForKey:@"payload"];
    payload = v5->_payload;
    v5->_payload = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeObject:self->_payload forKey:@"payload"];
}

@end