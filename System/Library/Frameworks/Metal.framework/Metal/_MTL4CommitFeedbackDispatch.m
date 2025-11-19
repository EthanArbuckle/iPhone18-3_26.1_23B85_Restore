@interface _MTL4CommitFeedbackDispatch
- (id).cxx_construct;
- (void)addFeedbackHandler:(id)a3;
- (void)dealloc;
- (void)executeBlocksWithCommitFeedback:(id)a3;
@end

@implementation _MTL4CommitFeedbackDispatch

- (void)dealloc
{
  v3 = *(self + 1);
  if (*(self + 2) != v3)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      _Block_release(*(v3 + 8 * v4));
      v4 = v5;
      v3 = *(self + 1);
      ++v5;
    }

    while (v4 < (*(self + 2) - v3) >> 3);
  }

  v6.receiver = self;
  v6.super_class = _MTL4CommitFeedbackDispatch;
  [(_MTL4CommitFeedbackDispatch *)&v6 dealloc];
}

- (void)addFeedbackHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v6 = *(self + 2);
  v5 = *(self + 3);
  if (v6 >= v5)
  {
    v8 = *(self + 1);
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto18MTLIOScratchBuffer}*>>(self + 8, v12);
    }

    v13 = (8 * v9);
    *v13 = v4;
    v7 = 8 * v9 + 8;
    v14 = *(self + 1);
    v15 = *(self + 2) - v14;
    v16 = v13 - v15;
    memcpy(v13 - v15, v14, v15);
    v17 = *(self + 1);
    *(self + 1) = v16;
    *(self + 2) = v7;
    *(self + 3) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v6 = v4;
    v7 = (v6 + 1);
  }

  *(self + 2) = v7;
}

- (void)executeBlocksWithCommitFeedback:(id)a3
{
  v4 = *(self + 1);
  if (*(self + 2) != v4)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = *(v4 + 8 * v6);
      (v8)[2](v8, a3);
      _Block_release(v8);
      v6 = v7;
      v4 = *(self + 1);
      ++v7;
    }

    while (v6 < (*(self + 2) - v4) >> 3);
  }

  *(self + 2) = v4;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end