@interface VNShotflowDetectorANODBase
- (id)mergeHeadsBoxes:(id)boxes;
@end

@implementation VNShotflowDetectorANODBase

- (id)mergeHeadsBoxes:(id)boxes
{
  v27[1] = *MEMORY[0x1E69E9840];
  boxesCopy = boxes;
  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_185_11853];
  v25 = [boxesCopy filteredArrayUsingPredicate:v3];

  v4 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_187];
  v5 = [boxesCopy filteredArrayUsingPredicate:v4];

  v6 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_189];
  v7 = [boxesCopy filteredArrayUsingPredicate:v6];

  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"confidence" ascending:0];
  v27[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v10 = [v25 sortedArrayUsingDescriptors:v9];

  v11 = [v10 count];
  v12 = [v5 count];
  if (v11)
  {
    v13 = v12;
    for (i = 0; i != v11; ++i)
    {
      v15 = [v10 objectAtIndexedSubscript:i];
      if (!v13)
      {
        goto LABEL_11;
      }

      v16 = 0;
      v17 = 1;
      do
      {
        while (!v17)
        {
          v17 = 0;
          if (++v16 == v13)
          {
            goto LABEL_12;
          }
        }

        v18 = [v5 objectAtIndexedSubscript:v16];
        [v15 intersectionOverArea:v18];
        v20 = v19;
        v17 = v19 <= 0.8;

        ++v16;
      }

      while (v16 != v13);
      if (v20 <= 0.8)
      {
LABEL_11:
        [v26 addObject:v15];
      }

LABEL_12:
    }
  }

  for (j = 0; j < [v7 count]; ++j)
  {
    v22 = [v7 objectAtIndexedSubscript:j];
    [v26 addObject:v22];
  }

  return v26;
}

@end