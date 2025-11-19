@interface _BKSCancelTouchesTouchDeliveryPolicy
- (BOOL)isEqual:(id)a3;
- (_BKSCancelTouchesTouchDeliveryPolicy)initWithCoder:(id)a3;
- (_BKSCancelTouchesTouchDeliveryPolicy)initWithContextId:(unsigned int)a3 initialTouchTimestamp:(double)a4;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BKSCancelTouchesTouchDeliveryPolicy

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69___BKSCancelTouchesTouchDeliveryPolicy_appendDescriptionToFormatter___block_invoke;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_contextId == v5->_contextId && self->_initialTouchTimestamp == v5->_initialTouchTimestamp;
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendInteger:self->_contextId];
  v5 = [v3 appendDouble:self->_initialTouchTimestamp];
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

  contextId = self->_contextId;
  v5 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:@"ContextId"];
  [v10 encodeInt32:contextId forKey:v5];

  initialTouchTimestamp = self->_initialTouchTimestamp;
  v7 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:@"InitialTouchTimestamp"];
  [v10 encodeDouble:v7 forKey:initialTouchTimestamp];

  assertionEndpoint = self->_assertionEndpoint;
  v9 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:@"AssertionEndpoint"];
  [v10 encodeXPCObject:assertionEndpoint forKey:v9];
}

- (_BKSCancelTouchesTouchDeliveryPolicy)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"<%@: %p> may only be decoded by an NSXPCCoder.", objc_opt_class(), self}];
  }

  v5 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:@"ContextId"];
  v6 = [v4 decodeInt32ForKey:v5];

  v7 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:@"InitialTouchTimestamp"];
  [v4 decodeDoubleForKey:v7];
  v9 = v8;

  v10 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:@"AssertionEndpoint"];
  v11 = [v4 decodeXPCObjectOfType:MEMORY[0x1E69E9E90] forKey:v10];

  v12 = [(_BKSCancelTouchesTouchDeliveryPolicy *)self initWithContextId:v6 initialTouchTimestamp:v9];
  [(_BKSCancelTouchesTouchDeliveryPolicy *)v12 setAssertionEndpoint:v11];

  return v12;
}

- (_BKSCancelTouchesTouchDeliveryPolicy)initWithContextId:(unsigned int)a3 initialTouchTimestamp:(double)a4
{
  v7.receiver = self;
  v7.super_class = _BKSCancelTouchesTouchDeliveryPolicy;
  result = [(_BKSCancelTouchesTouchDeliveryPolicy *)&v7 init];
  if (result)
  {
    result->_contextId = a3;
    result->_initialTouchTimestamp = a4;
  }

  return result;
}

@end