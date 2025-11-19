@interface LSTypeEnumerator
@end

@implementation LSTypeEnumerator

void __47___LSTypeEnumerator__prepareWithContext_error___block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32) + 88;
  v5 = *(*(a1 + 32) + 96);
  v4 = *(*(a1 + 32) + 104);
  if (v5 >= v4)
  {
    v7 = *v3;
    v8 = v5 - *v3;
    v9 = v8 >> 2;
    v10 = (v8 >> 2) + 1;
    if (v10 >> 62)
    {
      std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFFCLL;
    v13 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      std::allocator<unsigned int>::allocate_at_least[abi:nn200100](*(a1 + 32) + 88, v13);
    }

    *(4 * v9) = a2;
    v6 = 4 * v9 + 4;
    memcpy(0, v7, v8);
    v14 = *v3;
    *v3 = 0;
    *(v3 + 8) = v6;
    *(v3 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 1);
  }

  *(v3 + 8) = v6;
}

@end