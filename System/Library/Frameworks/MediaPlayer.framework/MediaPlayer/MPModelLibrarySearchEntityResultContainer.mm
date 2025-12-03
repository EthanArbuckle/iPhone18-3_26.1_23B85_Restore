@interface MPModelLibrarySearchEntityResultContainer
- (MPModelLibrarySearchEntityResultContainer)initWithEntityQueryResult:(shared_ptr<mlcore:(id)result :(id)a5 EntityQueryResult>)a3 forScope:entityTranslationContext:;
- (id).cxx_construct;
- (shared_ptr<mlcore::EntityQueryResult>)entityQueryResult;
@end

@implementation MPModelLibrarySearchEntityResultContainer

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

- (shared_ptr<mlcore::EntityQueryResult>)entityQueryResult
{
  cntrl = self->_entityQueryResult.__cntrl_;
  *v2 = self->_entityQueryResult.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (MPModelLibrarySearchEntityResultContainer)initWithEntityQueryResult:(shared_ptr<mlcore:(id)result :(id)a5 EntityQueryResult>)a3 forScope:entityTranslationContext:
{
  cntrl = a3.__cntrl_;
  ptr = a3.__ptr_;
  v9 = a3.__cntrl_;
  resultCopy = result;
  v17.receiver = self;
  v17.super_class = MPModelLibrarySearchEntityResultContainer;
  v11 = [(MPModelLibrarySearchEntityResultContainer *)&v17 init];
  v12 = v11;
  if (v11)
  {
    v14 = *ptr;
    v13 = *(ptr + 1);
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v15 = v11->_entityQueryResult.__cntrl_;
    v12->_entityQueryResult.__ptr_ = v14;
    v12->_entityQueryResult.__cntrl_ = v13;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    objc_storeStrong(&v12->_scope, cntrl);
    objc_storeStrong(&v12->_entityTranslationContext, result);
  }

  return v12;
}

@end