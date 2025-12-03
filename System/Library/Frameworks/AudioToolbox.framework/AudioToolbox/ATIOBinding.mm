@interface ATIOBinding
- (ATIOBinding)initWithCoder:(id)coder;
- (ATIOBinding)initWithImpl:(shared_ptr<const AT::IOBinding::Impl>)impl;
- (BOOL)isEqual:(id)equal;
- (id).cxx_construct;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATIOBinding

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (ATIOBinding)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = ATIOBinding;
  if ([(ATIOBinding *)&v10 init])
  {
    v5 = coderCopy;
    v6 = [v5 decodeIntForKey:@"variant"];
    if (v6 == 2)
    {
      v7 = [v5 decodeObjectForKey:@"deviceUID"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        applesauce::CF::StringRef::from_get(&cf, v7);
        std::allocate_shared[abi:ne200100]<AT::IOBinding::Impl,std::allocator<AT::IOBinding::Impl>,applesauce::CF::StringRef,0>();
      }
    }

    else if (v6 == 3)
    {
      [v5 decodeInt32ForKey:@"useCaseID"];
      operator new();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unable to decode ATIOBinding");
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  ptr = self->mImpl.__ptr_;
  coderCopy = coder;
  [coderCopy encodeInt:*(ptr + 4) forKey:@"variant"];
  v4 = *(ptr + 4);
  switch(v4)
  {
    case 1:
      opaqueSessionID = [*(ptr + 3) opaqueSessionID];
      v6 = @"sessionID";
      break;
    case 2:
      [coderCopy encodeObject:*(ptr + 4) forKey:@"deviceUID"];
      goto LABEL_8;
    case 3:
      opaqueSessionID = *(ptr + 11);
      v6 = @"useCaseID";
      break;
    default:
      goto LABEL_8;
  }

  [coderCopy encodeInt32:opaqueSessionID forKey:v6];
LABEL_8:
}

- (id)description
{
  AT::IOBinding::Impl::description(__p, self->mImpl.__ptr_);
  if (v6 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v2];
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ptr = self->mImpl.__ptr_;
    v6 = equalCopy[1];
    if (ptr)
    {
      v7 = AT::IOBinding::Impl::operator==(ptr, v6);
    }

    else
    {
      v7 = v6 == 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (ATIOBinding)initWithImpl:(shared_ptr<const AT::IOBinding::Impl>)impl
{
  v5 = *impl.__ptr_;
  v4 = *(impl.__ptr_ + 1);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->mImpl.__cntrl_;
  self->mImpl.__ptr_ = v5;
  self->mImpl.__cntrl_ = v4;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  return self;
}

@end