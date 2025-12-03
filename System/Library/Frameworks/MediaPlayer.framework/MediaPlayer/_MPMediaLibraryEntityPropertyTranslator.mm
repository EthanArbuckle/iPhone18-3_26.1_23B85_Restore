@interface _MPMediaLibraryEntityPropertyTranslator
- (id).cxx_construct;
- (shared_ptr<std::unordered_map<std::string,)propertiesToFetchMap;
- (shared_ptr<std::unordered_map<std::string,)propertiesToSortMap;
- (void)setPropertiesToFetchMap:()shared_ptr<std:(mlcore::ModelPropertyBase *>>)std :unordered_map<std::string;
- (void)setPropertiesToSortMap:()shared_ptr<std:(mlcore::ModelPropertyBase *>>)std :unordered_map<std::string;
@end

@implementation _MPMediaLibraryEntityPropertyTranslator

- (id).cxx_construct
{
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  return self;
}

- (void)setPropertiesToSortMap:()shared_ptr<std:(mlcore::ModelPropertyBase *>>)std :unordered_map<std::string
{
  v4 = *std.__ptr_;
  v3 = *(std.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_propertiesToSortMap.__cntrl_;
  self->_propertiesToSortMap.__ptr_ = v4;
  self->_propertiesToSortMap.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (shared_ptr<std::unordered_map<std::string,)propertiesToSortMap
{
  cntrl = self->_propertiesToSortMap.__cntrl_;
  *v2 = self->_propertiesToSortMap.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setPropertiesToFetchMap:()shared_ptr<std:(mlcore::ModelPropertyBase *>>)std :unordered_map<std::string
{
  v4 = *std.__ptr_;
  v3 = *(std.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_propertiesToFetchMap.__cntrl_;
  self->_propertiesToFetchMap.__ptr_ = v4;
  self->_propertiesToFetchMap.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (shared_ptr<std::unordered_map<std::string,)propertiesToFetchMap
{
  cntrl = self->_propertiesToFetchMap.__cntrl_;
  *v2 = self->_propertiesToFetchMap.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

@end