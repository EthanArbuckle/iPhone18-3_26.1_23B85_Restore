@interface ManagedInputStream
- (ManagedInputStream)initWithPaused:(BOOL)paused attributedTo:(id)to definition:(id)definition canRecord:(BOOL)record fader:(shared_ptr<caulk:(id)fader :synchronized<Phase::Controller::ExternalStreamFader>>)a7 pauseStateDidUpdateCallback:;
- (id).cxx_construct;
- (shared_ptr<caulk::synchronized<Phase::Controller::ExternalStreamFader>>)fader;
- (void)setFader:(shared_ptr<caulk::synchronized<Phase::Controller::ExternalStreamFader>>)fader;
@end

@implementation ManagedInputStream

- (ManagedInputStream)initWithPaused:(BOOL)paused attributedTo:(id)to definition:(id)definition canRecord:(BOOL)record fader:(shared_ptr<caulk:(id)fader :synchronized<Phase::Controller::ExternalStreamFader>>)a7 pauseStateDidUpdateCallback:
{
  cntrl = a7.__cntrl_;
  ptr = a7.__ptr_;
  toCopy = to;
  definitionCopy = definition;
  v17 = cntrl;
  v26.receiver = self;
  v26.super_class = ManagedInputStream;
  v18 = [(ManagedInputStream *)&v26 init];
  v19 = v18;
  if (v18)
  {
    v18->_streamPaused = paused;
    objc_storeStrong(&v18->_definition, definition);
    objc_storeStrong(&v19->_attributedClientID, to);
    v19->_canRecord = record;
    v19->_isMuted = 0;
    v21 = *ptr;
    v20 = ptr[1];
    if (v20)
    {
      atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
    }

    v22 = v19->_fader.__cntrl_;
    v19->_fader.__ptr_ = v21;
    v19->_fader.__cntrl_ = v20;
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    v19->_isFading = 0;
    v23 = _Block_copy(v17);
    pauseStateDidUpdateCallback = v19->_pauseStateDidUpdateCallback;
    v19->_pauseStateDidUpdateCallback = v23;
  }

  return v19;
}

- (shared_ptr<caulk::synchronized<Phase::Controller::ExternalStreamFader>>)fader
{
  cntrl = self->_fader.__cntrl_;
  *v2 = self->_fader.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setFader:(shared_ptr<caulk::synchronized<Phase::Controller::ExternalStreamFader>>)fader
{
  v4 = *fader.__ptr_;
  v3 = *(fader.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_fader.__cntrl_;
  self->_fader.__ptr_ = v4;
  self->_fader.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  return self;
}

@end