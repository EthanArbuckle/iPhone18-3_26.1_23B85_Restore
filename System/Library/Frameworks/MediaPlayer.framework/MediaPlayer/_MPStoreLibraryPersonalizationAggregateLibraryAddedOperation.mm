@interface _MPStoreLibraryPersonalizationAggregateLibraryAddedOperation
- (id).cxx_construct;
- (vector<long)persistentIDs;
- (void)execute;
- (void)setPersistentIDs:(vector<long)long;
@end

@implementation _MPStoreLibraryPersonalizationAggregateLibraryAddedOperation

- (id).cxx_construct
{
  *(self + 37) = 0;
  *(self + 38) = 0;
  *(self + 36) = 0;
  return self;
}

- (void)setPersistentIDs:(vector<long)long
{
  p_persistentIDs = &self->_persistentIDs;
  if (&self->_persistentIDs != a3)
  {
    begin = a3->__begin_;
    end = a3->__end_;
    v6 = end - a3->__begin_;
    cap = self->_persistentIDs.__cap_;
    v8 = p_persistentIDs->__begin_;
    if (cap - p_persistentIDs->__begin_ < v6)
    {
      v9 = v6 >> 3;
      if (v8)
      {
        self->_persistentIDs.__end_ = v8;
        operator delete(v8);
        cap = 0;
        p_persistentIDs->__begin_ = 0;
        p_persistentIDs->__end_ = 0;
        p_persistentIDs->__cap_ = 0;
      }

      if (!(v9 >> 61))
      {
        v10 = cap >> 2;
        if (cap >> 2 <= v9)
        {
          v10 = v6 >> 3;
        }

        if (cap >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        std::vector<long long>::__vallocate[abi:ne200100](p_persistentIDs, v11);
      }

      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v12 = self->_persistentIDs.__end_;
    v13 = v12 - v8;
    if (v12 - v8 >= v6)
    {
      if (end != begin)
      {
        memmove(v8, begin, v6);
      }

      v15 = (v8 + v6);
    }

    else
    {
      v14 = (begin + v13);
      if (v12 != v8)
      {
        memmove(p_persistentIDs->__begin_, begin, v13);
        v12 = p_persistentIDs->__end_;
      }

      if (end != v14)
      {
        memmove(v12, v14, end - v14);
      }

      v15 = (v12 + end - v14);
    }

    p_persistentIDs->__end_ = v15;
  }
}

- (vector<long)persistentIDs
{
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  return std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(retstr, self->_persistentIDs.__begin_, self->_persistentIDs.__end_, self->_persistentIDs.__end_ - self->_persistentIDs.__begin_);
}

- (void)execute
{
  v3 = *MEMORY[0x1E69E9840];
  *&v2 = mlcore::ItemPropertyPersistentID(self);
  std::allocate_shared[abi:ne200100]<mlcore::InPredicate<long long>,std::allocator<mlcore::InPredicate<long long>>,mlcore::ModelProperty<long long> *&,std::vector<long long> const&,0>();
}

@end