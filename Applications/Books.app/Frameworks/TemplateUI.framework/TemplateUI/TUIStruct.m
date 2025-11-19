@interface TUIStruct
- (BOOL)isEqual:(id)a3;
- (TUIStruct)initWithValue:(const void *)a3 basedOn:(id)a4;
- (id).cxx_construct;
@end

@implementation TUIStruct

- (TUIStruct)initWithValue:(const void *)a3 basedOn:(id)a4
{
  v7 = a4;
  v14.receiver = self;
  v14.super_class = TUIStruct;
  v8 = [(TUIStruct *)&v14 init];
  v9 = v8;
  if (v8)
  {
    if (&v8->_value != a3)
    {
      v11 = *a3;
      v10 = *(a3 + 1);
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

    objc_storeStrong(&v9->_basedOn, a4);
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = v4;
    if (TUI::Evaluation::Variables::Capture::operator==(self->_value._capture.__ptr_, *[v7 value]))
    {
      basedOn = self->_basedOn;
      v9 = [v7 basedOn];
      if (basedOn == v9)
      {
        v6 = 1;
      }

      else
      {
        v10 = self->_basedOn;
        v11 = [v7 basedOn];
        v6 = [(TUIStruct *)v10 isEqual:v11];
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