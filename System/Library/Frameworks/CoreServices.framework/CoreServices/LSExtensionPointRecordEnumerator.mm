@interface LSExtensionPointRecordEnumerator
@end

@implementation LSExtensionPointRecordEnumerator

void __63___LSExtensionPointRecordEnumerator__prepareWithContext_error___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v6 = [*(a1 + 32) parentApplicationRecord];
  if (v6 && *(a3 + 56) != *(a1 + 40))
  {
  }

  else
  {
    v7 = *(a1 + 44);
    if (v7)
    {
      v8 = *(a3 + 4);

      if (v8 != v7)
      {
        return;
      }
    }

    else
    {
    }

    v9 = (*(a1 + 32) + 96);
    v11 = v9[1];
    v10 = v9[2];
    if (v11 >= v10)
    {
      v13 = *v9;
      v14 = v11 - *v9;
      v15 = v14 >> 2;
      v16 = (v14 >> 2) + 1;
      if (v16 >> 62)
      {
        std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
      }

      v17 = v10 - v13;
      if (v17 >> 1 > v16)
      {
        v16 = v17 >> 1;
      }

      v18 = v17 >= 0x7FFFFFFFFFFFFFFCLL;
      v19 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v18)
      {
        v19 = v16;
      }

      if (v19)
      {
        std::allocator<unsigned int>::allocate_at_least[abi:nn200100](v9, v19);
      }

      *(4 * v15) = a2;
      v12 = 4 * v15 + 4;
      memcpy(0, v13, v14);
      v20 = *v9;
      *v9 = 0;
      v9[1] = v12;
      v9[2] = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v11 = a2;
      v12 = (v11 + 4);
    }

    v9[1] = v12;
  }
}

@end