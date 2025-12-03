@interface ManagedOutputStream
- (ManagedOutputStream)initWithPaused:(BOOL)paused attributedTo:(id)to definition:(id)definition renderBlock:(id)block;
- (id).cxx_construct;
- (void)setRenderer:(weak_ptr<Phase::Controller::StreamRenderer>)renderer;
- (weak_ptr<Phase::Controller::StreamRenderer>)renderer;
@end

@implementation ManagedOutputStream

- (ManagedOutputStream)initWithPaused:(BOOL)paused attributedTo:(id)to definition:(id)definition renderBlock:(id)block
{
  toCopy = to;
  definitionCopy = definition;
  blockCopy = block;
  v19.receiver = self;
  v19.super_class = ManagedOutputStream;
  v14 = [(ManagedOutputStream *)&v19 init];
  v15 = v14;
  if (v14)
  {
    v14->_streamPaused = paused;
    objc_storeStrong(&v14->_definition, definition);
    v16 = _Block_copy(blockCopy);
    renderBlock = v15->_renderBlock;
    v15->_renderBlock = v16;

    objc_storeStrong(&v15->_attributedClientID, to);
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

- (void)setRenderer:(weak_ptr<Phase::Controller::StreamRenderer>)renderer
{
  v4 = *renderer.__ptr_;
  v3 = *(renderer.__ptr_ + 1);
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