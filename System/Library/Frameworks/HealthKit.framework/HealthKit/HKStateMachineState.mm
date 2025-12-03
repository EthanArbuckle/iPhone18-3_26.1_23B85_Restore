@interface HKStateMachineState
- (BOOL)isEqual:(id)equal;
- (HKStateMachineState)init;
- (HKStateMachineState)initWithIndex:(int64_t)index label:(id)label;
@end

@implementation HKStateMachineState

- (HKStateMachineState)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKStateMachineState)initWithIndex:(int64_t)index label:(id)label
{
  labelCopy = label;
  v12.receiver = self;
  v12.super_class = HKStateMachineState;
  v7 = [(HKStateMachineState *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_index = index;
    v9 = [labelCopy copy];
    label = v8->_label;
    v8->_label = v9;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_index == equalCopy[1] && [(NSString *)self->_label isEqualToString:equalCopy[2]];

  return v5;
}

@end