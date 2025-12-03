@interface _BKSCombinedTouchDeliveryPolicy
- (BOOL)isEqual:(id)equal;
- (_BKSCombinedTouchDeliveryPolicy)initWithCoder:(id)coder;
- (_BKSCombinedTouchDeliveryPolicy)initWithPolicies:(id)policies;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BKSCombinedTouchDeliveryPolicy

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  policies = [(_BKSCombinedTouchDeliveryPolicy *)self policies];
  v5 = [formatterCopy appendObject:policies withName:@"combination"];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(NSArray *)self->_policies isEqualToArray:v5->_policies];
  }

  return v6;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  policies = [(_BKSCombinedTouchDeliveryPolicy *)self policies];
  v5 = [builder appendObject:policies];

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

  policies = [(_BKSCombinedTouchDeliveryPolicy *)self policies];
  v5 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:@"Policies"];
  [coderCopy encodeObject:policies forKey:v5];
}

- (_BKSCombinedTouchDeliveryPolicy)initWithCoder:(id)coder
{
  v13[4] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"<%@: %p> may only be decoded by an NSXPCCoder.", objc_opt_class(), self}];
  }

  v5 = MEMORY[0x1E695DFD8];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v13[2] = objc_opt_class();
  v13[3] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:4];
  v7 = [v5 setWithArray:v6];
  v8 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:@"Policies"];
  v9 = [coderCopy decodeObjectOfClasses:v7 forKey:v8];

  v10 = [(_BKSCombinedTouchDeliveryPolicy *)self initWithPolicies:v9];
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (_BKSCombinedTouchDeliveryPolicy)initWithPolicies:(id)policies
{
  policiesCopy = policies;
  v9.receiver = self;
  v9.super_class = _BKSCombinedTouchDeliveryPolicy;
  v6 = [(_BKSCombinedTouchDeliveryPolicy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_policies, policies);
  }

  return v7;
}

@end