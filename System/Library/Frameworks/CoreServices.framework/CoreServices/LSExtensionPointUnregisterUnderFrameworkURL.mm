@interface LSExtensionPointUnregisterUnderFrameworkURL
@end

@implementation LSExtensionPointUnregisterUnderFrameworkURL

void ___LSExtensionPointUnregisterUnderFrameworkURL_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 52);
  if (v3)
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) path];
    v8 = _LSAliasMatchesPath_NoIO(v6, v3, v7, 2);

    if (v8)
    {
      v9 = *(*(a1 + 48) + 8);
      v11 = v9[7];
      v10 = v9[8];
      if (v11 >= v10)
      {
        v13 = v9[6];
        v14 = v11 - v13;
        v15 = (v11 - v13) >> 2;
        v16 = v15 + 1;
        if ((v15 + 1) >> 62)
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
          std::allocator<unsigned int>::allocate_at_least[abi:nn200100]((v9 + 6), v19);
        }

        v20 = (v11 - v13) >> 2;
        v21 = (4 * v15);
        v22 = (4 * v15 - 4 * v20);
        *v21 = a2;
        v12 = v21 + 1;
        memcpy(v22, v13, v14);
        v23 = v9[6];
        v9[6] = v22;
        v9[7] = v12;
        v9[8] = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v11 = a2;
        v12 = v11 + 4;
      }

      v9[7] = v12;
    }
  }
}

@end