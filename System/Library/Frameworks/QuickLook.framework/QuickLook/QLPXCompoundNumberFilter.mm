@interface QLPXCompoundNumberFilter
- (double)updatedOutput;
@end

@implementation QLPXCompoundNumberFilter

- (double)updatedOutput
{
  v20 = *MEMORY[0x277D85DE8];
  [(QLPXNumberFilter *)self input];
  v4 = v3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  filters = [(QLPXCompoundNumberFilter *)self filters];
  v6 = [filters countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(filters);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __41__QLPXCompoundNumberFilter_updatedOutput__block_invoke;
        v14[3] = &__block_descriptor_40_e35_v16__0___QLPXMutableNumberFilter__8l;
        *&v14[4] = v4;
        [v10 performChanges:v14];
        [v10 output];
        v4 = v11;
        ++v9;
      }

      while (v7 != v9);
      v7 = [filters countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

@end