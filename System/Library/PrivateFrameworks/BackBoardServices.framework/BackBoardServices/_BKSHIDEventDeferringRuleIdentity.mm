@interface _BKSHIDEventDeferringRuleIdentity
- (BOOL)isEqual:(id)a3;
- (_BKSHIDEventDeferringRuleIdentity)initWithCoder:(id)a3;
- (_BKSHIDEventDeferringRuleIdentity)initWithSeed:(unsigned int)a3 pid:(int)a4;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BKSHIDEventDeferringRuleIdentity

- (void)appendDescriptionToFormatter:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __66___BKSHIDEventDeferringRuleIdentity_appendDescriptionToFormatter___block_invoke;
  v3[3] = &unk_1E6F477E8;
  v3[4] = self;
  [a3 appendCustomFormatWithName:0 block:v3];
}

- (_BKSHIDEventDeferringRuleIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _BKSHIDEventDeferringRuleIdentity;
  v5 = [(_BKSHIDEventDeferringRuleIdentity *)&v7 init];
  if (v5)
  {
    v5->_pid = [v4 decodeIntForKey:@"pid"];
    v5->_seed = [v4 decodeInt32ForKey:@"seed"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  pid = self->_pid;
  v5 = a3;
  [v5 encodeInt:pid forKey:@"pid"];
  [v5 encodeInt32:self->_seed forKey:@"seed"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && self->_seed == v4->_seed && self->_pid == v4->_pid;
  }

  return v6;
}

- (_BKSHIDEventDeferringRuleIdentity)initWithSeed:(unsigned int)a3 pid:(int)a4
{
  v7.receiver = self;
  v7.super_class = _BKSHIDEventDeferringRuleIdentity;
  result = [(_BKSHIDEventDeferringRuleIdentity *)&v7 init];
  if (result)
  {
    result->_seed = a3;
    result->_pid = a4;
  }

  return result;
}

@end