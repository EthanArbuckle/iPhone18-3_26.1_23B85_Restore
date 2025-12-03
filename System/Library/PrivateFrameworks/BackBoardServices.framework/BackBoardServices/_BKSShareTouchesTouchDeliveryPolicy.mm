@interface _BKSShareTouchesTouchDeliveryPolicy
- (BOOL)isEqual:(id)equal;
- (_BKSShareTouchesTouchDeliveryPolicy)initWithChildContextId:(unsigned int)id hostContextId:(unsigned int)contextId;
- (_BKSShareTouchesTouchDeliveryPolicy)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BKSShareTouchesTouchDeliveryPolicy

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68___BKSShareTouchesTouchDeliveryPolicy_appendDescriptionToFormatter___block_invoke;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_childContextId == v5->_childContextId && self->_hostContextId == v5->_hostContextId;
  }

  return v6;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendInteger:self->_childContextId];
  v5 = [builder appendInteger:self->_hostContextId];
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

  childContextId = self->_childContextId;
  v5 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:@"ChildContextId"];
  [coderCopy encodeInt32:childContextId forKey:v5];

  hostContextId = self->_hostContextId;
  v7 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:@"HostContextId"];
  [coderCopy encodeInt32:hostContextId forKey:v7];

  assertionEndpoint = self->_assertionEndpoint;
  v9 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:@"AssertionEndpoint"];
  [coderCopy encodeXPCObject:assertionEndpoint forKey:v9];
}

- (_BKSShareTouchesTouchDeliveryPolicy)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"<%@: %p> may only be decoded by an NSXPCCoder.", objc_opt_class(), self}];
  }

  v5 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:@"ChildContextId"];
  v6 = [coderCopy decodeInt32ForKey:v5];

  v7 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:@"HostContextId"];
  v8 = [coderCopy decodeInt32ForKey:v7];

  v9 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:@"AssertionEndpoint"];
  v10 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9E90] forKey:v9];

  v11 = [(_BKSShareTouchesTouchDeliveryPolicy *)self initWithChildContextId:v6 hostContextId:v8];
  [(_BKSShareTouchesTouchDeliveryPolicy *)v11 setAssertionEndpoint:v10];

  return v11;
}

- (_BKSShareTouchesTouchDeliveryPolicy)initWithChildContextId:(unsigned int)id hostContextId:(unsigned int)contextId
{
  v7.receiver = self;
  v7.super_class = _BKSShareTouchesTouchDeliveryPolicy;
  result = [(_BKSShareTouchesTouchDeliveryPolicy *)&v7 init];
  if (result)
  {
    result->_childContextId = id;
    result->_hostContextId = contextId;
  }

  return result;
}

@end