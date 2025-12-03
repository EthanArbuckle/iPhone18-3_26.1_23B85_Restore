@interface _TUIElementWithClosure
- (Ref<TUI::Evaluation::Variables::_NamedElement>)ref;
- (_TUIElementWithClosure)initWithParsedElement:(id)element closureAndCapture:()pair<TUIClosure;
- (_TUIElementWithClosure)initWithRef:(Ref<TUI:(void *)ref :Evaluation::Variables::_NamedElement>)a3 context:;
- (id).cxx_construct;
- (pair<TUIClosure,)closureAndCapture;
@end

@implementation _TUIElementWithClosure

- (_TUIElementWithClosure)initWithRef:(Ref<TUI:(void *)ref :Evaluation::Variables::_NamedElement>)a3 context:
{
  index = a3._index;
  resolver = a3._resolver;
  v14.receiver = self;
  v14.super_class = _TUIElementWithClosure;
  v6 = [(_TUIElementWithClosure *)&v14 init:a3._resolver];
  v7 = v6;
  if (v6)
  {
    v6->_ref._resolver = resolver;
    v6->_ref._index = index;
    v8 = (*(*resolver + 72))(resolver, index);
    objc_storeStrong(&v7->_element._parsedElement, *v8);
    v7->_element.var0.index = *(v8 + 8);
    (*(*resolver + 112))(&v12, resolver, index);
    v7->_closureAndCapture.first.index = v12;
    v9 = v13;
    v13 = 0;
    cntrl = v7->_closureAndCapture.second.__cntrl_;
    v7->_closureAndCapture.second = v9;
    if (cntrl)
    {
      sub_11420(cntrl);
      if (v13.__cntrl_)
      {
        sub_11420(v13.__cntrl_);
      }
    }
  }

  return v7;
}

- (_TUIElementWithClosure)initWithParsedElement:(id)element closureAndCapture:()pair<TUIClosure
{
  elementCopy = element;
  v12.receiver = self;
  v12.super_class = _TUIElementWithClosure;
  v8 = [(_TUIElementWithClosure *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v10 = TUIElementNodeNil;
    objc_storeStrong(&v8->_element._parsedElement, element);
    v9->_element.var0.index = v10;
    sub_42610(&v9->_closureAndCapture, a4);
  }

  return v9;
}

- (pair<TUIClosure,)closureAndCapture
{
  retstr->first.index = self[1].second.__cntrl_;
  ptr = self[2].second.__ptr_;
  retstr->second.__ptr_ = *&self[2].first.index;
  retstr->second.__cntrl_ = ptr;
  if (ptr)
  {
    atomic_fetch_add_explicit(ptr + 1, 1uLL, memory_order_relaxed);
  }

  return self;
}

- (Ref<TUI::Evaluation::Variables::_NamedElement>)ref
{
  index = self->_ref._index;
  resolver = self->_ref._resolver;
  result._index = index;
  result._resolver = resolver;
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 4) = TUIElementNodeNil;
  *(self + 3) = 0;
  *(self + 4) = -1;
  *(self + 10) = 0;
  *(self + 6) = 0;
  *(self + 7) = 0;
  return self;
}

@end