@interface LSLinkedChildApplicationRecordEnumerator
@end

@implementation LSLinkedChildApplicationRecordEnumerator

void __71___LSLinkedChildApplicationRecordEnumerator__prepareWithContext_error___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 32) + 88;
  v6 = *(*(a1 + 32) + 96);
  v5 = *(*(a1 + 32) + 104);
  if (v6 >= v5)
  {
    v8 = *v4;
    v9 = v6 - *v4;
    v10 = v9 >> 2;
    v11 = (v9 >> 2) + 1;
    if (v11 >> 62)
    {
      std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
    }

    v12 = v5 - v8;
    if (v12 >> 1 > v11)
    {
      v11 = v12 >> 1;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFFCLL;
    v14 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    if (v14)
    {
      std::allocator<unsigned int>::allocate_at_least[abi:nn200100](*(a1 + 32) + 88, v14);
    }

    *(4 * v10) = a3;
    v7 = 4 * v10 + 4;
    memcpy(0, v8, v9);
    v15 = *v4;
    *v4 = 0;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v6 = a3;
    v7 = (v6 + 1);
  }

  *(v4 + 8) = v7;
}

@end