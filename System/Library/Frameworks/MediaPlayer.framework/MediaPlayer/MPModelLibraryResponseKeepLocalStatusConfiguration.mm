@interface MPModelLibraryResponseKeepLocalStatusConfiguration
- (id).cxx_construct;
- (shared_ptr<mlcore::EntityQuery>)downloadableItemsQuery;
- (void)setDownloadableItemsQuery:(shared_ptr<mlcore::EntityQuery>)query;
@end

@implementation MPModelLibraryResponseKeepLocalStatusConfiguration

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (void)setDownloadableItemsQuery:(shared_ptr<mlcore::EntityQuery>)query
{
  v4 = *query.__ptr_;
  v3 = *(query.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_downloadableItemsQuery.__cntrl_;
  self->_downloadableItemsQuery.__ptr_ = v4;
  self->_downloadableItemsQuery.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (shared_ptr<mlcore::EntityQuery>)downloadableItemsQuery
{
  cntrl = self->_downloadableItemsQuery.__cntrl_;
  *v2 = self->_downloadableItemsQuery.__ptr_;
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