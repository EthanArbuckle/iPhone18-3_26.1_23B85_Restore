@interface UTTypeCopyDynamicIdentifiersForTags
@end

@implementation UTTypeCopyDynamicIdentifiersForTags

void ___UTTypeCopyDynamicIdentifiersForTags_block_invoke(uint64_t a1, const __CFString *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = a3;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        DynamicIdentifierForTag = _UTTypeCreateDynamicIdentifierForTag(0, a2, *(*(&v11 + 1) + 8 * v8), *(a1 + 40));
        if (DynamicIdentifierForTag)
        {
          [*(a1 + 32) addObject:{DynamicIdentifierForTag, v11}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end