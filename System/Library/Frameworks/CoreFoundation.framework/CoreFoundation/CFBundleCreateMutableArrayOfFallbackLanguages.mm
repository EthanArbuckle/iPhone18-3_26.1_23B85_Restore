@interface CFBundleCreateMutableArrayOfFallbackLanguages
@end

@implementation CFBundleCreateMutableArrayOfFallbackLanguages

void *___CFBundleCreateMutableArrayOfFallbackLanguages_block_invoke(int a1, CFArrayRef theArray, uint64_t a3)
{
  usedBufLen[1] = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(theArray);
  if (Count)
  {
    v6 = Count;
    v7 = 157 * Count;
    v8 = malloc_type_malloc(157 * Count, 0x404167E2uLL);
    v9 = v8;
    if (v8 && v6 >= 1)
    {
      v10 = 0;
      v11 = &v8[v7];
      v12 = v8;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10);
        v14 = CFGetTypeID(ValueAtIndex);
        if (v14 == CFStringGetTypeID())
        {
          usedBufLen[0] = 0;
          Length = CFStringGetLength(ValueAtIndex);
          if (Length >= 156)
          {
            v16.length = 156;
          }

          else
          {
            v16.length = Length;
          }

          v16.location = 0;
          if (CFStringGetBytes(ValueAtIndex, v16, 0x600u, 0, 0, v12, &v11[~v12], usedBufLen) != Length)
          {
            free(v9);
            goto LABEL_14;
          }

          *(a3 + 8 * v10) = v12;
          v17 = &v12[usedBufLen[0]];
          *v17 = 0;
          v12 = v17 + 1;
        }

        ++v10;
      }

      while (v6 != v10);
    }
  }

  else
  {
LABEL_14:
    v9 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v9;
}

@end