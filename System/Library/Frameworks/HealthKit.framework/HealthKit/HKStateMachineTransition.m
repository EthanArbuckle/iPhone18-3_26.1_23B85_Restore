@interface HKStateMachineTransition
- (BOOL)isEqual:(id)a3;
- (HKStateMachineState)fromState;
- (HKStateMachineState)toState;
- (HKStateMachineTransition)init;
- (HKStateMachineTransition)initWithEvent:(int64_t)a3 label:(id)a4 from:(id)a5 to:(id)a6;
- (id)description;
@end

@implementation HKStateMachineTransition

- (HKStateMachineTransition)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKStateMachineTransition)initWithEvent:(int64_t)a3 label:(id)a4 from:(id)a5 to:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = HKStateMachineTransition;
  v13 = [(HKStateMachineTransition *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_event = a3;
    v15 = [v10 copy];
    label = v14->_label;
    v14->_label = v15;

    objc_storeWeak(&v14->_fromState, v11);
    objc_storeWeak(&v14->_toState, v12);
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  event = self->_event;
  label = self->_label;
  WeakRetained = objc_loadWeakRetained(&self->_fromState);
  v7 = objc_loadWeakRetained(&self->_toState);
  v8 = [v3 stringWithFormat:@"<%@(%ld): %@ -> %@>", label, event, WeakRetained, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    event = self->_event;
    if (v4[1] && [(NSString *)self->_label isEqualToString:v4[2]])
    {
      WeakRetained = objc_loadWeakRetained(&self->_toState);
      v7 = objc_loadWeakRetained(v4 + 4);
      if ([WeakRetained isEqual:v7])
      {
        v8 = objc_loadWeakRetained(&self->_fromState);
        v9 = objc_loadWeakRetained(v4 + 3);
        v10 = [v8 isEqual:v9];
      }

      else
      {
        v10 = 0;
      }

      v11 = event == v10;
    }

    else
    {
      v11 = event == 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (HKStateMachineState)fromState
{
  WeakRetained = objc_loadWeakRetained(&self->_fromState);

  return WeakRetained;
}

- (HKStateMachineState)toState
{
  WeakRetained = objc_loadWeakRetained(&self->_toState);

  return WeakRetained;
}

@end