@interface PHASESoundEventNodeAsset
- (PHASESoundEventNodeAsset)init;
- (PHASESoundEventNodeAsset)initWithUID:(id)d actionTreeWeakReference:(const void *)reference assetRegistry:(id)registry weakStringPoolReference:(void *)poolReference details:(id)details;
- (PHASESoundEventNodeAsset)initWithUID:(id)d assetRegistry:(id)registry weakStringPoolReference:(void *)reference;
- (PHASESoundEventNodeAsset)initWithUID:(id)d ownedActionTree:()unique_ptr<Phase:(std:(id)phase :(void *)a6 default_delete<Phase:(id)a7 :ActionTree>>)a4 :ActionTree assetRegistry:weakStringPoolReference:details:;
- (id).cxx_construct;
- (void)getRandomHistory:(unint64_t)history;
@end

@implementation PHASESoundEventNodeAsset

- (PHASESoundEventNodeAsset)init
{
  [(PHASESoundEventNodeAsset *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASESoundEventNodeAsset)initWithUID:(id)d assetRegistry:(id)registry weakStringPoolReference:(void *)reference
{
  [(PHASESoundEventNodeAsset *)self doesNotRecognizeSelector:a2, registry, reference];

  return 0;
}

- (PHASESoundEventNodeAsset)initWithUID:(id)d ownedActionTree:()unique_ptr<Phase:(std:(id)phase :(void *)a6 default_delete<Phase:(id)a7 :ActionTree>>)a4 :ActionTree assetRegistry:weakStringPoolReference:details:
{
  v8 = [(PHASESoundEventNodeAsset *)self initWithUID:d actionTreeWeakReference:*a4.__ptr_ assetRegistry:phase weakStringPoolReference:a6 details:a7];
  v9 = v8;
  if (v8)
  {
    v10 = *a4.__ptr_;
    *a4.__ptr_ = 0;
    std::unique_ptr<Phase::ActionTree>::reset[abi:ne200100](&v8->_actionTreeOwnedAsset, v10);
    v11 = v9;
  }

  return v9;
}

- (PHASESoundEventNodeAsset)initWithUID:(id)d actionTreeWeakReference:(const void *)reference assetRegistry:(id)registry weakStringPoolReference:(void *)poolReference details:(id)details
{
  dCopy = d;
  registryCopy = registry;
  detailsCopy = details;
  v20.receiver = self;
  v20.super_class = PHASESoundEventNodeAsset;
  v15 = [(PHASEAsset *)&v20 initWithUID:dCopy assetRegistry:registryCopy weakStringPoolReference:poolReference];
  if (v15)
  {
    streamNodeFormats = [detailsCopy streamNodeFormats];
    streamNodeFormats = v15->_streamNodeFormats;
    v15->_streamNodeFormats = streamNodeFormats;

    v15->_actionTreeReference = reference;
    v18 = v15;
  }

  return v15;
}

- (void)getRandomHistory:(unint64_t)history
{
  p_randomHistory = &self->_randomHistory;
  size = self->_randomHistory.__table_.__bucket_list_.__deleter_.__size_;
  if (!size)
  {
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    goto LABEL_33;
  }

  v5 = vcnt_s8(size);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    historyCopy = history;
    if (size <= history)
    {
      historyCopy = history % size;
    }
  }

  else
  {
    historyCopy = (size - 1) & history;
  }

  ptr = p_randomHistory->__table_.__bucket_list_.__ptr_;
  v8 = p_randomHistory->__table_.__bucket_list_.__ptr_[historyCopy];
  if (v8)
  {
    v9 = *v8;
    if (*v8)
    {
      do
      {
        v10 = v9[1];
        if (v10 == history)
        {
          if (v9[2] == history)
          {
            return v9 + 3;
          }
        }

        else
        {
          if (v5.u32[0] > 1uLL)
          {
            if (v10 >= size)
            {
              v10 %= size;
            }
          }

          else
          {
            v10 &= size - 1;
          }

          if (v10 != historyCopy)
          {
            break;
          }
        }

        v9 = *v9;
      }

      while (v9);
    }
  }

  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  if (v5.u32[0] > 1uLL)
  {
    historyCopy2 = history;
    if (size <= history)
    {
      historyCopy2 = history % size;
    }
  }

  else
  {
    historyCopy2 = (size - 1) & history;
  }

  v12 = ptr[historyCopy2];
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_33:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == history)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v14 >= size)
      {
        v14 %= size;
      }
    }

    else
    {
      v14 &= size - 1;
    }

    if (v14 != historyCopy2)
    {
      goto LABEL_33;
    }

LABEL_32:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_33;
    }
  }

  if (v13[2] != history)
  {
    goto LABEL_32;
  }

  std::deque<int>::~deque[abi:ne200100](&v16);
  return 0;
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 22) = 1065353216;
  return self;
}

@end