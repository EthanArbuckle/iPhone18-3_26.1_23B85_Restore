@interface AXMOutputComponent
- (AXMOutputComponent)init;
- (id)description;
- (void)transitionToState:(int64_t)a3 completion:(id)a4;
@end

@implementation AXMOutputComponent

- (AXMOutputComponent)init
{
  v3.receiver = self;
  v3.super_class = AXMOutputComponent;
  result = [(AXMOutputComponent *)&v3 init];
  if (result)
  {
    result->_componentState = 0;
  }

  return result;
}

- (id)description
{
  componentState = self->_componentState;
  if (componentState > 2)
  {
    v4 = &stru_1F23EA908;
  }

  else
  {
    v4 = off_1E7A1D318[componentState];
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"%@<%p>: state:'%@'", v7, self, v4];

  return v8;
}

- (void)transitionToState:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  [(AXMOutputComponent *)self setComponentState:a3];
  v6[2]();
}

@end