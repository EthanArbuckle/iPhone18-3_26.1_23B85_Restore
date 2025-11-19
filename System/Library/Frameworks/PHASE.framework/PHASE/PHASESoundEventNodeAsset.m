@interface PHASESoundEventNodeAsset
- (PHASESoundEventNodeAsset)init;
- (PHASESoundEventNodeAsset)initWithUID:(id)a3 actionTreeWeakReference:(const void *)a4 assetRegistry:(id)a5 weakStringPoolReference:(void *)a6 details:(id)a7;
- (PHASESoundEventNodeAsset)initWithUID:(id)a3 assetRegistry:(id)a4 weakStringPoolReference:(void *)a5;
- (PHASESoundEventNodeAsset)initWithUID:(id)a3 ownedActionTree:()unique_ptr<Phase:(std:(id)a5 :(void *)a6 default_delete<Phase:(id)a7 :ActionTree>>)a4 :ActionTree assetRegistry:weakStringPoolReference:details:;
- (id).cxx_construct;
- (void)getRandomHistory:(unint64_t)a3;
@end

@implementation PHASESoundEventNodeAsset

- (PHASESoundEventNodeAsset)init
{
  [(PHASESoundEventNodeAsset *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASESoundEventNodeAsset)initWithUID:(id)a3 assetRegistry:(id)a4 weakStringPoolReference:(void *)a5
{
  [(PHASESoundEventNodeAsset *)self doesNotRecognizeSelector:a2, a4, a5];

  return 0;
}

- (PHASESoundEventNodeAsset)initWithUID:(id)a3 ownedActionTree:()unique_ptr<Phase:(std:(id)a5 :(void *)a6 default_delete<Phase:(id)a7 :ActionTree>>)a4 :ActionTree assetRegistry:weakStringPoolReference:details:
{
  v8 = [(PHASESoundEventNodeAsset *)self initWithUID:a3 actionTreeWeakReference:*a4.__ptr_ assetRegistry:a5 weakStringPoolReference:a6 details:a7];
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

- (PHASESoundEventNodeAsset)initWithUID:(id)a3 actionTreeWeakReference:(const void *)a4 assetRegistry:(id)a5 weakStringPoolReference:(void *)a6 details:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v20.receiver = self;
  v20.super_class = PHASESoundEventNodeAsset;
  v15 = [(PHASEAsset *)&v20 initWithUID:v12 assetRegistry:v13 weakStringPoolReference:a6];
  if (v15)
  {
    v16 = [v14 streamNodeFormats];
    streamNodeFormats = v15->_streamNodeFormats;
    v15->_streamNodeFormats = v16;

    v15->_actionTreeReference = a4;
    v18 = v15;
  }

  return v15;
}

- (void)getRandomHistory:(unint64_t)a3
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
    v6 = a3;
    if (size <= a3)
    {
      v6 = a3 % size;
    }
  }

  else
  {
    v6 = (size - 1) & a3;
  }

  ptr = p_randomHistory->__table_.__bucket_list_.__ptr_;
  v8 = p_randomHistory->__table_.__bucket_list_.__ptr_[v6];
  if (v8)
  {
    v9 = *v8;
    if (*v8)
    {
      do
      {
        v10 = v9[1];
        if (v10 == a3)
        {
          if (v9[2] == a3)
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

          if (v10 != v6)
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
    v11 = a3;
    if (size <= a3)
    {
      v11 = a3 % size;
    }
  }

  else
  {
    v11 = (size - 1) & a3;
  }

  v12 = ptr[v11];
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_33:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == a3)
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

    if (v14 != v11)
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

  if (v13[2] != a3)
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