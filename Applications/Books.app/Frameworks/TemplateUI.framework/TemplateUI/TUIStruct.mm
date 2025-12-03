@interface TUIStruct
- (BOOL)isEqual:(id)equal;
- (TUIStruct)initWithValue:(const void *)value basedOn:(id)on;
- (id).cxx_construct;
@end

@implementation TUIStruct

- (TUIStruct)initWithValue:(const void *)value basedOn:(id)on
{
  onCopy = on;
  v14.receiver = self;
  v14.super_class = TUIStruct;
  v8 = [(TUIStruct *)&v14 init];
  v9 = v8;
  if (v8)
  {
    if (&v8->_value != value)
    {
      v11 = *value;
      v10 = *(value + 1);
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      cntrl = v8->_value._capture.__cntrl_;
      v9->_value._capture.__ptr_ = v11;
      v9->_value._capture.__cntrl_ = v10;
      if (cntrl)
      {
        sub_11420(cntrl);
      }
    }

    objc_storeStrong(&v9->_basedOn, on);
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
    if (TUI::Evaluation::Variables::Capture::operator==(self->_value._capture.__ptr_, *[v7 value]))
    {
      basedOn = self->_basedOn;
      basedOn = [v7 basedOn];
      if (basedOn == basedOn)
      {
        v6 = 1;
      }

      else
      {
        v10 = self->_basedOn;
        basedOn2 = [v7 basedOn];
        v6 = [(TUIStruct *)v10 isEqual:basedOn2];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end