@interface LSCopyClaimedActivityIdentifiersAndDomains
@end

@implementation LSCopyClaimedActivityIdentifiersAndDomains

void ___LSCopyClaimedActivityIdentifiersAndDomains_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = _LSBundleCopyUserActivityTypes(**(a1 + 48), a2, a3);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v6;
  v8 = [(__CFSet *)v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v7);
        }

        CFSetAddValue(*(*(*(a1 + 32) + 8) + 24), *(*(&v21 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [(__CFSet *)v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  v11 = _LSBundleCopyUserActivityDomainNames(**(a1 + 48), a2, a3);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = v11;
  v13 = [(__CFSet *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v12);
        }

        CFSetAddValue(*(*(*(a1 + 40) + 8) + 24), *(*(&v17 + 1) + 8 * v15++));
      }

      while (v13 != v15);
      v13 = [(__CFSet *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void ___LSCopyClaimedActivityIdentifiersAndDomains_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = _LSGetOSStatusFromNSError(v3);
}

void ___LSCopyClaimedActivityIdentifiersAndDomains_block_invoke_3(void *a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  if (v11 && v7)
  {
    v9 = [v11 mutableCopy];
    *(*(a1[4] + 8) + 24) = v9;

    v10 = [v7 mutableCopy];
    *(*(a1[5] + 8) + 24) = v10;
  }

  else
  {
    *(*(a1[6] + 8) + 24) = _LSGetOSStatusFromNSError(v8);
  }
}

@end