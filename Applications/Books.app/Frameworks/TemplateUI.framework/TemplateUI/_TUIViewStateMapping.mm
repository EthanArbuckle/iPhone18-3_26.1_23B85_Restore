@interface _TUIViewStateMapping
- (_TUIViewStateMapping)initWithParent:(id)parent;
- (id).cxx_construct;
- (id)viewStateForBinding:(id)binding;
- (void)setViewState:(id)state forBinding:(id)binding;
@end

@implementation _TUIViewStateMapping

- (_TUIViewStateMapping)initWithParent:(id)parent
{
  parentCopy = parent;
  v9.receiver = self;
  v9.super_class = _TUIViewStateMapping;
  v6 = [(_TUIViewStateMapping *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parent, parent);
  }

  return v7;
}

- (id)viewStateForBinding:(id)binding
{
  if (TUINameIsValid(*&binding))
  {
    bindingCopy = binding;
    v5 = sub_26874(&self->_bindingMap.__table_.__bucket_list_.__ptr_, &bindingCopy.var0);
    if (v5)
    {
      v6 = v5[3];
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setViewState:(id)state forBinding:(id)binding
{
  stateCopy = state;
  if (TUINameIsValid(*&binding))
  {
    bindingCopy = binding;
    v10 = &bindingCopy;
    v8 = sub_106F88(&self->_bindingMap.__table_.__bucket_list_.__ptr_, &bindingCopy.var0);
    objc_storeStrong(v8 + 3, state);
  }
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end