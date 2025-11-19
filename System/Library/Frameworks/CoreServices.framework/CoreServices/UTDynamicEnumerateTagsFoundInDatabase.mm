@interface UTDynamicEnumerateTagsFoundInDatabase
@end

@implementation UTDynamicEnumerateTagsFoundInDatabase

void ___UTDynamicEnumerateTagsFoundInDatabase_block_invoke(uint64_t a1, const __CFString *a2, void *a3, _BYTE *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (_LSDatabaseGetStringForCFString(*(a1 + 32), a2, 1))
  {
    v8 = UTTypeConformsTo(a2, @"public.case-insensitive-text");
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = a3;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = *v16;
      v12 = v8 != 0;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v9);
          }

          if (_LSDatabaseGetStringForCFString(*(a1 + 32), *(*(&v15 + 1) + 8 * v13), v12))
          {
            (*(*(a1 + 40) + 16))();
            *a4 = 0;
          }

          ++v13;
        }

        while (v10 != v13);
        v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end