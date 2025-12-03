@interface _BKSCancelTouchesTouchDeliveryPolicy
- (BOOL)isEqual:(id)equal;
- (_BKSCancelTouchesTouchDeliveryPolicy)initWithCoder:(id)coder;
- (_BKSCancelTouchesTouchDeliveryPolicy)initWithContextId:(unsigned int)id initialTouchTimestamp:(double)timestamp;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BKSCancelTouchesTouchDeliveryPolicy

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69___BKSCancelTouchesTouchDeliveryPolicy_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_1E6F47C78;
  v7 = formatterCopy;
  selfCopy = self;
  v5 = formatterCopy;
  [v5 appendProem:0 block:v6];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_contextId == v5->_contextId && self->_initialTouchTimestamp == v5->_initialTouchTimestamp;
  }

  return v6;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendInteger:self->_contextId];
  v5 = [builder appendDouble:self->_initialTouchTimestamp];
  v6 = [builder hash];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"<%@: %p> may only be encoded by an NSXPCCoder.", objc_opt_class(), self}];
  }

  contextId = self->_contextId;
  v5 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:@"ContextId"];
  [coderCopy encodeInt32:contextId forKey:v5];

  initialTouchTimestamp = self->_initialTouchTimestamp;
  v7 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:@"InitialTouchTimestamp"];
  [coderCopy encodeDouble:v7 forKey:initialTouchTimestamp];

  assertionEndpoint = self->_assertionEndpoint;
  v9 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:@"AssertionEndpoint"];
  [coderCopy encodeXPCObject:assertionEndpoint forKey:v9];
}

- (_BKSCancelTouchesTouchDeliveryPolicy)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"<%@: %p> may only be decoded by an NSXPCCoder.", objc_opt_class(), self}];
  }

  v5 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:@"ContextId"];
  v6 = [coderCopy decodeInt32ForKey:v5];

  v7 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:@"InitialTouchTimestamp"];
  [coderCopy decodeDoubleForKey:v7];
  v9 = v8;

  v10 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:@"AssertionEndpoint"];
  v11 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9E90] forKey:v10];

  v12 = [(_BKSCancelTouchesTouchDeliveryPolicy *)self initWithContextId:v6 initialTouchTimestamp:v9];
  [(_BKSCancelTouchesTouchDeliveryPolicy *)v12 setAssertionEndpoint:v11];

  return v12;
}

- (_BKSCancelTouchesTouchDeliveryPolicy)initWithContextId:(unsigned int)id initialTouchTimestamp:(double)timestamp
{
  v7.receiver = self;
  v7.super_class = _BKSCancelTouchesTouchDeliveryPolicy;
  result = [(_BKSCancelTouchesTouchDeliveryPolicy *)&v7 init];
  if (result)
  {
    result->_contextId = id;
    result->_initialTouchTimestamp = timestamp;
  }

  return result;
}

@end