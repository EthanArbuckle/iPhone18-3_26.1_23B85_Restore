@interface TUIInstantiateContextSnapshot
- (TUIInstantiateContextSnapshot)initWithContextSnapshot:(shared_ptr<const TUI::Evaluation::Context::Snapshot>)snapshot;
- (id).cxx_construct;
- (shared_ptr<const)contextSnapshot;
@end

@implementation TUIInstantiateContextSnapshot

- (TUIInstantiateContextSnapshot)initWithContextSnapshot:(shared_ptr<const TUI::Evaluation::Context::Snapshot>)snapshot
{
  ptr = snapshot.__ptr_;
  v10.receiver = self;
  v10.super_class = TUIInstantiateContextSnapshot;
  v4 = [(TUIInstantiateContextSnapshot *)&v10 init:snapshot.__ptr_];
  v5 = v4;
  if (v4)
  {
    v7 = *ptr;
    v6 = *(ptr + 1);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v4->_contextSnapshot.__cntrl_;
    v5->_contextSnapshot.__ptr_ = v7;
    v5->_contextSnapshot.__cntrl_ = v6;
    if (cntrl)
    {
      sub_11420(cntrl);
    }
  }

  return v5;
}

- (shared_ptr<const)contextSnapshot
{
  cntrl = self->_contextSnapshot.__cntrl_;
  *v2 = self->_contextSnapshot.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end