@interface _TUIViewStateMapping
- (_TUIViewStateMapping)initWithParent:(id)a3;
- (id).cxx_construct;
- (id)viewStateForBinding:(id)a3;
- (void)setViewState:(id)a3 forBinding:(id)a4;
@end

@implementation _TUIViewStateMapping

- (_TUIViewStateMapping)initWithParent:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _TUIViewStateMapping;
  v6 = [(_TUIViewStateMapping *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parent, a3);
  }

  return v7;
}

- (id)viewStateForBinding:(id)a3
{
  if (TUINameIsValid(*&a3))
  {
    v9 = a3;
    v5 = sub_26874(&self->_bindingMap.__table_.__bucket_list_.__ptr_, &v9.var0);
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

- (void)setViewState:(id)a3 forBinding:(id)a4
{
  v7 = a3;
  if (TUINameIsValid(*&a4))
  {
    v9 = a4;
    v10 = &v9;
    v8 = sub_106F88(&self->_bindingMap.__table_.__bucket_list_.__ptr_, &v9.var0);
    objc_storeStrong(v8 + 3, a3);
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