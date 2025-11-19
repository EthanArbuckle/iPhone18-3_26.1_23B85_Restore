@interface PHASEMixer
- (PHASEMixer)init;
- (PHASEMixer)initWithIdentifier:(id)a3;
- (id).cxx_construct;
- (void)setWeakActionTreeObject:(weak_ptr<Phase::ActionTreeObject>)a3;
- (weak_ptr<Phase::ActionTreeObject>)weakActionTreeObject;
@end

@implementation PHASEMixer

- (PHASEMixer)init
{
  [(PHASEMixer *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEMixer)initWithIdentifier:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PHASEMixer;
  v6 = [(PHASEMixer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    gainMetaParameter = v6->_gainMetaParameter;
    v6->_gain = 1.0;
    v6->_gainMetaParameter = 0;

    objc_storeStrong(&v7->_identifier, a3);
    v9 = v7;
  }

  return v7;
}

- (weak_ptr<Phase::ActionTreeObject>)weakActionTreeObject
{
  cntrl = self->_weakActionTreeObject.__cntrl_;
  *v2 = self->_weakActionTreeObject.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 2, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setWeakActionTreeObject:(weak_ptr<Phase::ActionTreeObject>)a3
{
  v4 = *a3.__ptr_;
  v3 = *(a3.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_weakActionTreeObject.__cntrl_;
  self->_weakActionTreeObject.__ptr_ = v4;
  self->_weakActionTreeObject.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_weak(cntrl);
  }
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

@end