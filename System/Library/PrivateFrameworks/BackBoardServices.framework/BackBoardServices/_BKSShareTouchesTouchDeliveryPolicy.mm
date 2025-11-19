@interface _BKSShareTouchesTouchDeliveryPolicy
- (BOOL)isEqual:(id)a3;
- (_BKSShareTouchesTouchDeliveryPolicy)initWithChildContextId:(unsigned int)a3 hostContextId:(unsigned int)a4;
- (_BKSShareTouchesTouchDeliveryPolicy)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BKSShareTouchesTouchDeliveryPolicy

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68___BKSShareTouchesTouchDeliveryPolicy_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_1E6F47C78;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:0 block:v6];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_childContextId == v5->_childContextId && self->_hostContextId == v5->_hostContextId;
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendInteger:self->_childContextId];
  v5 = [v3 appendInteger:self->_hostContextId];
  v6 = [v3 hash];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"<%@: %p> may only be encoded by an NSXPCCoder.", objc_opt_class(), self}];
  }

  childContextId = self->_childContextId;
  v5 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:@"ChildContextId"];
  [v10 encodeInt32:childContextId forKey:v5];

  hostContextId = self->_hostContextId;
  v7 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:@"HostContextId"];
  [v10 encodeInt32:hostContextId forKey:v7];

  assertionEndpoint = self->_assertionEndpoint;
  v9 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:@"AssertionEndpoint"];
  [v10 encodeXPCObject:assertionEndpoint forKey:v9];
}

- (_BKSShareTouchesTouchDeliveryPolicy)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"<%@: %p> may only be decoded by an NSXPCCoder.", objc_opt_class(), self}];
  }

  v5 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:@"ChildContextId"];
  v6 = [v4 decodeInt32ForKey:v5];

  v7 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:@"HostContextId"];
  v8 = [v4 decodeInt32ForKey:v7];

  v9 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:@"AssertionEndpoint"];
  v10 = [v4 decodeXPCObjectOfType:MEMORY[0x1E69E9E90] forKey:v9];

  v11 = [(_BKSShareTouchesTouchDeliveryPolicy *)self initWithChildContextId:v6 hostContextId:v8];
  [(_BKSShareTouchesTouchDeliveryPolicy *)v11 setAssertionEndpoint:v10];

  return v11;
}

- (_BKSShareTouchesTouchDeliveryPolicy)initWithChildContextId:(unsigned int)a3 hostContextId:(unsigned int)a4
{
  v7.receiver = self;
  v7.super_class = _BKSShareTouchesTouchDeliveryPolicy;
  result = [(_BKSShareTouchesTouchDeliveryPolicy *)&v7 init];
  if (result)
  {
    result->_childContextId = a3;
    result->_hostContextId = a4;
  }

  return result;
}

@end