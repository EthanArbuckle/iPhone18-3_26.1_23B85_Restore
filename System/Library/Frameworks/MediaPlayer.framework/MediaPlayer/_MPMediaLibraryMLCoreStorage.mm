@interface _MPMediaLibraryMLCoreStorage
- (id).cxx_construct;
- (shared_ptr<mlcore::DeviceLibrary>)_MediaLibrary_coreLibrary;
- (void)set_MediaLibrary_coreLibrary:(shared_ptr<mlcore::DeviceLibrary>)a3;
@end

@implementation _MPMediaLibraryMLCoreStorage

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (shared_ptr<mlcore::DeviceLibrary>)_MediaLibrary_coreLibrary
{
  cntrl = self->__MediaLibrary_coreLibrary.__cntrl_;
  *v2 = self->__MediaLibrary_coreLibrary.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)set_MediaLibrary_coreLibrary:(shared_ptr<mlcore::DeviceLibrary>)a3
{
  v4 = *a3.__ptr_;
  v3 = *(a3.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->__MediaLibrary_coreLibrary.__cntrl_;
  self->__MediaLibrary_coreLibrary.__ptr_ = v4;
  self->__MediaLibrary_coreLibrary.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

@end