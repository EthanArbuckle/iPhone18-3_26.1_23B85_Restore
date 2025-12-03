@interface _BKSHIDEventDeferringRuleIdentity
- (BOOL)isEqual:(id)equal;
- (_BKSHIDEventDeferringRuleIdentity)initWithCoder:(id)coder;
- (_BKSHIDEventDeferringRuleIdentity)initWithSeed:(unsigned int)seed pid:(int)pid;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BKSHIDEventDeferringRuleIdentity

- (void)appendDescriptionToFormatter:(id)formatter
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __66___BKSHIDEventDeferringRuleIdentity_appendDescriptionToFormatter___block_invoke;
  v3[3] = &unk_1E6F477E8;
  v3[4] = self;
  [formatter appendCustomFormatWithName:0 block:v3];
}

- (_BKSHIDEventDeferringRuleIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = _BKSHIDEventDeferringRuleIdentity;
  v5 = [(_BKSHIDEventDeferringRuleIdentity *)&v7 init];
  if (v5)
  {
    v5->_pid = [coderCopy decodeIntForKey:@"pid"];
    v5->_seed = [coderCopy decodeInt32ForKey:@"seed"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  pid = self->_pid;
  coderCopy = coder;
  [coderCopy encodeInt:pid forKey:@"pid"];
  [coderCopy encodeInt32:self->_seed forKey:@"seed"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && self->_seed == equalCopy->_seed && self->_pid == equalCopy->_pid;
  }

  return v6;
}

- (_BKSHIDEventDeferringRuleIdentity)initWithSeed:(unsigned int)seed pid:(int)pid
{
  v7.receiver = self;
  v7.super_class = _BKSHIDEventDeferringRuleIdentity;
  result = [(_BKSHIDEventDeferringRuleIdentity *)&v7 init];
  if (result)
  {
    result->_seed = seed;
    result->_pid = pid;
  }

  return result;
}

@end