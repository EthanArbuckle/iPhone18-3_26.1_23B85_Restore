@interface ManagedOutputStream
- (ManagedOutputStream)initWithPaused:(BOOL)a3 attributedTo:(id)a4 definition:(id)a5 renderBlock:(id)a6;
- (id).cxx_construct;
- (void)setRenderer:(weak_ptr<Phase::Controller::StreamRenderer>)a3;
- (weak_ptr<Phase::Controller::StreamRenderer>)renderer;
@end

@implementation ManagedOutputStream

- (ManagedOutputStream)initWithPaused:(BOOL)a3 attributedTo:(id)a4 definition:(id)a5 renderBlock:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = ManagedOutputStream;
  v14 = [(ManagedOutputStream *)&v19 init];
  v15 = v14;
  if (v14)
  {
    v14->_streamPaused = a3;
    objc_storeStrong(&v14->_definition, a5);
    v16 = _Block_copy(v13);
    renderBlock = v15->_renderBlock;
    v15->_renderBlock = v16;

    objc_storeStrong(&v15->_attributedClientID, a4);
  }

  return v15;
}

- (weak_ptr<Phase::Controller::StreamRenderer>)renderer
{
  cntrl = self->_renderer.__cntrl_;
  *v2 = self->_renderer.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 2, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setRenderer:(weak_ptr<Phase::Controller::StreamRenderer>)a3
{
  v4 = *a3.__ptr_;
  v3 = *(a3.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_renderer.__cntrl_;
  self->_renderer.__ptr_ = v4;
  self->_renderer.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_weak(cntrl);
  }
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  return self;
}

@end