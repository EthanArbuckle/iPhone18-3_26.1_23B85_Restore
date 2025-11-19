@interface LSApplicationExtensionRecordEnumerator
@end

@implementation LSApplicationExtensionRecordEnumerator

void __69___LSApplicationExtensionRecordEnumerator__prepareWithContext_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = _LSGetPlugin(**(a1 + 40), a3);
  if (v7)
  {
    v8 = *(a1 + 48);
    if (!v8 || v8 == *(v7 + 180))
    {
      v9 = *(a1 + 40);
      if ([*(a1 + 32) _evaluatePluginNoIO:a3 data:v7 extensionPointID:? context:?])
      {
        v10 = *(a1 + 32) + 136;
        v12 = *(*(a1 + 32) + 144);
        v11 = *(*(a1 + 32) + 152);
        if (v12 >= v11)
        {
          v14 = *v10;
          v15 = v12 - *v10;
          v16 = v15 >> 2;
          v17 = (v15 >> 2) + 1;
          if (v17 >> 62)
          {
            std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
          }

          v18 = v11 - v14;
          if (v18 >> 1 > v17)
          {
            v17 = v18 >> 1;
          }

          v19 = v18 >= 0x7FFFFFFFFFFFFFFCLL;
          v20 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v19)
          {
            v20 = v17;
          }

          if (v20)
          {
            std::allocator<unsigned int>::allocate_at_least[abi:nn200100](*(a1 + 32) + 136, v20);
          }

          *(4 * v16) = a3;
          v13 = 4 * v16 + 4;
          memcpy(0, v14, v15);
          v21 = *v10;
          *v10 = 0;
          *(v10 + 8) = v13;
          *(v10 + 16) = 0;
          if (v21)
          {
            operator delete(v21);
          }
        }

        else
        {
          *v12 = a3;
          v13 = (v12 + 1);
        }

        *(v10 + 8) = v13;
        if ((*(a1 + 52) & 1) == 0)
        {
          *a4 = 1;
        }
      }
    }
  }
}

uint64_t __69___LSApplicationExtensionRecordEnumerator__prepareWithContext_error___block_invoke_2(uint64_t a1)
{
  [(_LSDatabase *)**(a1 + 40) store];
  v2 = *(a1 + 32);

  return _CSArrayEnumerateAllValues();
}

@end