@interface _MTL4CommandAllocator
- (BOOL)getPrivateDataAndOffset:(id *)a3 privateDataOffset:(unint64_t *)a4;
- (_MTL4CommandAllocator)initWithDevice:(id)a3;
- (_MTL4CommandAllocator)initWithDevice:(id)a3 descriptor:(id)a4;
- (id).cxx_construct;
- (void)_executeResetHandlers;
- (void)addResetHandler:(id)a3;
- (void)dealloc;
@end

@implementation _MTL4CommandAllocator

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 6) = 0;
  return self;
}

- (_MTL4CommandAllocator)initWithDevice:(id)a3
{
  v6.receiver = self;
  v6.super_class = _MTL4CommandAllocator;
  v4 = [(_MTLObjectWithLabel *)&v6 init];
  if (v4)
  {
    *(v4 + 3) = a3;
    *(v4 + 5) = objc_alloc_init(MTLPrivateDataTable);
    [*(v4 + 3) _incrementAcquireCount];
  }

  return v4;
}

- (_MTL4CommandAllocator)initWithDevice:(id)a3 descriptor:(id)a4
{
  v8.receiver = self;
  v8.super_class = _MTL4CommandAllocator;
  v6 = [(_MTLObjectWithLabel *)&v8 init];
  if (v6)
  {
    *(v6 + 3) = a3;
    *(v6 + 5) = objc_alloc_init(MTLPrivateDataTable);
    if ([a4 label])
    {
      [v6 setLabel:{objc_msgSend(a4, "label")}];
    }

    [*(v6 + 3) _incrementAcquireCount];
  }

  return v6;
}

- (void)dealloc
{
  [(_MTL4CommandAllocator *)self _executeResetHandlers];
  v3 = *(self + 6);
  if (*(self + 7) != v3)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      _Block_release(*(v3 + 8 * v4));
      v4 = v5;
      v3 = *(self + 6);
      ++v5;
    }

    while (v4 < (*(self + 7) - v3) >> 3);
  }

  [*(self + 3) _decrementAcquireCount];

  v6.receiver = self;
  v6.super_class = _MTL4CommandAllocator;
  [(_MTLObjectWithLabel *)&v6 dealloc];
}

- (BOOL)getPrivateDataAndOffset:(id *)a3 privateDataOffset:(unint64_t *)a4
{
  v6 = *(self + 5);
  v7 = [(_MTL4CommandAllocator *)self device];

  return [v6 getPrivateDataAndOffset:v7 privateData:a3 privateDataOffset:a4];
}

- (void)addResetHandler:(id)a3
{
  v3 = self + 48;
  v4 = _Block_copy(a3);
  v6 = *(v3 + 1);
  v5 = *(v3 + 2);
  if (v6 >= v5)
  {
    v8 = (v6 - *v3) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v5 - *v3;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto18MTLIOScratchBuffer}*>>(v3, v11);
    }

    v12 = (8 * v8);
    *v12 = v4;
    v7 = 8 * v8 + 8;
    v13 = *(v3 + 1) - *v3;
    v14 = v12 - v13;
    memcpy(v12 - v13, *v3, v13);
    v15 = *v3;
    *v3 = v14;
    *(v3 + 1) = v7;
    *(v3 + 2) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v6 = v4;
    v7 = (v6 + 1);
  }

  *(v3 + 1) = v7;
}

- (void)_executeResetHandlers
{
  v3 = *(self + 6);
  v2 = *(self + 7);
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 6) = 0;
  v4 = v2 - v3;
  if (v4)
  {
    v5 = 0;
    v6 = v4 >> 3;
    v7 = 1;
    do
    {
      v8 = v3[v5];
      (v8)[2](v8, a2);
      _Block_release(v8);
      v5 = v7;
    }

    while (v6 > v7++);
  }

  else if (!v3)
  {
    return;
  }

  operator delete(v3);
}

@end