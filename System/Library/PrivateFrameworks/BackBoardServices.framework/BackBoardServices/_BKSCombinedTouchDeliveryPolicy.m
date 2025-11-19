@interface _BKSCombinedTouchDeliveryPolicy
- (BOOL)isEqual:(id)a3;
- (_BKSCombinedTouchDeliveryPolicy)initWithCoder:(id)a3;
- (_BKSCombinedTouchDeliveryPolicy)initWithPolicies:(id)a3;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BKSCombinedTouchDeliveryPolicy

- (void)appendDescriptionToFormatter:(id)a3
{
  v6 = a3;
  v4 = [(_BKSCombinedTouchDeliveryPolicy *)self policies];
  v5 = [v6 appendObject:v4 withName:@"combination"];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(NSArray *)self->_policies isEqualToArray:v5->_policies];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(_BKSCombinedTouchDeliveryPolicy *)self policies];
  v5 = [v3 appendObject:v4];

  v6 = [v3 hash];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"<%@: %p> may only be encoded by an NSXPCCoder.", objc_opt_class(), self}];
  }

  v4 = [(_BKSCombinedTouchDeliveryPolicy *)self policies];
  v5 = [@"BKSTouchDeliveryPolicy" stringByAppendingString:@"Policies"];
  [v6 encodeObject:v4 forKey:v5];
}

- (_BKSCombinedTouchDeliveryPolicy)initWithCoder:(id)a3
{
  v13[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  v9 = [v4 decodeObjectOfClasses:v7 forKey:v8];

  v10 = [(_BKSCombinedTouchDeliveryPolicy *)self initWithPolicies:v9];
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (_BKSCombinedTouchDeliveryPolicy)initWithPolicies:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _BKSCombinedTouchDeliveryPolicy;
  v6 = [(_BKSCombinedTouchDeliveryPolicy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_policies, a3);
  }

  return v7;
}

@end